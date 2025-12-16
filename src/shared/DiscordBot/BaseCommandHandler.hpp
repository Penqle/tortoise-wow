#pragma once
#include "dpp/dpp.h"

#include "Common.h"
#include "Platform/Define.h"
#include <memory>
#include <any>
#include <vector>
#include <stdint.h>
#include <type_traits>

#define DISCORD_DEBUG false

namespace DiscordBot
{
    class Bot;

    namespace detail
    {
        template< typename T >
        struct get_member_function_type_helper { using type = void; };

        template< typename T, typename  U>
        struct get_member_function_type_helper<T U::*> { using type = U; };

        template< typename T >
        struct get_member_function_type
            : get_member_function_type_helper< typename std::remove_cv<T>::type > {};
    }

    class BaseCommandHandler
    {
    public:
        using FormHandlerContainer = std::unordered_map<std::string, std::function<void(const dpp::form_submit_t&)>>;


        BaseCommandHandler()
        {
            _handlers.push_back(this);
        }



        template <typename T>
        dpp::command_handler MakeCommandHandler(T&& t)
        {
            return std::bind(std::forward<T>(t), static_cast<typename detail::get_member_function_type<T>::type*>(this), std::placeholders::_1, std::placeholders::_2, std::placeholders::_3);
        }


        static void RegisterAll(Bot& bot);

        virtual void RegisterCommands(dpp::commandhandler&) = 0;

        //override to allow/disallow all commands of said handler.
        virtual bool IsAuthorized(const dpp::user*) const = 0;


        virtual void RegisterFormSubmits(FormHandlerContainer&) {}
        static void HandleFormSubmit(const dpp::form_submit_t&);



        virtual ~BaseCommandHandler() noexcept = default;

    protected:
        void Register(const std::string& command, const dpp::parameter_registration_t& parameters, dpp::command_handler handler, const std::string& description = "",
            dpp::snowflake guild_id = 0);

        const dpp::user* _currentUser = nullptr;

    private:


        static bool CheckAllowedAccess(const dpp::user* user, std::string command);
        

        static std::vector<BaseCommandHandler*> _handlers;
        static std::unique_ptr<dpp::commandhandler> _commandHandler; 
        static std::unordered_map<std::string, BaseCommandHandler*> _commandLinks;

        
        static FormHandlerContainer _formSubmits;
    };
}