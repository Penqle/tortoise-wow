/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"
#include "boss_mariella.hpp"


class boss_mariellaAI : public ScriptedAI
{
public:
    explicit boss_mariellaAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        boss_mariellaAI::Reset();
        m_bWasInFight = false;
    }

private:

    bool m_bVoidZonesAlreadyAnnounced{};
    bool m_bIsSacrificePhase{};
    bool m_bFelhoundsAlreadyAnnounced{};
    bool m_bEnrage{};
    bool m_bAchievementKillFailed{};
    bool m_bWasInFight{};

    uint8 m_uiSacrificePhase{};

    uint32 m_uiVoidZoneSpawn_Timer{};
    uint32 m_uiIncreaseHealth_Timer{};
    uint32 m_uiFelhoundSpawn_Timer{};
    uint32 m_uiEnrage_Timer{};
    uint32 m_uiShadowVolley_Timer{};

    ObjectGuid m_uiKillZoneGuid{};

    std::list<ObjectGuid> m_lSummoningCircles;

    std::vector<ObjectGuid> m_vPossibleVictim;
    std::vector<ObjectGuid> m_vVoidZones;
    std::vector<ObjectGuid> m_vFelhounds;
    
    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {
        if (m_pInstance && m_bWasInFight)
        {
            DespawnVoidZones();
            DespawnKillZone();
            DespawnSummoningCircles();
            DespawnFelhounds();

            if (m_creature->HasAura(nsMariella::SACRIFICE_VISUAL))
            {
                m_creature->RemoveAurasDueToSpell(nsMariella::SACRIFICE_VISUAL);
            }

            m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
            m_creature->MonsterSay(nsMariella::CombatNotification(nsMariella::CombatNotifications::RAIDWIPE), LANG_UNIVERSAL);

            m_pInstance->SetData(ScarletCitadelEncounter::TYPE_MARIELLA, FAIL);
        }

        // Sacrifice
        m_uiSacrificePhase = 0;
        m_bIsSacrificePhase = false;
        m_uiIncreaseHealth_Timer = nsMariella::INCREASE_HEALTH_TIMER;
        m_vPossibleVictim.clear();

        // Void Zone
        m_uiVoidZoneSpawn_Timer = nsMariella::VOIDZONE_SPAWN_FIRST_TIMER;
        m_bVoidZonesAlreadyAnnounced = false;

        // Felhounds
        m_uiFelhoundSpawn_Timer = nsMariella::FELHOUND_SPAWN_FIRST_TIMER;
        m_bFelhoundsAlreadyAnnounced = false;
        m_vFelhounds.clear();
        m_lSummoningCircles.clear();

        // Shadow Volley
        m_uiShadowVolley_Timer = nsMariella::SHADOWVOLLEY_REPEAT_TIMER;

        // Kill Zone
        m_uiKillZoneGuid = 0;

        // Achievement Kill
        m_bAchievementKillFailed = false;

        // Enrage
        m_uiEnrage_Timer = nsMariella::TIME_UNTIL_ENRAGE;
        m_bEnrage = false;

        // Trigger fight on gossip
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING | UNIT_FLAG_STUNNED);
        m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
        m_creature->SetFactionTemplateId(nsMariella::FACTION_NEUTRAL);

        // Misc
        m_creature->AddUnitState(UNIT_STAT_ROOT);

        m_bWasInFight = false;
    }

    void Aggro(Unit* pWho) override
    {
        if (!m_pInstance || !pWho)
            return;

        // Prevent to keep her in fight when nobody is in the room when the encounter starts
        if (m_creature->GetDistance3dToCenter(pWho) > (nsMariella::ROOM_DIAGONAL / 2))
        {
            EnterEvadeMode();
        }

        m_creature->SetInCombatWithZone();
        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_MARIELLA, IN_PROGRESS);

        m_bWasInFight = true;
    }

    void EnterEvadeMode() override
    {
        m_creature->ClearUnitState(UNIT_STAT_ROOT);
        ScriptedAI::EnterEvadeMode();
    }

    void JustDied(Unit* pKiller) override
    {
        if (!m_pInstance || !pKiller)
            return;

        DespawnVoidZones();
        DespawnKillZone();
        DespawnSummoningCircles();
        DespawnFelhounds();

        if (!IsAchievementKillFailed())
        {
            SpawnAchievementReward(pKiller);
        }
    
        m_creature->MonsterSay(nsMariella::CombatNotification(nsMariella::CombatNotifications::BOSSDIED), LANG_UNIVERSAL);

        m_creature->SetRespawnDelay(nsMariella::SEVEN_DAYS);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_MARIELLA, DONE);
    }

    void KilledUnit(Unit* /*pVictim*/) override
    {
        m_creature->HandleEmote(EMOTE_ONESHOT_QUESTION);
        m_creature->MonsterSay(nsMariella::SayOnPlayersDeath(urand(0, 3)), LANG_UNIVERSAL);
    }

    void BeginScraficePhase()
    {
        if (!m_creature->HasAura(nsMariella::SACRIFICE_VISUAL))
        {
            m_creature->AddAura(nsMariella::SACRIFICE_VISUAL);
        }

        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        if (!PlayerList.isEmpty())
        {
            m_bIsSacrificePhase = true;

            for (const auto& itr : PlayerList)
            {
                if (Player* pPlayer{ itr.getSource() })
                {
                    if ((m_creature->GetDistance3dToCenter(pPlayer) < (nsMariella::ROOM_DIAGONAL / 2)) && pPlayer->IsAlive() && !pPlayer->IsGameMaster())
                    {
                        m_vPossibleVictim.push_back(pPlayer->GetObjectGuid());
                    }
                }
            }
        }
    }

    void EndScraficePhase()
    {
        if (m_creature->HasAura(nsMariella::SACRIFICE_VISUAL))
        {
            m_creature->RemoveAurasDueToSpell(nsMariella::SACRIFICE_VISUAL);
        }

        if (!m_vPossibleVictim.empty())
        {
            m_creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            m_creature->MonsterYell(nsMariella::CombatNotification(nsMariella::CombatNotifications::SACRIFICE_ENDED), LANG_UNIVERSAL);

            m_bIsSacrificePhase = false; // We reached the end of sacrifice phase
            m_vPossibleVictim.clear();   // Erase list data
            ++m_uiSacrificePhase;        // Increase Sacrifice Phase counter for the next event
        }
    }

    void CheckForSacraficePhase()
    {
        if (m_creature->HealthBelowPct(75) && m_uiSacrificePhase == 0)
        {
            m_creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            m_creature->MonsterSay(nsMariella::CombatNotification(nsMariella::CombatNotifications::SACRIFICE_75_PERCENT), LANG_UNIVERSAL);
        }
        else if (m_creature->HealthBelowPct(50) && m_uiSacrificePhase == 1)
        {
            m_creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            m_creature->MonsterYell(nsMariella::CombatNotification(nsMariella::CombatNotifications::SACRIFICE_50_PERCENT), LANG_UNIVERSAL);
        }
        else if (m_creature->HealthBelowPct(25) && m_uiSacrificePhase == 2)
        {
            m_creature->HandleEmote(EMOTE_ONESHOT_KNEEL);
            m_creature->MonsterSay(nsMariella::CombatNotification(nsMariella::CombatNotifications::SACRIFICE_25_PERCENT), LANG_UNIVERSAL);
        }
        else
        {
            return;
        }

        BeginScraficePhase();
    }

    void CastShadowVolley(const uint32& uiDiff)
    {
        if (m_uiShadowVolley_Timer < uiDiff)
        {
            DoCast(m_creature, nsMariella::SPELL_SHADOWVOLLEY);

            if (m_bEnrage)
            {
                m_uiShadowVolley_Timer = nsMariella::SHADOWVOLLEY_ENRAGE_REPEAT_TIMER;
            }
            else
            {
                m_uiShadowVolley_Timer = nsMariella::SHADOWVOLLEY_REPEAT_TIMER;
            }
        }
        else
        {
            m_uiShadowVolley_Timer -= uiDiff;
        }
    }

    void SpawnVoidZones(const uint32& uiDiff)
    {
        if (m_uiVoidZoneSpawn_Timer < uiDiff)
        {
            ThreatList const& threadList{ m_creature->GetThreatManager().getThreatList() };
            if (threadList.size() < nsMariella::NUMBEROFSUMMONERS)
                return;

            std::list<Player*> lPotentialSummoner;
            ThreatList::const_iterator itr{ threadList.begin() };
            for (++itr; itr != threadList.end(); ++itr)
            {
                if (Player const* pPlayer{ m_creature->GetMap()->GetPlayer((*itr)->getUnitGuid()) })
                {
                    if (pPlayer->IsAlive() && !pPlayer->IsGameMaster() && (m_creature->GetDistance3dToCenter(pPlayer) < (nsMariella::ROOM_DIAGONAL / 2)))
                    {
                        lPotentialSummoner.push_back(m_creature->GetMap()->GetPlayer((*itr)->getUnitGuid()));
                    }
                }
            }

            for (auto i{ 0 }; i <= nsMariella::NUMBEROFSUMMONERS; ++i)
            {
                if (lPotentialSummoner.empty())
                    break;

                auto summonerItr{ lPotentialSummoner.begin() };

                if (lPotentialSummoner.size() >= nsMariella::NUMBEROFSUMMONERS)
                {
                    std::advance(summonerItr, urand(0, (lPotentialSummoner.size() - 1)));
                }

                Player const* pPlayer{ *summonerItr };
                summonerItr = lPotentialSummoner.erase(summonerItr);

                if (Creature const* pVoidZone{ m_creature->SummonCreature(nsMariella::NPC_VOIDZONE, pPlayer->GetPositionX(),pPlayer->GetPositionY(),
                    (pPlayer->GetPositionZ() + 0.25f), 0.f, TEMPSUMMON_MANUAL_DESPAWN) })
                {
                    if (!m_bVoidZonesAlreadyAnnounced)
                    {
                        m_creature->MonsterYell(nsMariella::CombatNotification(nsMariella::CombatNotifications::VOIDZONES_SPAWN), LANG_UNIVERSAL);
                        m_bVoidZonesAlreadyAnnounced = true;
                    }

                    m_vVoidZones.push_back(pVoidZone->GetObjectGuid());
                }
            }

            m_uiVoidZoneSpawn_Timer = nsMariella::VOIDZONE_SPAWN_REPEAT_TIMER;
        }
        else
        {
            m_uiVoidZoneSpawn_Timer -= uiDiff;
        }
    }

    void DespawnVoidZones()
    {
        if (!m_vVoidZones.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vVoidZones)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_vVoidZones.clear();
            }
        }
    }

    void SpawnKillZone(Creature* pCreature)
    {
        if (Creature const* pKillZone{ pCreature->SummonCreature(nsMariella::NPC_KILLZONE,
            pCreature->GetPositionX(),
            pCreature->GetPositionY(),
            (pCreature->GetPositionZ() + .25f),
            0.f, TEMPSUMMON_MANUAL_DESPAWN) })
        {
            m_uiKillZoneGuid = pKillZone->GetObjectGuid();
        }
    }

    void DespawnKillZone()
    {
        if (!m_uiKillZoneGuid)
            return;

        if (const auto map{ m_creature->GetMap() })
        {
            if (Creature* pCreature{ map->GetCreature(m_uiKillZoneGuid) })
            {
                if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                {
                    tmpSumm->UnSummon();
                    m_uiKillZoneGuid = 0;
                }
            }
        }
    }

    void SpawnSummoningCircles(Creature* pCreature)
    {
        for (uint8 i{ 0 }; i < nsMariella::NUMBER_OF_SPAWNPOINTS; ++i)
        {
            if (GameObject* pSummoningCircle{ pCreature->SummonGameObject(nsMariella::GO_SUMMONINGCIRCLE,
                nsMariella::vfSpawnPoints[i].m_fX,
                nsMariella::vfSpawnPoints[i].m_fY,
                nsMariella::vfSpawnPoints[i].m_fZ,
                nsMariella::vfSpawnPoints[i].m_fO,
                nsMariella::vfSpawnPoints[i].m_fR0,
                nsMariella::vfSpawnPoints[i].m_fR1,
                nsMariella::vfSpawnPoints[i].m_fR2,
                nsMariella::vfSpawnPoints[i].m_fR3,
                nsMariella::GO_SUMMONINGCIRCLE_DESPAWN_TIMER) })
            {
                m_lSummoningCircles.push_back(pSummoningCircle->GetObjectGuid());
            }
        }
    }

    void DespawnSummoningCircles()
    {
        if (!m_lSummoningCircles.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_lSummoningCircles)
                {
                    if (GameObject* pGameObject{ map->GetGameObject(guid) })
                    {
                        pGameObject->Despawn();
                        pGameObject->Delete();
                    }
                }

                m_lSummoningCircles.clear();
            }
        }
    }

    void SpawnFelhounds(const uint32& uiDiff)
    {
        if (m_uiFelhoundSpawn_Timer < uiDiff)
        {
            if (m_vFelhounds.size() < nsMariella::MAX_FELHOUNDS_SPAWNED)
            {
                Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
                for (const auto& itr : playerList)
                {
                    if (Player* pPlayer{ itr.getSource() })
                    {
                        if (pPlayer && pPlayer->IsAlive() && !pPlayer->IsGameMaster() && (pPlayer->GetPowerType() == POWER_MANA))
                        {
                            const uint32 uiRnd{ urand(0, 3) }; // Choose a random spawn point
                            if (Creature* pFelhound{ m_creature->SummonCreature(nsMariella::NPC_FELHOUND,
                                nsMariella::vfSpawnPoints[uiRnd].m_fX,
                                nsMariella::vfSpawnPoints[uiRnd].m_fY,
                                nsMariella::vfSpawnPoints[uiRnd].m_fZ,
                                nsMariella::vfSpawnPoints[uiRnd].m_fO,
                                TEMPSUMMON_MANUAL_DESPAWN) })
                            {
                                pFelhound->CastSpell(pFelhound, nsMariella::VISUALSPELL_SUMMON_FELOUND, true);
                                pFelhound->AI()->AttackStart(pPlayer);
                                pFelhound->AddThreat(pPlayer, 1000000.f); // Hack: Assign very high amount of threat to the player to lock felhound's target

                                if (!m_bFelhoundsAlreadyAnnounced)
                                {
                                    m_creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
                                    m_creature->MonsterYell(nsMariella::CombatNotification(nsMariella::CombatNotifications::FELHOUNDS_SPAWN), LANG_UNIVERSAL);
                                    m_bFelhoundsAlreadyAnnounced = true;
                                }

                                m_vFelhounds.push_back(pFelhound->GetObjectGuid());

                                break; // Spawn only 1 Felhound each wave?
                            }
                        }
                    }
                }
            }

            m_uiFelhoundSpawn_Timer = nsMariella::FELHOUND_SPAWN_REPEAT_TIMER;
        }
        else
        {
            m_uiFelhoundSpawn_Timer -= uiDiff;
        }
    }

    void DespawnFelhounds()
    {
        if (!m_vFelhounds.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vFelhounds)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_vFelhounds.clear();
            }
        }
    }

    void EnrageTimer(const uint32& uiDiff)
    {
        if (m_uiEnrage_Timer < uiDiff)
        {
            m_creature->HandleEmote(EMOTE_ONESHOT_ROAR);
            m_creature->MonsterYell(nsMariella::CombatNotification(nsMariella::CombatNotifications::ENRAGE), LANG_UNIVERSAL);
            m_bEnrage = true;
        }
        else
        {
            m_uiEnrage_Timer -= uiDiff;
        }
    }

    void CheckIfPlayerDied()
    {
        if (!m_vPossibleVictim.empty())
        {
            for (const auto& guid : m_vPossibleVictim)
            {
                if (Player const* pPlayer{ ObjectAccessor::FindPlayer(guid) })
                {
                    if (pPlayer->IsDead())
                    {
                        EndScraficePhase();
                    }
                }
            }
        }
    }

    void RegenerateBossHealth(const uint32& uiDiff)
    {
        if (m_uiIncreaseHealth_Timer < uiDiff)
        {
            if (m_creature->GetHealthPercent() < 100.f)
            {
                m_creature->SetHealthPercent((m_creature->GetHealthPercent() + nsMariella::REGENERATE_HEALTH_PERCENTAGE));
            }

            m_uiIncreaseHealth_Timer = nsMariella::INCREASE_HEALTH_TIMER;
        }
        else
        {
            m_uiIncreaseHealth_Timer -= uiDiff;
        }
    }

    void SpawnAchievementReward(Unit* pKiller)
    {
        if (pKiller)
        {
            pKiller->SummonGameObject(nsMariella::GO_ACHIEVEMENT_CHEST,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fX,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fY,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fZ,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fO,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fR0,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fR1,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fR2,
                nsMariella::vfAchievementChestSpawnPoint[0].m_fR3,
                nsMariella::GO_ACHIEVEMENT_CHEST_DESPAWN_TIMER);
        }
        else
        {
            sLog.outError("[SC] Boss Mariella: SpawnAchievementReward() called but no pKiller found!");
        }
    }

    void AchievementKillFailed()
    {
        m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
        m_creature->MonsterSay(nsMariella::CombatNotification(nsMariella::CombatNotifications::ACHIEVEMENT_FAILED), LANG_UNIVERSAL);

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

        if (!m_bIsSacrificePhase) // Phase 1
        {
            CastShadowVolley(uiDiff);
            SpawnVoidZones(uiDiff);
            SpawnFelhounds(uiDiff);
            CheckForSacraficePhase();
        }
        else // Phase 2
        {
            RegenerateBossHealth(uiDiff);
            CheckIfPlayerDied();
        }

        EnrageTimer(uiDiff);
    }
};

