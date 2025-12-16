/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "boss_daelus.hpp"
#include "scarlet_citadel.h"


class boss_daelusAI : public ScriptedAI
{
public:
    explicit boss_daelusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        boss_daelusAI::Reset();
        m_bWasInFight = false;
    }

private:
    // Phase 1
    bool m_bHasAlreadyShoutedLifeDrain{};

    uint8 m_uiChosenOne{};

    uint32 m_uiCallSpirits_Timer{};
    uint32 m_uiSpawnChosenOne_Timer{};
    uint32 m_uiCheckAndConsumeSpirits{};
    uint32 m_uiCheckForTank_Timer{};
    uint32 m_uiPoisonCloud_Timer{};
    uint32 m_uiSunderArmor_Timer{};

    std::vector<ObjectGuid> m_vSpawnedAdds;

    // Phase 2
    uint32 m_uiVulnerability_Timer{};

    // Misc
    bool m_bAchievementKillFailed{};
    bool m_bWasInFight{};

    uint8 m_uiPhase{};

    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {
        if (m_pInstance && m_bWasInFight)
        {
            DespawnAdds();

            m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::RAIDWIPE), LANG_UNIVERSAL);

            m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, FAIL);
        }

        // Phase 1
        m_bHasAlreadyShoutedLifeDrain = false;
        m_uiChosenOne = nsDaelus::NUMBER_OF_ADDS; // Set m_uiChosenOne out of range until CheckChosenOneTiming() assigns a value within range (0-5)
        m_uiCheckForTank_Timer = nsDaelus::CHECK_FOR_TANK_TIMER;
        m_uiCallSpirits_Timer = nsDaelus::CALL_SPIRITS_FIRST_TIMER;
        m_uiSpawnChosenOne_Timer = nsDaelus::INITIAL_SPAWN_CHOSEN_ONE_TIMER;
        m_uiSunderArmor_Timer = nsDaelus::SUNDER_ARMOR_TIMER;

        m_uiCheckAndConsumeSpirits = m_uiCallSpirits_Timer; // A delayed timer could be added, but is it rly worth the effort?
        m_uiPoisonCloud_Timer = nsDaelus::INITIAL_POISON_CLOUD_TIMER;

        // Achievement Kill
        m_bAchievementKillFailed = false;

        // Misc
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING | UNIT_FLAG_STUNNED);
        m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
        m_creature->AddUnitState(UNIT_STAT_ROOT);

        m_creature->SetStandState(UNIT_STAND_STATE_KNEEL);

        m_creature->SetFactionTemplateId(nsDaelus::FACTION_NEUTRAL);

        m_uiPhase = 1;

        m_bWasInFight = false;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_creature->SetInCombatWithZone();
        m_creature->CastSpell(m_creature, nsDaelus::SPELL_VULNERABILITY, true);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, IN_PROGRESS);

        m_bWasInFight = true;
    }

    void JustDied(Unit* pKiller) override
    {
        if (!m_pInstance)
            return;

        DespawnAdds();

        if (!IsAchievementKillFailed())
        {
            SpawnAchievementReward(pKiller);
        }

        m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::BOSSDIED), LANG_UNIVERSAL);
        m_creature->SetRespawnDelay(604800);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, DONE);
    }

    void CheckChosenOneTiming(const uint32& uiDiff)
    {
        if (m_uiSpawnChosenOne_Timer < uiDiff)
        {
            m_uiChosenOne = urand(0, (nsDaelus::NUMBER_OF_ADDS - 1));

            m_uiSpawnChosenOne_Timer = urand(nsDaelus::CHOSEN_ONE_MIN_TIMER, nsDaelus::CHOSEN_ONE_MAX_TIMER);
        }
        else
        {
            m_uiSpawnChosenOne_Timer -= uiDiff;
        }
    }

    void SummonAdds()
    {
        for (uint8 i{ 0 }; i < nsDaelus::NUMBER_OF_ADDS; ++i)
        {
            if (Creature* pMonk{ m_creature->SummonCreature(nsDaelus::NPC_FALLEN_SPIRIT,
                nsDaelus::vfSpawnPoints[i].m_fX,
                nsDaelus::vfSpawnPoints[i].m_fY,
                nsDaelus::vfSpawnPoints[i].m_fZ,
                nsDaelus::vfSpawnPoints[i].m_fO,TEMPSUMMON_MANUAL_DESPAWN) })
            {
                if (i == m_uiChosenOne)
                {
                    pMonk->AddAura(nsDaelus::SPELL_RED_COLOR);

                    m_uiChosenOne = nsDaelus::NUMBER_OF_ADDS; // Set m_uiChosenOne out of range until CheckChosenOneTiming() assigns a value within range (0-5)
                }

                m_vSpawnedAdds.push_back(pMonk->GetObjectGuid());
            }
        }
    }

    void DespawnAdds()
    {
        if (!m_vSpawnedAdds.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vSpawnedAdds)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_vSpawnedAdds.clear();
            }
        }

        if (true)
        {
            std::list<Creature*> lClouds; // Shouldn't be more then 1 spawned at the same time, but do a list just in case
            GetCreatureListWithEntryInGrid(lClouds, m_creature, nsDaelus::NPC_POISON_CLOUD, 80.0f);
            for (const auto& cloud : lClouds)
            {
                cloud->DeleteLater();
            }
        }
    }

    void CallSpirits(const uint32& uiDiff)
    {
        if (m_uiCallSpirits_Timer < uiDiff)
        {
            SummonAdds();

            m_uiCallSpirits_Timer = nsDaelus::CALL_SPIRITS_REPEAT_TIMER;
        }
        else
        {
            m_uiCallSpirits_Timer -= uiDiff;
        }
    }

    void CheckConsumedSpirits(const uint32& uiDiff)
    {
        if (m_uiCheckAndConsumeSpirits < uiDiff)
        {
            for (const auto& monk : m_vSpawnedAdds)
            {
                if (const auto map{ m_creature->GetMap() })
                {
                    if (Creature* pMonk{ map->GetCreature(monk) })
                    {
                        if (pMonk->GetDistance2d(m_creature) < 1.f)
                        {
                            if (pMonk->HasAura(nsDaelus::SPELL_RED_COLOR) && m_uiPhase == 1)
                            {
                                MakeBossVulnerable();
                            }

                            if (!pMonk->HasAura(nsDaelus::SPELL_RED_COLOR) && !IsAchievementKillFailed())
                            {
                                AchievementKillFailed(); // Achievement failed if a Daelus consumes a spirit
                            }

                            if (m_creature->GetHealthPercent() < 100.f)
                            {
                                m_creature->SetHealthPercent((m_creature->GetHealthPercent() + nsDaelus::REGENERATE_HEALTH_PERCENTAGE));
                            }

                            pMonk->DoKillUnit(pMonk);
                        }
                    }
                }
            }

            m_uiCheckAndConsumeSpirits = nsDaelus::CHECK_SPIRITS_REPEAT_TIMER;
        }
        else
        {
            m_uiCheckAndConsumeSpirits -= uiDiff;
        }
    }

    void MakeBossVulnerable()
    {
        if (m_creature->IsNonMeleeSpellCasted()) // Check if Daeulus is still channeling his casting animation...
        {
            m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_LIFE_DRAIN_VISUAL); // ... if this is the case, STOP IT
        }

        m_creature->AddAura(nsDaelus::SPELL_RED_COLOR);
        m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_VULNERABILITY);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
        m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::PHASE_TWO), LANG_UNIVERSAL);

        m_uiVulnerability_Timer = nsDaelus::VULNERABLE_TIMER;
        m_uiPhase = 2;
    }

    void CheckVulnerability(const uint32& uiDiff)
    {
        if (m_uiVulnerability_Timer < uiDiff)
        {
            m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_RED_COLOR);
            m_creature->CastSpell(m_creature, nsDaelus::SPELL_VULNERABILITY, true);
            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
            m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::PHASE_ONE), LANG_UNIVERSAL);

            m_uiPhase = 1;
        }
        else
        {
            m_uiVulnerability_Timer -= uiDiff;
        }
    }

    void LookingForTank(const uint32& uiDiff)
    {
        if (m_uiCheckForTank_Timer < uiDiff)
        {
            if (m_creature->GetDistance2d(m_creature->GetVictim()) > 3.f) // If Daelus' current target isn't close to him
            {
                Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() }; // Get all players in dungeon
                if (PlayerList.isEmpty())
                    return;

                m_creature->CastSpell(m_creature, nsDaelus::SPELL_LIFE_DRAIN_VISUAL, true); // Start casting animation

                float uiHealthPoints{}; // Create variable for life drain which contains 10% hp of all players

                for (const auto& itr : PlayerList) // Now check every player
                {
                    if (Player* pPlayer{ itr.getSource() })
                    {
                        if (pPlayer->IsAlive() && !pPlayer->IsGameMaster()) // Skip dead players and GMs
                        {
                            const float uiTenPercentLife{ (pPlayer->GetMaxHealth() * 0.1f) }; // Get int value of 10% HP of player's maxlife

                            m_creature->DealDamage(pPlayer, uint32(uiTenPercentLife), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NONE, nullptr, true);

                            uiHealthPoints += uiTenPercentLife; // Now add player's 10% hp to the life drain variable
                        }
                    }
                }

                if (!m_bHasAlreadyShoutedLifeDrain)
                {
                    m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::LIFEDRAIN), LANG_UNIVERSAL);
                    m_bHasAlreadyShoutedLifeDrain = true;
                }

                m_creature->SetHealth((m_creature->GetHealth() + uint32(uiHealthPoints))); // After iteration of all player's are done, add all drained HPs to Daelus
            }
            else
            {
                if (m_creature->IsNonMeleeSpellCasted()) // Check if Daeulus is still channeling his casting animation...
                {
                    m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_LIFE_DRAIN_VISUAL); // ... if this is the case, STOP IT
                }

                if (m_bHasAlreadyShoutedLifeDrain)
                {
                    m_bHasAlreadyShoutedLifeDrain = false;
                }

                DoMeleeAttackIfReady(); // Do melee hits
            }

            m_uiCheckForTank_Timer = nsDaelus::CHECK_FOR_TANK_TIMER;
        }
        else
        {
            m_uiCheckForTank_Timer -= uiDiff;
        }
    }

    Player* SelectRandomPlayerExceptTank()
    {
        ThreatList const& tList{ m_creature->GetThreatManager().getThreatList() };
        if (tList.empty())
            return nullptr;

        std::list<Player*> candidates;
        ThreatList::const_iterator itr{ tList.begin() };

        if (tList.size() > 1)
        {
            ++itr; // Skipping top-aggro if there is more then 1 player in list
        }

        for ( ; itr != tList.end() ; ++itr)
        {
            if (Player* pPlayer{ m_creature->GetMap()->GetPlayer((*itr)->getUnitGuid()) })
            {
                if (m_creature->IsInRange(pPlayer, 0.f, 40.f)) // Last value of parameter to prevent player standing on the edge of the room to avoid too much dmg to raid
                {
                    candidates.push_back(pPlayer);
                }
            }
            else
            {
                continue;
            }
        }

        if (candidates.empty())
        {
            return nullptr;
        }
        else
        {
            auto candIt{ candidates.begin() };
            std::advance(candIt, urand(0, (candidates.size() - 1)));
            return *candIt;
        }
    }

    void DoPoisonCloud(const uint32& uiDiff)
    {
        if (m_uiPoisonCloud_Timer < uiDiff)
        {
            if (Player* pPlayer{ SelectRandomPlayerExceptTank() })
            {
                m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::POISONCLOUD), LANG_UNIVERSAL);

                pPlayer->CastSpell(pPlayer, nsDaelus::SPELL_GREEN_GLOW_VISUAL, true);

                try
                {
                    DoAfterTime(pPlayer, (6 * IN_MILLISECONDS), [player = pPlayer]()
                    {
                        if (player && player->HasAura(nsDaelus::SPELL_GREEN_GLOW_VISUAL))
                        {
                            player->RemoveAurasDueToSpell(nsDaelus::SPELL_GREEN_GLOW_VISUAL);
                            player->CastSpell(player, nsDaelus::SPELL_POISON_CLOUD, true);
                        }
                    });
                }
                catch (const std::runtime_error& e)
                {
                    sLog.outError("[SC] Boss Daelus: DoAfterTime() failed: %s", e.what());
                }
            }

            m_uiPoisonCloud_Timer = nsDaelus::POISON_CLOUD_TIMER;
        }
        else
        {
            m_uiPoisonCloud_Timer -= uiDiff;
        }
    }

    void DoSunderArmor(const uint32& uiDiff) // TODO: Replace with a proper spell which keep tanks busy
    {
        if (m_uiSunderArmor_Timer < uiDiff)
        {
            if (m_creature->GetDistance2d(m_creature->GetVictim()) < 3.f)
            {
                m_creature->CastSpell(m_creature->GetVictim(), nsDaelus::SPELL_SUNDER_ARMOR, true);
            }

            m_uiSunderArmor_Timer = nsDaelus::SUNDER_ARMOR_TIMER;
        }
        else
        {
            m_uiSunderArmor_Timer -= uiDiff;
        }
    }

    void SpawnAchievementReward(Unit* pKiller)
    {
        if (pKiller)
        {
            pKiller->SummonGameObject(nsDaelus::GO_ACHIEVEMENT_CHEST,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fX,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fY,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fZ,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fO,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fR0,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fR1,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fR2,
                nsDaelus::vfAchievementChestSpawnPoint[0].m_fR3,
                nsDaelus::GO_ACHIEVEMENT_CHEST_DESPAWN_TIMER);
        }
        else
        {
            sLog.outError("[SC] Boss Daelus: SpawnAchievementReward() called but no pKiller found!");
        }
    }

    void AchievementKillFailed()
    {
        m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
        m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::ACHIEVEMENT_FAILED), LANG_UNIVERSAL);

        m_bAchievementKillFailed = true;
    }

    bool IsAchievementKillFailed()
    {
        return m_bAchievementKillFailed;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiPhase == 1) // Unvulnerable
        {
            DoSunderArmor(uiDiff);
            LookingForTank(uiDiff);
            CallSpirits(uiDiff);
            CheckChosenOneTiming(uiDiff);
        }
        else if (m_uiPhase == 2) // Vulnerable
        {
            CheckVulnerability(uiDiff);
        }
        else if (m_uiPhase == 3) // Soft enrage?
        {
            // LookingForTank(uiDiff);
        }

        DoPoisonCloud(uiDiff);
        CheckConsumedSpirits(uiDiff);
    }
};

