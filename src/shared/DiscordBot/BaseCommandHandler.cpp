#include "BaseCommandHandler.hpp"

#include "AuthManager.hpp"
#include "Bot.hpp"
#include "Log.h"
#include <sstream>


namespace DiscordBot
{
    using namespace dpp;

    std::vector<BaseCommandHandler*> BaseCommandHandler::_handlers;
    std::unique_ptr<dpp::commandhandler> BaseCommandHandler::_commandHandler;
    std::unordered_map<std::string, BaseCommandHandler*> BaseCommandHandler::_commandLinks;
    BaseCommandHandler::FormHandlerContainer BaseCommandHandler::_formSubmits;


    void BaseCommandHandler::Register(const std::string& command, const parameter_registration_t& parameters,
        command_handler handler, const std::string& description, snowflake guild_id)
    {
        if (guild_id.empty())
            guild_id = 464719606632808469; // twow staff server ID by default.

        _commandHandler->add_command(command, parameters, std::move(handler), description, guild_id);

        auto itr = _commandLinks.find(command);

        if (itr != _commandLinks.end())
        {
            sLog.outDiscord("ERROR: Command link for command %s already added.", command.c_str());
            return;
        }
        _commandLinks[command] = this;
    }

    bool BaseCommandHandler::CheckAllowedAccess(const dpp::user* user, std::string command)
    {
#ifdef DISCORD_DEBUG
        return true;
#endif

        auto itr = _commandLinks.find(command);

        if (itr == _commandLinks.end())
        {
            sLog.outDiscord("ERROR: Can't find command link for %s", command.c_str());
            return false;
        }

        //now check handler access.
        return itr->second->IsAuthorized(user);
    }

    void BaseCommandHandler::RegisterAll(Bot& bot)
    {
        _commandHandler = std::make_unique<commandhandler>(bot.GetCore(), false); // disable automatic hooking as we need to check for permissions
        _commandHandler->add_prefix(".").add_prefix("/");
        for (const auto& handler : _handlers)
        {
            handler->RegisterCommands(*_commandHandler);
            handler->RegisterFormSubmits(_formSubmits);
            bot.AddHandler(handler);

        }
        _commandHandler->register_commands();
        
        bot.GetCore()->on_message_create([](const message_create_t& event)
            {
                if (event.msg.author.is_bot())
                    return;

                std::string messageContent = event.msg.content;

                if (_commandHandler->string_has_prefix(messageContent))
                {
                    std::stringstream ss(messageContent);
                    std::string command;
                    ss >> command;
                    if (CheckAllowedAccess(&event.msg.author, command))
                        _commandHandler->route(event);
                    else
                        event.reply(message(event.msg.channel_id, "Not enough rights.").set_flags(m_ephemeral));
                }
            });

        bot.GetCore()->on_slashcommand([](const dpp::slashcommand_t& event)
            {
                command_interaction cmd = std::get<command_interaction>(event.command.data);

                std::string command = lowercase(cmd.name);
                if (CheckAllowedAccess(&event.command.usr, command))
                    _commandHandler->route(event);
                else
                    event.reply(message(event.command.channel_id, "Not enough rights.").set_flags(m_ephemeral));
            });
    }

    void BaseCommandHandler::HandleFormSubmit(const dpp::form_submit_t& event)
    {
        auto itr = _formSubmits.find(event.custom_id);

        if (itr == _formSubmits.end())
            return;

        itr->second(event);
    }

}