#include "scriptPCH.h"
#include "lower_karazhan_halls.h"

static const float g_lordBlackwaldPos[4] = { -11088.2f, -1995.74f, 76.1774f, 1.72157f };

instance_lower_karazhan_halls::instance_lower_karazhan_halls(Map* p_Map) : ScriptedInstance(p_Map)
{
	instance_lower_karazhan_halls::Initialize();
}

void instance_lower_karazhan_halls::Initialize()
{
	m_uiMoroesStage = 0;
}

void instance_lower_karazhan_halls::OnCreatureCreate(Creature* pCreature)
{
	switch (pCreature->GetEntry())
	{
	    case NPC_BROOD_QUEEN_ARAXXNA:
			m_uiBossGUID[DATA_BROOD_QUEEN_ARAXXNA] = pCreature->GetGUID();
			break;
		case NPC_MOROES:
			m_uiBossGUID[DATA_MOROES] = pCreature->GetGUID();
			break;
		case NPC_LORD_BLACKWALD_II:
			m_uiBossGUID[DATA_BLACKWALD_II] = pCreature->GetGUID();
			break;
		case NPC_DARK_RIDER_CHAMPION:
		{
			m_uiDRChampionGUID = pCreature->GetGUID();
			for (uint8 i = 0; i < 2; ++i)
			{
				if (Creature* slave = pCreature->SummonCreature(61203, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_DEAD_DESPAWN, 60 * IN_MILLISECONDS))
					m_uiDRAppretinceGUID[i] = slave->GetGUID();
			}
			break;
		}
	}
}

void instance_lower_karazhan_halls::OnCreatureRespawn(Creature* pCreature)
{
	switch (pCreature->GetEntry())
	{
		case NPC_LORD_BLACKWALD_II:
			if (GetData(DATA_BLACKWALD_II) == DONE)
				pCreature->AddObjectToRemoveList();
			break;
	}
}

uint64 instance_lower_karazhan_halls::GetData64(uint32 uiType)
{
	if (uiType == DATA_DR_APPRETINCE_FIRST)
		return m_uiDRAppretinceGUID[0];
	else if (uiType == DATA_DR_APPRETINCE_SECOND)
		return m_uiDRAppretinceGUID[1];
	else if (uiType == DATA_DR_CHAMPION)
		return m_uiDRChampionGUID;
	else
		return m_uiBossGUID[uiType];
}

uint32 instance_lower_karazhan_halls::GetData(uint32 uiType)
{
	if (uiType == DATA_MOROES_STAGE)
		return m_uiMoroesStage;
	else
		return m_uiBossState[uiType];
}

void instance_lower_karazhan_halls::SetData(uint32 uiType, uint32 uiData)
{
	if (uiType == DATA_MOROES_STAGE)
		m_uiMoroesStage = uiData;
	else
		m_uiBossState[uiType] = uiData;

	if (uiData == DONE)
	{
		OUT_SAVE_INST_DATA;

		std::ostringstream saveStream;

		for (uint32 i : m_uiBossState)
			saveStream << i << " ";

		m_strInstData = saveStream.str();

		SaveToDB();
		OUT_SAVE_INST_DATA_COMPLETE;
	}
}

void instance_lower_karazhan_halls::Load(const char* chrIn)
{
	if (!chrIn)
	{
		OUT_LOAD_INST_DATA_FAIL;
		return;
	}

	OUT_LOAD_INST_DATA(chrIn);

	std::istringstream loadStream(chrIn);
	for (uint32& i : m_uiBossState)
	{
		loadStream >> i;
		if (i == IN_PROGRESS)
			i = NOT_STARTED;
	}
}

