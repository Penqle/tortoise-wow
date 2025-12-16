/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: GO_Scripts
SD%Complete: 100
SDComment: Quest support: 4285,4287,4288(crystal pylons), 4296, 5088, 6481, 10990, 10991, 10992. Field_Repair_Bot->Teaches spell 22704. Barov_journal->Teaches spell 26089
SDCategory: Game Objects
EndScriptData */

/* ContentData
go_cat_figurine (the "trap" version of GO, two different exist)
go_northern_crystal_pylon
go_eastern_crystal_pylon
go_western_crystal_pylon
go_field_repair_bot_74A
go_orb_of_command
go_resonite_cask
go_silithyste
go_Hive_Regal_Glyphed_Crystal
go_Hive_Ashi_Glyphed_Crystal
go_Hive_Zora_Glyphed_Crystal
go_bells
go_darkmoon_faire_music
EndContentData */

#include "scriptPCH.h"
#include "Language.h"

/*######
## go_cat_figurine
######*/

enum
{
    SPELL_SUMMON_GHOST_SABER    = 5968,
};

bool GOHello_go_cat_figurine(Player* pPlayer, GameObject* /*pGo*/)
{
    if (pPlayer)
    {
        pPlayer->CastSpell(pPlayer, SPELL_SUMMON_GHOST_SABER, true);
    }

    return true;
}

/*######
## go_crystal_pylons (3x)
######*/


bool GOHello_go_eastern_crystal_pylon(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer || !pGo)
        return true;

    if (pGo->GetGoType() == GAMEOBJECT_TYPE_QUESTGIVER)
    {
        pPlayer->PrepareQuestMenu(pGo->GetGUID());
        pPlayer->SendPreparedQuest(pGo->GetGUID());
    }

    if (pPlayer->GetQuestStatus(4287) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->AreaExploredOrEventHappens(4287);
    }

    return true;
}

bool GOHello_go_western_crystal_pylon(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer || !pGo)
        return true;

    if (pGo->GetGoType() == GAMEOBJECT_TYPE_QUESTGIVER)
    {
        pPlayer->PrepareQuestMenu(pGo->GetGUID());
        pPlayer->SendPreparedQuest(pGo->GetGUID());
    }

    if (pPlayer->GetQuestStatus(4288) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->AreaExploredOrEventHappens(4288);
    }

    return true;
}

bool GOHello_go_northern_crystal_pylon(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer || !pGo)
        return true;

    if (pGo->GetGoType() == GAMEOBJECT_TYPE_QUESTGIVER)
    {
        pPlayer->PrepareQuestMenu(pGo->GetGUID());
        pPlayer->SendPreparedQuest(pGo->GetGUID());
    }

    if (pPlayer->GetQuestStatus(4285) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->AreaExploredOrEventHappens(4285);
    }

    return true;
}

/*######
## go_greater_moonlight
######*/

bool GOHello_go_greater_moonlight(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer || !pGo)
        return true;

    const uint32 zone = pPlayer->GetZoneId();

    if (zone == 493) // Moonglade
    {
        sLog.outError("Zone %d Team %d GO %d", zone, pPlayer->GetTeamId(), pGo->GetGUIDLow());
        if (pPlayer->GetTeamId() == TEAM_ALLIANCE)
        {
            switch (pGo->GetGUIDLow())
            {
                case 3998422: // Darnassus
                {
                    pPlayer->TeleportTo(WorldLocation(1, 10150.45f, 2602.12f, 1330.82f, 5.03f));
                    break;
                }
                case 3998424: // Stormwind
                {
                    pPlayer->TeleportTo(WorldLocation(0, -8748.27f, 1074.27f, 90.52f, 4.17f));
                    break;
                }
                case 3998425: // Ironforge
                {
                    pPlayer->TeleportTo(WorldLocation(0, -4663.39f, -956.23f, 500.37f, 5.73f));
                    break;
                }
                default:
                {
                    return true;
                }
            }
        }
        else
        {
            switch(pGo->GetGUID())
            {
                case 3998423: // Thunderbluff
                {
                    pPlayer->TeleportTo(WorldLocation(1, -1031.73f, -230.42f, 160.18f, 3.12f));
                    break;
                }
                case 3998426: // Undercity
                {
                    pPlayer->TeleportTo(WorldLocation(0, 1642.41f, 239.9f, 62.59f, 3.01f));
                    break;
                }
                case 3998427: // Orgrimmar
                {
                    pPlayer->TeleportTo(WorldLocation(1, 1971.18f, -4259.45f, 32.21f, 4.0f));
                    break;
                }
                default:
                {
                    return true;
                }
            }
        }
    }
    else
    {
        pPlayer->TeleportTo(WorldLocation(1, 7577.0f, -2188.9f, 475.3f, 5.03f));
    }

    return true;
}

