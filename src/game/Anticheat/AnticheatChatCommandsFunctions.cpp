#include "Chat.h"
#include "World.h"
#include "libanticheat.hpp"
#include "Config.hpp"
#include "Player.h"
#include "ObjectMgr.h"
#include "AccountMgr.h"
#include "Antispam/Antispam.h"
#include "CommandStream.h"

#include <istream>

bool ChatHandler::HandleAnticheatInfoCommand(char* args)
{
    Player *target = nullptr;

    if (!ExtractPlayerTarget(&args, &target))
    {
        return false;
    }

    if (auto const anticheat = dynamic_cast<const Anticheat::SessionAnticheat *>(target->GetSession()->GetAntiCheat()))
    {
        PSendSysMessage("Anticheat info for %s", target->GetGuidStr().c_str());
        anticheat->SendCheatInfo(this);
    }
    else
    {
        PSendSysMessage("No anticheat session for %s, they may be a bot or anticheat is disabled", target->GetGuidStr().c_str());
    }
    return true;
}

bool ChatHandler::HandleAnticheatEnableCommand(char* args)
{
    PSendSysMessage("Anticheat Late March version");
    return true;
}

bool ChatHandler::HandleAnticheatSilenceCommand(char* args)
{
    uint32 AccountId = 0;
    if (!ExtractUInt32Base(&args, AccountId, 10))
    {
        return false;
    }

    AntispamInterface* pAntispam = sAnticheatLib->GetAntispam();
    if (!pAntispam)
    {
        SendSysMessage("Core is not compiled with antispam.");
        return true;
    }

    pAntispam->Mute(AccountId);

    PSendSysMessage("Silenced account %u", AccountId);
    return true;
}

bool ChatHandler::HandleAnticheatSpaminfoCommand(char* args)
{
    Player *target = nullptr;
    ObjectGuid playerGuid;

    if (!ExtractPlayerTarget(&args, &target, &playerGuid))
        return false;

    AntispamInterface* pAntispam = sAnticheatLib->GetAntispam();
    if (!pAntispam)
    {
        SendSysMessage("Core is not compiled with antispam.");
        return true;
    }

    uint32 accountId;
    if (target)
        accountId = target->GetSession()->GetAccountId();
    else
        accountId = sObjectMgr.GetPlayerAccountIdByGUID(playerGuid);

    if (!accountId)
    {
        SendSysMessage("Can't find player account.");
        return true;
    }

    StringSet const* mutedMessages = pAntispam->GetMutedMessagesForAccount(accountId);
    if (!mutedMessages)
    {
        SendSysMessage("No muted messages for player.");
        return true;
    }

    PSendSysMessage("Listing muted messages for account %u:", accountId);
    for (auto const& message : *mutedMessages)
    {
        SendSysMessage(message.c_str());
    }

    return true;
}

bool ChatHandler::HandleAnticheatFingerprintListCommand(char* args)
{
    uint32 fingerprintNum = 0;

    if (!ExtractUInt32Base(&args, fingerprintNum, 10))
    {
        return false;
    }

    int count = 0;

    //search all session with specified fingerprint
    const World::SessionMap &sessions = sWorld.GetAllSessions();
    for (auto const &sessionPair : sessions)
    {
        const WorldSession* sess = sessionPair.second;
        const Anticheat::SessionAnticheat* anticheat = dynamic_cast<const Anticheat::SessionAnticheat *>(sess->GetAntiCheat());

        if (!anticheat)
            continue;

        if (anticheat->GetFingerprint() == fingerprintNum)
        {
            std::stringstream str;

            str << "Account: " << sess->GetUsername() << " ID: " << sess->GetAccountId() << " IP: " << sess->GetRemoteAddress();

            if (auto const player = sess->GetPlayer())
                str << " Player name: " << player->GetName();

            SendSysMessage(str.str().c_str());

            ++count;
        }
    }

    PSendSysMessage("End of listing for fingerprint %u.  Found %d matches.", fingerprintNum, count);
    return true;
}

bool ChatHandler::HandleAnticheatHwPrintMarkCommand(char* args)
{
    CommandStream commandStream{ args };
    uint64 extendedPrint;

    if (!(commandStream >> extendedPrint))
    {
        SendSysMessage("Wrongly formatted HWPrint.");
        return false;
    }


    AccountAnalyser::MarkExtendedPrint(extendedPrint);

    PSendSysMessage("Marking Extended Print %llu", extendedPrint);

    return true;
}

bool ChatHandler::HandleAnticheatHwPrintAutobanCommand(char* args)
{
    CommandStream commandStream{ args };
    uint64 extendedPrint;

    if (!(commandStream >> extendedPrint))
    {
        SendSysMessage("Wrongly formatted HWPrint.");
        return false;
    }

    AccountAnalyser::AddAutoBanExtendedPrint(extendedPrint);


    PSendSysMessage("Added Extended FP autoban on %llu", extendedPrint);
    return true;
}


