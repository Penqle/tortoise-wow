#include "scriptPCH.h"
#include "emerald_sanctum.h"
#include <random>

enum Misc
{
    MOVEMENT_TO_HOME_AND_SLEEP = 1,
    SPELL_SLEEP_VISUAL = 25148,
    GO_PORTAL = 177243,
    SPELL_TELEPORT_VISUAL = 26638
};

enum Events
{
    EVENT_TRANSFORM_TO_DRAGON = 1,
    EVENT_GO_TO_SLEEP,
    EVENT_WAKE_UP,
    EVENT_SPAWN_PORTALS,
};

enum Phase
{
    PHASE_1 = 1,
    PHASE_2,
};

static float portals[3][5] =
{
    { 0.0f, 3334.91f, 3054.15f, 24.55f, 3.35f },
    { 0.0f, 3329.90f, 3040.71f, 25.95f, 3.09f },
    { 0.0f, 3324.80f, 3026.90f, 25.27f, 2.35f },
};

static float majorCreatures[4][1] =
{
    { NPC_SANCTUM_DRAGONKIN },
    { NPC_SANCTUM_WYRMKIN },
    { NPC_SANCTUM_SCALEBANE },
    { NPC_SANCTUM_SUPRESSOR },
};

struct boss_solniusAI : public ScriptedAI
{
    boss_solniusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;
    uint32 m_uiCorrosiveBoltTimer;
    uint32 m_uiEmeraldRotTimer;
    uint32 m_uiAcidBreathTimer;
    uint32 m_uiGimmickTimer;
    uint32 m_uiCallOfNightmareTimer;
    uint32 m_uiExpulsionOfCorruptionTimer;
    GuidList m_mSummonedMajorCreature;
    GuidList m_mSummonedMinorCreature;
    GuidList m_mSummonedPortals;

    std::vector<Player*> randomPlayers;
    EventMap events;
    Phase phase;
    bool m_bIsHardMode;

    void DespawnHelpers()
    {
        for (auto& helper1GUID : m_mSummonedMajorCreature)
        {
            if (Creature* helper1 = m_creature->GetMap()->GetCreature(helper1GUID))
            {
                helper1->DespawnOrUnsummon(5000);
            }
        }

        for (auto& helper2GUID : m_mSummonedMinorCreature)
        {
            if (Creature* helper2 = m_creature->GetMap()->GetCreature(helper2GUID))
            {
                helper2->DespawnOrUnsummon(5000);
            }
        }
    }

    void DespawnPortals()
    {
        for (auto& portalGUID : m_mSummonedPortals)
        {
            if (GameObject* portal = m_pInstance->GetMap()->GetGameObject(portalGUID))
            {
                portal->Delete();
            }
        }
    }