/*######
## go_field_repair_bot_74A
######*/

bool GOHello_go_field_repair_bot_74A(Player* pPlayer, GameObject* /*pGo*/)
{
    if (!pPlayer)
        return true;

    if (pPlayer->HasSkill(SKILL_ENGINEERING) && pPlayer->GetSkillValueBase(SKILL_ENGINEERING) >= 300 && !pPlayer->HasSpell(22704))
    {
        pPlayer->CastSpell(pPlayer, 22864, false);
    }

    return true;
}

/*######
## go_orb_of_command
######*/

bool GOHello_go_orb_of_command(Player* pPlayer, GameObject* /*pGo*/)
{
    if (!pPlayer)
        return true;

    if (sWorld.GetContentPhase() < CONTENT_PHASE_2)
    {
        pPlayer->GetSession()->SendAreaTriggerMessage(pPlayer->GetSession()->GetMangosString(LANG_INSTANCE_AVAILABLE_IN_PHASE), CONTENT_PHASE_2 + 1);
        return true;
    }

    if (pPlayer->GetQuestRewardStatus(7761))
        pPlayer->TeleportTo(469, -7664.76f, -1100.87f, 399.679f, 0.561981f);

    return true;
}

/*######
## go_resonite_cask
######*/

bool GOHello_go_resonite_cask(Player* pPlayer, GameObject* pGO)
{
    if (!pGO)
        return true;

    if (pGO->GetGoType() == GAMEOBJECT_TYPE_GOOBER)
    {
        if (pPlayer->GetQuestStatus(6481) == QUEST_STATUS_INCOMPLETE)
        {
            if (Creature* pCreature = pPlayer->FindNearestCreature(11920, 30.0f))
            {
                pCreature->AI()->AttackStart(pPlayer);
                return false;
            }
            else
            {
                if (Creature* pCreature = pGO->SummonCreature(11920, 2.49f, 426.78f, 103.66f, 4.55f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 300000))
                    pCreature->AI()->AttackStart(pPlayer);
            }
        }
    }

    return true;
}

// go_silithyste
bool GOHello_go_silithyste(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer || !pGo)
        return true;

    if (pPlayer->HasAura(29519, EFFECT_INDEX_0))
    {
        return true;
    }

    pPlayer->CastSpell(pPlayer, 29519, true);

    sLog.out(LOG_BG, "%s [%u:%u:'%s'] reprend une Silithyst d'un monticule",
             pPlayer->GetName(),
             pPlayer->GetGUIDLow(), pPlayer->GetSession()->GetAccountId(), pPlayer->GetSession()->GetRemoteAddress().c_str());

    if (pGo->GetEntry() == 181597)
    {
        pGo->SetLootState(GO_JUST_DEACTIVATED);
        pGo->AddObjectToRemoveList();
    }
    else
    {
        pGo->SetLootState(GO_JUST_DEACTIVATED);
    }

    return true;
}

/*####
## go_bells
####*/

enum BellHourlySoundFX
{
    BELLTOLLHORDE      = 6595, // Undercity
    BELLTOLLTRIBAL     = 6675, // Orgrimma/Thunderbluff
    BELLTOLLALLIANCE   = 6594, // Stormwind
    BELLTOLLNIGHTELF   = 6674, // Darnassus
    BELLTOLLDWARFGNOME = 7234, // Ironforge
};

