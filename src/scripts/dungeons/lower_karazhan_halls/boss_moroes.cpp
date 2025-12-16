#include "scriptPCH.h"
#include "lower_karazhan_halls.h"

enum MoroesStuff
{
	SPELL_GLITTERING_DUST = 57095,
	SPELL_SMOKE_BOMB = 57096,
	SPELL_SHUFFLE_KICK = 57097,
	SPELL_AGONIZING_CONCUSSION = 57098,
	SPELL_SHADOW_BLAST = 57099,
	SPELL_MOROES_CURSE = 57100,
	SPELL_TELEPORT = 12980,
	SPELL_REFLECTION = 27564,
};

//#define MOROES_DIRECTORCUT

struct boss_moroesAI : public ScriptedAI
{
	boss_moroesAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_InterludeTimer;
	uint32 m_GlitteringDustTimer;
	uint32 m_SmokeBombTimer;
	uint32 m_ShuffleKickTimer;
	uint32 m_ShadowBlastTimer;
	uint32 m_MoroesCurseTimer;
	uint32 m_ReflectionTimer;
	uint32 m_TeleportTimer;
	uint32 m_AfterTeleportTimer;
	bool bSound1;
	bool bIntermission1;

	void TryCastSmokeBomb(const uint32 uiDiff);
	void TryCastGlitteringDust(const uint32 uiDiff);
	void TryCastShuffleKick(const uint32 uiDiff, const uint32 MinDelay, const uint32 MaxDelay);
	void RestorePhaseOneHealth();

	virtual void Reset() override
	{
		m_InterludeTimer = 0;
		m_TeleportTimer = 0;
		m_AfterTeleportTimer = 0;
		bSound1 = false;
		bIntermission1 = false;
		ResetBattleTimers();

#ifdef MOROES_DIRECTORCUT
		RestoreFlags();
		RestorePhaseOneHealth();
		if (m_pInstance)
		{
			m_pInstance->SetData(DATA_MOROES_STAGE, 0);
			if (m_pInstance->GetData(DATA_MOROES) != DONE)
				m_pInstance->SetData(DATA_MOROES, NOT_STARTED);
		}
#else
		if (m_pInstance)
		{
			if (m_pInstance->GetData(DATA_MOROES) != DONE)
				m_pInstance->SetData(DATA_MOROES, NOT_STARTED);
		}
#endif
	}


	void RestoreFlags()
	{
		if (!m_creature->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
			m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

		if (m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING))
			m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
	}

	void ResetCombat()
	{
		m_creature->RemoveAllAuras();
		m_creature->DeleteThreatList();
		m_creature->GetHostileRefManager().deleteReferences();
		m_creature->CombatStop(true);

		m_creature->DisableSpline();
		m_creature->GetMotionMaster()->MoveTargetedHome();
	}

