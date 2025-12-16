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
SDName: Ironforge
SD%Complete: 100
SDCategory: Ironforge
EndScriptData */

#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Creature* pCreature, const uint32 p_time, Functor&& function)
{
    pCreature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pCreature->m_Events.CalculateTime(p_time));
}

/*######
## npc_tinker_mekkatorque
######*/

bool GossipHello_npc_tinker_mekkatorque(Player* pPlayer, Creature* pCreature)
{
    if (!pPlayer->HasItemCount(83019, 1, false) && pPlayer->GetQuestStatus(80750) == QUEST_STATUS_INCOMPLETE) // Gnomeregan
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Mekkatorque, I bring word from the high elves about important matters.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (IsConditionSatisfied(83029, pPlayer, pCreature->GetMap(), pCreature, CONDITION_FROM_GOSSIP_OPTION))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Apologies, my liege, but I seem to have misplaced your letter to the Quel\'dorei...", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60002, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_tinker_mekkatorque(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);
        pCreature->MonsterSayToPlayer("As someone who has lost their home, I can deeply empathize with the elves.", pPlayer);

        if (pPlayer->HasItemCount(83015, 1, false))
        {
            pPlayer->DestroyItemCount(83015, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }

        pCreature->HandleEmote(EMOTE_ONESHOT_TALK_NOSHEATHE);

        DoAfterTime(pCreature, 3 * IN_MILLISECONDS, [player = pPlayer, creature = pCreature]()
            {
                creature->MonsterSayToPlayer("You can count on the gnomes to support the high elven ascension into the Alliance!", player);
                creature->HandleEmote(EMOTE_ONESHOT_YES);

                player->AddItem(83019, 1);

                creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->GetMap()->ScriptsStart(sGossipScripts, 4144901, pCreature->GetObjectGuid(), pPlayer->GetObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

enum eSpells
{
    SPELL_STORM_BOLT    = 20685,
    SPELL_KNOCK_AWAY    = 20686,
    SPELL_AVATAR        = 19135,
    SPELL_THUNDER_CLAP  = 23931,
    SPELL_LAY_ON_HAND   = 17233,
    SPELL_CHARGE        = 22911,
};

bool QuestRewarded_boss_magni_bronzebeard(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40489) // Assaulting Hateforge
    {
        pQuestGiver->MonsterSay(66155);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

struct boss_magni_bronzebeardAI : public ScriptedAI
{
public:
    boss_magni_bronzebeardAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    void Reset() override
    {
        m_uiStormBoltTimer = 10000;
        m_uiKnockAwayTimer = 20000;
        m_uiAvatarTimer= 25000;
        m_uiThunderClapTimer = 15000;
        m_uiChargeTimer = 10000;
        m_bHasUsedLOH = false;
        m_bHasStormBolted = false;
    }

    void DamageTaken(Unit* /*pDealer*/, uint32& uiDamage) override
    {
        if (!m_bHasUsedLOH && uiDamage >= m_creature->GetHealth())
        {
            if (DoCastSpellIfCan(m_creature, SPELL_LAY_ON_HAND) == CAST_OK)
                m_bHasUsedLOH = true;
            uiDamage = m_creature->GetHealth() - 1;
        }
    }

    void SpellHitTarget(Unit* pTarget, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_KNOCK_AWAY)
            if (m_creature->GetThreatManager().getThreat(pTarget))
                m_creature->GetThreatManager().modifyThreatPercent(pTarget, -25);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiStormBoltTimer <= uiDiff)
        {
            if (m_bHasStormBolted)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_STORM_BOLT) == CAST_OK)
                {
                    m_bHasStormBolted = false;
                    m_uiStormBoltTimer = 10000;
                }
            }
            else if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_STORM_BOLT) == CAST_OK)
                {
                    m_uiStormBoltTimer = 0;
                    m_bHasStormBolted = true;
                }
            }
        }
        else
            m_uiStormBoltTimer -= uiDiff;

        if (m_uiKnockAwayTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_KNOCK_AWAY) == CAST_OK)
                m_uiKnockAwayTimer = 20000;
        }
        else
            m_uiKnockAwayTimer -= uiDiff;

        if (m_uiAvatarTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_AVATAR) == CAST_OK)
                m_uiAvatarTimer = 25000;
        }
        else
            m_uiAvatarTimer -= uiDiff;

        if (m_uiThunderClapTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_THUNDER_CLAP) == CAST_OK)
                m_uiThunderClapTimer = 15000;
        }
        else
            m_uiThunderClapTimer -= uiDiff;

        if (m_uiChargeTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CHARGE) == CAST_OK)
                m_uiChargeTimer = 5000;
        }
        else
            m_uiChargeTimer -= uiDiff;

        DoMeleeAttackIfReady();
        EnterEvadeIfOutOfCombatArea(uiDiff);
    }

