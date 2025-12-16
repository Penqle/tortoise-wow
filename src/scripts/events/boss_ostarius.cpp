// Ostarius
// Author: Henhouse
#include "scriptPCH.h"
#include "boss_ostarius.h"

// Enable for development logs to help debug some things.
//#define DEBUG_ON

Player* GetNearbyEnemyPlayer(Unit* self, const float& dist)
{
    return self->FindNearestHostilePlayer(dist);
}

// Attempts to find randomy nearby enemy player.
Player* GetRandomNearbyEnemyPlayer(Unit* self, const float& dist, uint8 attempt = 0)
{
    ++attempt;

    if (attempt > 10)
        return nullptr;

    Unit* random = self->SelectRandomUnfriendlyTarget(nullptr, dist);
    if (!random)
        return nullptr;

    // Recurse until we select a player (missing MaNGOS func to do this...)
    if (!random->IsPlayer())
        return GetRandomNearbyEnemyPlayer(self, dist, attempt);

    return random->ToPlayer();
}

void DeleteObject(WorldObject* object, std::vector<ObjectGuid> &list)
{
    // Find and delete self from vector.
    std::vector<ObjectGuid>::const_iterator it = std::find(list.begin(), list.end(), object->GetObjectGuid());
    if (it != list.end())
        list.erase(it);

    object->DeleteLater();
}

static time_t lastOstariusSummonTime = 0;

struct boss_ostariusAI : public ScriptedAI
{
    explicit boss_ostariusAI(Creature *c) : ScriptedAI(c)
    {
        boss_ostariusAI::Reset();
    }

    EventMap m_events;

    bool m_isFrostPhase = false;
    uint8 m_currentPhase = 0;
    uint8 m_phaseState = 0;
    uint8 m_lastHealthPercent = 0;
    uint16 m_numOfPortalsToSpawn = 0;
    uint16 m_numOfDevicesToSpawn = 0;

    uint32 m_portalActivateTimer = 0;
    uint32 m_sonicBurstTimer = 0;
    uint32 m_chainLightningTimer = 0;
    uint32 m_spawnPortalsTimer = 0;
    uint32 m_spawnDevicesTimer = 0;
    uint32 m_teleportTargetTimer = 0;

    std::vector<ObjectGuid> m_constructSpawns;
    std::vector<ObjectGuid> m_sentrySpawns;
    std::vector<ObjectGuid> m_portals;
    std::vector<ObjectGuid> m_devices;

    std::vector<ObjectGuid>& ConstructSpawns()
    {
        return m_constructSpawns;
    }

    std::vector<ObjectGuid>& SentrySpawns()
    {
        return m_sentrySpawns;
    }

    std::vector<ObjectGuid>& Portals()
    {
        return m_portals;
    }

    std::vector<ObjectGuid>& Devices()
    {
        return m_devices;
    }

    bool IsFrostPhase()
    {
        return m_isFrostPhase;
    }