    void Reset() override
    {
        m_uiCorrosiveBoltTimer = 6 * IN_MILLISECONDS;
        m_uiEmeraldRotTimer = 15 * IN_MILLISECONDS;
        m_uiAcidBreathTimer = 15 * IN_MILLISECONDS;
        m_uiGimmickTimer = 27 * IN_MILLISECONDS;
        m_uiCallOfNightmareTimer = 6 * IN_MILLISECONDS;
        m_uiExpulsionOfCorruptionTimer = 17 * IN_MILLISECONDS;
        m_bIsHardMode = false;
        randomPlayers.clear();
        phase = PHASE_1;
        events.Reset();
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE_2);
        m_creature->SetFactionTemplateId(7);
        m_creature->SetDisplayId(m_creature->GetNativeDisplayId());
        m_creature->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_ATTACK_ME, false);
        m_creature->ApplySpellImmune(0, IMMUNITY_STATE, SPELL_AURA_MOD_TAUNT, false);
        DespawnHelpers();
        DespawnPortals();
        m_mSummonedMajorCreature.clear();
        m_mSummonedMinorCreature.clear();
        m_mSummonedPortals.clear();
        m_creature->RemoveAllAuras();
        m_creature->ClearUnitState(UNIT_STAT_CAN_NOT_MOVE);
        if (m_pInstance)
            m_pInstance->SetData(DATA_SOLNIUS, NOT_STARTED);
    }

    std::vector<Player*> GetRandomPlayers(Map::PlayerList const& playerList, int8 count)
    {
        randomPlayers.clear();
        for (const auto& itr : playerList)
        {
            if (Player* pPlayer = itr.getSource())
            {
                randomPlayers.push_back(pPlayer);
            }
        }

        auto seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::shuffle(randomPlayers.begin(), randomPlayers.end(), std::default_random_engine(seed));

        if (randomPlayers.size() < count)
        {
            randomPlayers.resize(randomPlayers.size());
        }
        else
        {
            randomPlayers.resize(count);
        }

        return randomPlayers;
    }

    void EnterCombat(Unit* pWho) override
    {
        if (m_creature->GetMapId() != 807)
            return;

        if (instance_emerald_sanctum* pInstance = dynamic_cast<instance_emerald_sanctum*>(m_pInstance))
        {
            for (auto& helperGUID : pInstance->GetTrashGUID())
            {
                if (Creature* pCreature = m_pInstance->GetCreature(helperGUID))
                {
                    pCreature->AI()->AttackStart(pWho);
                }
            }
        }

        if (Creature* pErennius = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_ERENNIUS)))
        {
            if (pErennius->IsAlive())
            {
                m_bIsHardMode = true;
                pErennius->SetInCombatWithZone();
                me->SetInCombatWithZone();
                pErennius->AI()->AttackStart(pWho);
            }
        }

        if (m_pInstance)
            m_pInstance->SetData(DATA_SOLNIUS, IN_PROGRESS);

        events.ScheduleEvent(EVENT_TRANSFORM_TO_DRAGON, Seconds(12));
    }

    void JustDied(Unit* pWho)
    {
        m_creature->MonsterYell(30171);
        m_creature->PlayDirectSound(SOLNIUS_SAY_SOUND_3);

        if (m_pInstance)
            m_pInstance->SetData(DATA_SOLNIUS, DONE);

        if (Creature* pErennius = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_ERENNIUS)))
        {
            if (pErennius->IsAlive() && pErennius->IsInCombat())
            {
                pErennius->MonsterYell(30174);
                pErennius->DeleteThreatList();
                pErennius->CombatStop(true);
                pErennius->SetReactState(REACT_PASSIVE);
                pErennius->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE_2);
                pErennius->SetFactionTemplateId(7);
                pErennius->DespawnOrUnsummon(20000);
                pErennius->SummonGameObject(GO_ERRENIUS_CHEST, 3276.224f, 3043.9492f, 27.1176f, 6.2332f, 0, 0, 0, 0, 0);
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        events.Update(uiDiff);
        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_TRANSFORM_TO_DRAGON:
                    if (m_creature->GetDisplayId() != MODEL_DRAGON && m_creature->HealthBelowPct(90))
                    {
                        m_creature->SetDisplayId(MODEL_DRAGON);
                        m_creature->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_ATTACK_ME, true);
                        m_creature->ApplySpellImmune(0, IMMUNITY_STATE, SPELL_AURA_MOD_TAUNT, true);
                        if (m_creature->GetThreatManager().getThreat(m_creature->GetVictim()))
                        {
                            m_creature->GetThreatManager().modifyThreatPercent(m_creature->GetVictim(), -100);
                            Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
                            if (!playerList.isEmpty())
                            {
                                for (Player* pPlayer : GetRandomPlayers(playerList, 1))
                                {
                                    m_creature->AddThreat(pPlayer, 10);
                                }
                            }
                        }
                        events.ScheduleEvent(EVENT_GO_TO_SLEEP, Seconds(12));
                        phase = PHASE_2;
                    }
                    else
                    {
                        events.Repeat(Milliseconds(100));
                    }
                    break;
                case EVENT_GO_TO_SLEEP:
                    if (m_creature->GetStandState() != UNIT_STAND_STATE_SLEEP && m_creature->HealthBelowPct(60))
                    {
                        SetCombatMovement(false);
                        m_creature->SetReactState(REACT_PASSIVE);
                        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE_2);

                        auto homePos = m_creature->GetHomePosition();

                        //anti-cheese tp instead of RP walk, takes too long.
                        if (m_creature->GetDistance(homePos) > 50.f)
                        {
                            DoCastSpellIfCan(m_creature, SPELL_TELEPORT_VISUAL);
                            m_creature->NearTeleportTo(homePos);
                            GoSleep();
                        }
                        else
                            m_creature->GetMotionMaster()->MovePoint(MOVEMENT_TO_HOME_AND_SLEEP, m_creature->GetHomePosition().x, m_creature->GetHomePosition().y, m_creature->GetHomePosition().z, MOVE_PATHFINDING, MOVE_WALK_MODE, m_creature->GetHomePosition().o);
                    }
                    else
                    {
                        events.Repeat(Seconds(12));
                    }
                    break;
                case EVENT_WAKE_UP:
                    if (m_creature->HasAura(SPELL_SLEEP_VISUAL))
                    {
                        m_creature->RemoveAurasDueToSpell(SPELL_SLEEP_VISUAL);
                        SetCombatMovement(true);
                        m_creature->SetReactState(REACT_AGGRESSIVE);
                        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE_2);
                        m_creature->ClearUnitState(UNIT_STAT_CAN_NOT_MOVE);
                        m_creature->SetStandState(UNIT_STAND_STATE_STAND);
                        m_creature->SetReactState(REACT_AGGRESSIVE);
                        Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
                        if (!playerList.isEmpty())
                        {
                            for (Player* pPlayer : GetRandomPlayers(playerList, 1))
                            {
                                m_creature->AI()->AttackStart(pPlayer);
                            }
                        }
                        m_uiEmeraldRotTimer = 30 * IN_MILLISECONDS;
                    }
                    break;
                case EVENT_SPAWN_PORTALS:
                    {
                        Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
                        if (m_mSummonedPortals.empty())
                        {
                            for (auto const& portal : portals)
                            {
                                m_creature->SummonGameObject(GO_PORTAL, portal[1], portal[2], portal[3], portal[4], 0, 0, 0, 0, 0);

                                std::random_device rd;
                                std::mt19937 gen(rd());
                                std::uniform_int_distribution<> dis(0, 3);
                                int uiCreatureId = dis(gen);

                                float randomCreature = majorCreatures[uiCreatureId][0];

                                if (Creature* summonedCreature1 = m_creature->SummonCreature(randomCreature, portal[1], portal[2], portal[3], portal[4], TEMPSUMMON_DEAD_DESPAWN, 300000))
                                {
                                    if (!playerList.isEmpty())
                                    {
                                        for (Player* pPlayer : GetRandomPlayers(playerList, 1))
                                        {
                                            summonedCreature1->AI()->AttackStart(pPlayer);
                                        }
                                    }
                                }

                                if (Creature* summonedCreature2 = m_creature->SummonCreature(NPC_SANCTUM_DREAMER, portal[1], portal[2], portal[3], portal[4], TEMPSUMMON_DEAD_DESPAWN, 300000))
                                {
                                    if (!playerList.isEmpty())
                                    {
                                        for (Player* pPlayer : GetRandomPlayers(playerList, 1))
                                        {
                                            summonedCreature2->AI()->AttackStart(pPlayer);
                                        }
                                    }
                                }
                            }
                            events.Repeat(Seconds(30));
                        }
                        else
                        {
                            if (!m_mSummonedMajorCreature.empty())
                            {

                                for (std::size_t i = 0; i < 3; i++)
                                {
                                    auto const& portal = portals[i];

                                    if (i == 0 || i == 2)
                                    {
                                        if (Creature* summonedCreature = m_creature->SummonCreature(NPC_SANCTUM_DREAMER, portal[1], portal[2], portal[3], portal[4], TEMPSUMMON_DEAD_DESPAWN, 300000))
                                        {
                                            if (!playerList.isEmpty())
                                            {
                                                for (Player* pPlayer : GetRandomPlayers(playerList, 1))
                                                {
                                                    summonedCreature->AI()->AttackStart(pPlayer);
                                                }
                                            }
                                        }
                                    }
                                }
                                events.Repeat(Seconds(30));
                            }

                        }
                    }
                    break;
            }
        }

        if ((!m_creature->SelectHostileTarget() || !m_creature->GetVictim()))
            return;

        if (m_uiCallOfNightmareTimer < uiDiff)
        {
            Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

            if (DoCastSpellIfCan(target, SPELL_CALL_OF_NIGHTMARE) == CAST_OK)
                m_uiCallOfNightmareTimer = 6 * IN_MILLISECONDS;
        }
        else
            m_uiCallOfNightmareTimer -= uiDiff;

        if (m_bIsHardMode)
        {
            if (m_uiExpulsionOfCorruptionTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_EXPULSION_OF_CORRUPTION) == CAST_OK)
                    m_uiExpulsionOfCorruptionTimer = 17 * IN_MILLISECONDS;
            }
            else
                m_uiExpulsionOfCorruptionTimer -= uiDiff;
        }

        switch (phase)
        {
            case PHASE_2:
                if (m_uiAcidBreathTimer < uiDiff)
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ACID_BREATH) == CAST_OK)
                        m_uiAcidBreathTimer = 15 * IN_MILLISECONDS;
                }
                else
                    m_uiAcidBreathTimer -= uiDiff;

                if (m_uiGimmickTimer < uiDiff)
                {
                    Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
                    if (!playerList.isEmpty())
                    {
                        for (Player* pPlayer : GetRandomPlayers(playerList, 2))
                        {
                            m_creature->CastSpell(pPlayer, SPELL_BANE_OF_ERANIKUS, true);
                        }
                        for (Player* pPlayer : GetRandomPlayers(playerList, 2))
                        {
                            m_creature->CastSpell(pPlayer, SPELL_SANCTUM_MIND_DECAY, true);
                        }
                        for (Player* pPlayer : GetRandomPlayers(playerList, 2))
                        {
                            m_creature->CastSpell(pPlayer, SPELL_DREAMFEVER, true);
                        }
                        for (Player* pPlayer : GetRandomPlayers(playerList, 2))
                        {
                            m_creature->CastSpell(pPlayer, SPELL_EMERALD_INSTABILITY, true);
                        }
                        m_uiGimmickTimer = 27 * IN_MILLISECONDS;
                    }
                }
                else
                    m_uiGimmickTimer -= uiDiff;

                if (m_creature->HealthBelowPct(40))
                {
                    if (m_uiEmeraldRotTimer < uiDiff)
                    {
                        Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
                        if (!playerList.isEmpty())
                        {
                            for (Player* pPlayer : GetRandomPlayers(playerList, 4))
                            {
                                DoCastSpellIfCan(pPlayer, SPELL_EMERALD_ROT);
                            }
                            m_uiEmeraldRotTimer = 30 * IN_MILLISECONDS;
                        }
                    }
                    else
                        m_uiEmeraldRotTimer -= uiDiff;
                }
                break;
            default:
                if (m_uiCorrosiveBoltTimer < uiDiff)
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CORROSIVE_BOLT) == CAST_OK)
                        m_uiCorrosiveBoltTimer = 6 * IN_MILLISECONDS;
                }
                else
                    m_uiCorrosiveBoltTimer -= uiDiff;

                if (m_uiEmeraldRotTimer < uiDiff)
                {
                    Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
                    if (!playerList.isEmpty())
                    {
                        for (Player* pPlayer : GetRandomPlayers(playerList, 8))
                        {
                            DoCastSpellIfCan(pPlayer, SPELL_EMERALD_ROT);
                        }
                        m_uiEmeraldRotTimer = 15 * IN_MILLISECONDS;
                    }
                }
                else
                    m_uiEmeraldRotTimer -= uiDiff;
                break;
        }

        DoMeleeAttackIfReady();
    }

    void GoSleep()
    {
        m_creature->AttackStop();
        m_creature->RemoveAllAttackers();
        m_creature->MonsterYell(30170);
        m_creature->PlayDirectSound(SOLNIUS_SAY_SOUND_2);
        m_creature->AddAura(SPELL_SLEEP_VISUAL);
        m_creature->SetStandState(UNIT_STAND_STATE_SLEEP);
        m_creature->AddUnitState(UNIT_STAT_CAN_NOT_MOVE);
        events.ScheduleEvent(EVENT_WAKE_UP, Seconds(45));
        events.ScheduleEvent(EVENT_SPAWN_PORTALS, Seconds(5));
    }

    void MovementInform(uint32 uiMotionType, uint32 uiPointId) override
    {
        if (!(uiMotionType == POINT_MOTION_TYPE || uiMotionType == EFFECT_MOTION_TYPE))
        {
            return;
        }

        switch (uiPointId)
        {
            case MOVEMENT_TO_HOME_AND_SLEEP:
                GoSleep();
                break;
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        switch (pSummoned->GetEntry())
        {
            case NPC_SANCTUM_DRAGONKIN:
            case NPC_SANCTUM_WYRMKIN:
            case NPC_SANCTUM_SCALEBANE:
            case NPC_SANCTUM_SUPRESSOR:
                m_mSummonedMajorCreature.push_back(pSummoned->GetObjectGuid());
                break;
            case NPC_SANCTUM_DREAMER:
                m_mSummonedMinorCreature.push_back(pSummoned->GetObjectGuid());
                break;
        }
    }

    void JustSummoned(GameObject* pGoSummoned) override
    {
        switch (pGoSummoned->GetEntry())
        {
            case GO_PORTAL:
                m_mSummonedPortals.push_back(pGoSummoned->GetObjectGuid());
                break;
        }
    }

    void SummonedCreatureJustDied(Creature* pSummoned) override
    {
        switch (pSummoned->GetEntry())
        {
            case NPC_SANCTUM_DRAGONKIN:
            case NPC_SANCTUM_WYRMKIN:
            case NPC_SANCTUM_SCALEBANE:
            case NPC_SANCTUM_SUPRESSOR:
                m_mSummonedMajorCreature.remove(pSummoned->GetObjectGuid());
                break;
            case NPC_SANCTUM_DREAMER:
                m_mSummonedMinorCreature.remove(pSummoned->GetObjectGuid());
                break;
        }

        if (m_mSummonedMajorCreature.empty())
        {
            DespawnPortals();
        }
    }
};

