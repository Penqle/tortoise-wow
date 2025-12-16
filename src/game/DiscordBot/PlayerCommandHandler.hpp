#pragma once
#include "DiscordBot/BaseCommandHandler.hpp"

namespace DiscordBot
{
    class PlayerCommandHandler : public BaseCommandHandler
    {
    public:
        PlayerCommandHandler() = default;

        ~PlayerCommandHandler() noexcept = default;

        void RegisterCommands(dpp::commandhandler&) override;

        bool IsAuthorized(const dpp::user*) const override;

        void TwoFactorCommand(const std::string & command, const dpp::parameter_list_t & parameters, dpp::command_source src);

    private:
        dpp::commandhandler* _commHandler;
    };
}