CreatureAI* GetAI_boss_mariella(Creature* pCreature)
{
    return new boss_mariellaAI(pCreature);
}


class npc_voidzone : public ScriptedAI
{
public:
    explicit npc_voidzone(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        npc_voidzone::Reset();
        SetCombatMovement(false);
    }

private:

    uint32 m_uiDamage_Timer{};

    instance_scarlet_citadel* m_pInstance;

public:
    void Reset() override
    {
        // Void Zone damage timer
        m_uiDamage_Timer = nsMariella::VOIDZONE_DAMAGE_REPEAT_TIMER;

        // Void Zone shouldn't move
        m_creature->AddUnitState(UNIT_STAT_ROOT);
        m_creature->SetRooted(true);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
    }

    void DamageTimer(const uint32& uiDiff)
    {
        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        if (PlayerList.isEmpty())
            return;

        if (m_uiDamage_Timer < uiDiff)
        {
            for (const auto& itr : PlayerList)
            {
                if (Player* pPlayer{ itr.getSource() })
                {
                    if ((m_creature->GetDistance3dToCenter(pPlayer) < nsMariella::VOIDZONE_DIAMETER) && pPlayer->IsAlive())
                    {
                        m_creature->DealDamage(pPlayer, nsMariella::VOIDZONE_DAMAGE, nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);

                        if (Creature* pCreature{ m_pInstance->GetSingleCreatureFromStorage(NPC_MARIELLA) })
                        {
                            if (boss_mariellaAI* boss_mariella{ dynamic_cast<boss_mariellaAI*>(pCreature->AI()) })
                            {
                                if (!boss_mariella->IsAchievementKillFailed())
                                {
                                    boss_mariella->AchievementKillFailed(); // Achievement failed if a player received damage from a Void Zone
                                }
                            }
                        }
                    }
                }
            }

            m_uiDamage_Timer = nsMariella::VOIDZONE_DAMAGE_REPEAT_TIMER;
        }
        else
        {
            m_uiDamage_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        DamageTimer(uiDiff);
    }
};

CreatureAI* GetAI_npc_voidzone(Creature* pCreature)
{
    return new npc_voidzone(pCreature);
}


class npc_killzone : public ScriptedAI
{
public:
    explicit npc_killzone(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        npc_killzone::Reset();
        SetCombatMovement(false);
    }

private:

