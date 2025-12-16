#pragma once
#include "dpp/dpp.h"

#include <unordered_map>
#include <string>
#include <stdint.h>

namespace DiscordBot
{
    struct AuthenticationInfo
    {
        std::string gameAccountName = "";
        uint32_t gameAccountId = 0;
        bool authenticated = false;
        dpp::snowflake discordId = 0;
        uint32_t securityLevel = 0;
    };

    enum class AuthResult : uint8_t
    {
        Successful = 1,
        AlreadyAuthed,
        WrongCredentials,
        WrongTwoFactorToken
    };

    class AuthManager
    {
    public:
        static AuthManager* Instance()
        {
            static AuthManager i;
            return &i;
        }

        static std::string AuthResultToString(AuthResult res);

        AuthManager(const AuthManager&) = delete;

        bool IsAuthenticated(const dpp::user* user) const;
        bool IsAuthenticated(uint32_t gameAccountId) const;


        const AuthenticationInfo* GetAuthInfo(const dpp::user* user) const;
        const AuthenticationInfo* GetAuthInfo(uint32_t gameAccountId) const;

        AuthResult Login(std::string username, std::string password, std::string twofactorToken, const dpp::user* user);
        void Logout(const dpp::user* user);

    private:
        AuthManager() = default;

        AuthResult Authenticate(std::string username, std::string password, std::string twofactorToken, const dpp::user* user);

        std::unordered_map<dpp::snowflake, AuthenticationInfo> _authData;
        std::unordered_map<uint32_t, std::reference_wrapper<AuthenticationInfo>> _authDataLookup;

    };
}