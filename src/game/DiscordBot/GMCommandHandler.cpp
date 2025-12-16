#include "GMCommandHandler.hpp"
#include "DiscordBot/Bot.hpp"
#include "World.h"
#include "DiscordBot/AuthManager.hpp"

#include "Log.h"
#include "Chat.h"

bool ChatHandler::HandleDiscBotStopCommand(char* args)
{
    sWorld.StopDiscordBot();
    return true;
}

namespace DiscordBot
{
  /*  bool GMCommandHandler::IsAuthorized(const dpp::user* user) const
    {
        auto authInfo = AuthManager::Instance()->GetAuthInfo(user);
        return authInfo && authInfo->authenticated && authInfo->securityLevel > SEC_PLAYER;
    }


    void GMCommandHandler::RegisterCommands(dpp::commandhandler& registrar)
    {
        Register("gm", 
            { 
                {"command", dpp::param_info(dpp::pt_string, false, "Command to be executed on the server.")},
                {"selfonly", dpp::param_info(dpp::pt_boolean, true, "If set to true then only you can see the output.")} 
            },
			MakeCommandHandler(&GMCommandHandler::ExecuteGMCommand),
			"Executes a server command");


        Register("logs",
            {
                {"logtype", dpp::param_info(dpp::pt_integer, false, "Type of logs to read.")},
                {"chars", dpp::param_info(dpp::pt_integer, false, "Number of chars to read.")}
            },
            MakeCommandHandler(&GMCommandHandler::LogCommand),
            "Shows logs");

        Register("lookup",
            {
            }, MakeCommandHandler(&GMCommandHandler::LookupCommand), "Starts a character lookup");

        _commHandler = &registrar;*/
    }

    void GMCommandHandler::ExecuteGMCommand(const std::string& command, const dpp::parameter_list_t& parameters, dpp::command_source src)
    {
        
        auto authinfo = AuthManager::Instance()->GetAuthInfo(&src.issuer);
        if (!authinfo)
        {
            return;
        }

        sLog.outDiscord("%s", string_format_depr("Executing command %s for Discord user %s (%llu). Account (%s / %u)", command.c_str(), src.issuer.format_username().c_str(),
            static_cast<uint64>(src.issuer.id), authinfo->gameAccountName.c_str(), authinfo->gameAccountId).c_str());

        std::string commandParam;
        bool selfOnly = false;
        if (!parameters.empty())
        {
            commandParam = std::get<std::string>(parameters[0].second);
            if (parameters.size() > 1)
                selfOnly = std::get<bool>(parameters[1].second);
        }

        _commandOutput[src.issuer.id].output = "";
        _commandOutput[src.issuer.id].selfOnly = selfOnly;



        CliCommandHolder* cmd = new CliCommandHolder(authinfo->gameAccountId, (AccountTypes)authinfo->securityLevel, std::make_pair(this, src), commandParam.c_str(), &CommandPrint, &CommandFinished);
        sWorld.QueueCliCommand(cmd);
    }

    void GMCommandHandler::LookupCommand(const std::string& command, const dpp::parameter_list_t& parameters, dpp::command_source src)
    {
        dpp::message msg;
        msg.add_component(
            dpp::component().add_component(
                dpp::component()
                .set_type(dpp::cot_selectmenu)
                .set_placeholder("Filter on")
                .add_select_option(dpp::select_option("Player name", "playername", "The name (or part of it) of the player"))
                .add_select_option(dpp::select_option("Player level minimum", "playerlevelmin", "The minimum level of the player"))
                .add_select_option(dpp::select_option("Player level maximum", "playerlevelmax", "The maximum level of the player"))
                .set_id("filterselect")
            )
        );

        _commHandler->reply(std::move(msg), src);
    }

    void GMCommandHandler::LogCommand(const std::string& command, const dpp::parameter_list_t& parameters, dpp::command_source src)
    {
        auto authinfo = AuthManager::Instance()->GetAuthInfo(&src.issuer);
        if (!authinfo)
            return;

        if (authinfo->securityLevel < SEC_DEVELOPER)
            return;

        if (parameters.empty())
            return;

        int64_t logType = std::get<int64_t>(parameters[0].second);
        int64_t numChars = std::get<int64_t>(parameters[1].second);

        auto logfile = sLog.logFiles[logType];

        if (!logfile)
            return;

        //we're going to edit writing positions to find what to read. Start locking exclusive access from here on out.
        std::unique_lock<std::shared_mutex> l{ sLog.logLock };

        int streamPos = ftell(logfile);


        fseek(logfile, 0, SEEK_SET);

        std::vector<char> buff;
        buff.resize(numChars);
        fread(buff.data(), sizeof(char), numChars, logfile);
        fseek(logfile, streamPos, SEEK_SET);

        _commHandler->reply(dpp::message(std::string(buff.begin(), buff.end())), src);
    }


    void GMCommandHandler::CommandPrint(std::any callbackArg, const char* output)
    {
        auto [handler, source] = std::any_cast<std::pair<GMCommandHandler*, dpp::command_source>>(callbackArg);
        handler->_commandOutput[source.issuer.id].output += output;
    }

    void GMCommandHandler::CommandFinished(std::any callbackArg, bool sucess)
    {
        auto [handler, source] = std::any_cast<std::pair<GMCommandHandler*, dpp::command_source>>(callbackArg);     

        std::string output = handler->_commandOutput[source.issuer.id].output;

        if (output.empty())
        {
            handler->_commHandler->owner->message_create(dpp::message(source.channel_id, "Command executed. No output was generated."));
            return;
        }

        uint32 offset = 0;
        bool first = true;
        do
        {
            //str.substr with count greater than size from offset is fine to overflow.
            //wish DPP had string view constructors
            std::string message = output.substr(offset, MaxMessageLength);
            offset += MaxMessageLength;

            dpp::message msg(message);
            if (handler->_commandOutput[source.issuer.id].selfOnly)
                msg.set_flags(dpp::m_ephemeral);


            if (first)
            {
                handler->_commHandler->reply(msg, source);
                first = false;
                continue;
            }

            msg.channel_id = source.channel_id;

            handler->_commHandler->owner->message_create(msg);

        } while (offset < output.size() - 1);
    }

}