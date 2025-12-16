#pragma once
#include "httplib.h"

#include "rapidjson/document.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/prettywriter.h"
#include "rapidjson/writer.h"
#include "HttpApi/BaseController.hpp"
#include "PlayerDump.h"

namespace HttpApi
{
    void InitTransferAction(const httplib::Request& req, httplib::Response& resp, const httplib::ContentReader& reader);
    void ProceedTransferAction(const httplib::Request& req, httplib::Response& resp, const httplib::ContentReader& reader);

    class TransferController final : public BaseController
    {
    public:

        TransferController(std::string key);

        void RegisterCommands(httplib::Server* server) override
        {
            RegisterEndpoint<HttpMethod::Post>("/initiate-transfer", &InitTransferAction);
            RegisterEndpoint<HttpMethod::Post>("/proceed-transfer", &ProceedTransferAction);
        }

    };
}