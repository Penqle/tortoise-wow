#include "scriptPCH.h"
#include "emerald_sanctum.h"

instance_emerald_sanctum::instance_emerald_sanctum(Map* p_Map) : ScriptedInstance(p_Map)
{
	instance_emerald_sanctum::Initialize();
}

void instance_emerald_sanctum::Initialize()
{
	m_uiSolniusGUID = 0;
	m_uiErenniusGUID = 0;
	m_mTrashGUID.clear();
	std::memset(m_encounters, 0, sizeof(m_encounters));
}

void instance_emerald_sanctum::OnCreatureCreate(Creature* pCreature)
{
	switch (pCreature->GetEntry())
	{
		case NPC_SOLNIUS:
			m_uiSolniusGUID = pCreature->GetGUID();
			break;
		case NPC_ERENNIUS:
			m_uiErenniusGUID = pCreature->GetGUID();
			break;
		case NPC_SANCTUM_DREAMER:
		case NPC_SANCTUM_DRAGONKIN:
		case NPC_SANCTUM_WYRM:
		case NPC_SANCTUM_SUPRESSOR:
		case NPC_SANCTUM_WYRMKIN:
		case NPC_SANCTUM_SCALEBANE:
			m_mTrashGUID.push_back(pCreature->GetGUID());
			break;
	}
}

uint32 instance_emerald_sanctum::GetData(uint32 type) 
{
	if (type < MAX_DATA)
		return m_encounters[type];
  return 0;
}


void instance_emerald_sanctum::SetData(uint32 type, uint32 data) 
{
	if (type < MAX_DATA)
		m_encounters[type] = data;
}




bool instance_emerald_sanctum::IsEncounterInProgress() const
{
	for (uint32 i : m_encounters)
		if (i == IN_PROGRESS)
			return true;
	return false;
}

void instance_emerald_sanctum::OnCreatureDeath(Creature* pCreature)
{
	switch (pCreature->GetEntry())
	{
		case NPC_SANCTUM_DREAMER:
		case NPC_SANCTUM_DRAGONKIN:
		case NPC_SANCTUM_WYRM:
		case NPC_SANCTUM_SUPRESSOR:
		case NPC_SANCTUM_WYRMKIN:
		case NPC_SANCTUM_SCALEBANE:
			m_mTrashGUID.remove(pCreature->GetGUID());
			break;
	}
}

uint64 instance_emerald_sanctum::GetData64(uint32 uiType)
{
	switch (uiType)
	{
		case DATA_SOLNIUS:
			return m_uiSolniusGUID;
		case DATA_ERENNIUS:
			return m_uiErenniusGUID;
		default:
			return 0;
	}
}

InstanceData* GetInstanceData_instance_emerald_sanctum(Map* p_Map)
{
	return new instance_emerald_sanctum(p_Map);
}

struct sanctum_dreamerAI : public ScriptedAI
{
	sanctum_dreamerAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiDreamstateTimer;

	void Reset() override
	{
		m_uiDreamstateTimer = 10 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->CantPathToVictim())
			m_creature->CastSpell(m_creature->GetVictim(), SPELL_SUMMON_PLAYER, true);

		if (m_uiDreamstateTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, SPELL_DREAMESTATE) == CAST_OK)
					m_uiDreamstateTimer = 10 * IN_MILLISECONDS;
			}
		}
		else
			m_uiDreamstateTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_dreamer(Creature* pCreature)
{
	return new sanctum_dreamerAI(pCreature);
}

struct sanctum_dragonkinAI : public ScriptedAI
{
	sanctum_dragonkinAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiReflectionTimer;

	void Reset() override
	{
		m_uiReflectionTimer = 10 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->CantPathToVictim())
			m_creature->CastSpell(m_creature->GetVictim(), SPELL_SUMMON_PLAYER, true);

		if (m_uiReflectionTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, SPELL_REFLECTION) == CAST_OK)
				m_uiReflectionTimer = 10 * IN_MILLISECONDS;
		}
		else
			m_uiReflectionTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_dragonkin(Creature* pCreature)
{
	return new sanctum_dragonkinAI(pCreature);
}

struct sanctum_wyrmAI : public ScriptedAI
{
	sanctum_wyrmAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiAcidBreathTimer;
	uint32 m_uiPoisonBoltVolleyTimer;

	void Reset() override
	{
		m_uiAcidBreathTimer = 20 * IN_MILLISECONDS;
		m_uiPoisonBoltVolleyTimer = 15 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->CantPathToVictim())
			m_creature->CastSpell(m_creature->GetVictim(), SPELL_SUMMON_PLAYER, true);