bool ChatHandler::HandleAnticheatHwPrintListCommand(char* args)
{
    CommandStream commandStream { args };
    uint64 extendedPrint;

    if (!(commandStream >> extendedPrint))
    {
        SendSysMessage("Wrongly formatted HWPrint.");
        return false;
    }


    PSendSysMessage("Listing logged in clients with extended FP %llu:", extendedPrint);

    const World::SessionMap& sessions = sWorld.GetAllSessions();
    for (const auto& sessionPair : sessions)
    {
        const auto& session = sessionPair.second;
        auto& sample = session->_analyser->GetCurrentSample();
        if (sample.GetHash() == extendedPrint && sample.GetHash() != 0)
        {
            auto player = session->GetPlayer();
            PSendSysMessage("Found Match for Account ID %u, player %s (GUID %u). IP: %s", session->GetAccountId(), player ? player->GetName() : "<None> (Not logged in)", player ? player->GetGUIDLow() : 0
                , session->GetRemoteAddress().c_str());
        }
    }

    return true;
}

bool ChatHandler::HandleAnticheatFingerprintHistoryCommand(char* args)
{
    uint32 fingerprintNum = 0;

    if (!ExtractUInt32Base(&args, fingerprintNum, 10))
    {
        return false;
    }

    PSendSysMessage("Listing history for fingerprint %u.  Maximum history length from config: %u", fingerprintNum, sAnticheatConfig.GetFingerprintHistory());

    std::unique_ptr<QueryResult> result(LoginDatabase.PQuery("SELECT account, ip, realm, time FROM system_fingerprint_usage WHERE fingerprint = %u ORDER BY `time` DESC", fingerprintNum));

    int count = 0;
    if (result)
    {
        do
        {
            const Field* fields = result->Fetch();

            uint32 accountId = fields[0].GetUInt32();
            std::string ip = fields[1].GetCppString();
            uint32 realm = fields[2].GetUInt32();
            std::string time = fields[3].GetCppString();

            PSendSysMessage("Account ID: %u IP: %s Realm: %u Time: %s", accountId, ip.c_str(), realm, time.c_str());

            ++count;
        } while (result->NextRow());
    }

    PSendSysMessage("End of history for fingerprint %u.  Found %d matches", fingerprintNum, count);
    return true;
}

bool ChatHandler::HandleAnticheatFingerprintAHistoryCommand(char* args)
{
    uint32 AccountId = 0;
    if (!ExtractUInt32Base(&args, AccountId, 10))
    {
        return false;
    }

    PSendSysMessage("Listing history for account %u.  Maximum length: %u", AccountId, sAnticheatConfig.GetFingerprintHistory());

    std::unique_ptr<QueryResult> result(LoginDatabase.PQuery(
        "SELECT fingerprint, ip, realm, time FROM system_fingerprint_usage WHERE account = %u ORDER BY `time` DESC LIMIT %u",
        AccountId, sAnticheatConfig.GetFingerprintHistory()));

    int count = 0;
    if (result)
    {
        do
        {
            const Field* fields = result->Fetch();

            uint32 fingerprint = fields[0].GetUInt32();
            std::string ip = fields[1].GetCppString();
            uint32 realm = fields[2].GetUInt32();
            std::string time = fields[3].GetCppString();

            PSendSysMessage("Fingerprint: %u%s IP: %s Realm: %u Time: %s", fingerprint, sAccountMgr.IsFingerprintBanned(fingerprint) ? " (BANNED)" : "", ip.c_str(), realm, time.c_str());

            ++count;
        } while (result->NextRow());
    }

    PSendSysMessage("End of history for account %u.  Found %d matches", AccountId, count);
    return true;
}

bool ChatHandler::HandleAnticheatFingerprintAutobanAddCommand(char* args)
{
    uint32 fingerprint = 0;
    if (!ExtractUInt32(&args, fingerprint))
        return false;

    if (!fingerprint)
        return false;

    char* cReason = ExtractArg(&args);
    if (!cReason)
        return false;

    std::string reason(cReason);
    LoginDatabase.escape_string(reason);

    LoginDatabase.PExecute("REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (%u, '%s')", fingerprint, reason.c_str());
    sAccountMgr.AddAutobanFingerprint(fingerprint);
    PSendSysMessage("Accounts that connect with fingerprint %u will be automatically banned periodically.", fingerprint);

    return true;
}

bool ChatHandler::HandleAnticheatFingerprintAutobanRemoveCommand(char* args)
{
    uint32 fingerprint = 0;
    if (!ExtractUInt32(&args, fingerprint))
        return false;

    if (!fingerprint)
        return false;

    char* cReason = ExtractArg(&args);
    if (!cReason)
        return false;

    std::string reason(cReason);
    LoginDatabase.escape_string(reason);

    LoginDatabase.PExecute("DELETE FROM `fingerprint_autoban` WHERE `fingerprint`=%u", fingerprint);
    sAccountMgr.RemoveAutobanFingerprint(fingerprint);
    PSendSysMessage("Removed fingerprint %u from auto ban list.", fingerprint);

    return true;
}

