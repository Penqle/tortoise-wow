/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "black_morass.h"
#include "boss_gerastrasz.hpp"


class boss_gerastraszAI : public ScriptedAI
{
public:
    explicit boss_gerastraszAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_black_morass*>(pCreature->GetInstanceData());
        boss_gerastraszAI::Reset();
    }

private:

    bool m_bFirstEchoSummoned{};
    bool m_bSecondEchoSummoned{};
    bool m_bThirdEchoSummoned{};

    uint32 m_uiRainOfFire_Timer{};
    uint32 m_uiCleave_Timer{};
    uint32 m_uiBloodFunnel_Timer{};

    ObjectGuid m_guidCurrentEcho{};

    instance_black_morass* m_pInstance{};

public:
    void Reset() override
    {
        m_bFirstEchoSummoned = false;
        m_bSecondEchoSummoned = false;
        m_bThirdEchoSummoned = false;

        m_uiRainOfFire_Timer = urand(10000, 12000);
        m_uiCleave_Timer = urand(3000, 6000);
        m_uiBloodFunnel_Timer = 20000;

        m_guidCurrentEcho.Clear();
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_creature->MonsterYell("Who dares disrupt our majestic plan? The master won't like this.");

        m_creature->SetInCombatWithZone();
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;
        
        if (Creature* pEcho{ m_creature->GetMap()->GetCreature(m_guidCurrentEcho) })
        {
            pEcho->DisappearAndDie();
        }

        m_creature->MonsterSay("Already? So soon...");
    }

    void IgniteEcho()
    {
        if (DoCastSpellIfCan(m_creature, SPELL_FIRE_NOVA) == CAST_OK)
        {
            m_creature->MonsterYell("BAH! USELESS MINION!");

            if (Creature* pEcho{ m_creature->GetMap()->GetCreature(m_guidCurrentEcho) })
            {
                m_creature->MonsterTextEmote("Commander Gerastrasz ignites his own echo.");
                m_creature->DealDamage(pEcho, pEcho->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
            }
        }
    }

    void SummonEcho()
    {
        if (Unit* pEcho{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0) })
        {
            m_creature->MonsterYell("I am eternal!");

            m_creature->SummonCreature(NPC_ECHO_OF_GERASTRASZ, pEcho->GetPositionX(), pEcho->GetPositionY(), pEcho->GetPositionZ(), pEcho->GetOrientation(), TEMPSUMMON_CORPSE_DESPAWN);
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned)
        {
            pSummoned->CastSpell(pSummoned, SPELL_TWIN_TELEPORT_VISUAL, false);
            pSummoned->MonsterTextEmote("Echo of Gerastrasz prepares to sacrifice himself and heal the Commander.");
            pSummoned->Attack(pSummoned->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), true);

            m_guidCurrentEcho = pSummoned->GetObjectGuid();

            m_uiBloodFunnel_Timer = 20000;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->HealthBelowPct(75) && !m_bFirstEchoSummoned)
        {
            if (m_guidCurrentEcho)
            {
                IgniteEcho();
            }
            else
            {
                SummonEcho();
                m_bFirstEchoSummoned = true;
            }
        }

        if (m_creature->HealthBelowPct(50) && !m_bSecondEchoSummoned)
        {
            if (m_guidCurrentEcho)
            {
                IgniteEcho();
            }
            else
            {
                SummonEcho();
                m_bSecondEchoSummoned = true;
            }
        }

        if (m_creature->HealthBelowPct(25) && !m_bThirdEchoSummoned)
        {
            if (m_guidCurrentEcho)
            {
                IgniteEcho();
            }
            else
            {
                SummonEcho();
                m_bThirdEchoSummoned = true;
            }
        }

        if (m_guidCurrentEcho)
        {
            if (m_uiBloodFunnel_Timer < uiDiff)
            {
                if (Creature* pEcho{ m_creature->GetMap()->GetCreature(m_guidCurrentEcho) })
                {
                    pEcho->AddUnitState(UNIT_STAT_ROOT);
                    pEcho->MonsterTextEmote("Echo of Gerastrasz begins to heal the Commander.");
                    pEcho->CastSpell(m_creature, SPELL_BLOOD_FUNNEL, false);

                    m_uiBloodFunnel_Timer = 10350;
                }
            }
            else
            {
                m_uiBloodFunnel_Timer -= uiDiff;
            }
        }

        if (m_uiRainOfFire_Timer < uiDiff)
        {
            m_creature->InterruptNonMeleeSpells(false);

            if (DoCastSpellIfCan(m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), SPELL_RAIN_OF_FIRE) == CAST_OK)
            {
                m_creature->MonsterYell("The sky will fall upon you, mortals!");
                m_uiRainOfFire_Timer = urand(16000, 24000);
            }
        }
        else
        {
            m_uiRainOfFire_Timer -= uiDiff;
        }

        if (m_uiCleave_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
            {
                m_uiCleave_Timer = urand(6000, 8000);
            }
        }
        else
        {
            m_uiCleave_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_gerastrasz(Creature* pCreature)
{
    return new boss_gerastraszAI(pCreature);
}

void AddSC_boss_gerastrasz()
{
    Script* pNewscript{ new Script };
    pNewscript->Name = "boss_gerastrasz";
    pNewscript->GetAI = &GetAI_boss_gerastrasz;
    pNewscript->RegisterSelf();
}