		if (m_uiAcidBreathTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ACID_BREATH) == CAST_OK)
				m_uiAcidBreathTimer = 20 * IN_MILLISECONDS;
		}
		else
			m_uiAcidBreathTimer -= uiDiff;

		if (m_uiPoisonBoltVolleyTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_POISON_BOLT_VOLLEY) == CAST_OK)
				m_uiPoisonBoltVolleyTimer = 15 * IN_MILLISECONDS;
		}
		else
			m_uiPoisonBoltVolleyTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_wyrm(Creature* pCreature)
{
	return new sanctum_wyrmAI(pCreature);
}

struct sanctum_suppressorAI : public ScriptedAI
{
	sanctum_suppressorAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiEmeraldSupressionTimer;

	void Reset() override
	{
		m_uiEmeraldSupressionTimer = 15 * IN_MILLISECONDS;

	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->CantPathToVictim())
			m_creature->CastSpell(m_creature->GetVictim(), SPELL_SUMMON_PLAYER, true);

		if (m_uiEmeraldSupressionTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, SPELL_EMERALD_SUPRESSION) == CAST_OK)
					m_uiEmeraldSupressionTimer = 14 * IN_MILLISECONDS;
			}
		}
		else
			m_uiEmeraldSupressionTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_supressor(Creature* pCreature)
{
	return new sanctum_suppressorAI(pCreature);
}

struct sanctum_wyrmkinAI : public ScriptedAI
{
	sanctum_wyrmkinAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiAcidSpitTimer;
	uint32 m_uiWyrmkinsVenomTimer;

	void Reset() override
	{
		m_uiAcidSpitTimer = 7 * IN_MILLISECONDS;
		m_uiWyrmkinsVenomTimer = 25 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->CantPathToVictim())
			m_creature->CastSpell(m_creature->GetVictim(), SPELL_SUMMON_PLAYER, true);

		if (m_uiAcidSpitTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ACID_SPIT) == CAST_OK)
				m_uiAcidSpitTimer = 7 * IN_MILLISECONDS;
		}
		else
			m_uiAcidSpitTimer -= uiDiff;

		if (m_uiWyrmkinsVenomTimer < uiDiff)
		{
			Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
			if (!playerList.isEmpty())
			{
				for (const auto& itr : playerList)
				{
					if (Player* pPlayer = itr.getSource())
					{
						if (pPlayer->GetDistance3dToCenter(m_creature) < 5.0f)
						{
							if (DoCastSpellIfCan(pPlayer, SPELL_WYRMKINS_VENOM) == CAST_OK)
								m_uiWyrmkinsVenomTimer = 21 * IN_MILLISECONDS;
						}
					}
				}
			}
		}
		else
			m_uiWyrmkinsVenomTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_wyrmkin(Creature* pCreature)
{
	return new sanctum_wyrmkinAI(pCreature);
}

struct sanctum_scalebaneAI : public ScriptedAI
{
	sanctum_scalebaneAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiCleaveTimer;
	uint32 m_uiScalebaneIntimidationTimer;

	void Reset() override
	{
		m_uiCleaveTimer = 6 * IN_MILLISECONDS;
		m_uiScalebaneIntimidationTimer = 25 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->CantPathToVictim())
			m_creature->CastSpell(m_creature->GetVictim(), SPELL_SUMMON_PLAYER, true);

		if (m_uiCleaveTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
				m_uiCleaveTimer = 6 * IN_MILLISECONDS;
		}
		else
			m_uiCleaveTimer -= uiDiff;

		if (m_uiScalebaneIntimidationTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SCALEBANE_INTIMIDATION) == CAST_OK)
				m_uiScalebaneIntimidationTimer = 25 * IN_MILLISECONDS;
		}
		else
			m_uiScalebaneIntimidationTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_scalebane(Creature* pCreature)
{
	return new sanctum_scalebaneAI(pCreature);
}

struct erenniusAI : public ScriptedAI
{
	erenniusAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;

	uint32 m_uiPoisonBoltVolleyTimer;
	uint32 m_uiHowlOfErreniusTimer;
	uint32 m_uiCallOfNightmareTimer;
	uint32 m_uiWallOfErenniusTimer;
	uint32 m_uiGreenDragonBindingTimer;
	uint32 m_uiCurseOfErenniusTimer;
	uint32 m_killSayTimer;
	bool m_uiCastedCurseOfErennius;

	void Reset() override
	{
		m_uiPoisonBoltVolleyTimer = urand(9 * IN_MILLISECONDS, 13 * IN_MILLISECONDS);
		m_uiHowlOfErreniusTimer = 37 * IN_MILLISECONDS;
		m_uiCallOfNightmareTimer = 7 * IN_MILLISECONDS;
		m_uiWallOfErenniusTimer = 35 * IN_MILLISECONDS;
		m_uiGreenDragonBindingTimer = 70 * IN_MILLISECONDS;
		m_uiCurseOfErenniusTimer = urand(81 * IN_MILLISECONDS, 92 * IN_MILLISECONDS);
		m_uiCastedCurseOfErennius = false;
		m_killSayTimer = 0;

		if (m_pInstance)
			m_pInstance->SetData(DATA_ERENNIUS, NOT_STARTED);
	}