bool GossipHello_boss_daelus(Player* pPlayer, Creature* pCreature)
{
    instance_scarlet_citadel const* m_pInstance{ static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData()) };

    if (m_pInstance)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, nsDaelus::START_BUTTON, GOSSIP_SENDER_MAIN, (GOSSIP_ACTION_INFO_DEF + 1));
        pPlayer->SEND_GOSSIP_MENU(1000002, pCreature->GetObjectGuid());
    }
    else
    {
        sLog.outError("[SC] Boss Daelus: Boss spawned outside of dungeon!");
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GossipSelect_boss_daelus(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, const uint32 uiAction)
{
    if (!pPlayer || !pCreature)
        return false;

    switch (uiAction)
    {
        case (GOSSIP_ACTION_INFO_DEF + 1):
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

            try
            {
                DoAfterTime(pCreature, (2 * IN_MILLISECONDS), [creature = pCreature]()
                {
                    creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::ABOUT_TO_START), LANG_UNIVERSAL);
                });

                DoAfterTime(pCreature, (7 * IN_MILLISECONDS), [creature = pCreature]()
                {
                    creature->SetStandState(UNIT_STAND_STATE_STAND);
                    creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
                    creature->MonsterYell(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::START), LANG_UNIVERSAL);
                });

                DoAfterTime(pCreature, (9 * IN_MILLISECONDS), [creature = pCreature]()
                {
                    creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                    creature->SetFactionTemplateId(nsDaelus::FACTION_SCARLET);
                    creature->SetInCombatWithZone();
                });
            }
            catch (const std::runtime_error& e)
            {
                sLog.outError("[SC] Boss Daelus: DoAfterTime() failed: %s", e.what());
            }

            break;
        }
    }

    return true;
}