	void ResetBattleTimers()
	{
		m_GlitteringDustTimer = urand(20 * IN_MILLISECONDS, 26 * IN_MILLISECONDS);
		m_SmokeBombTimer = urand(15 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
		m_ShuffleKickTimer = urand(7 * IN_MILLISECONDS, 13 * IN_MILLISECONDS);
		m_ShadowBlastTimer = urand(10 * IN_MILLISECONDS, 16 * IN_MILLISECONDS);
		m_MoroesCurseTimer = urand(35 * IN_MILLISECONDS, 48 * IN_MILLISECONDS);
		m_ReflectionTimer = 25 * IN_MILLISECONDS;
	}

	uint8 GetPhase()
	{
		if (m_pInstance != nullptr)
		{
			return m_pInstance->GetData(DATA_MOROES_STAGE);
		}

		return 0;
	}

	virtual void Aggro(Unit* /*pWho*/) override
	{
		m_creature->SetInCombatWithZone();
		ResetBattleTimers();

		if (m_pInstance)
			m_pInstance->SetData(DATA_MOROES, IN_PROGRESS);
	}

	void SetHostile()
	{
		m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
		m_creature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
		m_creature->SetInCombatWithZone();

#ifdef MOROES_DIRECTORCUT
		if (m_pInstance->GetData(DATA_MOROES_STAGE) == 3)
			m_creature->PlayDirectMusic(60418);
#else
		// play his tune every time battle started
		m_creature->PlayDirectMusic(60418);
#endif
	}
	 
	virtual void EnterEvadeMode() override
	{
		// only in combat phases
#ifdef MOROES_DIRECTORCUT
		if (GetPhase() == 3)
		{
			m_creature->CastSpell(m_creature, SPELL_TELEPORT, true);
			float x, y, z, o;
			m_creature->GetHomePosition(x, y, z, o);
			m_creature->NearTeleportTo(x, y, z, o);
		}

		bool bInterludeStarted = m_InterludeTimer > 0 && GetPhase() == 2;
		if (!bInterludeStarted)
		{
			ScriptedAI::EnterEvadeMode();
		}
#else
		ScriptedAI::EnterEvadeMode();
#endif
	}

	virtual void JustDied(Unit* pKiller) override
	{
		m_creature->MonsterYell("Medivh, I have failed you...");
		m_creature->PlayDirectSound(60408);

		if (m_pInstance)
			m_pInstance->SetData(DATA_MOROES, DONE);
	}

	void StartBattle(bool newPhase)
	{
		if (!newPhase)
		{
#ifdef MOROES_DIRECTORCUT
			m_creature->MonsterYell("New guests? It has been a while since we have had those. I assume your arrival has taken -some- effort even if you were uninvited!");
			m_creature->PlayDirectSound(60402);
			m_InterludeTimer = 7000;
			m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
#else
			m_creature->MonsterYell("New guests? It has been a while since we have had those. I assume your arrival has taken -some- effort even if you were uninvited!");
			m_creature->PlayDirectSound(60402);
			SetHostile();
#endif
		}
		else
		{
			m_creature->MonsterYell("It is my duty to protect and watch over this tower, as approved by my master. I shall make sure to endulge in your little spectacle. Why don't we put on a show for those in attendance, hmm? Legalbrow, if you would please, play my theme.");
			m_creature->PlayDirectSound(60405);
			if (m_pInstance)
				m_pInstance->SetData(DATA_MOROES_STAGE, 3);
			m_InterludeTimer = 12000;
			bIntermission1 = false;
			m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
		}
	}

	void Teleport()
	{
		m_creature->CastSpell(m_creature, SPELL_TELEPORT, true);
		m_TeleportTimer = 1000;
	}

	virtual void UpdateAI(const uint32 uiDiff) override
	{
		ScriptedAI::UpdateAI(uiDiff);

		if (m_pInstance)
		{
			if (!m_creature->HasAura(9617))
			{
				m_creature->AddAura(9617);
			}

#ifdef MOROES_DIRECTORCUT
			uint8 PhaseNum = GetPhase();

			if (PhaseNum == 0)
			{
				if (m_InterludeTimer)
				{
					if (m_InterludeTimer < uiDiff)
					{
						if (m_pInstance)
							m_pInstance->SetData(DATA_MOROES_STAGE, 1);

						SetHostile();
						m_InterludeTimer = 0;
					}
					else
						m_InterludeTimer -= uiDiff;
				}
				else
				{
					// Giperion: Due to unknown reason, GOSSIP flag may not be set, when moroes resets
					// It's very critical for him, so I made a decision to check for it in tick function
					// Not optimal, but it's very fast, so should'nt be a problem

					if (!m_creature->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
					{
						m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
					}
				}
			}
			else if (PhaseNum == 1)
			{
				if (!m_InterludeTimer && m_creature->GetHealthPercent() <= 10.0f)
				{
					m_creature->MonsterYell("Now now, why don't we save such pleasantries for a more, entertaining show. Meet me at the stage, and we shall truly decide the outcome of our engagement.");
					m_creature->PlayDirectSound(60404);
					m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
					m_creature->SetHealthPercent(100.0f);
					if (m_pInstance)
						m_pInstance->SetData(DATA_MOROES_STAGE, 2);
					m_InterludeTimer = 10000;
					ResetCombat();
					return;
				}

				if (!m_creature->GetVictim())
					return;

				TryCastGlitteringDust(uiDiff);
				TryCastSmokeBomb(uiDiff);
				TryCastShuffleKick(uiDiff, 7, 13);

				if (!bSound1 && m_creature->GetHealthPercent() <= 50.0f)
				{
					bSound1 = true;
					m_creature->MonsterYell("Most impressive, it would appear your skills do match your bravery.");
					m_creature->PlayDirectSound(60403);
				}
			}
			else if (PhaseNum == 2)
			{
				if (m_InterludeTimer)
				{
					if (m_InterludeTimer < uiDiff)
					{
						m_InterludeTimer = 0;
						Teleport();
					}
					else
						m_InterludeTimer -= uiDiff;
				}

				if (m_TeleportTimer)
				{
					if (m_TeleportTimer < uiDiff)
					{
						m_TeleportTimer = 0;
						m_creature->NearTeleportTo(-10893.5, -1758.96, 90.477, 4.60134);
						m_AfterTeleportTimer = 1500;
					}
					else
						m_TeleportTimer -= uiDiff;
				}

				if (m_AfterTeleportTimer)
				{
					if (m_AfterTeleportTimer < uiDiff)
					{
						m_AfterTeleportTimer = 0;
						m_creature->SetMaxHealth(220388);
						m_creature->SetHealth(220388);
						RestoreFlags();
						bIntermission1 = true;
					}
					else
						m_AfterTeleportTimer -= uiDiff;
				}

				if (bIntermission1)
				{
					if (!m_creature->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
						m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
				}
			}
			else if (PhaseNum == 3)
			{
				if (m_InterludeTimer)
				{
					if (m_InterludeTimer < uiDiff)
					{
						SetHostile();
						m_InterludeTimer = 0;
					}
					else
						m_InterludeTimer -= uiDiff;
				}

				if (!m_creature->GetVictim())
					return;


				TryCastGlitteringDust(uiDiff);
				TryCastSmokeBomb(uiDiff);
				TryCastShuffleKick(uiDiff, 9, 15);

				if (m_ShadowBlastTimer < uiDiff)
				{
					if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
					{
						if (DoCastSpellIfCan(pTarget, SPELL_SHADOW_BLAST) == CAST_OK)
							m_ShadowBlastTimer = urand(8 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
					}
				}
				else
					m_ShadowBlastTimer -= uiDiff;

				if (m_MoroesCurseTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature, SPELL_MOROES_CURSE) == CAST_OK)
						m_MoroesCurseTimer = urand(43 * IN_MILLISECONDS, 49 * IN_MILLISECONDS);;
				}
				else
					m_MoroesCurseTimer -= uiDiff;

				if (m_ReflectionTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature, SPELL_REFLECTION) == CAST_OK)
						m_ReflectionTimer = urand(33 * IN_MILLISECONDS, 45 * IN_MILLISECONDS);;
				}
				else
					m_ReflectionTimer -= uiDiff;
			}
#else
			
			if (!m_creature->IsInCombat())
			{
				if (!m_creature->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
				{
					m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
				}
			}

			if (!m_creature->GetVictim())
				return;

			EnterEvadeIfOutOfCombatArea(uiDiff);

			if (m_creature->GetHealthPercent() > 50.0f)
			{
				TryCastGlitteringDust(uiDiff);
				TryCastSmokeBomb(uiDiff);
				TryCastShuffleKick(uiDiff, 7, 13);
			}
			else
			{
				if (!bSound1)
				{
					bSound1 = true;
					m_creature->MonsterYell("Most impressive, it would appear your skills do match your bravery.");
					m_creature->PlayDirectSound(60403);
				}

				TryCastGlitteringDust(uiDiff);
				TryCastSmokeBomb(uiDiff);
				TryCastShuffleKick(uiDiff, 9, 15);

				if (m_ShadowBlastTimer < uiDiff)
				{
					if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
					{
						if (DoCastSpellIfCan(pTarget, SPELL_SHADOW_BLAST) == CAST_OK)
							m_ShadowBlastTimer = urand(8 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
					}
				}
				else
					m_ShadowBlastTimer -= uiDiff;

				if (m_MoroesCurseTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature, SPELL_MOROES_CURSE) == CAST_OK)
						m_MoroesCurseTimer = urand(43 * IN_MILLISECONDS, 49 * IN_MILLISECONDS);;
				}
				else
					m_MoroesCurseTimer -= uiDiff;

				if (m_ReflectionTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature, SPELL_REFLECTION) == CAST_OK)
						m_ReflectionTimer = urand(33 * IN_MILLISECONDS, 45 * IN_MILLISECONDS);;
				}
				else
					m_ReflectionTimer -= uiDiff;
			}
#endif
		}
	}

	virtual void GetAIInformation(ChatHandler& Handler) override
	{
		ScriptedAI::GetAIInformation(Handler);
		if (m_pInstance != nullptr)
		{
			Handler.PSendSysMessage("Moroes instance: %p", m_pInstance);
			Handler.PSendSysMessage("Moroes phase: %hhu", GetPhase());
		}

		Handler.PSendSysMessage("Moroes data: InterludeTimer: %u, GlitteringDustTimer: %u, SmokeBombTimer: %u, ShuffleKickTimer: %u"
			"ShadowBlastTimer: %u, MoroesCurseTimer: %u, ReflectionTimer: %u, TeleportTimer: %u, AfterTeleportTimer: %u",
			m_InterludeTimer, m_GlitteringDustTimer, m_SmokeBombTimer, m_ShuffleKickTimer, m_ShadowBlastTimer, m_MoroesCurseTimer,
			m_ReflectionTimer, m_TeleportTimer, m_AfterTeleportTimer);

		Handler.PSendSysMessage("Moroes data 2: Sound: %d, Intermission: %d", int32(bSound1), int32(bIntermission1));
	}

};