	void EnterCombat(Unit* pWho)
	{
		m_creature->MonsterYell("You will not disturb the Awakener...");
		m_creature->PlayDirectSound(ERENNIUS_SAY_SOUND_1);
	}

	void Aggro(Unit* pWho) override
	{
		if (m_pInstance)
			m_pInstance->SetData(DATA_ERENNIUS, IN_PROGRESS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->CantPathToVictim())
			m_creature->CastSpell(m_creature->GetVictim(), SPELL_SUMMON_PLAYER, true);

		if (Creature* pSolnius = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_SOLNIUS)))
		{
			if (pSolnius->IsAlive() && pSolnius->IsInCombat())
			{
				if (m_uiWallOfErenniusTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_WALL_OF_ERENNIUS) == CAST_OK)
						m_uiWallOfErenniusTimer = 35 * IN_MILLISECONDS;
				}
				else
					m_uiWallOfErenniusTimer -= uiDiff;

				if (m_uiGreenDragonBindingTimer < uiDiff)
				{
					if (DoCastSpellIfCan(pSolnius, SPELL_GREEN_DRAGON_BINDING) == CAST_OK)
						m_uiGreenDragonBindingTimer = 70 * IN_MILLISECONDS;
				}
				else
					m_uiGreenDragonBindingTimer -= uiDiff;
			}
		}

		m_killSayTimer += uiDiff;

		if (m_uiCallOfNightmareTimer < uiDiff)
		{
			Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

			if (DoCastSpellIfCan(target, SPELL_CALL_OF_NIGHTMARE) == CAST_OK)
				m_uiCallOfNightmareTimer = 7 * IN_MILLISECONDS;
		}
		else
			m_uiCallOfNightmareTimer -= uiDiff;

		if (m_uiPoisonBoltVolleyTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_POISON_BOLT_VOLLEY) == CAST_OK)
				m_uiPoisonBoltVolleyTimer = urand(9 * IN_MILLISECONDS, 13 * IN_MILLISECONDS);
		}
		else
			m_uiPoisonBoltVolleyTimer -= uiDiff;

		if (m_uiHowlOfErreniusTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOWL_OF_ERRENIUS) == CAST_OK)
				m_uiHowlOfErreniusTimer = urand(30 * IN_MILLISECONDS, 33 * IN_MILLISECONDS);
		}
		else
			m_uiHowlOfErreniusTimer -= uiDiff;

		if (m_creature->HealthBelowPct(50) && !m_uiCastedCurseOfErennius)
		{
			if (m_uiCurseOfErenniusTimer < uiDiff)
			{
				if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CURSE_OF_ERENNIUS) == CAST_OK)
					m_uiCastedCurseOfErennius = true;
			}
			else
				m_uiCurseOfErenniusTimer -= uiDiff;
		}

		DoMeleeAttackIfReady();
	}

	void KilledUnit(Unit* pVictim)
	{
		if (m_killSayTimer >= 3000)
		{
			m_killSayTimer = 0;
			m_creature->MonsterYell(30172);
			m_creature->PlayDirectSound(ERENNIUS_SAY_SOUND_2);
		}
	}

	void JustDied(Unit* pWho)
	{
		m_creature->MonsterYell(30173);
		m_creature->PlayDirectSound(ERENNIUS_SAY_SOUND_3);
		if (m_pInstance)
			m_pInstance->SetData(DATA_ERENNIUS, DONE);
	}
};

CreatureAI* GetAI_erennius(Creature* pCreature)
{
	return new erenniusAI(pCreature);
}

void AddSC_instance_emerald_sanctum()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "instance_emerald_sanctum";
	newscript->GetInstanceData = &GetInstanceData_instance_emerald_sanctum;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_dreamer";
	newscript->GetAI = &GetAI_sanctum_dreamer;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_dragonkin";
	newscript->GetAI = &GetAI_sanctum_dragonkin;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_wyrm";
	newscript->GetAI = &GetAI_sanctum_wyrm;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_supressor";
	newscript->GetAI = &GetAI_sanctum_supressor;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_wyrmkin";
	newscript->GetAI = &GetAI_sanctum_wyrmkin;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_scalebane";
	newscript->GetAI = &GetAI_sanctum_scalebane;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "erennius";
	newscript->GetAI = &GetAI_erennius;
	newscript->RegisterSelf();
}