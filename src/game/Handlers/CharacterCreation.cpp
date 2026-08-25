/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Generic synchronous world-thread character materialization.
 * Reuses the real packet creation validation/persistence path.
 */

#include "Handlers/CharacterCreation.h"

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "SharedDefines.h"
#include "World.h"
#include "WorldSession.h"
#include "ObjectMgr.h"
#include "AccountMgr.h"
#include "Player.h"
#include "MapNodes/MasterPlayer.h"
#include "Database/DBCStores.h"
#include "Database/DBCStructure.h"
#include "Log.h"
#include "Util.h"
#include "ObjectAccessor.h"
#include "ScriptObjects.h"
#include "Logging/DatabaseLogger.hpp"
#include "Config.hpp"

extern uint32 realmID;

enum CinematicsSkipMode
{
    CINEMATICS_SKIP_NONE      = 0,
    CINEMATICS_SKIP_SAME_RACE = 1,
    CINEMATICS_SKIP_ALL       = 2,
};

namespace CharacterCreation
{

CharacterCreateOutcome CreateCharacter(uint32 accountId, CharacterCreateInfo const& info)
{
    CharacterCreateOutcome outcome;
    outcome.result = CHAR_CREATE_ERROR;
    outcome.guid.Clear();

    // Must be called from world thread. There is no explicit IsWorldThread()
    // helper, but all callers are world-thread packet or module logic; we
    // keep the function synchronous and document the requirement.

    if (!accountId)
        return outcome;

    std::string accName;
    if (!sAccountMgr.GetName(accountId, accName))
        return outcome;

    AccountTypes sec = sAccountMgr.GetSecurity(accountId);

    // Account limits - use DB count (synchronous, bounded, not per-tick).
    uint32 charCount = sAccountMgr.GetCharactersCount(accountId);
    if (charCount >= sWorld.getConfig(CONFIG_UINT32_CHARACTERS_PER_REALM))
    {
        outcome.result = CHAR_CREATE_SERVER_LIMIT;
        return outcome;
    }
    if (charCount >= sWorld.getConfig(CONFIG_UINT32_CHARACTERS_PER_ACCOUNT))
    {
        outcome.result = CHAR_CREATE_ACCOUNT_LIMIT;
        return outcome;
    }

    Team team = Player::TeamForRace(info.race);
    if (sec == SEC_PLAYER)
    {
        bool disabled = false;
        if (uint32 mask = sWorld.getConfig(CONFIG_UINT32_CHARACTERS_CREATING_DISABLED))
        {
            switch (team)
            {
                case ALLIANCE: disabled = mask & (1 << 0); break;
                case HORDE:    disabled = mask & (1 << 1); break;
                default: break;
            }
        }
        if (!disabled)
            disabled = sObjectMgr.IsFactionImbalanced(team);
        if (disabled)
        {
            outcome.result = CHAR_CREATE_DISABLED;
            return outcome;
        }
    }

    ChrClassesEntry const* classEntry = sChrClassesStore.LookupEntry(info.class_);
    ChrRacesEntry const* raceEntry = sChrRacesStore.LookupEntry(info.race);
    if (!classEntry || !raceEntry)
    {
        outcome.result = CHAR_CREATE_FAILED;
        return outcome;
    }
    if (raceEntry->HasFlag(CHRRACES_FLAGS_NOT_PLAYABLE))
    {
        outcome.result = CHAR_CREATE_DISABLED;
        return outcome;
    }

    PlayerInfo const* playerInfo = sObjectMgr.GetPlayerInfo(info.race, info.class_);
    if (!playerInfo)
    {
        outcome.result = CHAR_CREATE_ERROR;
        return outcome;
    }

    std::string name = info.name;
    if (!normalizePlayerName(name))
    {
        outcome.result = CHAR_NAME_NO_NAME;
        return outcome;
    }

    uint8 nameRes = ObjectMgr::CheckPlayerName(name, true);
    if (nameRes != CHAR_NAME_SUCCESS)
    {
        outcome.result = nameRes;
        return outcome;
    }

    if (sec == SEC_PLAYER && sObjectMgr.IsReservedName(name))
    {
        outcome.result = CHAR_NAME_RESERVED;
        return outcome;
    }

    if (ObjectGuid existingGuid = sObjectMgr.GetPlayerGuidByName(name))
    {
        PlayerCacheData const* pExistingData = sObjectMgr.GetPlayerDataByGUID(existingGuid.GetCounter());
        if (pExistingData && pExistingData->sName == name)
        {
            outcome.result = CHAR_CREATE_NAME_IN_USE;
            return outcome;
        }
        else
        {
            sObjectMgr.DeletePlayerNameFromCache(name);
            sLog.outError("Character name %s taken but no player data in cache!", name.c_str());
        }
    }

    bool allowTwoSide = !sWorld.IsPvPRealm() || sWorld.getConfig(CONFIG_BOOL_ALLOW_TWO_SIDE_ACCOUNTS) || sec > SEC_PLAYER;
    CinematicsSkipMode skipCinematics = CinematicsSkipMode(sWorld.getConfig(CONFIG_UINT32_SKIP_CINEMATICS));
    bool haveSameRace = false;
    if (!allowTwoSide || skipCinematics == CINEMATICS_SKIP_SAME_RACE)
    {
        std::vector<PlayerCacheData*> characters;
        sObjectMgr.GetPlayerDataForAccount(accountId, characters);
        if (!characters.empty())
        {
            PlayerCacheData* cData = characters.front();
            uint8 accRace = cData->uiRace;
            if (!allowTwoSide)
            {
                if (accRace == 0 || Player::TeamForRace(accRace) != team)
                {
                    outcome.result = CHAR_CREATE_PVP_TEAMS_VIOLATION;
                    return outcome;
                }
            }
            auto it = characters.begin();
            while (it != characters.end() && skipCinematics == CINEMATICS_SKIP_SAME_RACE && !haveSameRace)
            {
                accRace = (*it)->uiRace;
                haveSameRace = info.race == accRace;
                ++it;
            }
        }
    }

    if (info.gender != uint8(GENDER_MALE) && info.gender != uint8(GENDER_FEMALE))
    {
        outcome.result = CHAR_CREATE_ERROR;
        return outcome;
    }

    // Transient session for Player::Create/SaveToDB. Not registered in World,
    // not a fake network session, purely a helper to satisfy Player's
    // session dependency (security, account id) on the world thread.
    WorldSession dummySession(accountId, nullptr, sec, 0, LOCALE_enUS, "127.0.0.1", 0);

    std::unique_ptr<Player> pNewChar = std::make_unique<Player>(&dummySession);
    if (!pNewChar->Create(sObjectMgr.GeneratePlayerLowGuid(), name, info.race, info.class_, info.gender, info.skin, info.face, info.hairStyle, info.hairColor, info.facialHair))
    {
        outcome.result = CHAR_CREATE_ERROR;
        return outcome;
    }

    MasterPlayer masterPlayer(&dummySession);
    masterPlayer.Create(pNewChar.get());

    if ((haveSameRace && skipCinematics == CINEMATICS_SKIP_SAME_RACE) || skipCinematics == CINEMATICS_SKIP_ALL)
        pNewChar->SetCinematic(1);

    pNewChar->SetAtLoginFlag(AT_LOGIN_FIRST);

    if (info.challengeMask)
        pNewChar->SetPlayerVariable(PlayerVariables::PendingChallengeMask, std::to_string(info.challengeMask));

    if (!pNewChar->SaveToDB(false, true, false))
    {
        outcome.result = CHAR_CREATE_ERROR;
        return outcome;
    }
    masterPlayer.SaveToDB();

    sObjectMgr.InsertPlayerInCache(pNewChar.get());
    sObjectMgr.UpdatePlayerCachedPosition(pNewChar.get());

    uint32 newCount = sAccountMgr.GetCharactersCount(accountId);
    if (newCount == 0) // fallback if query races or fails
        newCount = charCount + 1;
    LoginDatabase.PExecute("REPLACE INTO realmcharacters (numchars, acctid, realmid) VALUES (%u, %u, %u)", newCount, accountId, realmID);

    outcome.guid = pNewChar->GetObjectGuid();
    outcome.result = CHAR_CREATE_SUCCESS;

    // Mirror packet-path side effects without coupling to a live session.
    sLog.out(LOG_CHAR, "[%s:%u@%s] Create Character:[%s] (guid: %u) via synchronous materialization",
             accName.c_str(), accountId, "127.0.0.1", name.c_str(), pNewChar->GetGUIDLow());
    sDBLogger.LogCharAction({ pNewChar->GetGUIDLow(), accountId, LogCharAction::ActionCreate, {} });
    ScriptRegistry<PlayerScript>::ForEachEnabledHook(PLAYERHOOK_ON_CREATE, [&](PlayerScript* script)
    {
        script->OnCreate(pNewChar.get());
    });
    sObjectMgr.IncreaseActivePlayersCount(team);

    return outcome;
}

} // namespace CharacterCreation