private:
    uint32 m_uiStormBoltTimer;
    uint32 m_uiKnockAwayTimer;
    uint32 m_uiAvatarTimer;
    uint32 m_uiThunderClapTimer;
    uint32 m_uiChargeTimer;
    bool m_bHasUsedLOH;
    bool m_bHasStormBolted;
};

CreatureAI* GetAI_boss_magni_bronzebeard(Creature* pCreature)
{
    return new boss_magni_bronzebeardAI(pCreature);
}

// https://database.turtle-wow.org/?npc=11145 Myolor Sunderfury 
// https://database.turtle-wow.org/?npc=11176 Krathok Moltenfist 

enum BMSpecs
{
    SPELL_ARMORSMITH        = 9788,
    SPELL_WEAPONSMITH       = 9787,

    NPC_MYOLOR_SUNDERFURY = 11145,
    NPC_KRATHOK_MOLENFIST = 11176,

    GOSSIP_MYOLOR_SUNDERFURY = 3937,
    GOSSIP_KRATHOK_MOLENFIST = 3953,

    QUEST_ARMORSMITH_ALLIANCE  = 5283,
    QUEST_ARMORSMITH_HORDE     = 5301,
    QUEST_WEAPONSMITH_ALLIANCE = 5284,
    QUEST_WEAPONSMITH_HORDE    = 5302
};