bool ChatHandler::HandleAnticheatCheatinformCommand(char* args)
{
    WorldSession* session = GetSession();

    uint32 flags = session->GetAccountFlags();

    if (!(flags & ACCOUNT_FLAG_SHOW_ANTICHEAT))
    {
        session->SetAccountFlags(flags | ACCOUNT_FLAG_SHOW_ANTICHEAT);
        LoginDatabase.PExecute("UPDATE account SET flags = flags | 0x%x WHERE id = %u",
            session->GetAccountId(), ACCOUNT_FLAG_SHOW_ANTICHEAT);
        SendSysMessage("Anticheat messages will be shown");
    }
    else
    {
        session->SetAccountFlags(flags & ~ACCOUNT_FLAG_SHOW_ANTICHEAT);
        LoginDatabase.PExecute("UPDATE account SET flags = flags & ~0x%x WHERE id = %u",
            session->GetAccountId(), ACCOUNT_FLAG_SHOW_ANTICHEAT);
        SendSysMessage("Anticheat messages will be hidden");
    }
    return true;
}

bool ChatHandler::HandleAnticheatSpaminformCommand(char* args)
{
    WorldSession* session = GetSession();

    uint32 flags = session->GetAccountFlags();

    if (!(flags & ACCOUNT_FLAG_SHOW_ANTISPAM))
    {
        session->SetAccountFlags(flags | ACCOUNT_FLAG_SHOW_ANTISPAM);
        LoginDatabase.PExecute("UPDATE account SET flags = flags | 0x%x WHERE id = %u",
            session->GetAccountId(), ACCOUNT_FLAG_SHOW_ANTISPAM);
        SendSysMessage("Antispam messages will be shown");
    }
    else
    {
        session->SetAccountFlags(flags & ~ACCOUNT_FLAG_SHOW_ANTISPAM);
        LoginDatabase.PExecute("UPDATE account SET flags = flags & ~0x%x WHERE id = %u",
            session->GetAccountId(), ACCOUNT_FLAG_SHOW_ANTISPAM);
        SendSysMessage("Antispam messages will be hidden");
    }
    return true;
}

bool ChatHandler::HandleAnticheatBlacklistCommand(char* args)
{
    AntispamInterface* pAntispam = sAnticheatLib->GetAntispam();
    if (!pAntispam)
    {
        SendSysMessage("Core is not compiled with antispam.");
        return true;
    }

    strToUpper(args, strlen(args));

    char* blacklistArg = ExtractQuotedArg(&args);
    if (!blacklistArg)
        return false;

    std::string blacklistedWord = blacklistArg;

    if (blacklistedWord.empty() || blacklistedWord.find_first_not_of(' ') == std::string::npos)
    {
        SendSysMessage("Bad word. Please use quotes to add the word to blacklist.");
        return false;
    }

    pAntispam->BlacklistWord(blacklistedWord.c_str());

    PSendSysMessage("Added '%s' to antispam blacklist.", blacklistedWord.c_str());
    return true;
}

bool ChatHandler::HandleAnticheatWhitelistCommand(char* args)
{
    AntispamInterface* pAntispam = sAnticheatLib->GetAntispam();
    if (!pAntispam)
    {
        SendSysMessage("Core is not compiled with antispam.");
        return true;
    }

    strToUpper(args, strlen(args));
    pAntispam->WhitelistWord(args);

    PSendSysMessage("Removed '%s' from antispam blacklist.", args);
    return true;
}

bool ChatHandler::HandleAnticheatUnsilenceCommand(char* args)
{
    uint32 AccountId = 0;
    if (!ExtractUInt32Base(&args, AccountId, 10))
    {
        return false;
    }

    AntispamInterface* pAntispam = sAnticheatLib->GetAntispam();
    if (!pAntispam)
    {
        SendSysMessage("Core is not compiled with antispam.");
        return true;
    }

    pAntispam->Unmute(AccountId);

    PSendSysMessage("Unsilenced account %u", AccountId);
    return true;
}

bool ChatHandler::HandleAnticheatDebugExtrapCommand(char* args)
{
    uint32 seconds;    
    if (!ExtractUInt32Base(&args, seconds, 10))
        seconds = 30;

    if (seconds > HOUR)
    {
        SendSysMessage("Do not enable this for more than an hour");
        return false;
    }

    auto const anticheat = dynamic_cast<Anticheat::AnticheatLib *>(GetAnticheatLib());
    if (!anticheat)
    {
        SendSysMessage("No anticheat lib present");
        return false;
    }

    anticheat->EnableExtrapolationDebug(seconds);

    PSendSysMessage("Extrapolation debug enabled for %u seconds", seconds);

    return true;
}