void instance_lower_karazhan_halls::Update(uint32 diff)
{
	if (!GetData64(DATA_BLACKWALD_II) && GetData(DATA_DR_CHAMPION) == DONE && GetData(DATA_BLACKWALD_II) != DONE)
	{
		if (Creature* boss = GetMap()->SummonCreature(NPC_LORD_BLACKWALD_II, g_lordBlackwaldPos[0], g_lordBlackwaldPos[1], g_lordBlackwaldPos[2], g_lordBlackwaldPos[3], TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 1 * DAY * IN_MILLISECONDS))
		{
			boss->MonsterYell("I sense a disturbance here, who dares intrude?!");
			// set respawn dealy a week it's enough that the boss doesn't get respawn by the basic settings
			boss->SetRespawnDelay(7 * DAY);
		}
	}
}

bool instance_lower_karazhan_halls::IsEncounterInProgress() const
{
	for (uint32 i : m_uiBossState)
		if (i == IN_PROGRESS)
			return true;
	return false;
}

InstanceData* GetInstanceData_instance_lower_karazhan_halls(Map* p_Map)
{
	return new instance_lower_karazhan_halls(p_Map);
}

struct shadowbane_gluttonAI : public ScriptedAI
{
	shadowbane_gluttonAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_SlaveringBiteTimer;
	uint32 m_DevouringHungerTimer;

	void Reset() override
	{
		m_SlaveringBiteTimer = urand(12 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
		m_DevouringHungerTimer = urand(15 * IN_MILLISECONDS, 25 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_SlaveringBiteTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_IN_MELEE_RANGE))
			{
				if (DoCastSpellIfCan(pTarget, 57076) == CAST_OK)
					m_SlaveringBiteTimer = urand(12 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
			}
		}
		else
			m_SlaveringBiteTimer -= uiDiff;

		if (m_DevouringHungerTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), 57077) == CAST_OK)
				m_DevouringHungerTimer = urand(15 * IN_MILLISECONDS, 25 * IN_MILLISECONDS);
		}
		else
			m_DevouringHungerTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_glutton(Creature* pCreature)
{
	return new shadowbane_gluttonAI(pCreature);
}

struct phantom_cookAI : public ScriptedAI
{
	phantom_cookAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_FireBlastTimer;

	void Reset() override
	{
		m_FireBlastTimer = urand(15 * IN_MILLISECONDS, 30 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_FireBlastTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 20623) == CAST_OK)
					m_FireBlastTimer = urand(15 * IN_MILLISECONDS, 30 * IN_MILLISECONDS);
			}
		}
		else
			m_FireBlastTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_phantom_cook(Creature* pCreature)
{
	return new phantom_cookAI(pCreature);
}

struct shadowbane_alphaAI : public ScriptedAI
{
	shadowbane_alphaAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ShadowbaneRoarTimer;

	void Reset() override
	{
		m_ShadowbaneRoarTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);

		if (!m_creature->HasAura(57078))
			m_creature->CastSpell(m_creature, 57078, true);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ShadowbaneRoarTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57079) == CAST_OK)
				m_ShadowbaneRoarTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
		}
		else
			m_ShadowbaneRoarTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_alpha(Creature* pCreature)
{
	return new shadowbane_alphaAI(pCreature);
}

struct shadowbane_darkcasterAI : public ScriptedAI
{
	shadowbane_darkcasterAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_DarkboltTimer;

	void Reset() override
	{
		m_DarkboltTimer = 8 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_DarkboltTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57080) == CAST_OK)
					m_DarkboltTimer = 8 * IN_MILLISECONDS;
			}
		}
		else
			m_DarkboltTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_darkcaster(Creature* pCreature)
{
	return new shadowbane_darkcasterAI(pCreature);
}

struct shadowbane_ragefangAI : public ScriptedAI
{
	shadowbane_ragefangAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	bool frenzy;
	uint32 m_ClawFurryTimer;

	void Reset() override
	{
		frenzy = false;
		m_ClawFurryTimer = urand(11 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->GetHealthPercent() <= 30.0f && !frenzy)
		{
			frenzy = true;
			DoCastSpellIfCan(m_creature, 57082);
		}

		if (m_ClawFurryTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57081) == CAST_OK)
				m_ClawFurryTimer = urand(11 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
		}
		else
			m_ClawFurryTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_ragefang(Creature* pCreature)
{
	return new shadowbane_ragefangAI(pCreature);
}

struct haunted_blacksmithAI : public ScriptedAI
{
	haunted_blacksmithAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_SpectralArmorTimer;

