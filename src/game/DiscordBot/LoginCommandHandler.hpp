#pragma once
#include "DiscordBot/BaseCommandHandler.hpp"

namespace DiscordBot
{
    class LoginCommandHandler : public BaseCommandHandler
    {
    public:
        bool IsAuthorized(const dpp::user*) const override;

        void RegisterCommands(dpp::commandhandler&) override;

        void HandleLoginComand(const std::string& command, const dpp::parameter_list_t& parameters, dpp::command_source src);

        void RegisterFormSubmits(FormHandlerContainer& container) override;

    private:
        dpp::commandhandler* _commHandler;
    };
}