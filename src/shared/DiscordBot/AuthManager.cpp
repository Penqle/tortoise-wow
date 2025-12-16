#pragma once

#include "AuthManager.hpp"
#include "Util.h"
#include "Auth/Sha1.h"

#include "Database/DatabaseEnv.h"

namespace DiscordBot
{
    bool NormalizeString(std::string& utf8str)
    {
        std::wstring wstr_buf;
        if (!Utf8toWStr(utf8str, wstr_buf))
            return false;

        if (wstr_buf.size() > 16)
            return false;

        std::transform(wstr_buf.begin(), wstr_buf.end(), wstr_buf.begin(), wcharToUpperOnlyLatin);

        return WStrToUtf8(wstr_buf, utf8str);
    }

    std::string CalculateShaPassHash(std::string& name, std::string& password)
    {
        Sha1Hash sha;
        sha.Initialize();
        sha.UpdateData(name);
        sha.UpdateData(":");
        sha.UpdateData(password);
        sha.Finalize();

        std::string encoded;
        hexEncodeByteArray(sha.GetDigest(), sha.GetLength(), encoded);

        return encoded;
    }


    std::string AuthManager::AuthResultToString(AuthResult res)
    {
        switch (res)
        {
        case AuthResult::AlreadyAuthed:
            return "You are already logged in.";

        case AuthResult::Successful:
            return "Successfully logged in.";

        case AuthResult::WrongCredentials:
            return "Wrong Credentials.";

        case AuthResult::WrongTwoFactorToken:
            return "Wrong 2FA Token.";

        default:
            return "Unkown Error.";
        }
    }


    bool AuthManager::IsAuthenticated(const dpp::user* user) const
    {
        if (!user)
            return false;

        auto pairItr = _authData.find(user->id);

        if (pairItr == _authData.end() || !pairItr->second.authenticated)
            return false;
        return true;
    }

    bool AuthManager::IsAuthenticated(uint32_t gameAccountId) const
    {
        auto pairItr = _authDataLookup.find(gameAccountId);

        if (pairItr == _authDataLookup.end() || !pairItr->second.get().authenticated)
            return false;
        return true;
    }

    const AuthenticationInfo* AuthManager::GetAuthInfo(const dpp::user* user) const
    {
        if (!user)
            return nullptr;

        const auto pairItr = _authData.find(user->id);

        if (pairItr != _authData.end())
            return &pairItr->second;
        return nullptr;
    }

    const AuthenticationInfo* AuthManager::GetAuthInfo(uint32_t gameAccountId) const
    {
        const auto pairItr = _authDataLookup.find(gameAccountId);

        if (pairItr != _authDataLookup.end())
            return &pairItr->second.get();
        return nullptr;
    }

    AuthResult AuthManager::Authenticate(std::string username, std::string password, std::string twofactorToken, const dpp::user* user)
    {
        if (!user)
            return AuthResult::WrongCredentials;

        std::string safeUsername = username;
        LoginDatabase.escape_string(safeUsername);

        if (!NormalizeString(username) || !NormalizeString(password))
            return AuthResult::WrongCredentials;

        std::unique_ptr<QueryResult> result = 
            std::unique_ptr<QueryResult>(LoginDatabase.PQuery("SELECT id, UPPER(sha_pass_hash), rank, username, security, locked FROM account WHERE username = '%s'", safeUsername.c_str()));


        if (!result)
            return AuthResult::WrongCredentials;

        auto fields = result->Fetch();


        uint32_t accountId = fields[0].GetUInt32();

        if (!accountId)
            return AuthResult::WrongCredentials;

        auto userHash = CalculateShaPassHash(username, password);


        if (userHash != fields[1].GetCppString())
            return AuthResult::WrongCredentials;

        auto securityToken = fields[4].GetCppString();
        auto lockedFlags = fields[5].GetUInt32();

        uint8 secLevel = fields[2].GetUInt8();
        
        constexpr uint32 FixedPin = 0x02;

        const static auto VerifyPinData = [](uint32 generatedPin, std::string givenPin)
        {
            return static_cast<uint32>(std::stoi(givenPin)) == generatedPin;
        };

        if ((lockedFlags & FixedPin) == FixedPin || !securityToken.empty() || secLevel > SEC_PLAYER)
        {
            //expect 2FA token.
            //Generate 3 to account for time drift.
            time_t now = time(nullptr);
           // uint32 pin1 = GenerateToken(securityToken, now - 30), pin2 = GenerateToken(securityToken, now), pin3 = GenerateToken(securityToken, now + 30);

           // bool validTwoFactorToken = VerifyPinData(pin1, twofactorToken) || VerifyPinData(pin2, twofactorToken) || VerifyPinData(pin3, twofactorToken);
            bool validTwoFactorToken = true;
            if (!validTwoFactorToken)
                return AuthResult::WrongTwoFactorToken;
        }

        if (IsAuthenticated(user))
            return AuthResult::AlreadyAuthed;


        auto& authData = _authData[user->id];

        authData.authenticated = true;
        authData.discordId = user->id;
        authData.gameAccountId = accountId;
        authData.securityLevel = secLevel;
        authData.gameAccountName = fields[3].GetCppString();

        auto info = _authData[user->id];
        _authDataLookup.insert({ accountId, std::ref(info) });
        return AuthResult::Successful;
    }

    AuthResult AuthManager::Login(std::string username, std::string password, std::string twofactorToken, const dpp::user* user)
    {
        return Authenticate(username, password, twofactorToken, user);
    }

    void AuthManager::Logout(const dpp::user* user)
    {
        auto itr = _authData.find(user->id);

        if (itr == _authData.end())
            return;

        _authDataLookup.erase(itr->second.gameAccountId);
        _authData.erase(itr);
    }
}