	void Reset() override
	{
		m_SpectralArmorTimer = urand(6 * IN_MILLISECONDS, 9 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_SpectralArmorTimer < uiDiff)
		{
			if (Unit* pFriendlyTarget = m_creature->SelectRandomFriendlyTarget(nullptr, 20.0f, true))
			{
				if (pFriendlyTarget->HasAura(57068))
					m_SpectralArmorTimer = 500;
				else
				{
					if (DoCastSpellIfCan(pFriendlyTarget, 57068) == CAST_OK)
						m_SpectralArmorTimer = urand(6 * IN_MILLISECONDS, 9 * IN_MILLISECONDS);
				}
			}
		}
		else
			m_SpectralArmorTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_haunted_blacksmith(Creature* pCreature)
{
	return new haunted_blacksmithAI(pCreature);
}

struct phantom_guardsmanAI : public ScriptedAI
{
	phantom_guardsmanAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ShieldBlockTimer;
	uint32 m_CurseOfWeaknessTimer;

	void Reset() override
	{
		m_ShieldBlockTimer = 5 * IN_MILLISECONDS;
		m_CurseOfWeaknessTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ShieldBlockTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 2565, CF_TRIGGERED | CF_FORCE_CAST) == CAST_OK)
				m_ShieldBlockTimer = 5 * IN_MILLISECONDS;
		}
		else
			m_ShieldBlockTimer -= uiDiff;

		if (m_CurseOfWeaknessTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 12493, CF_TRIGGERED | CF_FORCE_CAST) == CAST_OK)
					m_CurseOfWeaknessTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
			}
		}
		else
			m_CurseOfWeaknessTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_phantom_guardsman(Creature* pCreature)
{
	return new phantom_guardsmanAI(pCreature);
}

struct haunted_stable_tenderAI : public ScriptedAI
{
	haunted_stable_tenderAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_CallSpectralSteedTimer;

	void Reset() override
	{
		m_CallSpectralSteedTimer = urand(14 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_CallSpectralSteedTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57070) == CAST_OK)
				m_CallSpectralSteedTimer = urand(14 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
		}
		else
			m_CallSpectralSteedTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_haunted_stable_tender(Creature* pCreature)
{
	return new haunted_stable_tenderAI(pCreature);
}

struct shattercage_spearmanAI : public ScriptedAI
{
	shattercage_spearmanAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ShattercageImpaleTimer;

	void Reset() override
	{
		m_ShattercageImpaleTimer = urand(10 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ShattercageImpaleTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57071) == CAST_OK)
					m_ShattercageImpaleTimer = urand(10 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
			}
		}
		else
			m_ShattercageImpaleTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shattercage_spearman(Creature* pCreature)
{
	return new shattercage_spearmanAI(pCreature);
}

struct shattercage_magiskullAI : public ScriptedAI
{
	shattercage_magiskullAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
	   Reset();
	}

	uint32 m_ArcaneExplosionTimer;

	void Reset() override
	{
		m_ArcaneExplosionTimer = urand(8 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ArcaneExplosionTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 25679) == CAST_OK)
				m_ArcaneExplosionTimer = urand(8 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
		}
		else
			m_ArcaneExplosionTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shattercage_magiskull(Creature* pCreature)
{
	return new shattercage_magiskullAI(pCreature);
}

struct skitterweb_crawlerAI : public ScriptedAI
{
	skitterweb_crawlerAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
	    Reset();
	}

	uint32 m_LeechingBiteTimer;

