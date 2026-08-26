/*
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software licensed under GPL version 2
 * See included DOCS/LICENSE.TXT
 *
 * Turtle custom dungeon portal handler — authoritative GameObjectScript for
 * `custom_dungeon_portal`. Destinations, levels, conditions, phases and
 * messages are obtained at use time from `areatrigger_teleport` via
 * ObjectMgr (the same table that drives instance areatriggers). No
 * coordinates are invented, no fake success is returned, and no
 * bot-specific coupling is introduced.
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

struct PortalTrigger
{
    uint32 entry;
    uint32 triggerId;
};

static uint32 GetTriggerIdForEntry(uint32 entry)
{
    // Compact GO-entry -> authoritative areatrigger_teleport ID mapping.
    // All destination/level/condition/phase/message data is fetched from
    // sObjectMgr.GetAreaTriggerTeleport(triggerId) at use time, so this file
    // never duplicates coordinates or thresholds.
    static const PortalTrigger kPortals[] =
    {
        // Crescent Grove
        { 112911, 5004 }, // entrance
        { 112912, 5005 }, // exit
        // Black Morass
        { 112915, 1632 }, // entrance
        { 112916, 1629 }, // exit
        // Stormwind Vault (5002/5003 share same dest as 107)
        { 112917, 107 },  // entrance
        { 112918, 109 },  // exit
        // Hateforge Quarry
        { 112940, 5009 }, // entrance
        { 112941, 5013 }, // exit
        // Karazhan Crypt
        { 181580, 5008 }, // entrance
        { 181581, 5011 }, // exit
    };

    for (auto const& p : kPortals)
        if (p.entry == entry)
            return p.triggerId;
    return 0;
}

class custom_dungeon_portal : public GameObjectScript
{
public:
    custom_dungeon_portal() : GameObjectScript("custom_dungeon_portal") {}

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        if (!player || !go)
            return false;

        uint32 triggerId = GetTriggerIdForEntry(go->GetEntry());
        if (!triggerId)
            return true; // intentionally unsupported — consume/fail closed, no teleport, no default GO activation

        AreaTriggerTeleport const* at = sObjectMgr.GetAreaTriggerTeleport(triggerId);
        if (!at)
            return true; // authoritative store missing — fail closed, never invent coords

        if (player->IsBeingTeleported())
            return true;

        // Reuse native areatrigger/instance semantics (see
        // WorldSession::HandleAreaTriggerOpcode in Handlers/MiscHandler.cpp).

        MapEntry const* targetMap = sMapStorage.LookupEntry<MapEntry>(at->destination.mapId);
        if (!targetMap)
            return true;

        if (at->requiredPhase > sWorld.GetContentPhase())
        {
            if (WorldSession* sess = player->GetSession())
                sess->SendAreaTriggerMessage(sess->GetMangosString(LANG_INSTANCE_AVAILABLE_IN_PHASE), at->requiredPhase + 1);
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
            if (at->destination.mapId != corpseMapId)
            {
                if (AreaTriggerTeleport const* corpseAt = sObjectMgr.GetMapEntranceTrigger(corpseMapId))
                {
                    // Use the corpse entrance only when it points into the
                    // same dungeon family; otherwise keep original dest.
                    if (corpseAt->destination.mapId == at->destination.mapId)
                    {
                        player->TeleportTo(corpseAt->destination);
                        return true;
                    }
                }
            }
        }

        if (!player->IsGameMaster())
        {
            bool levelCheck = player->GetLevel() < at->requiredLevel && !sWorld.getConfig(CONFIG_BOOL_INSTANCE_IGNORE_LEVEL);
            static constexpr uint32 AllowedLunaticMaps[] = { 36, 43, 389, 822 };
            bool isLunaticMap = false;
            for (uint32 mapId : AllowedLunaticMaps)
                if (targetMap->id == int32(mapId)) { isLunaticMap = true; break; }
            bool blockedByLevel = levelCheck && !(isLunaticMap && player->HasChallenge(CHALLENGE_LUNATIC));
            bool blockedByCondition = at->requiredCondition && !IsConditionSatisfied(at->requiredCondition, player, player->GetMap(), player, CONDITION_FROM_AREATRIGGER);

            if (blockedByLevel || blockedByCondition)
            {
                if (WorldSession* sess = player->GetSession())
                {
                    if (!at->message.empty())
                        sess->SendAreaTriggerMessage(at->message.c_str());
                    else if (blockedByLevel)
                        sess->SendAreaTriggerMessage(sess->GetMangosString(LANG_LEVEL_MINREQUIRED), at->requiredLevel);
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

        player->TeleportTo(at->destination);
        return true;
    }
};

void AddSC_custom_dungeon_portal()
{
    new custom_dungeon_portal();
}
