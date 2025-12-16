#include "LoginCommandHandler.hpp"

#include "DiscordBot/AuthManager.hpp"

namespace DiscordBot
{
    using namespace dpp;

    bool LoginCommandHandler::IsAuthorized(const user*) const
    {
        return true; // this is the base command handler for users to login to, always allow.
    }

    void LoginCommandHandler::RegisterCommands(commandhandler& registrar)
    {
        Register("login", {}, MakeCommandHandler(&LoginCommandHandler::HandleLoginComand),
            "Allows users to login to link their Discord account and WoW account");

        _commHandler = &registrar;
    }

    void LoginCommandHandler::RegisterFormSubmits(FormHandlerContainer& container)
    {
        container["Turtle-Login"] = [](const form_submit_t& event)
        {
            std::string username = std::get<std::string>(event.components[0].components[0].value);
            std::string password = std::get<std::string>(event.components[1].components[0].value);
            std::string twofactorToken = std::get<std::string>(event.components[2].components[0].value);
            dpp::message m;
            auto result = AuthManager::Instance()->Login(username, password, twofactorToken, &event.command.usr);

            m.set_content(AuthManager::AuthResultToString(result)).set_flags(m_ephemeral);
            event.reply(m);
        };
    }

    void LoginCommandHandler::HandleLoginComand(const std::string& command, const parameter_list_t& parameters, command_source src)
    {
        if (!src.interaction_event.has_value())
            return;

        src.interaction_event.value().command.usr.format_username();

        interaction_modal_response modal("Turtle-Login", "Please login with your Turtle WoW account");
        modal.add_component(
            component().
            set_label("Username").
            set_id("username").
            set_type(dpp::cot_text).
            set_placeholder("Username").
            set_min_length(1).
            set_max_length(12).
            set_text_style(dpp::text_short)
        );

        modal.add_row();
        modal.add_component(
            component().
            set_label("Password").
            set_id("password").
            set_type(dpp::cot_text).
            set_placeholder("Password").
            set_min_length(1).
            set_max_length(16).
            set_text_style(dpp::text_short)
        );

        modal.add_row();
        modal.add_component(
            component().
            set_label("Two-Factor token (if set on account)").
            set_id("Twofactor").
            set_type(dpp::cot_text).
            set_placeholder("2FA-Token").
            set_min_length(0).
            set_default_value("").
            set_text_style(dpp::text_short)
        );


        src.interaction_event.value().dialog(modal);
    }
}