	void Reset() override
	{
	    m_LeechingBiteTimer = urand(2 * IN_MILLISECONDS, 5 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
	    if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
		    return;

	    if (m_LeechingBiteTimer < uiDiff)
	    {
			if (DoCastSpellIfCan(m_creature->GetVictim(), 57056) == CAST_OK)
				m_LeechingBiteTimer = 15 * IN_MILLISECONDS;
	    }
	    else
		    m_LeechingBiteTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_skitterweb_crawler(Creature* pCreature)
{
	return new skitterweb_crawlerAI(pCreature);
}

struct skitterweb_darkfangAI : public ScriptedAI
{
	skitterweb_darkfangAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_DarkfangVenomTimer;
	uint32 m_VenomInfluxTimer;
	uint32 m_ReStealthTimer;

	void Reset() override
	{
		if (m_creature->HasAura(8216))
			DoCastSpellIfCan(m_creature, 8216, CF_TRIGGERED | CF_FORCE_CAST);

		m_DarkfangVenomTimer = 1 * IN_MILLISECONDS;
		m_VenomInfluxTimer = 5 * IN_MILLISECONDS;
		m_ReStealthTimer = 0;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->IsInCombat() && !m_creature->HasAura(8216) && !m_ReStealthTimer)
			m_ReStealthTimer = 2000;

		if (m_ReStealthTimer)
		{
			if (m_ReStealthTimer < uiDiff)
			{
				if (!m_creature->IsInCombat())
					DoCastSpellIfCan(m_creature, 8216, CF_TRIGGERED | CF_FORCE_CAST);
				m_ReStealthTimer = 0;
			}
			else
				m_ReStealthTimer -= uiDiff;
		}

		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_DarkfangVenomTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57058) == CAST_OK)
					m_DarkfangVenomTimer = urand(5 * IN_MILLISECONDS, 7 * IN_MILLISECONDS);
			}
		}
		else
			m_DarkfangVenomTimer -= uiDiff;

		if (m_VenomInfluxTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57059) == CAST_OK)
					m_VenomInfluxTimer = urand(12 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
			}
		}
		else
			m_VenomInfluxTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_skitterweb_darkfang(Creature* pCreature)
{
	return new skitterweb_darkfangAI(pCreature);
}

struct skitterweb_venomfangAI : public ScriptedAI
{
	skitterweb_venomfangAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_PoisonBoltVolleyTimer;
	uint32 m_CorrosiveBoltTimer;

	void Reset() override
	{
		m_PoisonBoltVolleyTimer = urand(14 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
		m_CorrosiveBoltTimer = 2 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_PoisonBoltVolleyTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57063) == CAST_OK)
				m_PoisonBoltVolleyTimer = urand(23 * IN_MILLISECONDS, 26 * IN_MILLISECONDS);
		}
		else
			m_PoisonBoltVolleyTimer -= uiDiff;

		if (m_CorrosiveBoltTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 56507) == CAST_OK)
					m_CorrosiveBoltTimer = urand(6 * IN_MILLISECONDS, 8 * IN_MILLISECONDS);
			}
		}
		else
			m_CorrosiveBoltTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_skitterweb_venomfang(Creature* pCreature)
{
	return new skitterweb_venomfangAI(pCreature);
}

struct skitterweb_leaperAI : public ScriptedAI
{
	skitterweb_leaperAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
	    Reset();
	}

	uint32 m_SkitterLeapTimer;

	void Reset() override
	{
		m_SkitterLeapTimer = urand(15 * IN_MILLISECONDS, 22 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_SkitterLeapTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_FARTHEST, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57060) == CAST_OK)
					m_SkitterLeapTimer = DAY * IN_MILLISECONDS;
			}
		}
		else
			m_SkitterLeapTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_skitterweb_leaper(Creature* pCreature)
{
	return new skitterweb_leaperAI(pCreature);
}

struct phantom_servantAI : public ScriptedAI
{
	phantom_servantAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ServantsCurseTimer;
	uint32 m_PhantomScreamTimer;