    void SetDefaults()
    {
        m_events.Reset();

        m_phaseState = 0;
        m_currentPhase = 0;
        m_isFrostPhase = false;

        m_numOfPortalsToSpawn = 2;
        m_numOfDevicesToSpawn = 2;

        m_lastHealthPercent = 100;

        m_sonicBurstTimer = 10000;
        m_chainLightningTimer = 15000;
        m_spawnPortalsTimer = 0;
        m_spawnDevicesTimer = 0;
        m_portalActivateTimer = 10000;
        m_teleportTargetTimer = 3000;

        me->SetAttackTimer(BASE_ATTACK, 1 * DAY); // never auto initially

        // Reset to neutral for RP intro.
        me->SetFactionTemplateId(7); // Neutral (Creature)
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING | UNIT_FLAG_NON_ATTACKABLE_2);
    }

    void Reset()
    {
        SetDefaults();

        DespawnSummons();
    }

    void OnRemoveFromWorld() override
    {
        if (m_creature->IsAlive())
            lastOstariusSummonTime = 0;

        DespawnSummons();
    }

    void JustRespawned() override
    {
        JustReachedHome();
        DoCast(me, SPELL_TELEPORT_VISUAL, true);
    }

    void JustReachedHome() override
    {
        Reset();

        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
    }

    void Aggro(Unit* who) override
    {
        m_events.ScheduleEvent(EVENT_INTRO_RP_1, Seconds(0));
    }

    void DespawnSummons()
    {
        for (const auto& guid : m_sentrySpawns)
            if (auto c = me->GetMap()->GetCreature(guid))
                c->DespawnOrUnsummon();
        m_sentrySpawns.clear();

        for (const auto& guid : m_constructSpawns)
            if (auto c = me->GetMap()->GetCreature(guid))
                c->DespawnOrUnsummon();
        m_constructSpawns.clear();

        for (const auto& guid : m_portals)
            if (auto g = me->GetMap()->GetGameObject(guid))
                g->DeleteLater();
        m_portals.clear();

        for (const auto& guid : m_devices)
            if (auto g = me->GetMap()->GetGameObject(guid))
                g->DeleteLater();
        m_devices.clear();
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->GetTypeId() != TYPEID_PLAYER)
            return;

        if (urand(0, 1)) // don't spam on wipe
        {
            switch (urand(1, 4))
            {
                case 1:
                {
                    me->MonsterSendTextToZone(PLAYER_DEATH_1, CHAT_MSG_MONSTER_YELL);
                    break;
                }
                case 2:
                {
                    me->MonsterSendTextToZone(PLAYER_DEATH_2, CHAT_MSG_MONSTER_YELL);
                    break;
                }
                case 3:
                {
                    me->MonsterSendTextToZone(PLAYER_DEATH_3, CHAT_MSG_MONSTER_YELL);
                    break;
                }
                case 4:
                {
                    me->MonsterSendTextToZone(PLAYER_DEATH_4, CHAT_MSG_MONSTER_YELL);
                    break;
                }
            }

            PlaySound(me, SOUND_PLAYER_DEATH);
        }
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DespawnSummons();

        PlaySound(me, SOUND_DEATH, true);
        me->MonsterSendTextToZone(DEATH_TEXT, CHAT_MSG_MONSTER_YELL);

        // Kill pedestal bunny. Acts as a respawn timer for boss (when can be summoned again).
        if (Creature* bunny = me->FindNearestCreature(NPC_PEDESTAL_BUNNY, 300.f, true))
            bunny->SetDeathState(JUST_DIED);
    }

    void MakeNormal()
    {
        me->RemoveAurasDueToSpell(SPELL_ROOT_FOREVER);

        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);
    }

    void TogglePedestal()
    {
        if (const auto ped = me->FindNearestGameObject(GOB_PEDESTAL, 100.f))
        {
            if (ped->getLootState() == GO_READY || ped->getLootState() == GO_JUST_DEACTIVATED)
                ped->UseDoorOrButton();
            else
                ped->ResetDoorOrButton();
        }
    }

    void UpdateEvents(uint32 const diff)
    {
        m_events.Update(diff);

        // Timer events
        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_INTRO_RP_1:
                {
                    // Initial delay.
                    m_events.ScheduleEvent(EVENT_INTRO_RP_2, Seconds(2));
                    break;
                }
                case EVENT_INTRO_RP_2:
                {
                    PlaySound(me, SOUND_INTRO_TEXT_1, true);
                    me->MonsterSendTextToZone(INTRO_TEXT_1, CHAT_MSG_MONSTER_YELL);
                    m_events.ScheduleEvent(EVENT_INTRO_RP_3, Seconds(6));
                    break;
                }
                case EVENT_INTRO_RP_3:
                {
                    PlaySound(me, SOUND_INTRO_TEXT_2, true);
                    me->MonsterSendTextToZone(INTRO_TEXT_2, CHAT_MSG_MONSTER_YELL);
                    m_events.ScheduleEvent(EVENT_INTRO_RP_4, Seconds(4));
                    break;
                }
                case EVENT_INTRO_RP_4:
                {
                    if (me->GetVictim())
                        me->CastSpell(me->GetVictim(), SPELL_SCAN_OF_OSTARIUS, true);
                    m_events.ScheduleEvent(EVENT_INTRO_RP_5, Seconds(6));
                    break;
                }
                case EVENT_INTRO_RP_5:
                {
                    PlaySound(me, SOUND_INTRO_TEXT_3, true);
                    me->MonsterSendTextToZone(INTRO_TEXT_3, CHAT_MSG_MONSTER_YELL);
                    m_events.ScheduleEvent(EVENT_INTRO_RP_6, Seconds(4));
                    me->SetFactionTemplateId(14); // Hostile
                    break;
                }
                case EVENT_INTRO_RP_6:
                {
                    me->CastSpell(me, SPELL_TARGET_CHANNEL, true);

                    PlaySound(me, SOUND_INTRO_TEXT_4, true);
                    me->MonsterSendTextToZone(INTRO_TEXT_4, CHAT_MSG_MONSTER_YELL);
                    m_events.ScheduleEvent(EVENT_INTRO_RP_7, Seconds(5));
                    break;
                }
                case EVENT_INTRO_RP_7:
                {
                    TogglePedestal();
                    me->InterruptNonMeleeSpells(false, SPELL_TARGET_CHANNEL);
                    m_events.ScheduleEvent(EVENT_INTRO_RP_8, Seconds(2));
                    break;
                }
                case EVENT_INTRO_RP_8:
                {
                    PlaySound(me, SOUND_INTRO_TEXT_5, true);
                    me->MonsterSendTextToZone(INTRO_TEXT_5, CHAT_MSG_MONSTER_YELL);
                    m_events.ScheduleEvent(EVENT_PHASE_1_DELAY, Seconds(6));
                    break;
                }
                case EVENT_PHASE_1_DELAY:
                {
                    m_currentPhase = 1;
                    break;
                }
                case EVENT_PHASE_3_DELAY:
                {
                    // Remove physical immunity, reset combat reach, unroot, restore swing timer.
                    if (me->GetVictim())
                    {
                        MakeNormal();

                        me->SetAttackTimer(BASE_ATTACK, 2000);
                        me->SetInCombatWith(me->GetVictim());
                    }

                    break;
                }
            }
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        UpdateEvents(diff);

        // wait for rp event on spawn to finish
        if (!m_currentPhase)
            return;

        if (!me->SelectHostileTarget() || !me->GetVictim())
            return;

        // Anti-leash protection
        if (me->GetPositionX() > (me->GetHomePosition().x + 150))
            EnterEvadeMode();

        if (m_teleportTargetTimer <= diff)
        {
            if (!me->CanReachWithMeleeAutoAttack(me->GetVictim()))
                me->CastSpell(me->GetVictim(), SPELL_SUMMON_PLAYER, true);

            m_teleportTargetTimer = 3000;
        }
        else
            m_teleportTargetTimer -= diff;

        // Portal phase.
        if (m_currentPhase == 1 && !(m_phaseState & STATE_PHASE_1))
        {
            DoCast(me, SPELL_SANDSTORM, true);

            // Make attackable now once shield is up.
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING | UNIT_FLAG_NON_ATTACKABLE_2);
            me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

            PlaySound(me, SOUND_PHASE_1, true);
            me->MonsterSendTextToZone(PHASE_1_TEXT, CHAT_MSG_MONSTER_YELL);

            // Spawn portals so sentries enter battlefield.
            SpawnPortals();
            m_portalActivateTimer = 2500;

            m_phaseState |= STATE_PHASE_1;
        }

        // Sentry phase (fire).
        if (me->GetHealthPercent() < 70.f && !(m_phaseState & STATE_PHASE_2))
        {
            PlaySound(me, SOUND_PHASE_2, true);
            me->MonsterSendTextToZone(PHASE_2_TEXT, CHAT_MSG_MONSTER_YELL);

            SummonSentries();

            m_currentPhase = 2;
            m_phaseState |= STATE_PHASE_2;
        }

        // Frost phase (changes spells on sentries and summons suppression devices)
        if (me->GetHealthPercent() < 50.f && !(m_phaseState & STATE_PHASE_3))
        {
            m_isFrostPhase = true;

            PlaySound(me, SOUND_PHASE_3, true);
            me->MonsterSendTextToZone(PHASE_3_TEXT, CHAT_MSG_MONSTER_YELL);

            SpawnSupressionDevices();

            m_currentPhase = 3;
            m_phaseState |= STATE_PHASE_3;
        }

        // Manual intervention phase.
        if (me->GetHealthPercent() < 30.f && !(m_phaseState & STATE_PHASE_4))
        {
            PlaySound(me, SOUND_PHASE_4, true);
            me->MonsterSendTextToZone(PHASE_4_TEXT, CHAT_MSG_MONSTER_YELL);

            DespawnSummons();

            m_events.ScheduleEvent(EVENT_PHASE_3_DELAY, Seconds(5));
            me->RemoveAurasDueToSpell(SPELL_SANDSTORM); // Remove here so animation finishes before phase starts.

            m_currentPhase = 4;
            m_phaseState |= STATE_PHASE_4;
        }

        if (m_currentPhase > 0 && m_currentPhase < 4)
        {
            if (!GetNearbyEnemyPlayer(me, 120.0f))
            {
                me->MonsterSendTextToZone(EVADE_TEXT, CHAT_MSG_MONSTER_YELL);
                me->OnLeaveCombat();
                return;
            }

            if (m_portalActivateTimer < diff)
            {
                ActivatePortals();
                m_portalActivateTimer = (m_currentPhase > 1 ? 10 : 12) * IN_MILLISECONDS;
            }
            else
                m_portalActivateTimer -= diff;
        }

        if (m_currentPhase == 1)
        {
            if (m_spawnPortalsTimer < diff)
            {
                SpawnPortals();

                // Spawn more next time.
                m_numOfPortalsToSpawn += 1;

                m_spawnPortalsTimer = 40 * IN_MILLISECONDS;
            }
            else
                m_spawnPortalsTimer -= diff;
        }

        // Frost phase
        if (m_currentPhase == 3)
        {
            if (m_spawnDevicesTimer < diff)
            {
                SpawnSupressionDevices();

                // Spawn more next time.
                m_numOfDevicesToSpawn += 2;

                m_spawnDevicesTimer = 20 * IN_MILLISECONDS;
            }
            else
                m_spawnDevicesTimer -= diff;
        }

        if (m_currentPhase < 4)
            return;

        // Stomp and Earthquake every 10% HP loss.
        if (m_lastHealthPercent - me->GetHealthPercent() >= 10.f)
        {
            if (DoCastSpellIfCan(me->GetVictim(), SPELL_STOMP) == CAST_OK)
            {
                DoCast(me, SPELL_EARTHQUAKE, true);
                m_lastHealthPercent = me->GetHealthPercent();
            }
        }

        // Sonic Burst
        if (m_sonicBurstTimer < diff)
        {
            if (DoCastSpellIfCan(me, SPELL_SONIC_BURST) == CAST_OK)
                m_sonicBurstTimer = urand(25000, 53000);
        }
        else
            m_sonicBurstTimer -= diff;
        
        // Chain Lighting a far away target, but within their casting range.
        if (m_chainLightningTimer < diff)
        {
            // WTB built-in functions for this :sob:. MaNGOS is lacking them... Messy, but oh well.
            for (uint8 i = 0; i < 20; ++i)
            {
                if (Player* target = GetRandomNearbyEnemyPlayer(me, 30.f))
                {
                    // Target must be more than 15yrds away (we ideally want to target a caster).
                    if (target->GetDistance2d(me) < 15.0f)
                        continue;

                    DoCast(target, SPELL_CHAIN_LIGHTNING, true);

                    break;
                }
            }

            // Reset timer even if our 20-attempt search fails.
            // Static so players can learn to avoid.
            m_chainLightningTimer = 15000;
        }
        else
            m_chainLightningTimer -= diff;

        // Reactivate all defenses at 15%
        if (me->GetHealthPercent() < 15.f && !(m_phaseState & STATE_ENRAGED))
        {
            me->MonsterTextEmote("Ostarius reactivates all defenses out of desperation!", nullptr, true);
            me->MonsterSendTextToZone(ENRAGE_TEXT, CHAT_MSG_MONSTER_YELL);
            PlaySound(me, SOUND_ENRAGE, true);

            SummonSentries();
            SpawnSupressionDevices();

            m_phaseState |= STATE_ENRAGED;
        }

        DoMeleeAttackIfReady();
    }

    void ActivatePortals()
    {
        for (auto const& guid : m_portals)
        {
            if (ConstructSpawns().size() >= MAX_SPAWNED_CONSTRUCTS)
                return;

            GameObject* pPortal = me->GetMap()->GetGameObject(guid);
            if (!pPortal || !pPortal->isSpawned())
                continue;

            const float ground_z = me->GetMap()->GetHeight(pPortal->GetPositionX(), pPortal->GetPositionY(), MAX_HEIGHT);
            
            Creature* spawn = me->SummonCreature(
                MOB_ULDUM_CONSTRUCT,
                pPortal->GetPositionX(),
                pPortal->GetPositionY(),
                ground_z,
                pPortal->GetOrientation(),
                TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, // despawns after a specified time (out of combat) OR when the creature dies
                10 * IN_MILLISECONDS,
                true
            );

            if (!spawn)
            {
                m_creature->MonsterSay(66110);
                return;
            }

            ConstructSpawns().push_back(spawn->GetObjectGuid());

            Unit* randomEnemy = GetNearbyEnemyPlayer(spawn, 100.f);
            if (!randomEnemy)
            {
                if (!(randomEnemy = me->GetAttackerForHelper()))
                    continue;
            }

            spawn->AI()->AttackStart(randomEnemy);
        }
    }

    void SpawnPortals()
    {
        for (uint8 i = 0; i < m_numOfPortalsToSpawn; ++i)
        {
            // Hit the limit. Try again later.
            if (m_portals.size() >= MAX_OPEN_PORTALS)
                return;

            // Generates random spawn within a square on the floor.
            const float spawnX = squareX + (squareDiameter * float(urand(0, 10)));
            const float spawnY = squareY + (squareDiameter * float(urand(0, 10)));

            GameObject* portal = me->SummonGameObject(GOB_DEFENSE_PORTAL,
                spawnX,
                spawnY,
                squareZ,
                0.0f,
                0.0f,
                0.0f,
                0.0f,
                0.0f,
                5 * MINUTE
            );
            m_portals.push_back(portal->GetObjectGuid());

            portal->SetActiveObjectState(true);
        }
    }

    void SummonSentries()
    {
        for (uint8 i = 0; i < (sizeof(sentryLocs) / sizeof(sentryLocs[0])); ++i)
        {
            Creature* sentry = me->SummonCreature(
                MOB_DEFENSE_SENTRY,
                sentryLocs[i][0],
                sentryLocs[i][1],
                sentryLocs[i][2],
                sentryLocs[i][3],
                TEMPSUMMON_TIMED_COMBAT_OR_DEAD_DESPAWN,
                30 * MINUTE * IN_MILLISECONDS
            );

            m_sentrySpawns.push_back(sentry->GetObjectGuid());
        }
    }

    void SpawnSupressionDevices()
    {
        for (uint8 i = 0; i < m_numOfDevicesToSpawn; ++i)
        {
            // Hit the limit. Try again later.
            if (m_devices.size() >= MAX_ACTIVE_DEVICES)
                return;

            // Generates random spawn within a square on the floor.
            const float spawnX = squareX + (squareDiameter * float(urand(0, 10)));
            const float spawnY = squareY + (squareDiameter * float(urand(0, 10)));

            GameObject* device = me->SummonGameObject(
                GOB_DEBILITATING_DEVICE,
                spawnX,
                spawnY,
                squareZ,
                0.0f,
                0.0f,
                0.0f,
                0.0f,
                0.0f,
                5 * MINUTE
            );

            m_devices.push_back(device->GetObjectGuid());
        }
    }
};

