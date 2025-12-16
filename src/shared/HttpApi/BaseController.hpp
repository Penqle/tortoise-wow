#pragma once
#include "httplib.h"
#include "Common.h"
#include "Log.h"
#include "Authorizers/BaseAuthorizer.hpp"

#include <vector>

namespace HttpApi
{
    using namespace httplib;

    using GetHandler = httplib::SSLServer::Handler;
    using PostHandler = httplib::SSLServer::HandlerWithContentReader;

    template <auto V>
    struct value_type
    {
        using type = decltype(V);
        static constexpr type value = V;
    };

    enum class HttpMethod
    {
        Get,
        Post
    };

    class BaseController
    {
    public:
        BaseController();

        virtual ~BaseController() = default;

        static void RegisterAll(Server* server)
        {
            _source = server;
            for (const auto& controller : _controllers)
            {
                controller->RegisterCommands(server);
            }
        }

        virtual void RegisterCommands(Server* server) = 0;

        template <HttpMethod method, typename F =
            std::conditional_t<method == HttpMethod::Get, GetHandler, PostHandler>>
            void RegisterEndpoint(std::string endpoint, F&& handler)
        {
            sLog.out(LOG_API, string_format("Registering endpoint {}..", endpoint).c_str());


            if constexpr (method == HttpMethod::Get)
            {
                _source->Get(endpoint, CreateAuthHandler<method>(std::forward<F>(handler)));
            }
            else if (method == HttpMethod::Post)
            {
                _source->Post(endpoint, CreateAuthHandler<method>(std::forward<F>(handler)));
            }
        }

    protected:
        std::unique_ptr<BaseAuthorizer> _authorizer;

    private:
        static std::vector<BaseController*> _controllers;
        static Server* _source;

        template <HttpMethod method, typename F =
            std::conditional_t<method == HttpMethod::Get, GetHandler, PostHandler>>
            std::conditional_t<method == HttpMethod::Get, GetHandler, PostHandler> CreateAuthHandler(F&& handler)
        {
            if constexpr (method == HttpMethod::Get)
            {
                return[this, internalHandler = std::move(handler)](const Request& req, Response& resp)
                {
                    if (_authorizer->IsAuthorized(req, resp))
                        internalHandler(req, resp);
                    else
                    {
                        resp.status = 403;
                        resp.set_content("Forbidden.", "text/plain");
                    }
                };
            }
            else if (method == HttpMethod::Post)
            {
                return[this, internalHandler = std::move(handler)](const Request& req, Response& resp, const ContentReader& reader)
                {
                    if (_authorizer->IsAuthorized(req, resp))
                        internalHandler(req, resp, reader);
                    else
                    {
                        resp.status = 403;
                        resp.set_content("Forbidden.", "text/plain");
                    }
                };
            }
        }
    };
}