    uint32 m_uiKill_Timer{};

    instance_scarlet_citadel* m_pInstance;

public:
    void Reset() override
    {
        // Void Zone damage timer
        m_uiKill_Timer = nsMariella::KILLZONE_KILL_REPEAT_TIMER;

        // Void Zone shouldn't move
        m_creature->AddUnitState(UNIT_STAT_ROOT);
        m_creature->SetRooted(true);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
    }

    void DamageTimer(const uint32& uiDiff)
    {
        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        if (PlayerList.isEmpty())
            return;

        if (m_uiKill_Timer < uiDiff)
        {
            for (const auto& itr : PlayerList)
            {
                if (Player* pPlayer{ itr.getSource() })
                {
                    if ((m_creature->GetDistance3dToCenter(pPlayer) < nsMariella::KILLZONE_DIAMETER) && pPlayer->IsAlive() && !pPlayer->IsGameMaster())
                    {
                        m_creature->DoKillUnit(pPlayer);
                    }
                }
            }

            m_uiKill_Timer = nsMariella::KILLZONE_KILL_REPEAT_TIMER;
        }
        else
        {
            m_uiKill_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        DamageTimer(uiDiff);
    }
};

CreatureAI* GetAI_npc_killzone(Creature* pCreature)
{
    return new npc_killzone(pCreature);
}


class npc_felhound : public ScriptedAI
{
public:
    explicit npc_felhound(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_felhound::Reset();
    }

private:

    uint32 m_uiManaDrain_Timer{};

public:
    void Reset() override
    {
        m_uiManaDrain_Timer = nsMariella::FELHOUND_DRAIN_REPEAT_TIMER;
    }

    void ManaDrainTimer(const uint32& uiDiff)
    {
        if (m_uiManaDrain_Timer < uiDiff)
        {
            if (Unit* pTarget{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_TOPAGGRO, 0) })
            {
                if ((pTarget->GetPowerType() == POWER_MANA) && m_creature->IsWithinDist(pTarget, 5.f))
                {
                    DoCast(m_creature->GetVictim(), nsMariella::VISUALSPELL_DRAINMANA);
                    pTarget->ModifyPower(POWER_MANA, nsMariella::VALUE_DRAINMANA);
                }
            }

            m_uiManaDrain_Timer = nsMariella::FELHOUND_DRAIN_REPEAT_TIMER;
        }
        else
        {
            m_uiManaDrain_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || (!m_creature->GetVictim() && (m_creature->GetVictim()->GetPowerType() != POWER_MANA)))
            return;

        ManaDrainTimer(uiDiff);
    }
};

CreatureAI* GetAI_npc_felhound(Creature* pCreature)
{
    return new npc_felhound(pCreature);
}


bool GossipHello_boss_mariella(Player* pPlayer, Creature* pCreature)
{
    instance_scarlet_citadel const* m_pInstance{ static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData()) };
    