struct mob_uldum_constructAI : public ScriptedAI
{
    explicit mob_uldum_constructAI(Creature* c) : ScriptedAI(c)
    {
        mob_uldum_constructAI::Reset();
    }

    bool channelStarted{};
    uint32 channelCheck_Timer{};
    uint32 encage_Timer{};

    void SetDefaults()
    {
        channelStarted = false;
        channelCheck_Timer = 11 * IN_MILLISECONDS;
        encage_Timer = 0;
    }

    void Reset()
    {
        SetDefaults();
        me->CastStop(); // Stop any active encage spell channelling.
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (Creature* pOstarius{ GetClosestCreatureWithEntry(me, BOSS_OSTARIUS, 500.f) })
        {
            if (boss_ostariusAI* boss_ostarius{ dynamic_cast<boss_ostariusAI*>(pOstarius->AI()) })
            {
                DeleteObject(me, boss_ostarius->ConstructSpawns());
            }
        }
    }

    void EnterEvadeMode() override
    {
        me->CastStop();
        me->DeleteLater();
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (channelStarted)
        {
            if (channelCheck_Timer < diff)
            {
                // Due to vanilla debuff limits, players can exploit this phase by getting full stacks 
                // of scans and never be affected by conflag. This ensures that we make room for it.
                me->GetVictim()->RemoveAurasDueToSpell(SPELL_MORTALITY_SCAN);

                DoCast(me->GetVictim(), SPELL_CONFLAG, true);
                channelCheck_Timer = 11 * IN_MILLISECONDS;
                channelStarted = false;
                encage_Timer = 5 * IN_MILLISECONDS;
            }
            else
                channelCheck_Timer -= diff;
        }

        if (!channelStarted && encage_Timer < diff)
        {
            if (DoCastSpellIfCan(me->GetVictim(), SPELL_MORTALITY_SCAN) == CAST_OK)
            {
                channelStarted = true;
            }
        }
        else
            encage_Timer -= diff;
    }
};


