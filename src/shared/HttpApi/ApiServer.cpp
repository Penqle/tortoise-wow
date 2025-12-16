#include "ApiServer.hpp"
#include "BaseController.hpp"
#include "Config/Config.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"

using namespace httplib;

namespace HttpApi
{
    void ApiServer::Start(const std::string& address, int port)
    {
        std::string certPath = sConfig.GetStringDefault("Api.CertificatePath", "turtle.cer");
        std::string privateKeyPath = sConfig.GetStringDefault("ApiPrivateKeyPath", "turtle.pkey");

        sLog.out(LOG_API, string_format("Starting HTTP Api Server with cert path {} and pKeypath {}.", certPath, privateKeyPath).c_str());

        _server = std::make_unique<SSLServer>(certPath.c_str(), privateKeyPath.c_str());


        _server->set_error_handler([](const auto& req, auto& res) {
            auto fmt = "<p>Error Status: <span style='color:red;'>%d</span></p>";
            char buf[BUFSIZ];
            snprintf(buf, sizeof(buf), fmt, res.status);
            res.set_content(buf, "text/html");
        });

        _server->set_exception_handler([](const auto& req, auto& res, std::exception_ptr ep) {
            auto fmt = "<h1>Error 500</h1><p>%s</p>";
            char buf[BUFSIZ];
            try 
            {
                std::rethrow_exception(ep);
            }
            catch (std::exception& e) 
            {
                snprintf(buf, sizeof(buf), fmt, e.what());
            }
            catch (...) 
            { 
                snprintf(buf, sizeof(buf), fmt, "Unknown Exception");
            }

            sLog.out(LOG_API, "API Exception: %s", buf);
            res.set_content(buf, "text/html");
            res.status = 500;
        });

        _server->set_logger([](const Request& req, const Response& res) {
            sLog.out(LOG_API, "Handling request from %s.\nRoute:%s\nBody:%s", req.remote_addr.c_str(), req.path.c_str(), req.body.c_str());
        });

        BaseController::RegisterAll(_server.get());
       
        _listenThread = std::thread([this, address, port]()
        {
                mysql_thread_init(); // not really good but eh
                _running = true;
                while (_running)
                {
                    _server->listen(address, port);
                    std::this_thread::sleep_for(std::chrono::milliseconds(33)); // 30 FPS
                }
                mysql_thread_end();
        });
        
    }

    void ApiServer::Stop()
    {
        if (_server && _server->is_running())
        {
            _running = false;
            _server->stop();
        }
    }
}