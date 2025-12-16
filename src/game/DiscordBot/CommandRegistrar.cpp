#include "GMCommandHandler.hpp"
#include "PlayerCommandHandler.hpp"
#include "LoginCommandHandler.hpp"



namespace DiscordBot
{
    void RegisterHandlers()
    {
        new GMCommandHandler{};
        new PlayerCommandHandler{};
        new LoginCommandHandler{};
    }
}