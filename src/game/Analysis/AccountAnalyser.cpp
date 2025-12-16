#include "Database/DatabaseEnv.h"
#include "Database/DatabaseImpl.h"
#include "DiscordBot/Bot.hpp" 
#include "re2/re2.h"
#include "WorldSession.h"
#include "World.h"
#include "Player.h"
#include "AccountAnalyser.hpp"

template <typename T>
bool Eq(T v, T g)
{
    return v == g;
}

template <typename Check, typename ...Args>
bool AllVal(Check t, Args... args)
{
    return (... && Eq<Check>(args, t));
}

AccountAnalyser::AccountAnalyser(WorldSession* session) : _session(session), _accountId(session->GetAccountId()) {}

void AccountAnalyser::LoadFingerprintsCallback(QueryResult* result, uint32 SessionID)
{
	WorldSession* AccountSession = sWorld.FindSession(SessionID);
	if (AccountSession == nullptr)
	{
        if (result)
            delete result;
		return;
	}

    if (!result)
    {
        ++AccountSession->_analyser->m_loadStep;
        return;
    }

    AccountSession->_analyser->_loadedSamples.reserve(result->GetRowCount());
    do {
        auto fields = result->Fetch();
        
        
        uint32 fingerprint = fields[1].GetUInt32();
        uint32 accountId = fields[2].GetUInt32();
        std::string ipAddress = fields[3].GetString();
        std::string cpuType = fields[7].GetString();

        uint32 activeCpus = fields[8].GetUInt32();
        uint32 totalCpus = fields[9].GetUInt32();

        uint32 pageSize = fields[10].GetUInt32();
        uint32 timeZoneBiasLow = fields[11].GetUInt32();
        uint32 suiteMask = fields[13].GetUInt32();
        uint32 mitPolicies = fields[14].GetUInt32();
        uint32 numPhysicalPages = fields[15].GetUInt32();
        uint32 sharedDataFlags = fields[16].GetUInt32();
        uint32 unparkedCpuCount = fields[20].GetUInt32();
        uint32 enclaveMask = fields[21].GetUInt32();
        uint32 qpcData = fields[22].GetUInt32();

        bool useExtendedData = true;

        if (AllVal(0, pageSize, timeZoneBiasLow, suiteMask, mitPolicies, numPhysicalPages, sharedDataFlags, unparkedCpuCount, enclaveMask, qpcData))
            useExtendedData = false;

        bool useCpuData = true;
        if (cpuType.empty())
            useCpuData = false;

        AnalysisInfo info
        {
            fingerprint,
            ipAddress,
            cpuType,
            activeCpus,
            totalCpus,
            pageSize,
            timeZoneBiasLow,
            suiteMask,
            mitPolicies,
            numPhysicalPages,
            sharedDataFlags,
            unparkedCpuCount,
            enclaveMask,
            qpcData,
            useExtendedData,
            useCpuData
        };
        
        AccountSession->_analyser->_fingerprintSampleLookup.insert(fingerprint);

        AccountSession->_analyser->_loadedSamples.push_back(std::move(info));
        //we wont get itr invalidation so we can safely ref all of this info.

    } while (result->NextRow());

    ++AccountSession->_analyser->m_loadStep;
    
    delete result;
}

void AccountAnalyser::LoadIPHistoryCallback(QueryResult* result, uint32 SessionID)
{
    WorldSession* AccountSession = sWorld.FindSession(SessionID);
    if (AccountSession == nullptr)
    {
        if (result)
            delete result;
        return;
    }

    if (!result)
    {
        ++AccountSession->_analyser->m_loadStep;
        return;
    }

    uint32 totalLogins = 0;
    do {
        auto fields = result->Fetch();

        std::string ip = fields[0].GetCppString();

        std::pair<uint32, bool> value;
        auto& [loginCount, isTrusted] = value;
        loginCount = fields[1].GetUInt32();

        if (!totalLogins)
            totalLogins = fields[2].GetUInt32();

        //Improve this
        if (loginCount >= totalLogins / 100 * sWorld.getConfig(CONFIG_UINT32_ACCOUNT_TRUSTED_IP_PERCENTAGE))
            isTrusted = true;
        else
            isTrusted = false;

        AccountSession->_analyser->_ipHistory.insert({ ip, value });

    } while (result->NextRow());

    AccountSession->_analyser->_totalLogins = totalLogins;

    ++AccountSession->_analyser->m_loadStep;

    delete result;
}

