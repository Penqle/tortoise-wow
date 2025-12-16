#include "scriptPCH.h"
#include "lower_karazhan_halls.h"

struct boss_grizikilAI : public ScriptedAI
{
	boss_grizikilAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_GrellkinFireballTimer;
	uint32 m_GrellkinROFTimer;
	uint32 m_GrellkinFlameweaveTimer;
	bool phase;
	bool frenzy;

	void Reset() override
	{
		m_GrellkinFireballTimer = 2 * IN_MILLISECONDS;
		m_GrellkinROFTimer = 15 * IN_MILLISECONDS;
		m_GrellkinFlameweaveTimer = 30 * IN_MILLISECONDS;
		phase = false;

		if (m_pInstance && m_pInstance->GetData(DATA_GRIZIKIL) != DONE)
			m_pInstance->SetData(DATA_GRIZIKIL, NOT_STARTED);
	}

	void Aggro(Unit* pWho) override
	{
		m_creature->PlayDirectSound(60409);
		m_creature->MonsterYell("Whats this? You're here for the orb?! ITS MINE, Grellkin, get them!");

		std::list<Creature*> grellkinsList;
		GetCreatureListWithEntryInGrid(grellkinsList, m_creature, {61195,61196,61197}, 190.0f);

		for (const auto& cr : grellkinsList)
		{
			if (cr->IsAlive())
				cr->SetInCombatWithZone();
		}

		if (m_pInstance)
			m_pInstance->SetData(DATA_GRIZIKIL, IN_PROGRESS);
	}

	void JustDied(Unit* pKiller) override
	{
		m_creature->PlayDirectSound(60411);
		m_creature->MonsterYell("Orb is mine, no take orb...");

		if (m_pInstance)
			m_pInstance->SetData(DATA_GRIZIKIL, DONE);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (!phase && m_creature->GetHealthPercent() <= 50.0f)
		{
			phase = true;
			m_creature->PlayDirectSound(60410);
			m_creature->MonsterYell("You-you-you no defeat me, I am strong!");
		}

		if (m_GrellkinFireballTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), 57094) == CAST_OK)
				m_GrellkinFireballTimer = urand(4 * IN_MILLISECONDS, 6 * IN_MILLISECONDS);
		}
		else
			m_GrellkinFireballTimer -= uiDiff;

		if (m_GrellkinROFTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57093) == CAST_OK)
					m_GrellkinROFTimer = urand(11 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
			}
		}
		else
			m_GrellkinROFTimer -= uiDiff;

		if (m_GrellkinFlameweaveTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57091) == CAST_OK)
				m_GrellkinFlameweaveTimer = urand(25 * IN_MILLISECONDS, 34 * IN_MILLISECONDS);
		}
		else
			m_GrellkinFlameweaveTimer -= uiDiff;

		DoMeleeAttackIfReady();

		EnterEvadeIfOutOfCombatArea(uiDiff);
	}
};

CreatureAI* GetAI_boss_grizikil(Creature* pCreature)
{
	return new boss_grizikilAI(pCreature);
}

void AddSC_boss_grizikil()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_grizikil";
	newscript->GetAI = &GetAI_boss_grizikil;
	newscript->RegisterSelf();
}