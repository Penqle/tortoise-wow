#pragma once

#include "httplib.h"
#include "Common.h"
#include "Log.h"

#include <thread>
#include <atomic>
#include <vector>
#include <memory>

namespace HttpApi
{
    class ApiServer final
    {
    public:
        ApiServer() {}
        ~ApiServer()
        {
            if (_running && _server->is_running())
            {
                _running = false;
                _server->stop();
            }

            if (_listenThread.joinable())
                _listenThread.join();
        }

        void Start(const std::string& address, int port);
        void Stop();

        static void SetInitThreadCallback(std::function<void()> cb)
        {
            httplib::SSLServer::SetInitThreadCallback(cb);
        }

        static void SetDestroyThreadCallback(std::function<void()> cb)
        {
            httplib::SSLServer::SetDestroyThreadCallback(cb);
        }

    private:
        std::unique_ptr<httplib::SSLServer> _server;
        std::atomic_bool _running = false;
        std::thread _listenThread;
    };
}