bool AccountAnalyser::IsAutoBannedPrint(uint64 extendedPrint)
{
    auto itr = _autoBannedPrints.find(extendedPrint);

    if (itr != _autoBannedPrints.end())
        return true;
    return false;
}

void AccountAnalyser::AddAutoBanExtendedPrint(uint64 extendedPrint)
{
    if (IsAutoBannedPrint(extendedPrint))
        return;

    _autoBannedPrints.insert(extendedPrint);

    LoginDatabase.PExecute("REPLACE INTO `hwprint_autobans` (`extendedPrint`) VALUES (%llu)", extendedPrint);
}

void AccountAnalyser::CheckExtendedPrintMark()
{
    if (_markedExtendedPrints.find(_currentSample.GetHash()) != _markedExtendedPrints.end())
    {
        std::string message = string_format("Marked extended print logged in! {} on account {} (ID {}). IP {}.", _currentSample.GetHash(), _session->GetUsername(), _session->GetAccountId(),
            _session->GetRemoteAddress().c_str());

        sWorld.SendGMText(message);
#ifdef USING_DISCORD_BOT
        sDiscordBot->SendMessageToChannel(1102940763970609152, message, DiscordBot::MessagePriority::Requeue);
#endif
    }
}

void AccountAnalyser::Initialize()
{
    if (!_enabled)
        return;

    if (m_loadStep != LoadSteps) // not loaded yet.. reschedule in 500 ms.
    {
        _rescheduleTimer = 500;
        return;
    }



    auto accountData = sWorld.GetAccountData(_accountId);
    accountData->lastExtendedFingerprint = _currentSample.GetHash();


    CheckExtendedPrintMark();
    if (IsAutoBannedPrint(accountData->lastExtendedFingerprint))
    {
        sWorld.BanAccount(accountData->id, 0xFFFFFFFF, string_format("Auto-Ban HWprint {}", accountData->lastExtendedFingerprint), "Console");
        sWorld.SendGMText(string_format("Account {} ({}) auto-banned for HWprint {}", accountData->username, accountData->id, accountData->lastExtendedFingerprint));
        return;
    }

    if (_totalLogins < 20 || _loadedSamples.size() < 20)
        return;

    // Have a weight threshold to alert people, lock the player if it is and announce on Discord. Lock the player from trades, AH, destroying, mailing.
    // Have a GM command to manually lock or unlock these actions for the player.


    //First off, check if the IP we're logged in with is trusted, if so, do nothing regardless.

    if (sWorld.getConfig(CONFIG_BOOL_ANALYSIS_ALLOW_RELAXED_IP))
    {
        // allow /16 subnets to still count in block.
        // ISPs with dynamic registries do this a lot.

        bool safe = false;

        //We do not do perfect IP matching as the IPs are already valid here, we just need a quick capture group here.
        static re2::RE2 ipPattern = R"((\d+).(\d+).(\d+).(\d+))";

        uint32 currentSampleOctets[4]{};

        re2::RE2::FullMatch(_currentSample.ipAddress, ipPattern, &currentSampleOctets[0], &currentSampleOctets[1], &currentSampleOctets[2], &currentSampleOctets[3]);

        for (const auto& elem : _ipHistory)
        {
            const auto& ip = elem.first;

            //don't handle non-trusted IPs
            if (!elem.second.second)
                continue;

            uint32 ipHistoryOctets[4]{};
            
            re2::RE2::FullMatch(_currentSample.ipAddress, ipPattern, &ipHistoryOctets[0], &ipHistoryOctets[1], &ipHistoryOctets[2], &ipHistoryOctets[3]);

            if (ipHistoryOctets[0] && ipHistoryOctets[1] && ipHistoryOctets[0] == currentSampleOctets[0] && ipHistoryOctets[1] == currentSampleOctets[1])
            {
                safe = true;
                break;
            }
        }

        //log soonTM
        if (safe)
            return;
    }
    else
    {
        if (auto itr = _ipHistory.find(_currentSample.ipAddress); itr != _ipHistory.end() && itr->second.second)
            return;
    }



   //Account logged in with unknown IP / untrusted IP

    uint32 susRating = 0;

    

    const bool DetailedReportSearch = sWorld.getConfig(CONFIG_BOOL_ANALYSIS_DO_SHARED_DATA_DETAILED_REPORT);

    if (_fingerprintSampleLookup.find(_currentSample.fingerprint) == _fingerprintSampleLookup.end())
        susRating += sWorld.getConfig(CONFIG_UINT32_ANALYSIS_NO_FINGERPRINT_MATCH_WEIGHT);

    
    if (!_currentSample.useExtendedData)
        susRating += sWorld.getConfig(CONFIG_UINT32_ANALYSIS_NO_EXTENDED_DATA_WEIGHT);
    else
    {
        //populate known samples, hash them and check for a match if enabled.
        size_t currentSampleHash = _currentSample.GetHash();

        bool foundHash = false;
        for (const auto& elem : _loadedSamples)
        {
            if (elem.GetHash() == currentSampleHash)
            {
                foundHash = true;
                break;
            }
        }

        //if we found a match and the config is set then we're fine with letting them in.
        if (foundHash && sWorld.getConfig(CONFIG_BOOL_ANALYSIS_STOP_ON_CORRECT_EXTENDED_DATA))
            return;

        if (!foundHash && !DetailedReportSearch)
            susRating += sWorld.getConfig(CONFIG_UINT32_ANALYSIS_NO_EXTENDED_DATA_MATCH_WEIGHT);
    }

    if (!_currentSample.useCpuData)
        susRating += sWorld.getConfig(CONFIG_UINT32_ANALYSIS_NO_CPU_DATA_WEIGHT);
    else if (!DetailedReportSearch)
    {
        bool foundCpuType = false;
        for (const auto& elem : _loadedSamples)
        {
            if (elem.cpuType == _currentSample.cpuType)
            {
                foundCpuType = true;
                break;
            }
        }

        if (!foundCpuType)
            susRating += sWorld.getConfig(CONFIG_UINT32_ANALYSIS_NO_CPU_DATA_MATCH_WEIGHT);
    }

     
    if (DetailedReportSearch)
    {
        constexpr size_t MaxAttr = static_cast<size_t>(AnalysisAttribute::MaxAttributes);
        uint32 processedAlerts = 0;
        std::array<bool, MaxAttr> processed{}; // value-init to false


        static auto MakeAttributeTable = [](const AnalysisInfo& info)
        {
            return std::array<std::reference_wrapper<const uint32>, static_cast<size_t>(AnalysisAttribute::MaxAttributes)>
            {
                std::cref(info.activeCpus),
                std::cref(info.totalCpus),
                std::cref(info.pageSize),
                std::cref(info.timeZoneBias),
                std::cref(info.suiteMask),
                std::cref(info.mitPolicies),
                std::cref(info.numPhysicalPages),
                std::cref(info.sharedDataFlags),
                std::cref(info.unparkedCpuCount),
                std::cref(info.enclaveMask),
                std::cref(info.qpcData)
            };
        };

        const auto currentSampleTable = MakeAttributeTable(_currentSample);

        for (const auto& elem : _loadedSamples)
        {
            if (processedAlerts >= MaxAttr)
                break;

            const auto loadedSampleTable = MakeAttributeTable(elem);

            for (int i = 0; i < loadedSampleTable.size(); ++i)
            {
                if (processed[i])
                    continue;

                if (loadedSampleTable[i].get() != currentSampleTable[i].get())
                {
                    susRating += AnalysisAttributeWeight(static_cast<AnalysisAttribute>(i));
                    processed[i] = true;
                    processedAlerts++;
                }
            }
        }
    }

    const uint32 RatingThreshold = sWorld.getConfig(CONFIG_UINT32_ANALYSIS_WARNING_THRESHOLD);
    const bool PingOnWarning = sWorld.getConfig(CONFIG_BOOL_ANALYSIS_PING_ON_WARNING);

    if (sWorld.getConfig(CONFIG_BOOL_ANALYSIS_LOG_DISCORD_SUMMARY))
    {
#ifdef USING_DISCORD_BOT
        sDiscordBot->SendMessageToChannel(1089390435350360134, string_format("Character {}({})/ Account ID({}) logged in from un-trusted IP. Suspicion rating {} / {}",
            _session->GetPlayerName(), _session->GetPlayer() ? _session->GetPlayer()->GetGUIDLow() : 0, _accountId, susRating, RatingThreshold));
#endif
    }

    if (susRating >= RatingThreshold)
    {
#ifdef USING_DISCORD_BOT
        const static std::string SeniorGMPing = "<@&1085904084122468373> ";

        sDiscordBot->SendMessageToChannel(1089390435350360134, string_format("{}WARNING! Character {}({})/ Account ID({}) logged in from un-trusted IP. Suspicion rating {} / {}. THRESHOLD BROKEN.",
            PingOnWarning ? SeniorGMPing.c_str() : "", _session->GetPlayerName(), _session->GetPlayer() ? _session->GetPlayer()->GetGUIDLow() : 0, _accountId, susRating, RatingThreshold));
#endif
        if (sWorld.getConfig(CONFIG_BOOL_ANALYSIS_AUTOMATIC_PUNIHSMENT))
            _session->MarkSuspicious();
    }
}