    if (m_pInstance /*&& (m_pInstance->GetData(TYPE_ARDAEUS) == DONE) && (m_pInstance->GetData(TYPE_DAELUS) == DONE)*/) // TODO: Remove comment after testing
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, nsMariella::GOSSIP_ANSWER, GOSSIP_SENDER_MAIN, (GOSSIP_ACTION_INFO_DEF + 1));
        pPlayer->SEND_GOSSIP_MENU(nsMariella::GOSSIP_TEXT, pCreature->GetObjectGuid());
    }
    else
    {
        sLog.outError("[SC] Boss Mariella: Boss spawned outside of dungeon or someone tried to start encounter without killing first two bosses!");
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GossipSelect_boss_mariella(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, const uint32 uiAction)
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
                DoAfterTime(pCreature, (1 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
                        creature->MonsterSay(nsMariella::CombatNotification(nsMariella::CombatNotifications::ABOUT_TO_START), LANG_UNIVERSAL);
                    });

                DoAfterTime(pCreature, (2 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        if (boss_mariellaAI* boss_mariella{ dynamic_cast<boss_mariellaAI*>(creature->AI()) })
                        {
                            boss_mariella->SpawnSummoningCircles(creature);
                        }
                    });

                DoAfterTime(pCreature, (6 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        creature->HandleEmote(EMOTE_ONESHOT_ROAR);
                        creature->MonsterYell(nsMariella::CombatNotification(nsMariella::CombatNotifications::START), LANG_UNIVERSAL);
                    });

                DoAfterTime(pCreature, (8 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        if (boss_mariellaAI* boss_mariella{ dynamic_cast<boss_mariellaAI*>(creature->AI()) })
                        {
                            boss_mariella->SpawnKillZone(creature);
                        }
                    });

                DoAfterTime(pCreature, (10 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                        creature->SetFactionTemplateId(nsMariella::FACTION_SCARLET);
                        creature->SetInCombatWithZone();
                    });
            }
            catch (const std::runtime_error& e)
            {
                sLog.outError("[SC] Boss Mariella: DoAfterTime() failed: %s", e.what());
            }

            break;
        }
    }

    return true;
}

void AddSC_boss_mariella()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_mariella";
    pNewscript->GetAI = &GetAI_boss_mariella;
    pNewscript->pGossipHello = &GossipHello_boss_mariella;
    pNewscript->pGossipSelect = &GossipSelect_boss_mariella;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_voidzone";
    pNewscript->GetAI = &GetAI_npc_voidzone;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_killzone";
    pNewscript->GetAI = &GetAI_npc_killzone;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_felhound";
    pNewscript->GetAI = &GetAI_npc_felhound;
    pNewscript->RegisterSelf();
}