void boss_moroesAI::TryCastSmokeBomb(const uint32 uiDiff)
{
	if (m_SmokeBombTimer < uiDiff)
	{
		if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
		{
			if (DoCastSpellIfCan(pTarget, SPELL_SMOKE_BOMB) == CAST_OK)
				m_SmokeBombTimer = urand(15 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
		}
	}
	else
		m_SmokeBombTimer -= uiDiff;
}

void boss_moroesAI::TryCastGlitteringDust(const uint32 uiDiff)
{
	if (m_GlitteringDustTimer < uiDiff)
	{
		if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_GLITTERING_DUST) == CAST_OK)
		{
			Unit* pSecond = m_creature->SelectAttackingTarget(ATTACKING_TARGET_TOPAGGRO, 1, nullptr, SELECT_FLAG_PLAYER);
			m_creature->GetThreatManager().modifyThreatPercent(m_creature->GetVictim(), -100);
			if (pSecond)
				m_creature->AI()->AttackStart(pSecond);
			m_GlitteringDustTimer = urand(20 * IN_MILLISECONDS, 26 * IN_MILLISECONDS);
		}
	}
	else
		m_GlitteringDustTimer -= uiDiff;
}

void boss_moroesAI::TryCastShuffleKick(const uint32 uiDiff, const uint32 MinDelay, const uint32 MaxDelay)
{
	if (m_ShuffleKickTimer < uiDiff)
	{
		if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_IN_MELEE_RANGE))
		{
			if (DoCastSpellIfCan(pTarget, SPELL_SHUFFLE_KICK) == CAST_OK)
				m_ShuffleKickTimer = urand(MinDelay * IN_MILLISECONDS, MaxDelay * IN_MILLISECONDS);
			DoCastSpellIfCan(pTarget, SPELL_AGONIZING_CONCUSSION, CF_TRIGGERED);
		}
	}
	else
		m_ShuffleKickTimer -= uiDiff;
}

