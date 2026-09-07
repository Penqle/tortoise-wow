/*
 * SOAP remote-command interface (re-added). See MaNGOSsoap.h.
 */

#include "MaNGOSsoap.h"

#include <any>
#include <atomic>
#include <chrono>
#include <string>
#include <thread>

SOAPThread::SOAPThread(const std::string& host, int port)
    : m_host(host), m_port(port), m_workerThread(&SOAPThread::Work, this)
{
}

SOAPThread::~SOAPThread()
{
    // World::IsStopped() is true by shutdown time; the accept loop exits within
    // AcceptTimeout, then we join.
    if (m_workerThread.joinable())
        m_workerThread.join();
}

void SOAPThread::Work()
{
    struct soap soap;
    soap_init(&soap);
    soap_set_imode(&soap, SOAP_C_UTFSTRING);
    soap_set_omode(&soap, SOAP_C_UTFSTRING);

    soap.accept_timeout = AcceptTimeout;
    soap.recv_timeout   = DataTimeout;
    soap.send_timeout   = DataTimeout;

    if (soap_bind(&soap, m_host.c_str(), m_port, BackLogSize) < 0)
    {
        sLog.outError("SOAP: could not bind to %s:%d - remote command interface disabled", m_host.c_str(), m_port);
        soap_done(&soap);
        return;
    }

    sLog.outString("SOAP: remote command interface bound to http://%s:%d", m_host.c_str(), m_port);

    while (!World::IsStopped())
    {
        if (soap_accept(&soap) == SOAP_INVALID_SOCKET)
            continue;                                       // accept timeout - poll IsStopped() again

        struct soap* connection = soap_copy(&soap);
        if (!connection)
            continue;

        soap_serve(connection);

        soap_destroy(connection);
        soap_end(connection);
        soap_free(connection);
    }

    soap_destroy(&soap);
    soap_end(&soap);
    soap_done(&soap);
}

namespace
{
    // Per-request state carried to the world thread through CliCommandHolder's
    // std::any callback argument. The world thread fills output/finished; the
    // SOAP worker thread waits on finished.
    struct SoapCommandState
    {
        std::string output;
        std::atomic<bool> finished{false};
        bool success = false;
    };

    void SoapPrint(std::any arg, const char* text)
    {
        auto* const state = std::any_cast<SoapCommandState*>(arg);
        if (state && text)
            state->output += text;
    }

    void SoapCommandFinished(std::any arg, bool success)
    {
        auto* const state = std::any_cast<SoapCommandState*>(arg);
        if (state)
        {
            state->success = success;
            state->finished.store(true, std::memory_order_release);
        }
    }
}

/*
 * Generated from: int ns1__executeCommand(char* command, char** result);
 * HTTP Basic auth carries the GM account; the command runs on the world thread.
 */
int ns1__executeCommand(struct soap* soap, char* command, char** result)
{
    if (!soap->userid || !soap->passwd)
        return 401;

    uint32 const accountId = sAccountMgr.GetId(soap->userid);
    if (!accountId)
        return 401;

    if (!sAccountMgr.CheckPassword(accountId, soap->passwd))
        return 401;

    if (sAccountMgr.GetSecurity(accountId) < SOAPThread::MinLevel)
        return 403;

    if (!command || !*command)
        return soap_sender_fault(soap, "Command must not be empty", "The supplied command was an empty string");

    SoapCommandState state;

    // Commands execute on the world thread; block until it signals completion.
    sWorld.QueueCliCommand(new CliCommandHolder(accountId, SEC_CONSOLE, &state, command, &SoapPrint, &SoapCommandFinished));

    while (!state.finished.load(std::memory_order_acquire))
        std::this_thread::sleep_for(std::chrono::milliseconds(50));

    char* const out = soap_strdup(soap, state.output.c_str());

    if (!state.success)
        return soap_sender_fault(soap, out, out);

    *result = out;
    return SOAP_OK;
}

////////////////////////////////////////////////////////////////////////////////
// XML namespace table - ns1 must be urn:MaNGOS to match the classic mangos SOAP
// clients (CMaNGOS-style tooling) this interface is meant to be compatible with.
////////////////////////////////////////////////////////////////////////////////
SOAP_NMAC struct Namespace namespaces[] =
{
    { "SOAP-ENV", "http://schemas.xmlsoap.org/soap/envelope/", "http://www.w3.org/*/soap-envelope", NULL },
    { "SOAP-ENC", "http://schemas.xmlsoap.org/soap/encoding/", "http://www.w3.org/*/soap-encoding", NULL },
    { "xsi",      "http://www.w3.org/2001/XMLSchema-instance",  "http://www.w3.org/*/XMLSchema-instance", NULL },
    { "xsd",      "http://www.w3.org/2001/XMLSchema",           "http://www.w3.org/*/XMLSchema", NULL },
    { "ns1",      "urn:MaNGOS", NULL, NULL },
    { NULL, NULL, NULL, NULL }
};
