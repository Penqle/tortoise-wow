/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
SDName: Undercity
SD%Complete: 100
SDCategory: Undercity
EndScriptData */

/* ContentData
npc_lady_sylvanas_windrunner
EndContentData */

#include "scriptPCH.h"

/*######
## npc_lady_sylvanas_windrunner
######*/

enum eSpells
{
    // Sylvanas
    SPELL_SUMMON_SKEL   = 20464,
    SPELL_FADE          = 20672,
    SPELL_BLACK_ARROW   = 20733,
    SPELL_MULTI_SHOT    = 20735,
    SPELL_SHOOT         = 20463,
};

/*
TODO : TIMERS TO CHECK
*/

struct boss_sylvanasAI : public ScriptedAI
{
public:
    boss_sylvanasAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    void Reset() override
    {
        m_uiSummSkelTimer = 25000;
        m_uiFadeTimer = 50000;
        m_uiFadedTimer = 0;
        m_uiBlackArrowTimer = 15000;
        m_uiMultiShotTimer = 10000;
        m_uiShootTimer = 10000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiFadedTimer)
        {
            if (m_uiFadedTimer > uiDiff)
            {
                m_uiFadedTimer -= uiDiff;
                return;
            }
            m_uiFadedTimer = 0;
            m_creature->GetMotionMaster()->Clear();
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiSummSkelTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_SUMMON_SKEL) == CAST_OK)
                m_uiSummSkelTimer = 25000;
        }
        else
            m_uiSummSkelTimer -= uiDiff;

        if (m_uiFadeTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_FADE) == CAST_OK)
            {
                m_creature->GetMotionMaster()->MoveFollow(m_creature->GetVictim(), 30.0f, m_creature->GetAngle(m_creature->GetVictim()));
                m_uiFadeTimer = 50000;
                m_uiBlackArrowTimer = 0;
                m_uiMultiShotTimer = 0;
                m_uiShootTimer = 0;
                m_uiFadedTimer = 5000;
            }
        }
        else
            m_uiFadeTimer -= uiDiff;

        if (m_uiBlackArrowTimer <= uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_BLACK_ARROW) == CAST_OK)
                    m_uiBlackArrowTimer = 15000;
            }
        }
        else
            m_uiBlackArrowTimer -= uiDiff;

        if (m_uiMultiShotTimer <= uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_MULTI_SHOT) == CAST_OK)
                    m_uiMultiShotTimer = 10000;
            }
        }
        else
            m_uiMultiShotTimer -= uiDiff;

        if (m_uiShootTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHOOT) == CAST_OK)
                m_uiShootTimer = 10000;
        }
        else
            m_uiShootTimer -= uiDiff;

        DoMeleeAttackIfReady();
        EnterEvadeIfOutOfCombatArea(uiDiff);
    }

private:
    uint32 m_uiSummSkelTimer;
    uint32 m_uiFadeTimer;
    uint32 m_uiFadedTimer;
    uint32 m_uiBlackArrowTimer;
    uint32 m_uiMultiShotTimer;
    uint32 m_uiShootTimer;
};

CreatureAI* GetAI_boss_sylvanas(Creature* pCreature)
{
    return new boss_sylvanasAI(pCreature);
}

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

bool GossipHello_npc_lady_sylvanas_windrunner(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80800) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(83020, 1, false) && !pPlayer->HasItemCount(83024, 1, false))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Lady Sylvanas, the Revantusk Tribe have sent me with this message.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_lady_sylvanas_windrunner(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);
        pCreature->MonsterSayToPlayer("What manner of buffoonery is this?", pPlayer);
        if (pPlayer->HasItemCount(83020, 1, false))
        {
            pPlayer->DestroyItemCount(83020, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer("The Forest Trolls were my greatest enemy in life and although I�ve long left that life behind I am still bitter.", player);
            c->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer("You do not understand how brutish, savage and stupid these mongrels are.", player);
            c->HandleEmote(EMOTE_ONESHOT_NO);
            });
        DoAfterTime(pPlayer, 11 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer("I will not stand for this, no Forest Troll filth shall step in my home.", player);
            c->HandleEmote(EMOTE_ONESHOT_NO);
            });
        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer("Now leave.", player);
            c->HandleEmote(EMOTE_ONESHOT_TALK);
            player->AddItem(83024, 1);
            c->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            c->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_undercity()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_lady_sylvanas_windrunner";
    newscript->pGossipHello = &GossipHello_npc_lady_sylvanas_windrunner;
    newscript->pGossipSelect = &GossipSelect_npc_lady_sylvanas_windrunner;
    newscript->GetAI = &GetAI_boss_sylvanas;
    newscript->RegisterSelf();
}