void AccountAnalyser::LoadFromDB()
{
    if (!_enabled)
        return;

    //Get extended fingerprint history first.
    LoginDatabase.AsyncPQueryUnsafe(&AccountAnalyser::LoadFingerprintsCallback,
        _session->GetAccountId(), string_format("SELECT * FROM `system_fingerprint_usage` WHERE `account` = {}", _session->GetAccountId()).c_str());

    LoginDatabase.AsyncPQueryUnsafe(&AccountAnalyser::LoadIPHistoryCallback,
        _session->GetAccountId(), string_format("SELECT `account_ip`, `login_count`, SUM(login_count) FROM `account_ip_logins` WHERE `account_id` = {}  ORDER BY `login_count` DESC", _session->GetAccountId()).c_str());

}

void AccountAnalyser::CheckExtendedHashes()
{
    //Check if any extended hashes are empty and fill if they are.
    auto result = std::unique_ptr<QueryResult>(LoginDatabase.Query("SELECT * FROM `system_fingerprint_usage` WHERE `extendedHash` = 0 AND `suiteMask` != 0"));

    if (result)
    {

        do {
            auto fields = result->Fetch();
            uint32 id = fields[0].GetUInt32();
            uint32 fingerprint = fields[1].GetUInt32();
            uint32 accountId = fields[2].GetUInt32();
            std::string ipAddress = fields[3].GetString();
            std::string cpuType = fields[7].GetString();

            uint32 activeCpus = fields[8].GetUInt32();
            uint32 totalCpus = fields[9].GetUInt32();

            uint32 pageSize = fields[10].GetUInt32();
            uint32 timeZoneBiasLow = fields[11].GetUInt32();
            uint32 suiteMask = fields[13].GetUInt32();
            uint32 mitPolicies = fields[14].GetUInt32();
            uint32 numPhysicalPages = fields[15].GetUInt32();
            uint32 sharedDataFlags = fields[16].GetUInt32();
            uint32 unparkedCpuCount = fields[20].GetUInt32();
            uint32 enclaveMask = fields[21].GetUInt32();
            uint32 qpcData = fields[22].GetUInt32();

            bool useExtendedData = true;

            if (AllVal(0, pageSize, timeZoneBiasLow, suiteMask, mitPolicies, numPhysicalPages, sharedDataFlags, unparkedCpuCount, enclaveMask, qpcData))
                useExtendedData = false;

            bool useCpuData = true;
            if (cpuType.empty())
                useCpuData = false;

            AnalysisInfo info
            {
                fingerprint,
                ipAddress,
                cpuType,
                activeCpus,
                totalCpus,
                pageSize,
                timeZoneBiasLow,
                suiteMask,
                mitPolicies,
                numPhysicalPages,
                sharedDataFlags,
                unparkedCpuCount,
                enclaveMask,
                qpcData,
                useExtendedData,
                useCpuData
            };

            LoginDatabase.DirectPExecute("UPDATE `system_fingerprint_usage` SET `extendedHash` = %llu WHERE `id` = %u", info.GetHash(), id);

        } while (result->NextRow());
    }


    result = std::unique_ptr<QueryResult>(LoginDatabase.Query("SELECT `extendedPrint` FROM `hwprint_marks`"));

    if (result)
    {
        do {
            auto fields = result->Fetch();
            _markedExtendedPrints.insert(fields[0].GetUInt64());
        } while (result->NextRow());
    }

    result = std::unique_ptr<QueryResult>(LoginDatabase.Query("SELECT `extendedPrint` FROM `hwprint_autobans`"));

    if (result)
    {

        do {
            auto fields = result->Fetch();
            _autoBannedPrints.insert(fields[0].GetUInt64());
        } while (result->NextRow());
    }
}

void AccountAnalyser::MarkExtendedPrint(uint64 extendedPrint)
{
    if (_markedExtendedPrints.find(extendedPrint) != _markedExtendedPrints.end())
        return;

    _markedExtendedPrints.insert(extendedPrint);

    LoginDatabase.PExecute("REPLACE INTO `hwprint_marks` (`extendedPrint`) VALUES (%llu)", extendedPrint);
}