bool GossipHello_npc_blacksmithing_specialisations(Player* pPlayer, Creature* pCreature)
{
    if ((pPlayer->GetQuestRewardStatus(QUEST_WEAPONSMITH_ALLIANCE) || pPlayer->GetQuestRewardStatus(QUEST_WEAPONSMITH_HORDE)) && 
         pPlayer->GetSkillValue(SKILL_BLACKSMITHING) >= 225 && pPlayer->HasSpell(SPELL_WEAPONSMITH) && !pPlayer->HasSpell(SPELL_ARMORSMITH))

        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I wish to become an armorsmith.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if ((pPlayer->GetQuestRewardStatus(QUEST_ARMORSMITH_ALLIANCE) || pPlayer->GetQuestRewardStatus(QUEST_ARMORSMITH_HORDE)) && 
        pPlayer->GetSkillValue(SKILL_BLACKSMITHING) >= 225 && pPlayer->HasSpell(SPELL_ARMORSMITH) && !pPlayer->HasSpell(SPELL_WEAPONSMITH))

        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I wish to become an weaponsmith.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pCreature->GetEntry() == NPC_MYOLOR_SUNDERFURY ? GOSSIP_MYOLOR_SUNDERFURY : GOSSIP_KRATHOK_MOLENFIST, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_blacksmithing_specialisations(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    auto RemoveQuest = [](Player* player, uint32 questId)
    {
        player->RemoveQuest(questId);
        player->SetQuestStatus(questId, QUEST_STATUS_NONE);
        player->getQuestStatusMap()[questId].m_rewarded = false;
    };

    auto GetKnownItemRecipes = [](Player* player, std::vector<uint32>& recipes)
    {
        for (auto const& itr : sObjectMgr.GetItemPrototypeMap())
        {
            ItemPrototype const* pItem = &itr.second;
            if (!pItem)
                continue;
            
            if (pItem->RequiredSkill != SKILL_BLACKSMITHING)
                continue;

            if (pItem->RequiredSpell)
                continue;

            if (!pItem->Spells[0].SpellId)
                continue;

            if (SpellEntry const* pTeachSpell = sSpellMgr.GetSpellEntry(pItem->Spells[0].SpellId))
            {
                if (pTeachSpell->Effect[0] == SPELL_EFFECT_LEARN_SPELL && 
                    pTeachSpell->EffectTriggerSpell[0] != 0 &&
                    player->HasSpell(pTeachSpell->EffectTriggerSpell[0]))
                {
                    recipes.push_back(pTeachSpell->EffectTriggerSpell[0]);
                }
            }
        }
    };

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        std::vector<uint32> recipes;
        GetKnownItemRecipes(pPlayer, recipes);
        uint32 currentSkill = pPlayer->GetSkillValuePure(SKILL_BLACKSMITHING);
        uint32 maxSkill = pPlayer->GetSkillMaxPure(SKILL_BLACKSMITHING);
        pPlayer->SetSkill(SKILL_BLACKSMITHING, 0, 0);
        RemoveQuest(pPlayer, QUEST_WEAPONSMITH_ALLIANCE);
        RemoveQuest(pPlayer, QUEST_WEAPONSMITH_HORDE);
        pPlayer->m_Events.AddLambdaEventAtOffset([pPlayer, currentSkill, maxSkill, recipes]()
        {
            pPlayer->LearnSpell(2018, false);
            pPlayer->LearnSpell(3100, false);
            pPlayer->LearnSpell(3538, false);
            pPlayer->LearnSpell(9785, false);
            pPlayer->SetSkill(SKILL_BLACKSMITHING, currentSkill, maxSkill);
            for (auto spellId : recipes)
                pPlayer->LearnSpell(spellId, false);
        }, 1000);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        std::vector<uint32> recipes;
        GetKnownItemRecipes(pPlayer, recipes);
        uint32 currentSkill = pPlayer->GetSkillValuePure(SKILL_BLACKSMITHING);
        uint32 maxSkill = pPlayer->GetSkillMaxPure(SKILL_BLACKSMITHING);
        pPlayer->SetSkill(SKILL_BLACKSMITHING, 0, 0);
        RemoveQuest(pPlayer, QUEST_ARMORSMITH_ALLIANCE);
        RemoveQuest(pPlayer, QUEST_ARMORSMITH_HORDE);
        pPlayer->m_Events.AddLambdaEventAtOffset([pPlayer, currentSkill, maxSkill, recipes]()
        {
            pPlayer->LearnSpell(2018, false);
            pPlayer->LearnSpell(3100, false);
            pPlayer->LearnSpell(3538, false);
            pPlayer->LearnSpell(9785, false);
            pPlayer->SetSkill(SKILL_BLACKSMITHING, currentSkill, maxSkill);
            for (auto spellId : recipes)
                pPlayer->LearnSpell(spellId, false);
        }, 1000);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_ironforge()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_blacksmithing_specialisations";
    newscript->pGossipHello = &GossipHello_npc_blacksmithing_specialisations;
    newscript->pGossipSelect = &GossipSelect_npc_blacksmithing_specialisations;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tinker_mekkatorque";
    newscript->pGossipHello  = &GossipHello_npc_tinker_mekkatorque;
    newscript->pGossipSelect = &GossipSelect_npc_tinker_mekkatorque;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->pQuestRewardedNPC = &QuestRewarded_boss_magni_bronzebeard;
    newscript->Name = "boss_magni_bronzebeard";
    newscript->GetAI = &GetAI_boss_magni_bronzebeard;
    newscript->RegisterSelf();
}