constexpr uint32 SPELL_BLIZZARD = 21367;
constexpr uint32 SPELL_RAIN_OF_FIRE = 24669;
constexpr uint32 SPELL_FROST_BREATH = 22479;


struct mob_uldum_sentryAI : public ScriptedAI
{
    explicit mob_uldum_sentryAI(Creature* c) : ScriptedAI(c)
    {
        mob_uldum_sentryAI::Reset();
    }

    uint32 AoE_Timer{};
    uint32 Breath_Timer{};
    bool canBreath{};

    void SetDefaults()
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_STUNNED | UNIT_FLAG_SPAWNING | UNIT_FLAG_NON_ATTACKABLE_2 | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

        // Needed so our channeled spells have no issues casting.
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, me->GetCombatReach() * 20);
        me->SetFloatValue(UNIT_FIELD_BOUNDINGRADIUS, me->GetObjectBoundingRadius() * 20);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_COMBATREACH);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_BOUNDINGRADIUS);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
        DoCast(me, SPELL_TELEPORT_VISUAL);

        AoE_Timer = urand(0, 8000);
        Breath_Timer = 0;
        canBreath = false;
    }

    void Reset()
    {
        SetDefaults();
    }

    void EnterEvadeMode() override
    {
        me->CastStop();
        me->DeleteLater();
    }

    void UpdateAI(const uint32 diff) override
    {
        if (AoE_Timer < diff)
        {
            if (Unit* randomTarget = GetRandomNearbyEnemyPlayer(me, 200.f))
            {
                if (Creature* pOstarius{ GetClosestCreatureWithEntry(me, BOSS_OSTARIUS, 500.f) })
                {
                    if (boss_ostariusAI* boss_ostarius{ dynamic_cast<boss_ostariusAI*>(pOstarius->AI()) })
                    {
                        const uint32 spellToCast{ boss_ostarius->IsFrostPhase() ? SPELL_BLIZZARD : SPELL_RAIN_OF_FIRE };
                        DoCast(randomTarget, spellToCast, true);
                        if (spellToCast == SPELL_BLIZZARD)
                        {
                            canBreath = true;
                            Breath_Timer = urand(2500, 3500);
                        }
                    }
                }
            }
        
            AoE_Timer = urand(15500, 25000);
        }
        else
            AoE_Timer -= diff;

        if (canBreath)
        {
            if (Breath_Timer < diff)
            {
                DoCast(me, SPELL_FROST_BREATH, true);
                canBreath = false;
            }
            else
                Breath_Timer -= diff;
        }
    }
};