	void Reset() override
	{
		m_ServantsCurseTimer = urand(25 * IN_MILLISECONDS, 35 * IN_MILLISECONDS);
		m_PhantomScreamTimer = urand(7 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ServantsCurseTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57061) == CAST_OK)
				m_ServantsCurseTimer = 3600 * IN_MILLISECONDS;
		}
		else
			m_ServantsCurseTimer -= uiDiff;

		if (m_PhantomScreamTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57062) == CAST_OK)
				m_PhantomScreamTimer = 11 * IN_MILLISECONDS;
		}
		else
			m_PhantomScreamTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_phantom_servant(Creature* pCreature)
{
	return new phantom_servantAI(pCreature);
}

struct shadowbane_ambusherAI : public ScriptedAI
{
	shadowbane_ambusherAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ReStealthTimer;
	uint32 m_RendTimer;

	void Reset() override
	{
		if (m_creature->HasAura(8216))
			DoCastSpellIfCan(m_creature, 8216, CF_TRIGGERED | CF_FORCE_CAST);

		m_RendTimer = 1 * IN_MILLISECONDS;
		m_ReStealthTimer = 0;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->IsInCombat() && !m_creature->HasAura(8216) && !m_ReStealthTimer)
			m_ReStealthTimer = 2000;

		if (m_ReStealthTimer)
		{
			if (m_ReStealthTimer < uiDiff)
			{
				if (!m_creature->IsInCombat())
					DoCastSpellIfCan(m_creature, 8216, CF_TRIGGERED | CF_FORCE_CAST);
				m_ReStealthTimer = 0;
			}
			else
				m_ReStealthTimer -= uiDiff;
		}

		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_RendTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_IN_MELEE_RANGE))
			{
				if (DoCastSpellIfCan(pTarget, 18106) == CAST_OK)
					m_RendTimer = urand(7 * IN_MILLISECONDS, 13 * IN_MILLISECONDS);
			}
		}
		else
			m_RendTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_ambusher(Creature* pCreature)
{
	return new shadowbane_ambusherAI(pCreature);
}

struct grellkin_shadow_weaverAI : public ScriptedAI
{
	grellkin_shadow_weaverAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_DrainManaTimer;
	uint32 m_DarkboltTimer;

	void Reset() override
	{
		m_DrainManaTimer = urand(6 * IN_MILLISECONDS, 9 * IN_MILLISECONDS);
		m_DarkboltTimer = urand(2 * IN_MILLISECONDS, 4 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_DrainManaTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_POWER_MANA))
			{
				if (DoCastSpellIfCan(pTarget, 17682) == CAST_OK)
					m_DrainManaTimer = urand(8 * IN_MILLISECONDS, 11 * IN_MILLISECONDS);
			}
		}
		else
			m_DrainManaTimer -= uiDiff;

		if (m_DarkboltTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57080) == CAST_OK)
					m_DarkboltTimer = urand(5 * IN_MILLISECONDS, 7 * IN_MILLISECONDS);
			}
		}
		else
			m_DarkboltTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_grellkin_shadow_weaver(Creature* pCreature)
{
	return new grellkin_shadow_weaverAI(pCreature);
}

struct grellkin_primalistAI : public ScriptedAI
{
	grellkin_primalistAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_EarthShieldTimer;
	uint32 m_LightningStormTimer;
	uint32 m_FrostShockTimer;

	void Reset() override
	{
		m_FrostShockTimer = urand(3 * IN_MILLISECONDS, 5 * IN_MILLISECONDS);
		m_EarthShieldTimer = urand(1 * IN_MILLISECONDS, 2 * IN_MILLISECONDS);
		m_LightningStormTimer = 25 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_EarthShieldTimer < uiDiff)
		{
			if (Unit* pFriendlyTarget = m_creature->SelectRandomFriendlyTarget(nullptr, 50.0f, true))
			{
				if (pFriendlyTarget->HasAura(57087))
					m_EarthShieldTimer = 500;
				else
				{
					if (DoCastSpellIfCan(pFriendlyTarget, 57087) == CAST_OK)
						m_EarthShieldTimer = urand(12 * IN_MILLISECONDS, 17 * IN_MILLISECONDS);
				}
			}
		}
		else
			m_EarthShieldTimer -= uiDiff;

