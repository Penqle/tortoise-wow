/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "black_morass.h"
#include "boss_chronormu.hpp"


class boss_chronormuAI : public ScriptedAI
{
public:
    explicit boss_chronormuAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_black_morass*>(pCreature->GetInstanceData());
        boss_chronormuAI::Reset();
    }

private:

    uint32 m_uiCleave_Timer{};
    uint32 m_uiSandBreath_Timer{};
    uint32 m_uiTimeStop_Timer{};
    uint32 m_uiFrenzy_Timer{};

    instance_black_morass* m_pInstance{};

public:
    void Reset() override
    {
        m_uiCleave_Timer = 5000;
        m_uiSandBreath_Timer = 30000;
        m_uiTimeStop_Timer = 40000;
        m_uiFrenzy_Timer = 120000;

        m_creature->SetActiveObjectState(true);
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_creature->SetInCombatWithZone();
    }

    void EnterEvadeMode() override
    {
        if (m_creature->GetFactionTemplateId() != 35)
        {
            m_creature->SetObjectScale(.75f);
            m_creature->AddAura(SPELL_PARTICLES_GREEN);
            m_creature->AddAura(SPELL_SLEEP_VISUAL);
            m_creature->SetStandState(UNIT_STAND_STATE_SLEEP);
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->HasAura(SPELL_SLEEP_VISUAL))
        {
            m_creature->RemoveAurasDueToSpell(SPELL_SLEEP_VISUAL);
            m_creature->SetStandState(UNIT_STAND_STATE_STAND);
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

        if (m_uiSandBreath_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SAND_BREATH) == CAST_OK)
            {
                m_uiSandBreath_Timer = 30000;
            }
        }
        else
        {
            m_uiSandBreath_Timer -= uiDiff;
        }

        if (m_uiTimeStop_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_TIME_LAPSE) == CAST_OK)
            {
                DoPlaySoundToSet(m_creature, SOUND_CTHUNE_WOUND);

                m_uiTimeStop_Timer = 40000;
            }
        }
        else
        {
            m_uiTimeStop_Timer -= uiDiff;
        }

        if (m_uiFrenzy_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_ENRAGE) == CAST_OK)
            {
                DoScriptText(EMOTE_FRENZY, m_creature);

                m_uiFrenzy_Timer = 120000;
            }
        }
        else
        {
            m_uiFrenzy_Timer -= uiDiff;
        }


        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_chronormu(Creature* pCreature)
{
    return new boss_chronormuAI(pCreature);
}


void AddSC_boss_chronormu()
{
    Script* pNewscript{ new Script };
    pNewscript->Name = "boss_chronormu";
    pNewscript->GetAI = &GetAI_boss_chronormu;
    pNewscript->RegisterSelf();
}
