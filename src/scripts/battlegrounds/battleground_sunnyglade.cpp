/*
SDName: Sunnyglade
SD%Complete:
SDComment:
SDCategory: BG
EndScriptData */

#include "scriptPCH.h"
#include "World.h"
#include "GameEventMgr.h"

enum SV_Spells
{
    /*human leader*/
    /*orc_leader*/
    SPELL_CLEAVE = 26350,
    SPELL_WARSTOMP = 24375,
    SPELL_REND = 18106,
    SPELL_SUNDER_ARMOR = 24317,
    SPELL_SLOW = 22356,
    SPELL_KNOCK = 20686,
    SPELL_DRAGON_BREATH = 47360,
    SPELL_BLAST_WAVE = 30092,
    /*human_footman*/
    /*human_archer*/
    SPELL_AUTOSHOT = 75,
    /*human_conjurer*/
    SPELL_SUMMON_WATER_ELEMENTAL = 0,
    /*human_cleric*/
    /*orc_grunt*/
    /*orc_spearman*/
    /*orc_warlock*/
    /*orc_necrolyte*/
    /**/
    SPELL_TRANSFORM_VISUAL = 24085,
};

enum SV_Events
{
    /*human leader*/
    /*orc_leader*/
    EVENT_CLEAVE,
    EVENT_WARSTOMP,
    EVENT_REND,
    EVENT_SUNDER_ARMOR,
    EVENT_SLOW,
    EVENT_KNOCK,
    EVENT_TRANSFORM,
    EVENT_BLAST_WAVE,
    EVENT_SHADOW_FLAME,
    /*human_footman*/
    /*human_archer*/
    EVENT_SHOOT,
    /*human_conjurer*/
    EVENT_SUMMON_WATER_ELEMENTAL,
    /*human_cleric*/
    EVENT_HEAL,
    /*orc_grunt*/
    /*orc_spearman*/
    /*orc_warlock*/
    /*orc_necrolyte*/
};

struct SV_heraldAI : public ScriptedAI
{
    SV_heraldAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 13049);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        //m_events.ScheduleEvent(EVENT_HOLY_STRIKE, Seconds(urand(8, 15)));
        //m_events.ScheduleEvent(EVENT_HAMMER_OF_JUSTICE, Seconds(urand(20, 45)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        /*while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
            case EVENT_HOLY_STRIKE:
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                    m_events.Repeat(Seconds(20));
                else
                    m_events.Repeat(100);

                break;
            }
            case EVENT_HAMMER_OF_JUSTICE:
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE) == CAST_OK)
                    m_events.Repeat(Seconds(30));
                else
                    m_events.Repeat(100);

                break;
            }
            }
        }*/

        DoMeleeAttackIfReady();
    }
};

enum
{
    ITEM_SPARK = 81390,
};

bool GossipHello_SV_herald(Player* pPlayer, Creature* pCreature)
{
    uint32 gossipTextId = pPlayer->GetGossipTextId(pCreature);
    if (BattleGroundMap* bgMap = dynamic_cast<BattleGroundMap*>(pCreature->GetMap()))
    {
        if (BattleGroundSV* bg = dynamic_cast<BattleGroundSV*>(bgMap->GetBG()))
        {
            if (bg->GetStatus() == STATUS_IN_PROGRESS)
            {
                if (bg->GetHeraldControlledTeam() == pPlayer->GetTeam())
                {
                    gossipTextId = 13762;
                    uint32 sparkCount = pPlayer->GetItemCount(ITEM_SPARK);

                    if (sparkCount)
                    {
                        std::string text = "I found " + std::to_string(sparkCount) + " Time Sparks, does this help?";
                        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, text.c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
                    }
                }
                else
                    gossipTextId = 13760;
            }
        }
    }

    pPlayer->SEND_GOSSIP_MENU(gossipTextId, pCreature->GetGUID());
    return true;
}

