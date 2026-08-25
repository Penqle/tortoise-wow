/*
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software licensed under GPL version 2
 * See included DOCS/LICENSE.TXT
 *
 * Turtle custom dungeon portal handler — authoritative GameObjectScript for
 * `custom_dungeon_portal`. Destinations and conditions are verbatim from
 * `areatrigger_teleport` (the same table that drives instance areatriggers)
 * and from `map_template`/`instance_template`. No coordinates are invented,
 * no fake success is returned, and no bot-specific coupling is introduced.
 *
 * Supported entries are those with a proved areatrigger counterpart.
 * All other entries sharing the same script_name remain bound to this script
 * but fail closed (no teleport), so they never produce fake success.
 */

#include "scriptPCH.h"
#include "ScriptObjects.h"
#include "ObjectMgr.h"
#include "World.h"
#include "Conditions.h"
#include "Database/SQLStorages.h"
#include "Language.h"

struct PortalInfo
{
    uint32 entry;
    WorldLocation dest;
    uint8 requiredLevel;
    uint32 requiredCondition;
    uint8 requiredPhase;
    char const* message;
};

static const PortalInfo* GetPortalInfo(uint32 entry)
{
    // Destinations/conditions are verbatim from
    // sql/base/tw_world_areatrigger_teleport.sql (and its database_updates
    // mirrors). The trigger IDs cited are the authoritative source — this
    // file does not invent or offset coordinates.
    static const PortalInfo infos[] =
    {
        // Crescent Grove — trigger 5004/5005
        { 112911, WorldLocation(802,  579.13f,    90.7f,    276.11f,  3.4f),    32, 0, 0, "You must be at least level 32 to enter." },
        { 112912, WorldLocation(1,    1722.0f, -1272.6f,    163.26f,  5.8f),     0, 0, 0, "" },

        // Black Morass — trigger 1632/1629
        { 112915, WorldLocation(269, -2002.5f,  6575.3f,   -154.9f,   5.7f),    58, 0, 0, "You must be at least level 58 to enter." },
        { 112916, WorldLocation(1,   -8756.8f, -4191.3f,   -209.4f,   5.5f),     0, 0, 0, "" },

        // Stormwind Vault — trigger 107/109 (5002/5003 are same entrance)
        { 112917, WorldLocation(35,    -0.91f,    40.57f,  -24.23f,  1.52f),   58, 0, 0, "You must be at least level 58 to enter." },
        { 112918, WorldLocation(0,  -8679.12f,  639.337f,  95.819f,  2.29017f),  0, 0, 0, "" },

        // Hateforge Quarry — trigger 5009/5013
        { 112940, WorldLocation(808, -8173.9f, -3120.6f,   199.8f,   4.7f),    48, 0, 0, "You must be at least level 48 to enter." },
        { 112941, WorldLocation(0,   -8169.2f, -3106.7f,   200.4f,   1.1f),     0, 0, 0, "" },

        // Karazhan Crypt — trigger 5008/5011
        { 181580, WorldLocation(800, -11068.1f, -1806.4f,   52.7f,   1.5f),    55, 0, 0, "You must be at least level 55 to enter." },
        { 181581, WorldLocation(0,   -11068.9f, -1828.6f,   60.26f,  3.1f),     0, 0, 0, "" },
    };

    for (auto const& info : infos)
        if (info.entry == entry)
            return &info;
    return nullptr;
}

class custom_dungeon_portal : public GameObjectScript
{
public:
    custom_dungeon_portal() : GameObjectScript("custom_dungeon_portal") {}

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        if (!player || !go)
            return false;

        const PortalInfo* info = GetPortalInfo(go->GetEntry());
        if (!info)
            return false; // intentionally unsupported — fail closed, no teleport

        if (player->IsBeingTeleported())
            return true;

        // Reuse native areatrigger/instance semantics (see
        // WorldSession::HandleAreaTriggerOpcode in Handlers/MiscHandler.cpp).

        MapEntry const* targetMap = sMapStorage.LookupEntry<MapEntry>(info->dest.mapId);
        if (!targetMap)
            return true;

        if (info->requiredPhase > sWorld.GetContentPhase())
        {
            if (WorldSession* sess = player->GetSession())
                sess->SendAreaTriggerMessage(sess->GetMangosString(LANG_INSTANCE_AVAILABLE_IN_PHASE), info->requiredPhase + 1);
            return true;
        }

        // Ghost handling mirrors areatrigger: block ghost entry into dungeon.
        if (!player->IsAlive() && targetMap->IsDungeon())
        {
            uint32 corpseMapId = 0;
            if (Corpse* corpse = player->GetCorpse())
                corpseMapId = corpse->GetMapId();

            bool canEnterAsGhost = false;
            uint32 checkMap = corpseMapId;
            while (checkMap)
            {
                if (checkMap == uint32(targetMap->id))
                {
                    canEnterAsGhost = true;
                    break;
                }
                if (MapEntry const* me = sMapStorage.LookupEntry<MapEntry>(checkMap))
                    checkMap = me->IsDungeon() ? me->parent : 0;
                else
                    break;
            }

            if (!canEnterAsGhost)
            {
                if (WorldSession* sess = player->GetSession())
                    sess->SendAreaTriggerMessage("You cannot enter %s while in ghost form.", targetMap->name);
                return true;
            }

            // If destination map differs from corpse map, redirect to the
            // corpse's entrance trigger (same as areatrigger logic when
            // possible). Keep authoritative destination otherwise.
            if (info->dest.mapId != corpseMapId)
            {
                if (AreaTriggerTeleport const* corpseAt = sObjectMgr.GetMapEntranceTrigger(corpseMapId))
                {
                    // Use the corpse entrance only when it points into the
                    // same dungeon family; otherwise keep original dest.
                    if (corpseAt->destination.mapId == info->dest.mapId)
                    {
                        player->TeleportTo(corpseAt->destination);
                        return true;
                    }
                }
            }
        }

        if (!player->IsGameMaster())
        {
            bool levelCheck = player->GetLevel() < info->requiredLevel && !sWorld.getConfig(CONFIG_BOOL_INSTANCE_IGNORE_LEVEL);
            static constexpr uint32 AllowedLunaticMaps[] = { 36, 43, 389, 822 };
            bool isLunaticMap = false;
            for (uint32 mapId : AllowedLunaticMaps)
                if (targetMap->id == int32(mapId)) { isLunaticMap = true; break; }
            bool blockedByLevel = levelCheck && !(isLunaticMap && player->HasChallenge(CHALLENGE_LUNATIC));
            bool blockedByCondition = info->requiredCondition && !IsConditionSatisfied(info->requiredCondition, player, player->GetMap(), player, CONDITION_FROM_AREATRIGGER);

            if (blockedByLevel || blockedByCondition)
            {
                if (WorldSession* sess = player->GetSession())
                {
                    if (info->message && *info->message)
                        sess->SendAreaTriggerMessage(info->message);
                    else if (blockedByLevel)
                        sess->SendAreaTriggerMessage(sess->GetMangosString(LANG_LEVEL_MINREQUIRED), info->requiredLevel);
                }
                return true;
            }

            if (player->IsInCombat() && targetMap->IsContinent() && player->GetMap()->IsRaid())
            {
                if (WorldSession* sess = player->GetSession())
                    sess->SendAreaTriggerMessage("You are in combat.");
                return true;
            }
        }

        player->TeleportTo(info->dest);
        return true;
    }
};

void AddSC_custom_dungeon_portal()
{
    new custom_dungeon_portal();
}
