#include "scriptPCH.h"
#include "lower_karazhan_halls.h"

struct boss_blackwald_iiAI : public ScriptedAI
{
	boss_blackwald_iiAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	std::vector<ObjectGuid> summonList;
	uint32 m_ReaverStormTimer;
	uint32 m_BlackwaldBoonTimer;
	//uint32 m_BlackwaldBlessingTimer;
	uint32 m_EmpoweredSoulTimer;
	uint32 m_CallHelpTimer;

	void Reset() override
	{
		summonList.clear();
		m_ReaverStormTimer = urand(6 * IN_MILLISECONDS, 11 * IN_MILLISECONDS);
		m_EmpoweredSoulTimer = urand(27 * IN_MILLISECONDS, 40 * IN_MILLISECONDS);
		m_BlackwaldBoonTimer = 20 * IN_MILLISECONDS;
		m_CallHelpTimer = 31 * IN_MILLISECONDS;

		if (m_pInstance && m_pInstance->GetData(DATA_BLACKWALD_II) != DONE)
			m_pInstance->SetData(DATA_BLACKWALD_II, NOT_STARTED);
	}

	void Aggro(Unit* /*pWho*/) override
	{
		m_creature->PlayDirectSound(60412);
		m_creature->MonsterYell("You dare disturb the Dark Rider Lord?");

		if (m_pInstance)
			m_pInstance->SetData(DATA_BLACKWALD_II, IN_PROGRESS);
	}

	void EnterEvadeMode() override
	{
		if (!summonList.empty())
		{

			for (const auto& guid : summonList)
			{
				if (Creature* summon = m_pInstance->instance->GetCreature(guid))
					summon->DespawnOrUnsummon();
			}

			summonList.clear();
		}

		if (m_pInstance)
			m_pInstance->SetData(DATA_BLACKWALD_II, FAIL);

		ScriptedAI::EnterEvadeMode();
	}

	void JustSummoned(Creature* summon) override
	{
		summonList.push_back(summon->GetObjectGuid());
	}

	void JustDied(Unit* pKiller) override
	{
		m_creature->PlayDirectSound(60414);
		m_creature->MonsterYell("Master, this was not fortold, this was not supposed to be my fate...");

		if (m_pInstance)
			m_pInstance->SetData(DATA_BLACKWALD_II, DONE);
	}

	void CallForHelp()
	{
		std::vector<uint32> entries = { 61192, 61193, 61194, 61211 };
		auto randEntry = SelectRandomContainerElement(entries);
		if (Creature* guard = DoSpawnCreature(randEntry, 15.0f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 5000))
			guard->SetInCombatWithZone();
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ReaverStormTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57066) == CAST_OK)
				m_ReaverStormTimer = urand(6 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
		}
		else
			m_ReaverStormTimer -= uiDiff;

		if (m_BlackwaldBoonTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57073) == CAST_OK)
				{
					if (DoCastSpellIfCan(m_creature, 57074, CF_TRIGGERED) == CAST_OK)
						m_BlackwaldBoonTimer = 22 * IN_MILLISECONDS;
				}
			}
		}
		else
			m_BlackwaldBoonTimer -= uiDiff;

		if (m_EmpoweredSoulTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57075) == CAST_OK)
					m_EmpoweredSoulTimer = urand(26 * IN_MILLISECONDS, 42 * IN_MILLISECONDS);
			}
		}
		else
			m_EmpoweredSoulTimer -= uiDiff;

		if (m_CallHelpTimer < uiDiff)
		{
			m_creature->PlayDirectSound(60413);
			m_creature->MonsterYell("I call upon the Scythe of Elune, grant me your power!");
			CallForHelp();
			m_CallHelpTimer = urand(44 * IN_MILLISECONDS, 51 * IN_MILLISECONDS);
		}
		else
			m_CallHelpTimer -= uiDiff;

		DoMeleeAttackIfReady();

		//EnterEvadeIfOutOfCombatArea(uiDiff);
	}
};

CreatureAI* GetAI_boss_blackwald_ii(Creature* pCreature)
{
	return new boss_blackwald_iiAI(pCreature);
}

void AddSC_boss_blackwald_ii()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_blackwald_ii";
	newscript->GetAI = &GetAI_boss_blackwald_ii;
	newscript->RegisterSelf();
}