bool GossipSelect_SV_herald(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF)
    {
        if (BattleGroundMap* bgMap = dynamic_cast<BattleGroundMap*>(creature->GetMap()))
        {
            if (BattleGroundSV* bg = dynamic_cast<BattleGroundSV*>(bgMap->GetBG()))
            {
                if (bg->GetStatus() == STATUS_IN_PROGRESS)
                {
                    uint32 sparkCount = player->GetItemCount(ITEM_SPARK);
                    player->DestroyItemCount(ITEM_SPARK, sparkCount, true);

                    std::string message = std::string(player->GetName()) + " has turned in " + std::to_string(sparkCount) + " sparks.";
                    ChatMsg msgType = player->GetTeam() == ALLIANCE ? CHAT_MSG_BG_SYSTEM_ALLIANCE : CHAT_MSG_BG_SYSTEM_HORDE;
                    WorldPacket data(SMSG_MESSAGECHAT);
                    ChatHandler::BuildChatPacket(data, msgType, message);
                    bg->SendPacketToAll(&data);

                    if (FactionEntry const* factionEntry = sObjectMgr.GetFactionEntry(1007))
                        player->GetReputationMgr().ModifyReputation(factionEntry, sparkCount);

                    bg->AddTeamSparks(player->GetTeamId(), sparkCount);
                }
            }
        }
    }

    player->CLOSE_GOSSIP_MENU();
    return true;
}