bool GOOpen_go_uldum_portal(Player* pPlayer, GameObject* pGo)
{
    if (Creature* pOstarius{ GetClosestCreatureWithEntry(pGo, BOSS_OSTARIUS, 500.f) })
    {
        if (boss_ostariusAI* boss_ostarius{ dynamic_cast<boss_ostariusAI*>(pOstarius->AI()) })
        {
            DeleteObject(pGo, boss_ostarius->Portals());
        }
    }

    return true;
}

constexpr auto SPELL_PIERCING_COLD = 57003;

// aka debilitating device
struct go_uldum_suppressionAI : public GameObjectAI
{
    go_uldum_suppressionAI(GameObject* pGo) : GameObjectAI(pGo), m_uiCheckTimer(500), m_bActive(true) { RestoreGo(); }

    uint32 m_uiCheckTimer{};
    bool m_bActive{};

    bool OnUse(Unit* pUser) override
    {
        if (pUser->IsWithinDistInMap(me, 5.f))
        {
            me->SetGoState(GO_STATE_ACTIVE);
            m_bActive = false;
            m_uiCheckTimer = 3000;
            return true;
        }
        else
            return false;
    }

    void ApplyAura()
    {
        me->SendGameObjectCustomAnim();
        Map::PlayerList const& liste = me->GetMap()->GetPlayers();
        for (const auto& i : liste)
        {
            if (me->GetDistance(i.getSource()) < 10.f)
                if (!i.getSource()->HasStealthAura() && i.getSource()->IsAlive() && !i.getSource()->IsGameMaster())
                    i.getSource()->AddAura(SPELL_PIERCING_COLD);
        }
    }

