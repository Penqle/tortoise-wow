#pragma once

#include "httplib.h"

//always authorizes

namespace HttpApi
{
    class BaseAuthorizer
    {
    public:
        BaseAuthorizer() = default;
        virtual ~BaseAuthorizer() noexcept = default;

        virtual bool IsAuthorized(const httplib::Request&, httplib::Response&) const { return true; }
    };
}