CreatureAI* GetAI_boss_daelus(Creature* pCreature)
{
    return new boss_daelusAI(pCreature);
}


class npc_fallen_spiritAI : public ScriptedAI
{
public:
    explicit npc_fallen_spiritAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        npc_fallen_spiritAI::Reset();
    }

private:

    bool m_bSetHealthOnce{};

    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {
        if (IsChosenOne())
        {
            m_creature->SetObjectScale(2.f);
            m_creature->UpdateModelData();

            m_creature->SetSpeedRate(MOVE_RUN, .6f);
        }

        // Don't react to face-aggro, neither to damage
        SetMeleeAttack(false);
        SetCombatMovement(false);

        m_bSetHealthOnce = false;
    }

    bool IsChosenOne()
    {
        return m_creature->HasAura(nsDaelus::SPELL_RED_COLOR);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        m_creature->CastSpell(m_creature, nsDaelus::SPELL_SONICBURST, true);

        m_creature->DeleteLater(); // Keep the floor clean!
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (Creature* pDaelus{ m_pInstance->GetSingleCreatureFromStorage(NPC_DAELUS) })
        {
            m_creature->MonsterMoveWithSpeed(pDaelus->GetPositionX(), pDaelus->GetPositionY(), pDaelus->GetPositionZ(), pDaelus->GetOrientation(), 1.2f, MOVE_PATHFINDING);
        }

        if (!m_bSetHealthOnce && IsChosenOne())
        {
            m_creature->SetHealthPercent(1.f);
        }
    }
};

CreatureAI* GetAI_npc_fallen_spirit(Creature* pCreature)
{
    return new npc_fallen_spiritAI(pCreature);
}


void AddSC_boss_daelus()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_daelus";
    pNewscript->pGossipHello = &GossipHello_boss_daelus;
    pNewscript->pGossipSelect = &GossipSelect_boss_daelus;
    pNewscript->GetAI = &GetAI_boss_daelus;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_fallen_spirit";
    pNewscript->GetAI = &GetAI_npc_fallen_spirit;
    pNewscript->RegisterSelf();
}