    void RestoreGo()
    {
        me->SetGoState(GO_STATE_READY);
        m_bActive = true;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiCheckTimer < uiDiff)
        {
            if (Creature* pOstarius{ GetClosestCreatureWithEntry(me, BOSS_OSTARIUS, 500.f) })
            {
                if (boss_ostariusAI* boss_ostarius{ dynamic_cast<boss_ostariusAI*>(pOstarius->AI()) })
                {

                    if (m_bActive)
                        ApplyAura();
                    else
                        DeleteObject(me, boss_ostarius->Devices());

                    m_uiCheckTimer = 2000;
                }
            }

            return;
        }
        else
            m_uiCheckTimer -= uiDiff;
    }
};



struct npc_uldum_pedestalAI : public ScriptedAI
{
    explicit npc_uldum_pedestalAI(Creature* c) : ScriptedAI(c)
    {
        npc_uldum_pedestalAI::Reset();
    }

    EventMap m_events;
    bool m_started = false;

    void SetDefaults()
    {
        m_events.Reset();
        m_started = false;
    }

    bool IsStarted() const
    {
        return m_started;
    }

    void Start()
    {
        m_started = true;
    }

    void Reset()
    {
        SetDefaults();

        m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_1, Seconds(2));
    }

    void TogglePedestal()
    {
        if (const auto ped = me->FindNearestGameObject(GOB_PEDESTAL, 100.0f))
        {
            if (ped->getLootState() == GO_READY || ped->getLootState() == GO_JUST_DEACTIVATED)
                ped->UseDoorOrButton();
            else
                ped->ResetDoorOrButton();
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        m_events.Update(diff);

        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
                // "Initiating unlock sequence...";
                // "Plates present, scanning for item validation...";
                // "Plates authentication complete. Unlocking the gates...";
                // "Activating Gate Keeper to greet the guests...";
                case PEDESTAL_EVENT_INTRO_1:
                {
                    me->MonsterSay(PED_TEXT_1);
                    PlaySound(me, SOUND_PED_TEXT_1);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_2, Seconds(4));
                    break;
                }
                case PEDESTAL_EVENT_INTRO_2:
                {
                    me->MonsterSay(PED_TEXT_2);
                    PlaySound(me, SOUND_PED_TEXT_2);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_3, Seconds(6));
                    DoCast(nullptr, 25425, true);
                    break;
                }
                case PEDESTAL_EVENT_INTRO_3:
                {
                    me->MonsterSay(PED_TEXT_3);
                    PlaySound(me, SOUND_PED_TEXT_3);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_4, Seconds(7));
                    break;
                }
                case PEDESTAL_EVENT_INTRO_4:
                {
                    me->MonsterSay(PED_TEXT_4);
                    PlaySound(me, SOUND_PED_TEXT_4);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_BOSS_SPAWN, Seconds(4));
                    break;
                }
                case PEDESTAL_EVENT_BOSS_SPAWN:
                {
                    std::list<Player*> players;
                    me->GetAlivePlayerListInRange(me, players, 100.0f);

                    if (!players.empty())
                    {
                        if (Creature* ostarius = me->SummonCreature(BOSS_OSTARIUS, -9637.72f, -2787.4f, 7.838f, 0.0f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 30000))
                        {
                            ostarius->AI()->JustRespawned();

                            for (auto const& itr : players)
                            {
                                ostarius->SetInCombatWith(itr);
                                ostarius->AddThreat(itr);
                            }
                        }
                    }
                    else
                    {
                        TogglePedestal();
                        lastOstariusSummonTime = 0;
                    }

                    me->DespawnOrUnsummon();
                    break;
                }
            }
        }
    }
};