struct SV_human_leaderAI : public ScriptedAI
{
    SV_human_leaderAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 13049);
        Reset();
    }

    EventMap m_events;
    bool m_blackDragon;

    void Reset() override
    {
        m_events.Reset();
        m_blackDragon = false;
        m_creature->DeMorph();
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (!pVictim->IsPlayer())
            return;

        if (BattleGroundMap* bgMap = dynamic_cast<BattleGroundMap*>(m_creature->GetMap()))
        {
            if (BattleGroundSV* bg = dynamic_cast<BattleGroundSV*>(bgMap->GetBG()))
            {
                bg->RewardReputationToTeam(1007, 1, ALLIANCE);
            }
        }
    }

    void DamageTaken(Unit* pAttacker, uint32& uiDamage) override
    {
        if (pAttacker && pAttacker->IsCreature())
            uiDamage = 0;
    }

    bool WeHaveMoreSparks() const
    {
        if (BattleGroundMap* bgMap = dynamic_cast<BattleGroundMap*>(m_creature->GetMap()))
        {
            if (BattleGroundSV* bg = dynamic_cast<BattleGroundSV*>(bgMap->GetBG()))
            {
                return bg->GetTeamSparks(TEAM_ALLIANCE) > bg->GetTeamSparks(TEAM_HORDE);
            }
        }
        return false;
    }

    void EnterCombat(Unit* pWho) override
    {
        m_events.ScheduleEvent(EVENT_CLEAVE, Seconds(10));
        m_events.ScheduleEvent(EVENT_WARSTOMP, Seconds(15));
        m_events.ScheduleEvent(EVENT_REND, Seconds(12));
        m_events.ScheduleEvent(EVENT_SUNDER_ARMOR, Seconds(2));
        if (WeHaveMoreSparks())
        {
            m_events.ScheduleEvent(EVENT_SLOW, Seconds(urand(20, 35)));
            m_events.ScheduleEvent(EVENT_KNOCK, Seconds(18));
        }
        m_creature->GetMap()->PlayDirectSoundToMap(8174);
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_blackDragon && m_creature->GetHealthPercent() < 30.0f)
        {
            m_blackDragon = true;
            DoCast(m_creature, SPELL_TRANSFORM_VISUAL);
            m_events.ScheduleEvent(EVENT_TRANSFORM, 250);
            m_creature->MonsterYell("I will not allow you to sabotage our plans. Time for you to face my true form!");
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_CLEAVE:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
                            m_events.Repeat(Seconds(10));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_WARSTOMP:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature, SPELL_WARSTOMP) == CAST_OK)
                            m_events.Repeat(Seconds(15));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_REND:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REND) == CAST_OK)
                            m_events.Repeat(Seconds(18));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_SUNDER_ARMOR:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SUNDER_ARMOR) == CAST_OK)
                            m_events.Repeat(Seconds(25));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_SLOW:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature, SPELL_SLOW) == CAST_OK)
                            m_events.Repeat(Seconds(20));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_KNOCK:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature, SPELL_KNOCK) == CAST_OK)
                            m_events.Repeat(Seconds(20));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_TRANSFORM:
                {
                    m_creature->SetDisplayId(6374);
                    m_events.ScheduleEvent(EVENT_BLAST_WAVE, 500);
                    if (WeHaveMoreSparks())
                        m_events.ScheduleEvent(EVENT_SHADOW_FLAME, 10000);
                    break;
                }
                case EVENT_BLAST_WAVE:
                {
                    DoCast(m_creature, SPELL_BLAST_WAVE);
                    break;
                }
                case EVENT_SHADOW_FLAME:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DRAGON_BREATH) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct SV_orc_leaderAI : public ScriptedAI
{
    SV_orc_leaderAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 15260);
        Reset();
    }

    EventMap m_events;
    bool m_blackDragon;

    void Reset() override
    {
        m_events.Reset();
        m_blackDragon = false;
        m_creature->DeMorph();
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (!pVictim->IsPlayer())
            return;

        if (BattleGroundMap* bgMap = dynamic_cast<BattleGroundMap*>(m_creature->GetMap()))
        {
            if (BattleGroundSV* bg = dynamic_cast<BattleGroundSV*>(bgMap->GetBG()))
            {
                bg->RewardReputationToTeam(1007, 1, HORDE);
            }
        }
    }

    void DamageTaken(Unit* pAttacker, uint32& uiDamage) override
    {
        if (pAttacker && pAttacker->IsCreature())
            uiDamage = 0;
    }

    bool WeHaveMoreSparks() const
    {
        if (BattleGroundMap* bgMap = dynamic_cast<BattleGroundMap*>(m_creature->GetMap()))
        {
            if (BattleGroundSV* bg = dynamic_cast<BattleGroundSV*>(bgMap->GetBG()))
            {
                return bg->GetTeamSparks(TEAM_HORDE) > bg->GetTeamSparks(TEAM_ALLIANCE);
            }
        }
        return false;
    }

    void EnterCombat(Unit* pWho) override
    {
        m_events.ScheduleEvent(EVENT_CLEAVE, Seconds(10));
        m_events.ScheduleEvent(EVENT_WARSTOMP, Seconds(15));
        m_events.ScheduleEvent(EVENT_REND, Seconds(12));
        m_events.ScheduleEvent(EVENT_SUNDER_ARMOR, Seconds(2));
        if (WeHaveMoreSparks())
        {
            m_events.ScheduleEvent(EVENT_SLOW, Seconds(urand(20, 35)));
            m_events.ScheduleEvent(EVENT_KNOCK, Seconds(18));
        }
        m_creature->GetMap()->PlayDirectSoundToMap(8212);
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_blackDragon && m_creature->GetHealthPercent() < 30.0f)
        {
            m_blackDragon = true;
            DoCast(m_creature, SPELL_TRANSFORM_VISUAL);
            m_events.ScheduleEvent(EVENT_TRANSFORM, 250);
            m_creature->MonsterYell("I will not allow you to sabotage our plans. Time for you to face my true form!");
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_CLEAVE:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
                            m_events.Repeat(Seconds(10));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_WARSTOMP:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature, SPELL_WARSTOMP) == CAST_OK)
                            m_events.Repeat(Seconds(15));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_REND:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REND) == CAST_OK)
                            m_events.Repeat(Seconds(18));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_SUNDER_ARMOR:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SUNDER_ARMOR) == CAST_OK)
                            m_events.Repeat(Seconds(25));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_SLOW:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature, SPELL_SLOW) == CAST_OK)
                            m_events.Repeat(Seconds(20));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_KNOCK:
                {
                    if (!m_blackDragon)
                    {
                        if (DoCastSpellIfCan(m_creature, SPELL_KNOCK) == CAST_OK)
                            m_events.Repeat(Seconds(20));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
                case EVENT_TRANSFORM:
                {
                    m_creature->SetDisplayId(6374);
                    m_events.ScheduleEvent(EVENT_BLAST_WAVE, 500);
                    if (WeHaveMoreSparks())
                        m_events.ScheduleEvent(EVENT_SHADOW_FLAME, 10000);
                    break;
                }
                case EVENT_BLAST_WAVE:
                {
                    DoCast(m_creature, SPELL_BLAST_WAVE);
                    break;
                }
                case EVENT_SHADOW_FLAME:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DRAGON_BREATH) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

enum
{
    DISPLAY_ID_BLACK_DRAKONOID = 14885
};

struct SV_trash_mobsAI : public ScriptedAI
{
    SV_trash_mobsAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    bool m_isBlackDrakonoid;
    bool m_isTransformed;

    void Reset() override
    {
        m_isTransformed = false;
        m_isBlackDrakonoid = urand(0,1);
        m_creature->DeMorph();
        m_creature->LoadEquipment(m_creature->GetCreatureInfo()->equipment_id, true);
    }

    void DamageTaken(Unit* pAttacker, uint32& uiDamage) override
    {
        if (pAttacker)
        {
            if (pAttacker->IsCreature() && pAttacker->GetLevel() <= m_creature->GetLevel())
                uiDamage = 0;

            if (pAttacker->IsPlayer() && m_isBlackDrakonoid && !m_isTransformed &&
                m_creature->GetHealth() > uiDamage)
            {
                m_creature->SetDisplayId(DISPLAY_ID_BLACK_DRAKONOID);
                m_creature->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 3432);
                m_CreatureSpells.clear();
                m_creature->MonsterYell("How dare you interfere!");
                m_creature->AddThreat(pAttacker, 10000);
                m_isTransformed = true;
            }
        }
    }

    void JustDied(Unit* pKiller)
    {
        if (Player* pPlayer = ToPlayer(pKiller))
        {
            if (m_isBlackDrakonoid && m_isTransformed)
            {
                if (BattleGroundMap* bgMap = dynamic_cast<BattleGroundMap*>(m_creature->GetMap()))
                {
                    if (BattleGroundSV* bg = dynamic_cast<BattleGroundSV*>(bgMap->GetBG()))
                    {
                        bg->RewardReputationToTeam(1007, 10, pPlayer->GetTeam());
                    }
                }
            }

            pPlayer->GetHonorMgr().Add(10, HONORABLE, m_creature);
        }
    }
};

CreatureAI* GetAI_SV_herald(Creature* pCreature)
{
    return new SV_heraldAI(pCreature);
}

CreatureAI* GetAI_SV_human_leader(Creature* pCreature)
{
    return new SV_human_leaderAI(pCreature);
}

CreatureAI* GetAI_SV_orc_leader(Creature* pCreature)
{
    return new SV_orc_leaderAI(pCreature);
}

CreatureAI* GetAI_SV_trash_mobs(Creature* pCreature)
{
    return new SV_trash_mobsAI(pCreature);
}

void AddSC_bg_sunnyglade()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "npc_sv_herald";
    newscript->GetAI = &GetAI_SV_herald;
    newscript->pGossipHello = &GossipHello_SV_herald;
    newscript->pGossipSelect = &GossipSelect_SV_herald;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sv_human_leader";
    newscript->GetAI = &GetAI_SV_human_leader;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sv_orc_leader";
    newscript->GetAI = &GetAI_SV_orc_leader;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sv_trash_mobs";
    newscript->GetAI = &GetAI_SV_trash_mobs;
    newscript->RegisterSelf();
}