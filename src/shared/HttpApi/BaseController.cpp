#include "BaseController.hpp"

namespace HttpApi
{
    std::vector<BaseController*> BaseController::_controllers;
    Server* BaseController::_source;

    BaseController::BaseController()
    {
        _controllers.push_back(this);
        if (!_authorizer)
            _authorizer = std::make_unique<BaseAuthorizer>();
    }
}