CreatureAI* GetAI_boss_ostarius(Creature *creature)
{
    return new boss_ostariusAI(creature);
}

CreatureAI* GetAI_mob_uldum_construct(Creature* creature)
{
    return new mob_uldum_constructAI(creature);
}

CreatureAI* GetAI_mob_uldum_sentry(Creature* creature)
{
    return new mob_uldum_sentryAI(creature);
}

GameObjectAI* GetAIgo_uldum_suppression(GameObject* pGo)
{
    return new go_uldum_suppressionAI(pGo);
}

CreatureAI* GetAI_npc_uldum_pedestal(Creature* creature)
{
    return new npc_uldum_pedestalAI(creature);
}


enum UldumQuestItems
{
    ITEM_ULDUM_FIRST_PLATE = 60102,
    ITEM_ULDUM_SECOND_PLATE = 60103,
};

constexpr auto STONE_WATCHER_OF_NORGANNON = 7918;
constexpr auto PEDESTAL_BUNNY = 80969;
constexpr auto QUEST_SEEING_WHAT_HAPPENS_A = 2946;
constexpr auto QUEST_SEEING_WHAT_HAPPENS_H = 2966;
constexpr auto QUEST_GATES_OF_ULDUM_A = 40106;
constexpr auto QUEST_ULDUM_AWAITS_H = 40114;
constexpr auto OSTARIUS_ENTRY = 80935;

bool GossipHelloGO_pedestal_of_uldum(Player* player, GameObject* pGo)
{
    bool showQuestMenu = false;
    if (auto vQuestStatus = player->GetQuestStatusData(QUEST_SEEING_WHAT_HAPPENS_A))
        if (vQuestStatus->m_status == QUEST_STATUS_COMPLETE && !vQuestStatus->m_rewarded)
            showQuestMenu = true;

    if (auto vQuestStatus = player->GetQuestStatusData(QUEST_SEEING_WHAT_HAPPENS_H))
        if (vQuestStatus->m_status == QUEST_STATUS_COMPLETE && !vQuestStatus->m_rewarded)
            showQuestMenu = true;

    // Support vanilla quest chain for lower levels.
    if (showQuestMenu)
    {
        player->PrepareQuestMenu(pGo->GetObjectGuid());
        player->SEND_GOSSIP_MENU(90630, pGo->GetGUID());
        return true;
    }

    if (player->GetQuestRewardStatus(QUEST_SEEING_WHAT_HAPPENS_A) || player->GetQuestRewardStatus(QUEST_SEEING_WHAT_HAPPENS_H) && !pGo->FindNearestCreature(STONE_WATCHER_OF_NORGANNON, 10.f) && !pGo->FindNearestCreature(80970, 10.f))
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Summon Stone Watcher", GOSSIP_SENDER_MAIN, (GOSSIP_ACTION_INFO_DEF + 2));
        player->SEND_GOSSIP_MENU(90630, pGo->GetGUID());
    }


    // Pedestal bunny is killed when Ostarius dies and has a 7-day respawn timer. Acts as an easy
    // way to control when the boss is eligible to be spawned again.

    auto ostarius = pGo->FindNearestCreature(OSTARIUS_ENTRY, 150.f, true);
    auto pedestalNpc = pGo->FindNearestCreature(80970, 150.f, true);

    bool isInProgress = ostarius || (pedestalNpc && dynamic_cast<npc_uldum_pedestalAI*>(pedestalNpc->AI())
        && dynamic_cast<npc_uldum_pedestalAI*>(pedestalNpc->AI())->IsStarted());

    //check if we already have an active event..
    if ((player->GetQuestStatus(QUEST_GATES_OF_ULDUM_A) == QUEST_STATUS_COMPLETE || player->GetQuestStatus(QUEST_ULDUM_AWAITS_H) == QUEST_STATUS_COMPLETE) &&
        player->GetGroup() && player->GetGroup()->GetMembersCount() >= 20)
    {
        if (pGo->FindNearestCreature(PEDESTAL_BUNNY, 10.f, true) && !isInProgress && ((lastOstariusSummonTime + 7 * DAY) < sWorld.GetGameTime()))
            player->PrepareQuestMenu(pGo->GetObjectGuid());
        else
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "<Pedestal is regaining energy...>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    player->SEND_GOSSIP_MENU(90630, pGo->GetGUID());

    return true;
}