CreatureAI* GetAI_boss_solnius(Creature* pCreature)
{
    return new boss_solniusAI(pCreature);
}

#define GOSSIP_ITEM_START_FIGHT "I have come to put an end to you, and stop this ritual."

bool GossipHello_boss_solnius(Player* pPlayer, Creature* pCreature)
{
    if (ScriptedInstance* pInstance = (ScriptedInstance*)pCreature->GetInstanceData())
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_START_FIGHT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        
        pPlayer->SEND_GOSSIP_MENU(92950, pCreature->GetObjectGuid());
    }

    return true;
}

bool GossipSelect_boss_solnius(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    switch (uiAction)
    {
        case GOSSIP_ACTION_INFO_DEF + 1:
        {
            if (ScriptedInstance* pInstance = (ScriptedInstance*)pCreature->GetInstanceData())
                if (Creature* boss_solnius = pInstance->GetCreature(pInstance->GetData64(DATA_SOLNIUS)))
                {
                    boss_solnius->MonsterYell(30169);
                    boss_solnius->PlayDirectSound(SOLNIUS_SAY_SOUND_1);
                    boss_solnius->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE_2);
                    boss_solnius->SetFactionTemplateId(14);
                    pPlayer->CLOSE_GOSSIP_MENU();
                }
        }
    }

    return true;
}

void AddSC_boss_solnius()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "boss_solnius";
    newscript->GetAI = &GetAI_boss_solnius;
    newscript->pGossipHello = &GossipHello_boss_solnius;
    newscript->pGossipSelect = &GossipSelect_boss_solnius;
    newscript->RegisterSelf();
}