		if (m_FrostShockTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 23115) == CAST_OK)
					m_FrostShockTimer = urand(5 * IN_MILLISECONDS, 7 * IN_MILLISECONDS);
			}
		}
		else
			m_FrostShockTimer -= uiDiff;

		if (m_LightningStormTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57088) == CAST_OK)
					m_LightningStormTimer = urand(28 * IN_MILLISECONDS, 36 * IN_MILLISECONDS);
			}
		}
		else
			m_LightningStormTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_grellkin_primalist(Creature* pCreature)
{
	return new grellkin_primalistAI(pCreature);
}

struct grellkin_channelerAI : public ScriptedAI
{
	grellkin_channelerAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_GrellFireTimer;
	uint32 m_GrellkinHealTimer;
	bool shielded;

	void Reset() override
	{
		m_GrellkinHealTimer = urand(9 * IN_MILLISECONDS, 11 * IN_MILLISECONDS);
		m_GrellFireTimer = urand(1 * IN_MILLISECONDS, 3 * IN_MILLISECONDS);
		shielded = false;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_GrellkinHealTimer < uiDiff)
		{
			if (Unit* pFriendlyTarget = m_creature->FindLowestHpFriendlyUnit(50.0f, 30, true))
			{
				if (DoCastSpellIfCan(pFriendlyTarget, 57090) == CAST_OK)
					m_GrellkinHealTimer = urand(9 * IN_MILLISECONDS, 11 * IN_MILLISECONDS);
			}
		}
		else
			m_GrellkinHealTimer -= uiDiff;

		if (m_GrellFireTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57089) == CAST_OK)
					m_GrellFireTimer = urand(8 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
			}
		}
		else
			m_GrellFireTimer -= uiDiff;

		if (m_creature->GetHealthPercent() <= 50.0f && !shielded)
		{
			shielded = true;
			DoCastSpellIfCan(m_creature, 13874);
		}

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_grellkin_channeler(Creature* pCreature)
{
	return new grellkin_channelerAI(pCreature);
}

struct dark_rider_championAI : public ScriptedAI
{
	dark_rider_championAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_ReaverStormTimer;
	uint32 m_DarkRiderScreamTimer;
	uint32 m_HamstringTimer;
	uint32 m_ApprenticeCheck;

	void Reset() override
	{
		m_ReaverStormTimer = urand(3 * IN_MILLISECONDS, 5 * IN_MILLISECONDS);
		m_DarkRiderScreamTimer = urand(15 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
		m_HamstringTimer = urand(8 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
		m_ApprenticeCheck = 5 * IN_MILLISECONDS;
	}

	void JustDied(Unit* pKiller) override
	{
		if (m_pInstance)
			m_pInstance->SetData(DATA_DR_CHAMPION, DONE);
	}

	void CheckAppretinces()
	{
		Creature* first = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_DR_APPRETINCE_FIRST));
		Creature* second = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_DR_APPRETINCE_SECOND));

		if (!first || !second)
			return;

		if (!first->IsAlive())
			first->Respawn();

		if (!second->IsAlive())
			second->Respawn();

		float firstFAngle = PET_FOLLOW_ANGLE + M_PI_F;
		float secondFAngle = PET_FOLLOW_ANGLE + 2 * M_PI_F;

		while (firstFAngle > M_PI_F * 2)
			firstFAngle -= M_PI_F * 2;

		while (secondFAngle > M_PI_F * 2)
			secondFAngle -= M_PI_F * 2;

		if (first->GetMotionMaster()->GetCurrentMovementGeneratorType() != FOLLOW_MOTION_TYPE)
			first->GetMotionMaster()->MoveFollow(m_creature, PET_FOLLOW_DIST, firstFAngle);

		if (second->GetMotionMaster()->GetCurrentMovementGeneratorType() != FOLLOW_MOTION_TYPE)
			second->GetMotionMaster()->MoveFollow(m_creature, PET_FOLLOW_DIST, secondFAngle);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (m_creature->IsAlive() && !m_creature->IsInCombat())
		{
			if (m_ApprenticeCheck < uiDiff)
			{
				CheckAppretinces();
				m_ApprenticeCheck = 1 * IN_MILLISECONDS;
			}
			else
				m_ApprenticeCheck -= uiDiff;
		}

		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ReaverStormTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57066) == CAST_OK)
				m_ReaverStormTimer = 7 * IN_MILLISECONDS;
		}
		else
			m_ReaverStormTimer -= uiDiff;

		if (m_DarkRiderScreamTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57067) == CAST_OK)
				m_DarkRiderScreamTimer = urand(20 * IN_MILLISECONDS, 24 * IN_MILLISECONDS);
		}
		else
			m_DarkRiderScreamTimer -= uiDiff;

		if (m_HamstringTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), 26211) == CAST_OK)
				m_HamstringTimer = urand(11 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
		}
		else
			m_HamstringTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_dark_rider_champion(Creature* pCreature)
{
	return new dark_rider_championAI(pCreature);
}