bool GossipSelectGO_pedestal_of_uldum(Player* player, GameObject* pGo, uint32 uiSender, uint32 uiAction)
{
    switch (uiAction)
    {
        case GOSSIP_ACTION_INFO_DEF + 1:
        {
            if (player->IsGameMaster())
            {
                lastOstariusSummonTime = 0;
                player->GetSession()->SendNotification("Ostarius cooldown has been reset.");
            }
            else
                player->GetSession()->SendNotification("Ostarius is on cooldown and cannot be summoned yet.");
            break;
        }
        case GOSSIP_ACTION_INFO_DEF + 2:
        {
            pGo->SummonCreature(STONE_WATCHER_OF_NORGANNON, -9619.19f, -2815.02f, 10.8949f, 0.f, TEMPSUMMON_TIMED_DESPAWN, (60 * IN_MILLISECONDS));
            break;
        }
    }

    player->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAcceptGO_pedestal_of_uldum(Player* player, GameObject* pGo, const Quest* pQuest)
{
    if (!player)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40107 || pQuest->GetQuestId() == 40115) //Gate Keeper  //Guardian of the Gate
    {
        if (sWorld.GetContentPhase() < CONTENT_PHASE_2)
            return false;

        if (!player->HasItemCount(ITEM_ULDUM_FIRST_PLATE, 1))
        {
            if (player->AddItem(ITEM_ULDUM_FIRST_PLATE))
                first_item_added = true;
        }
        else
            first_item_added = true;

        if (!player->HasItemCount(ITEM_ULDUM_SECOND_PLATE, 1))
        {
            if (player->AddItem(ITEM_ULDUM_SECOND_PLATE))
                second_item_added = true;
        }
        else
            second_item_added = true;

        if (!first_item_added || !second_item_added || ((lastOstariusSummonTime + 7 * DAY) > sWorld.GetGameTime()))
        {
            player->RemoveQuest(40107);
            player->RemoveQuest(40115);
            player->SetQuestStatus(40107, QUEST_STATUS_NONE);
            player->SetQuestStatus(40115, QUEST_STATUS_NONE);
            player->GetSession()->SendNotification("Your bags are full!");
            return false;
        }

        // Summon pedestal NPC to start encounter RP phase.
        if (Creature* c = pGo->SummonCreature(80970, -9619.19f, -2815.02f, 10.8949f, 2.23f, TEMPSUMMON_TIMED_COMBAT_OR_DEAD_DESPAWN, 120000))
        {
            lastOstariusSummonTime = sWorld.GetGameTime();

            if (auto pedestalAI = dynamic_cast<npc_uldum_pedestalAI*>(c->AI()))
                pedestalAI->Start();
            // If vanilla quest line NPC is on-top of the pedestal, despawn him.
            if (auto stoneWatcher = pGo->FindNearestCreature(STONE_WATCHER_OF_NORGANNON, 10.f, true))
                stoneWatcher->DeleteLater();

            c->SetInCombatWith(player); // Used to pass along event invoker.
            pGo->UseDoorOrButton();
        }
    }
    return false;
}


void AddSC_boss_ostarius()
{
    Script* newscript{};
    newscript = new Script;
    newscript->Name = "boss_ostarius";
    newscript->GetAI = &GetAI_boss_ostarius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_uldum_construct";
    newscript->GetAI = &GetAI_mob_uldum_construct;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_uldum_sentry";
    newscript->GetAI = &GetAI_mob_uldum_sentry;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_uldum_portal";
    newscript->GOOpen = &GOOpen_go_uldum_portal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_uldum_suppression";
    newscript->GOGetAI = &GetAIgo_uldum_suppression;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_uldum_pedestal";
    newscript->GetAI = &GetAI_npc_uldum_pedestal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "GO_pedestal_of_uldum";
    newscript->pGOGossipHello = &GossipHelloGO_pedestal_of_uldum;
    newscript->pGOGossipSelect = &GossipSelectGO_pedestal_of_uldum;
    newscript->pGOQuestAccept = &QuestAcceptGO_pedestal_of_uldum;
    newscript->RegisterSelf();

}
