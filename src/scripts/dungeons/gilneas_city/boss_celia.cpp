#include "scriptPCH.h"
#include "instance_gilneas_city.h"

struct boss_celiaAI : public ScriptedAI
{
	boss_celiaAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_uiImmolateTimer;
	uint32 m_uiShadowWordPainTimer;
	uint32 m_uiCorruptionTimer;
	uint32 m_uiBlastWaveTimer;

	void Reset() override
	{
		m_uiImmolateTimer = 8 * IN_MILLISECONDS;
		m_uiShadowWordPainTimer = 11 * IN_MILLISECONDS;
		m_uiCorruptionTimer = 6 * IN_MILLISECONDS;
		m_uiBlastWaveTimer = 25 * IN_MILLISECONDS;
		m_creature->SetDisplayId(m_creature->GetNativeDisplayId());
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->HealthBelowPct(50))
		{
			if (m_creature->GetDisplayId() != MODEL_DRAGONKIN_CELIA)
			{
				m_creature->SetDisplayId(MODEL_DRAGONKIN_CELIA);
			}

			if (m_uiBlastWaveTimer <= uiDiff)
			{
				Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

				if (target && DoCastSpellIfCan(target, SPELL_BLAST_WAVE) == CAST_OK)
					m_uiBlastWaveTimer = 25 * IN_MILLISECONDS;
			}
			else
				m_uiBlastWaveTimer -= uiDiff;
		}
		else
		{
			if (m_uiImmolateTimer <= uiDiff)
			{
				Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

				if (target && DoCastSpellIfCan(target, SPELL_IMMOLATE) == CAST_OK)
					m_uiImmolateTimer = 8 * IN_MILLISECONDS;
			}
			else
				m_uiImmolateTimer -= uiDiff;

			if (m_uiShadowWordPainTimer <= uiDiff)
			{
				Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

				if (target && DoCastSpellIfCan(target, SPELL_SHADOW_WORD_PAIN) == CAST_OK)
					m_uiShadowWordPainTimer = 11 * IN_MILLISECONDS;
			}
			else
				m_uiShadowWordPainTimer -= uiDiff;

			if (m_uiCorruptionTimer <= uiDiff)
			{
				Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

				if (target && DoCastSpellIfCan(target, SPELL_CORRUPTION) == CAST_OK)
					m_uiCorruptionTimer = 6 * IN_MILLISECONDS;
			}
			else
				m_uiCorruptionTimer -= uiDiff;
		}

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_boss_celia(Creature* pCreature)
{
	return new boss_celiaAI(pCreature);
}

void AddSC_boss_celia()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_celia";
	newscript->GetAI = &GetAI_boss_celia;
	newscript->RegisterSelf();
}