enum BellHourlySoundZones
{
    TIRISFAL_ZONE            = 85,
    UNDERCITY_ZONE           = 1497,
    HILLSBRAD_FOOTHILLS_ZONE = 267,
    DUSKWOOD_ZONE            = 10,
    DUN_MOROGH_ZONE          = 1,
    IRONFORGE_ZONE           = 1537,
    TELDRASSIL_ZONE          = 141,
    DARNASSUS_ZONE           = 1657,
    ASHENVALE_ZONE           = 331,
};

enum BellHourlyObjects
{
    // bell gameobjects
    GO_HORDE_BELL = 175885,
    GO_ALLIANCE_BELL = 176573,
};

enum BellHourlyMisc
{
    GAME_EVENT_HOURLY_BELLS = 78,
    EVENT_RING_BELL = 1,
    EVENT_RESET = 2,
    EVENT_TIME = 3
};

struct go_bells : public GameObjectAI
{
    go_bells(GameObject* go) : GameObjectAI(go), _soundId(0), once(true)
    {
        uint32 zoneId = me->GetZoneId();

        switch (me->GetEntry())
        {
            case GO_HORDE_BELL:
            {
                switch (zoneId)
                {
                    case TIRISFAL_ZONE:
                    case UNDERCITY_ZONE:
                    case HILLSBRAD_FOOTHILLS_ZONE:
                    case DUSKWOOD_ZONE:
                        _soundId = BELLTOLLHORDE;  // undead bell sound 
                        break;
                    default:
                        _soundId = BELLTOLLTRIBAL; // drum sound
                        break;
                }

                break;
            }
            case GO_ALLIANCE_BELL:
            {
                switch (zoneId)
                {
                    case IRONFORGE_ZONE:
                    case DUN_MOROGH_ZONE:
                        _soundId = BELLTOLLDWARFGNOME; // horn sound
                        break;
                    case TELDRASSIL_ZONE:
                    case DARNASSUS_ZONE:
                    case ASHENVALE_ZONE:
                        _soundId = BELLTOLLNIGHTELF;   // nightelf bell sound 
                        break;
                    default:
                        _soundId = BELLTOLLALLIANCE;   // human bell sound
                        break;
                }

                break;
            }

            default:
            sLog.outError("go_bells() called with invalid object, ID: %u", me->GetEntry());
        }
    }

    void UpdateAI(const uint32 diff)
    {
        _events.Update(diff);

        if (sGameEventMgr.IsActiveEvent(GAME_EVENT_HOURLY_BELLS) && once == true)
        {
            // Reset
            once = false;
            _events.ScheduleEvent(EVENT_TIME, Seconds(1));
        }

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_TIME:
                {
                    // Get how many times it should ring
                    time_t rawtime;
                    time(&rawtime);
                    struct tm * timeinfo = localtime(&rawtime);
                    uint8 _rings = (timeinfo->tm_hour) % 12;
                    if (_rings == 0) // 00:00 and 12:00
                    {
                        _rings = 12;
                    }

                    // Schedule ring event
                    for (auto i = 0; i < _rings; ++i)
                        _events.ScheduleEvent(EVENT_RING_BELL, Seconds(i * 4 + 1));

                    break;
                }
                case EVENT_RING_BELL:
                    me->PlayDistanceSound(_soundId);
                    break;
                default:
                    break;
            }
        }
    }

private:
    EventMap _events;
    uint32 _soundId;
    bool once;
};

GameObjectAI* GetAI_go_bells(GameObject* gameobject)
{
    return new go_bells(gameobject);
}

/*####
## go_darkmoon_faire_music
####*/

enum DarkmoonFaireMusic
{
    MUSIC_DARKMOON_FAIRE_MUSIC = 8440
};

enum DarkmoonFaireMusicEvents
{
    EVENT_DFM_START_MUSIC = 1,
    GAME_EVENT_DARKMOON_FAIRE_ELWYNN = 4,
    GAME_EVENT_DARKMOON_FAIRE_THUNDER = 5
};

class go_darkmoon_faire_music : public GameObjectAI
{
public:
    go_darkmoon_faire_music(GameObject* gobj) : GameObjectAI(gobj)
    {
        _events.ScheduleEvent(EVENT_DFM_START_MUSIC, Seconds(1));
    }

