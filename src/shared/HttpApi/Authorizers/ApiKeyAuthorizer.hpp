#pragma once

#include "BaseAuthorizer.hpp"

#include <string>

namespace HttpApi
{
    class ApiKeyAuthorizer final : public BaseAuthorizer
    {
    public:
        ApiKeyAuthorizer(const std::string& key) : _key(key) {}

        bool IsAuthorized(const httplib::Request& res, httplib::Response& resp) const override
        {
            std::string apiKey = res.get_header_value("X-API-Key");
            if (apiKey == _key)
                return true;

            resp.set_content("Invalid Key.", "text/plain");
            return false;
        }

    private:
        std::string _key;
    };
}