struct dark_rider_apprenticeAI : public ScriptedAI
{
	dark_rider_apprenticeAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_SoulExchangeTimer;

	void Reset() override
	{
		m_SoulExchangeTimer = urand(7 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_SoulExchangeTimer < uiDiff)
		{
			if (m_pInstance)
			{
				if (Creature* master = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_DR_CHAMPION)))
					DoCastSpellIfCan(master, 57065);

				m_SoulExchangeTimer = urand(7 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
			}
		}
		else
			m_SoulExchangeTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_dark_rider_apprentice(Creature* pCreature)
{
	return new dark_rider_apprenticeAI(pCreature);
}

void AddSC_instance_lower_karazhan_halls()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "instance_lower_karazhan_halls";
	newscript->GetInstanceData = &GetInstanceData_instance_lower_karazhan_halls;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_glutton";
	newscript->GetAI = &GetAI_shadowbane_glutton;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "phantom_cook";
	newscript->GetAI = &GetAI_phantom_cook;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_alpha";
	newscript->GetAI = &GetAI_shadowbane_alpha;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_darkcaster";
	newscript->GetAI = &GetAI_shadowbane_darkcaster;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_ragefang";
	newscript->GetAI = &GetAI_shadowbane_ragefang;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "haunted_blacksmith";
	newscript->GetAI = &GetAI_haunted_blacksmith;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "phantom_guardsman";
	newscript->GetAI = &GetAI_phantom_guardsman;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "haunted_stable_tender";
	newscript->GetAI = &GetAI_haunted_stable_tender;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shattercage_spearman";
	newscript->GetAI = &GetAI_shattercage_spearman;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shattercage_magiskull";
	newscript->GetAI = &GetAI_shattercage_magiskull;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "skitterweb_crawler";
	newscript->GetAI = &GetAI_skitterweb_crawler;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "skitterweb_darkfang";
	newscript->GetAI = &GetAI_skitterweb_darkfang;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "skitterweb_venomfang";
	newscript->GetAI = &GetAI_skitterweb_venomfang;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "skitterweb_leaper";
	newscript->GetAI = &GetAI_skitterweb_leaper;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "phantom_servant";
	newscript->GetAI = &GetAI_phantom_servant;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_ambusher";
	newscript->GetAI = &GetAI_shadowbane_ambusher;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "grellkin_shadow_weaver";
	newscript->GetAI = &GetAI_grellkin_shadow_weaver;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "grellkin_primalist";
	newscript->GetAI = &GetAI_grellkin_primalist;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "grellkin_channeler";
	newscript->GetAI = &GetAI_grellkin_channeler;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "dark_rider_champion";
	newscript->GetAI = &GetAI_dark_rider_champion;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "dark_rider_apprentice";
	newscript->GetAI = &GetAI_dark_rider_apprentice;
	newscript->RegisterSelf();
}