/* This file is part of the ScriptDev2 Project. See AUTHORS file for Copyright information
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

#include "scriptPCH.h"
#include "naxxramas.h"

enum GrobbulusData
{
    SPELL_SLIME_STREAM = 28137,
    SPELL_MUTATING_INJECTION = 28169,
    SPELL_SLIME_SPRAY = 28157,
    SPELL_BERSERK = 26662,

    SPELL_POISON_CLOUD = 28240, // Summons a poison cloud npc
    //SPELL_POISON_CLOUD_PASSIVE  = 28158, // The visual poison cloud, triggers 28241 every second

    NPC_FALLOUT_SLIME = 16290
};

enum eGrobbulusEvents
{
    EVENT_MUTATING_INJECTION = 1,
    EVENT_POISON_CLOUD,
    EVENT_SLIME_SPRAY,
    EVENT_BERSERK
};

static uint32 POISONCLOUD_CD() { return 16000; }
static uint32 SLIMESPRAY_CD(bool b_initial) { return b_initial ? urand(20000, 30000) : urand(30000,35000); }
static constexpr uint32 BERSERK_TIMER = 12 * 60 * 1000; // 12 Minute enrage
static constexpr uint32 SLIMESTREAM_REPEAT_CD = 1500; // Used every 1.5 seconds if current target is out of melee range

struct boss_grobbulusAI : public ScriptedAI
{
    explicit boss_grobbulusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_naxxramas*>(pCreature->GetInstanceData());
        Reset();
    }

    instance_naxxramas* m_pInstance;
    uint32 m_uiSlimeStreamTimer;
    EventMap m_events;

    uint32 INJECTION_CD(bool b_initial)
    {
        // TODO: It's supposedly used more frequent after 30%. Need confirmation.
        if (b_initial)
            return 12000;
        else
            if (m_creature->GetHealthPercent() > 30.0f)
                return urand(7000, 13000);
            else
                return urand(3000, 7000);
    }

    void Reset() override
    {
        m_events.Reset();
        m_uiSlimeStreamTimer = 3000; // Allowing tank 5 sec to get to grobbulus on pull
    }

    void Aggro(Unit* pWho) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GROBBULUS, IN_PROGRESS);

        m_events.ScheduleEvent(EVENT_MUTATING_INJECTION, INJECTION_CD(true));
        m_events.ScheduleEvent(EVENT_POISON_CLOUD, POISONCLOUD_CD());
        m_events.ScheduleEvent(EVENT_SLIME_SPRAY, SLIMESPRAY_CD(true));
        m_events.ScheduleEvent(EVENT_BERSERK, BERSERK_TIMER);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GROBBULUS, DONE);
    }

    void JustReachedHome() override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GROBBULUS, FAIL);
    }

    // This custom selecting function, because we only want to select players without mutagen aura
    bool DoCastMutagenInjection()
    {
        if (m_creature->IsNonMeleeSpellCasted(true))
            return false;

        std::vector<Unit*> suitableTargets;
        ThreatList const& threatList = m_creature->GetThreatManager().getThreatList();

        for (const auto itr : threatList)
        {
            if (Unit* pTarget = m_creature->GetMap()->GetUnit(itr->getUnitGuid()))
            {
                if (pTarget->GetTypeId() == TYPEID_PLAYER && !pTarget->HasAura(SPELL_MUTATING_INJECTION))
                    suitableTargets.push_back(pTarget);
            }
        }

        if (suitableTargets.empty())
            return false;

        Unit* pTarget = suitableTargets[urand(0, suitableTargets.size() - 1)];
        if (DoCastSpellIfCan(pTarget, SPELL_MUTATING_INJECTION) == CAST_OK)
            return true;

        return false;
    }

    void SpellHitTarget(Unit* pTarget, SpellEntry const* pSpell) override
    {
        if ((pSpell->Id == SPELL_SLIME_SPRAY) && pTarget->GetTypeId() == TYPEID_PLAYER)
        {
            if (Creature* pSlime = m_creature->SummonCreature(NPC_FALLOUT_SLIME,  pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(),
                                                              0.0f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10 * IN_MILLISECONDS))
            {
                pSlime->SetInCombatWithZone();
            }
        }
    }

    void UpdateSlimeStream(uint32 uiDiff)
    {
        if (m_creature->CanReachWithMeleeAutoAttack(m_creature->GetVictim()))
            m_uiSlimeStreamTimer = SLIMESTREAM_REPEAT_CD;
        else
        {
            if (m_uiSlimeStreamTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SLIME_STREAM) == CAST_OK)
                    m_uiSlimeStreamTimer = SLIMESTREAM_REPEAT_CD;
            }
            else
                m_uiSlimeStreamTimer -= uiDiff;
        }
    }
    
    void UpdateAI(uint32 const uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;
        
        if (!m_pInstance->HandleEvadeOutOfHome(m_creature))
            return;

        // Slime Stream if is cast if current target is not in melee range
        UpdateSlimeStream(uiDiff);

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_MUTATING_INJECTION:
                {
                    if (DoCastMutagenInjection())
                        m_events.Repeat(INJECTION_CD(false));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_POISON_CLOUD:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_POISON_CLOUD) == CAST_OK)
                        m_events.Repeat(POISONCLOUD_CD());
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_SLIME_SPRAY:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SLIME_SPRAY) == CAST_OK)
                        m_events.Repeat(SLIMESPRAY_CD(false));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_BERSERK:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_BERSERK) != CAST_OK)
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_grobbulus(Creature* pCreature)
{
    return new boss_grobbulusAI(pCreature);
}


void AddSC_boss_grobbulus()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_grobbulus";
    pNewScript->GetAI = &GetAI_boss_grobbulus;
    pNewScript->RegisterSelf();
}