    void UpdateAI(const uint32 diff)
    {
        _events.Update(diff);
        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_DFM_START_MUSIC:
                {
                    if (sGameEventMgr.IsActiveEvent(GAME_EVENT_DARKMOON_FAIRE_ELWYNN) || sGameEventMgr.IsActiveEvent(GAME_EVENT_DARKMOON_FAIRE_THUNDER))
                    {
                        me->PlayDistanceSound(MUSIC_DARKMOON_FAIRE_MUSIC);
                    }

                    _events.ScheduleEvent(EVENT_DFM_START_MUSIC, Seconds(300)); // 5 min.
                    break;
                }
                default:
                {
                    break;
                }
            }
        }
    }

private:
    EventMap _events;
};

GameObjectAI* GetAI_go_darkmoon_faire_music(GameObject* gameobject)
{
    return new go_darkmoon_faire_music(gameobject);
}

/*####
## go_roleplay_event
####*/

struct go_roleplay_event : public GameObjectAI
{
    go_roleplay_event(GameObject* go) : GameObjectAI(go), m_warnTimer(0)
    {
    }

    uint32 m_warnTimer;
    static std::set<uint32> m_warnedPlayers;

    void UpdateAI(uint32 const diff)
    {
        if (diff >= m_warnTimer)
        {
            if (Player* pPlayer = me->FindNearestPlayer(10.0f))
            {
                uint32 guid = pPlayer->GetGUIDLow();
                if (m_warnedPlayers.find(guid) == m_warnedPlayers.end())
                {
                    pPlayer->GetSession()->SendNotification("You are entering an active roleplay event area!");
                    m_warnedPlayers.insert(guid);
                }
            }
            m_warnTimer = 5000;
        }
        else
            m_warnTimer -= diff;
    }
};

std::set<uint32> go_roleplay_event::m_warnedPlayers;

GameObjectAI* GetAI_go_roleplay_event(GameObject* gameobject)
{
    return new go_roleplay_event(gameobject);
}

/*####
## go_containment_coffer
####*/

struct go_containment_coffer : public GameObjectAI
{
    go_containment_coffer(GameObject* gobj) : GameObjectAI(gobj)
    {
        m_despawnTimer = 20000;
    }

    uint32 m_despawnTimer;

    void UpdateAI(uint32 const diff) override
    {
        if (!m_despawnTimer)
            return;

        if (m_despawnTimer <= diff)
        {
            me->Despawn();
            m_despawnTimer = 0;
        }
        else
            m_despawnTimer -= diff;
    }
};

GameObjectAI* GetAI_go_containment_coffer(GameObject* gameobject)
{
    return new go_containment_coffer(gameobject);
}

void AddSC_go_scripts()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "go_greater_moonlight";
    newscript->pGOHello = &GOHello_go_greater_moonlight;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_cat_figurine";
    newscript->pGOHello = &GOHello_go_cat_figurine;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_eastern_crystal_pylon";
    newscript->pGOHello = &GOHello_go_eastern_crystal_pylon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_northern_crystal_pylon";
    newscript->pGOHello = &GOHello_go_northern_crystal_pylon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_western_crystal_pylon";
    newscript->pGOHello = &GOHello_go_western_crystal_pylon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_field_repair_bot_74A";
    newscript->pGOHello = &GOHello_go_field_repair_bot_74A;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_orb_of_command";
    newscript->pGOHello = &GOHello_go_orb_of_command;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_resonite_cask";
    newscript->pGOHello = &GOHello_go_resonite_cask;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_silithyste";
    newscript->pGOHello = &GOHello_go_silithyste;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_bells";
    newscript->GOGetAI = &GetAI_go_bells;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_darkmoon_faire_music";
    newscript->GOGetAI = &GetAI_go_darkmoon_faire_music;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_roleplay_event";
    newscript->GOGetAI = &GetAI_go_roleplay_event;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_containment_coffer";
    newscript->GOGetAI = &GetAI_go_containment_coffer;
    newscript->RegisterSelf();
}