void boss_moroesAI::RestorePhaseOneHealth()
{
	const CreatureInfo* cinfo = m_creature->GetCreatureInfo();
	uint32 minlevel = std::min(cinfo->level_max, cinfo->level_min);
	uint32 maxlevel = std::max(cinfo->level_max, cinfo->level_min);
	uint32 level = minlevel == maxlevel ? minlevel : urand(minlevel, maxlevel);

	float healthmod = m_creature->_GetHealthMod(cinfo->rank);
	float rellevel = maxlevel == minlevel ? 0 : (float(level - minlevel)) / (maxlevel - minlevel);

	uint32 minhealth = std::min(cinfo->health_max, cinfo->health_min);
	uint32 maxhealth = std::max(cinfo->health_max, cinfo->health_min);
	uint32 health = uint32(healthmod * (minhealth + uint32(rellevel * (maxhealth - minhealth))));

	m_creature->SetMaxHealth(health);
	m_creature->SetHealth(health);
}

bool OnGossipSelect_boss_moroes(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
	pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
	pPlayer->CLOSE_GOSSIP_MENU();

	if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
	{
		if (boss_moroesAI* ai = dynamic_cast<boss_moroesAI*>(pCreature->AI()))
			ai->StartBattle(false);
	}
	else if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
	{
		pPlayer->CLOSE_GOSSIP_MENU();
		if (boss_moroesAI* ai = dynamic_cast<boss_moroesAI*>(pCreature->AI()))
			ai->StartBattle(true);
	}
	return true;
}

bool OnGossipHello_boss_moroes(Player* pPlayer, Creature* pCreature)
{
	if (InstanceData* pInstance = pCreature->GetInstanceData())
	{
		if (pInstance->GetData(DATA_BROOD_QUEEN_ARAXXNA) == DONE && pInstance->GetData(DATA_BLACKWALD_II) == DONE && pInstance->GetData(DATA_CLAWLORD_HOWLFANG) == DONE &&
			pInstance->GetData(DATA_GRIZIKIL) == DONE)
		{
			if (pInstance->GetData(DATA_MOROES_STAGE) == 0)
			{
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I am here to challenge you.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
				pPlayer->SEND_GOSSIP_MENU(61226, pCreature->GetGUID());
			}
			else if (pInstance->GetData(DATA_MOROES_STAGE) == 2)
			{
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I am ready to challenge you again.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
				pPlayer->SEND_GOSSIP_MENU(61226, pCreature->GetGUID());
			}
			// temp
			else
			{
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Gossip error. Please contact to developer.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
				pPlayer->SEND_GOSSIP_MENU(61226, pCreature->GetGUID());
			}
		}
		else
			pPlayer->SEND_GOSSIP_MENU(61225, pCreature->GetGUID());
		return true;
	}
	return false;
}

CreatureAI* GetAI_boss_moroes(Creature* pCreature)
{
	return new boss_moroesAI(pCreature);
}

void AddSC_boss_moroes()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_moroes";
	newscript->GetAI = &GetAI_boss_moroes;
	newscript->pGossipHello = &OnGossipHello_boss_moroes;
	newscript->pGossipSelect = &OnGossipSelect_boss_moroes;
	newscript->RegisterSelf();
}