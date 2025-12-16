#include "scriptPCH.h"
#include "HardcodedEvents.h"
#include <array>

enum
{
    // Quests:
    QUEST_GOBLIN_TEST_RACE = 50310,
    QUEST_GNOME_TEST_RACE = 50312,
    QUEST_GOBLIN_REAL_RACE = 50311,
    QUEST_GNOME_REAL_RACE = 50313,
    QUEST_RACE_AGAINST_TIME = 50316,

    // Spells:
    SPELL_SALT_FLATS_RACE_SLOW = 6601,
    SPELL_SALT_FLATS_RACE_SPEED = 6600,
    SPELL_DAMAGE_CAR = 7084,
    SPELL_EXPLOSIVE_SHEEP_PASSIVE = 4051,
    SPELL_EXPLOSIVE_SHEEP = 4050,
    SPELL_BOMB = 5134,
    SPELL_GNOME_CAR = 50061,
    SPELL_GOBLIN_CAR = 50062,
    SPELL_ROOT_SELF = 20548,
    SPELL_SELF_EXPLOSION = 5162,

    // GameObjects:
    GO_CHECKPOINT = 1000039,

    // Races
    RACE_REAL = 1,
    RACE_TEST = 2,

    // Misc:
    ALREADY_REGISTERED_TXTID = 50212,
    MUSIC_RACE = 30215,
};

constexpr float SheepAcceptanceRadius = 4.4f;
constexpr float SheepAcceptanceRadiusSqr = SheepAcceptanceRadius * SheepAcceptanceRadius;

inline std::pair<uint32, uint32> GetQuestsForRace(uint32 raceId)
{
    switch (raceId)
    {
        case RACE_REAL:
            return { QUEST_GOBLIN_REAL_RACE, QUEST_GNOME_REAL_RACE };
        case RACE_TEST:
            return { QUEST_GOBLIN_TEST_RACE, QUEST_GNOME_TEST_RACE };
    }
    return {};
}

inline uint32 GetMountForRacer(Player* pPlayer, uint32 raceId)
{
    auto quests = GetQuestsForRace(raceId);

    if (pPlayer->GetQuestStatus(quests.first) == QUEST_STATUS_INCOMPLETE)
        return SPELL_GOBLIN_CAR;

    return SPELL_GNOME_CAR;
}

struct RaceCheckpoint
{
    uint32 Id;
    Position pos;
    Position camPos;
};

struct RaceCreature
{
    uint32 entry;
    Position pos;
    uint8 chance;
};

struct RaceGameobject
{
    uint32 entry;
    Position pos;
    uint8 chance;
};

static std::map<uint32 /*raceId*/, std::vector<RaceCheckpoint>> racesCheckpoints;
static std::map<uint32 /*raceId*/, std::vector< RaceCreature>> racesCreatures;
static std::map<uint32 /*raceId*/, std::vector< RaceGameobject>> racesGameobjects;

static std::map<uint32 /*raceId*/, ObjectGuidSet /*players*/> g_raceGuids;

static std::map<uint32 /*raceId*/, std::map<ObjectGuid /*player*/, std::vector<bool>>> g_raceCheckpoints;

static std::map<uint32 /*npcGuid*/, uint32 /*raceId*/> g_startedRaces;

static uint32 GetStartedRaceForManager(uint32 guid)
{
    auto itr = g_startedRaces.find(guid);
    if (itr == g_startedRaces.end())
        return 0;

    return itr->second;
}

static bool IsPlayerQueuedForRace(Player* pPlayer)
{
    for (auto const& itrRace : g_raceGuids)
    {
        if (itrRace.second.find(pPlayer->GetObjectGuid()) != itrRace.second.end())
            return true;
    }

    return false;
}

struct go_race_checkpoint : public GameObjectAI
{
    explicit go_race_checkpoint(GameObject* pGo) : GameObjectAI(pGo)
    {
    }

    uint32 m_point = 0;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (g_startedRaces.empty())
        {
            // printf("Remove point %u\n", m_point);
            me->AddObjectToRemoveList();
            return;
        }

        for (auto const& itr : g_startedRaces)
        {
            uint32 const raceId = itr.second;

            for (auto& itr2 : g_raceCheckpoints[raceId])
            {
                if (Player* pRacer = me->GetMap()->GetPlayer(itr2.first))
                {
                    if (pRacer->IsWithinDist(me, 15.0f) &&
                        itr2.second[m_point] == false)
                    {
                        printf("%s reaches point %u\n", pRacer->GetName(), m_point);
                        me->DestroyForPlayer(pRacer);
                        itr2.second[m_point] = true;
                    }
                }
            }
        }
        

        GameObjectAI::UpdateAI(uiDiff);
    }
};

GameObjectAI* GetAI_go_race_checkpoint(GameObject* gameobject)
{
    return new go_race_checkpoint(gameobject);
}

struct npc_race_manager : public ScriptedAI
{
    npc_race_manager(Creature* InCreature, uint32 raceId, uint32 requiredPlayers) : ScriptedAI(InCreature)
    {
        m_raceId = raceId;
        m_requiredPlayers = requiredPlayers;
        LoadRacesFromDb();
    }

    uint32 m_raceId = 0;
    uint32 m_requiredPlayers = 2;

    void LoadRacesFromDb()
    {
        racesCheckpoints[m_raceId].clear();
        racesCreatures[m_raceId].clear();
        racesGameobjects[m_raceId].clear();

        // load waypoints
        QueryResult* raceData = WorldDatabase.PQuery("SELECT `raceid`, `id`, `positionx`, `positiony`, `positionz`, `cameraposx`, `cameraposy`, `cameraposz`"
            "FROM `miraclerace_checkpoint` WHERE `raceid` = %u ORDER BY `id` ASC", m_raceId);

        if (raceData == nullptr)
        {
            sLog.outError("Can't initialize race data");
            return;
        }

        Field* fields = raceData->Fetch();
        do
        {
            uint32 raceId = fields[0].GetUInt32();

            uint32 id = fields[1].GetUInt32();
            float PosX = fields[2].GetFloat();
            float PosY = fields[3].GetFloat();
            float PosZ = fields[4].GetFloat();
            float CameraPosX = fields[5].GetFloat();
            float CameraPosY = fields[6].GetFloat();
            float CameraPosZ = fields[7].GetFloat();
            Position Pos(PosX, PosY, PosZ, 0.0f);
            Position CameraPos(CameraPosX, CameraPosY, CameraPosZ, 0.0f);

            racesCheckpoints[raceId].emplace_back(RaceCheckpoint{ id , Pos, CameraPos });
        } while (raceData->NextRow());

        delete raceData; raceData = nullptr;

        // load creatures
        raceData = WorldDatabase.PQuery("SELECT `raceid`, `entry`, `chance`, `positionx`, `positiony`, `positionz`"
            "FROM `miraclerace_creaturespool` WHERE `raceid` = %u", m_raceId);

        if (raceData != nullptr)
        {
            fields = raceData->Fetch();

            do
            {
                uint32 raceId = fields[0].GetUInt32();
                uint32 entry = fields[1].GetUInt32();
                uint32 chance = fields[2].GetUInt32();
                chance = std::min(chance, 100u);
                float PosX = fields[3].GetFloat();
                float PosY = fields[4].GetFloat();
                float PosZ = fields[5].GetFloat();
                Position pos(PosX, PosY, PosZ, 0.0f);

                racesCreatures[raceId].emplace_back(RaceCreature{ entry, pos, uint8(chance) });
            } while (raceData->NextRow());
        }

        delete raceData; raceData = nullptr;

        // load gameobjects
        raceData = WorldDatabase.PQuery("SELECT `raceid`, `entry`, `chance`, `positionx`, `positiony`, `positionz`"
            "FROM `miraclerace_gameobject` WHERE `raceid` = %u", m_raceId);

        if (raceData != nullptr)
        {
            fields = raceData->Fetch();

            do
            {
                uint32 raceId = fields[0].GetUInt32();
                uint32 entry = fields[1].GetUInt32();
                uint32 chance = fields[2].GetUInt32();
                chance = std::min(chance, 100u);
                float PosX = fields[3].GetFloat();
                float PosY = fields[4].GetFloat();
                float PosZ = fields[5].GetFloat();
                Position pos(PosX, PosY, PosZ, 0.0f);

                racesGameobjects[raceId].emplace_back(RaceGameobject{ entry, pos, uint8(chance) });
            } while (raceData->NextRow());
        }

        delete raceData; raceData = nullptr;
    }

    uint32 m_countdownTimer = 0;
    uint32 m_countdownCount = 0;

    void Reset() override
    {
    }

    void SpawnRaceObjects(uint32 raceId)
    {
        for (uint32 i = 1; i < racesCheckpoints[raceId].size(); i++)
        {
            RaceCheckpoint const& point = racesCheckpoints[raceId][i];
            if (GameObject* pGo = m_creature->SummonGameObject(GO_CHECKPOINT, point.pos.x, point.pos.y, point.pos.z, point.pos.o))
                if (go_race_checkpoint* pAI = dynamic_cast<go_race_checkpoint*>(pGo->AI()))
                    pAI->m_point = i;
        }

        for (auto const& itr : racesCreatures[raceId])
        {
            if (roll_chance_u(itr.chance))
            {
                m_creature->SummonCreature(itr.entry, itr.pos.x, itr.pos.y, itr.pos.z, itr.pos.o, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 300000, true);
            }
        }

        for (auto const& itr : racesGameobjects[raceId])
        {
            if (roll_chance_u(itr.chance))
            {
                m_creature->SummonGameObject(itr.entry, itr.pos.x, itr.pos.y, itr.pos.z, itr.pos.o);
            }
        }
    }

    void StartRace(uint32 raceId)
    {
        g_startedRaces[m_creature->GetGUIDLow()] = raceId;
        g_raceCheckpoints[raceId].clear();

        uint32 count = 1;
        for (auto const& guid : g_raceGuids[raceId])
        {
            g_raceCheckpoints[raceId][guid].resize(racesCheckpoints[raceId].size());
            g_raceCheckpoints[raceId][guid][0] = true; // skip start point

            RaceCheckpoint const& startPoint = racesCheckpoints[raceId][0];
            Player* pRacer = m_creature->GetMap()->GetPlayer(guid);
            pRacer->CombatStop(true);
            pRacer->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
            pRacer->RemoveSpellsCausingAura(SPELL_AURA_TRANSFORM);
            pRacer->CastSpell(pRacer, GetMountForRacer(pRacer, raceId), true);
            pRacer->NearLandTo(startPoint.pos.x, startPoint.pos.y + (count % 2 != 0 ? 2 : -2), startPoint.pos.z, M_PI_F * raceId);
            pRacer->AddAura(SPELL_ROOT_SELF);
            pRacer->GetSession()->SendAreaTriggerMessage("THREE");
            pRacer->PlayDirectMusic(MUSIC_RACE);
            count++;
        }

        SpawnRaceObjects(raceId);
        m_countdownTimer = 3000;
    }

    void EndRace(uint32 raceId, bool completeQuest)
    {
        m_creature->MonsterYell("The race has ended!");

        MANGOS_ASSERT(g_startedRaces[m_creature->GetGUIDLow()] == raceId);
        g_startedRaces.erase(m_creature->GetGUIDLow());

        for (auto const& guid : g_raceGuids[raceId])
        {
            if (Player* pRacer = m_creature->GetMap()->GetPlayer(guid))
            {
                if (completeQuest && pRacer->HasAura(GetMountForRacer(pRacer, raceId)))
                {
                    auto quests = GetQuestsForRace(raceId);
                    pRacer->AreaExploredOrEventHappens(quests.first);
                    pRacer->AreaExploredOrEventHappens(quests.second);
                }

                pRacer->RemoveAurasDueToSpell(SPELL_GNOME_CAR);
                pRacer->RemoveAurasDueToSpell(SPELL_GOBLIN_CAR);
                pRacer->RemoveAurasDueToSpell(SPELL_ROOT_SELF);
            }
        }
        g_raceGuids[raceId].clear();
        g_raceCheckpoints[raceId].clear();
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        uint32 const startedRace = GetStartedRaceForManager(m_creature->GetGUIDLow());

        // Check if we can start a race
        if (!startedRace)
        {
            ObjectGuidSet& racers = g_raceGuids[m_raceId];

            // Remove players not on map from queue
            for (auto itr = racers.begin(); itr != racers.end();)
            {
                if ((*itr).IsEmpty() || !m_creature->GetMap()->GetPlayer((*itr)))
                    itr = racers.erase(itr);
                else
                    ++itr;
            }

            if (racers.size() >= m_requiredPlayers)
                StartRace(m_raceId);
        }
        else
        {
            MANGOS_ASSERT(m_raceId == startedRace);
            ObjectGuidSet& racers = g_raceGuids[startedRace];

            for (auto const& guid : racers)
            {
                Player* pRacer = m_creature->GetMap()->GetPlayer(guid);
                if (!pRacer || !pRacer->IsAlive())
                {
                    EndRace(startedRace, false);
                    return;
                }

                if (!pRacer->HasAura(SPELL_GNOME_CAR) && !pRacer->HasAura(SPELL_GOBLIN_CAR))
                {
                    m_creature->MonsterYell("$n cancelled the race!", 0, pRacer);
                    EndRace(startedRace, false);
                    return;
                }
            }

            if (m_countdownTimer)
            {
                if (m_countdownTimer < uiDiff)
                    m_countdownTimer = 0;
                else
                    m_countdownTimer -= uiDiff;

                switch (m_countdownCount)
                {
                    case 0:
                    {
                        if (m_countdownTimer <= 2000)
                        {
                            for (auto const& guid : racers)
                            {
                                Player* pRacer = m_creature->GetMap()->GetPlayer(guid);
                                pRacer->GetSession()->SendAreaTriggerMessage("TWO");
                            }
                            m_countdownCount++;
                        }
                        break;
                    }
                    case 1:
                    {
                        if (m_countdownTimer <= 1000)
                        {
                            for (auto const& guid : racers)
                            {
                                Player* pRacer = m_creature->GetMap()->GetPlayer(guid);
                                pRacer->GetSession()->SendAreaTriggerMessage("ONE");
                            }
                            m_countdownCount++;
                        }
                        break;
                    }
                    case 2:
                    {
                        if (m_countdownTimer <= 0)
                        {
                            for (auto const& guid : racers)
                            {
                                Player* pRacer = m_creature->GetMap()->GetPlayer(guid);
                                pRacer->GetSession()->SendAreaTriggerMessage("THE RACE HAS BEGUN");
                            }
                            m_countdownCount++;
                        }
                        break;
                    }
                }
            }

            bool hasWinner = false;
            for (auto const& itr : g_raceCheckpoints[m_raceId])
            {
                bool winner = true;
                for (auto const& itr2 : itr.second)
                {
                    if (!itr2)
                    {
                        winner = false;
                        break;
                    }
                }

                if (winner)
                {
                    hasWinner = true;
                    if (Player* pRacer = m_creature->GetMap()->GetPlayer(itr.first))
                    {
                        m_creature->MonsterYell("$n has won the race!", 0, pRacer);
                        pRacer->AreaExploredOrEventHappens(QUEST_RACE_AGAINST_TIME);
                    }
                }
            }

            if (hasWinner)
                EndRace(startedRace, true);
        }

        ScriptedAI::UpdateAI(uiDiff);
    }

};

#define GOSSIP_ACTION_JOIN_GOBLIN (GOSSIP_ACTION_INFO_DEF + 1)
#define GOSSIP_ACTION_JOIN_GNOME (GOSSIP_ACTION_INFO_DEF + 2)
#define GOSSIP_ACTION_LEAVE_QUEUE (GOSSIP_ACTION_INFO_DEF + 3)

enum
{
    NPC_TEXT_DAISY_DEFAULT   = 90250,
    NPC_TEXT_DOLORES_DEFAULT = 90251,
    NPC_TEXT_WAITING_GOBLIN  = 90255,
    NPC_TEXT_WAITING_GNOME   = 90256,
    NPC_TEXT_RACE_STARTED    = 90257,
};

bool GossipHello_npc_daisy(Player* pPlayer, Creature* pCreature)
{
    uint32 textId = NPC_TEXT_DAISY_DEFAULT;

    if (!GetStartedRaceForManager(pCreature->GetGUIDLow()))
    {
        if (!IsPlayerQueuedForRace(pPlayer))
        {
            if (g_raceGuids[RACE_REAL].size() < 2)
            {
                if (pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE) &&
                    pPlayer->GetQuestStatus(QUEST_GOBLIN_REAL_RACE) == QUEST_STATUS_INCOMPLETE)
                {
                    textId = NPC_TEXT_WAITING_GOBLIN;
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join the Goblin's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GOBLIN);
                }

                if (pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE) &&
                    pPlayer->GetQuestStatus(QUEST_GNOME_REAL_RACE) == QUEST_STATUS_INCOMPLETE)
                {
                    textId = NPC_TEXT_WAITING_GNOME;
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join the Gnome's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GNOME);
                }
            }
            else
            {
                textId = NPC_TEXT_RACE_STARTED;
            }
        }

        if ((pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE) || pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE)) &&
            g_raceGuids[RACE_REAL].find(pPlayer->GetObjectGuid()) != g_raceGuids[RACE_REAL].end())
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to leave the race queue.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_LEAVE_QUEUE);
        }
    }

    if (pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE))
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE))
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(textId, pCreature->GetGUID());
  
    return true;
}

bool GossipSelect_npc_daisy(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_JOIN_GOBLIN)
    {
        pCreature->MonsterWhisper("Get ready! Shimmering Flats race event is about to start! Make haste if you wish to attend!", pPlayer);
        g_raceGuids[RACE_REAL].insert(pPlayer->GetObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_JOIN_GNOME)
    {
        pCreature->MonsterWhisper("Get ready! Shimmering Flats race event is about to start! Make haste if you wish to attend!", pPlayer);
        g_raceGuids[RACE_REAL].insert(pPlayer->GetObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_LEAVE_QUEUE)
    {
        g_raceGuids[RACE_REAL].erase(pPlayer->GetObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_dolores(Player* pPlayer, Creature* pCreature)
{
    uint32 textId = NPC_TEXT_DOLORES_DEFAULT;

    if (!IsPlayerQueuedForRace(pPlayer))
    {
        if (!GetStartedRaceForManager(pCreature->GetGUIDLow()))
        {
            if (!pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE) &&
                pPlayer->GetQuestStatus(QUEST_GOBLIN_TEST_RACE) == QUEST_STATUS_INCOMPLETE &&
                !IsPlayerQueuedForRace(pPlayer))
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to test drive the Goblin team's racecar.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GOBLIN);

            if (!pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE) &
                pPlayer->GetQuestStatus(QUEST_GNOME_TEST_RACE) == QUEST_STATUS_INCOMPLETE &&
                !IsPlayerQueuedForRace(pPlayer))
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to test drive the Gnomish team's racecar..", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GNOME);
        }
        else
        {
            textId = NPC_TEXT_RACE_STARTED;
        }
    }

    pPlayer->SEND_GOSSIP_MENU(textId, pCreature->GetGUID());
    
    return true;
}

bool GossipSelect_npc_dolores(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_JOIN_GOBLIN)
    {
        pCreature->MonsterWhisper("You are registered for a test race.", pPlayer);
        g_raceGuids[RACE_TEST].insert(pPlayer->GetObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_JOIN_GNOME)
    {
        pCreature->MonsterWhisper("You are registered for a test race.", pPlayer);
        g_raceGuids[RACE_TEST].insert(pPlayer->GetObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct go_speed_up : public GameObjectAI
{
    explicit go_speed_up(GameObject* pGo) : GameObjectAI(pGo)
    {
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        if (g_startedRaces.empty())
        {
            me->AddObjectToRemoveList();
            return;
        }

        for (auto const& itr : g_startedRaces)
        {
            uint32 const raceId = itr.second;

            for (auto const& guid : g_raceGuids[raceId])
            {
                if (Player* pRacer = me->GetMap()->GetPlayer(guid))
                {
                    if (pRacer->IsWithinDist(me, 5.0f))
                    {
                        pRacer->CastSpell(pRacer, SPELL_SALT_FLATS_RACE_SPEED, true);
                        me->DestroyForPlayer(pRacer);
                    }
                }
            }
        }

        GameObjectAI::UpdateAI(uiDiff);
    }
};

#define INVISIBLE_TRIGGER_ID 14495

struct npc_race_sheep : public ScriptedAI 
{
    npc_race_sheep(Creature* InCreature) : ScriptedAI(InCreature) {}

    void Reset() override
    {
        m_creature->EnableMoveInLosEvent();
    }

    void UpdateAI(const uint32 deltaTime) override
    {
        if (g_startedRaces.empty())
        {
            me->DespawnOrUnsummon();
            return;
        }

        for (auto const& itr : g_startedRaces)
        {
            uint32 const raceId = itr.second;

            for (auto const& guid : g_raceGuids[raceId])
            {
                if (Player* pRacer = me->GetMap()->GetPlayer(guid))
                {
                    if (pRacer->IsWithinDist(me, 3.0f))
                    {
                        if (!pRacer->HasAura(4079)) // Cloaking
                        {
                            pRacer->AddAura(SPELL_SALT_FLATS_RACE_SLOW);

                            me->CastSpell(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), SPELL_SELF_EXPLOSION, true);
                            me->DespawnOrUnsummon(1000);
                            return;
                        }
                    }
                }
            }
        }

        ScriptedAI::UpdateAI(deltaTime);
    }
};

struct npc_car_controller : public ScriptedAI
{
    npc_car_controller(Creature* InCreature) : ScriptedAI(InCreature)
    {
        Reset();
    }

    ObjectGuid targetGuid;

    uint32 BackTimer;
    static constexpr uint32 TickInterval = 3 * IN_MILLISECONDS;

    virtual void UpdateAI(const uint32 delta) override
    {
        if (BackTimer < delta)
        {
            BackTimer = TickInterval;

            if (!targetGuid.IsEmpty())
            {
                if (Player* pl = sObjectMgr.GetPlayer(targetGuid))
                {
                    me->NearTeleportTo(pl->GetPositionX(), pl->GetPositionY(), pl->GetPositionZ() - 7.0f, 0.0f);
                }
            }
        }
        else
        {
            BackTimer -= delta;
        }
    }

    void Reset() override
    {
        BackTimer = TickInterval;
    }


    void InformGuid(const ObjectGuid playerGuid, uint32 = 0) override
    {
        targetGuid = playerGuid;
    }

};

struct npc_landing_siteAI : public ScriptedAI
{
    npc_landing_siteAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    void Reset() override
    {
        m_creature->EnableMoveInLosEvent();
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer()) 
        {
            if (Player* player = pWho->ToPlayer())
            {
                if (m_creature->IsWithinDistInMap(pWho, 200.0F) && pWho->GetMountID() == 18510 && !pWho->HasAura(130))
                {
                    me->MonsterSay("Ugh, another one… Welcome to tha Mirage Raceway, $N!", 0U, pWho);
                    me->MonsterWhisper("Ya go ahead and talk to Jizzle Grikbot or Gregor Fizzwuzz ta git ya on track in all manner of meanings.", pWho);
                    me->HandleEmoteCommand(EMOTE_ONESHOT_SALUTE);
                }
            }
        }
    }
};

CreatureAI* GetAI_npc_landing_site(Creature* pCreature)
{
    return new npc_landing_siteAI(pCreature);
}

GameObjectAI* GetAI_go_speed_up(GameObject* gameobject)
{
    return new go_speed_up(gameobject);
}

CreatureAI* GetAI_npc_race_sheep(Creature* creature)
{
    return new npc_race_sheep(creature);
}

CreatureAI* GetAI_npc_daisy(Creature* creature)
{
    return new npc_race_manager(creature, RACE_REAL, 2);
}

CreatureAI* GetAI_npc_dolores_say(Creature* creature)
{
    return new npc_race_manager(creature, RACE_TEST, 1);
}

CreatureAI* GetAI_npc_car_controller(Creature* creature)
{
    return new npc_car_controller(creature);
}

bool QuestAccepted_npc_daisy(Player* player, Creature* creature, const Quest* quest)
{
    if (quest->GetQuestId() == QUEST_RACE_AGAINST_TIME)
        creature->MonsterSay(66113);
       
    return true;
}

void AddSC_mirage_raceway()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_daisy";
    newscript->pGossipHello = &GossipHello_npc_daisy;
    newscript->pGossipSelect = &GossipSelect_npc_daisy;
    newscript->pQuestAcceptNPC = &QuestAccepted_npc_daisy;
    newscript->GetAI = &GetAI_npc_daisy;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_dolores";
    newscript->pGossipHello = &GossipHello_npc_dolores;
    newscript->pGossipSelect = &GossipSelect_npc_dolores;
    newscript->GetAI = &GetAI_npc_dolores_say;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_speed_up";
    newscript->GOGetAI = &GetAI_go_speed_up;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_race_checkpoint";
    newscript->GOGetAI = &GetAI_go_race_checkpoint;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_race_sheep";
    newscript->GetAI = GetAI_npc_race_sheep;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_landing_site";
    newscript->GetAI = &GetAI_npc_landing_site;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_car_controller";
    newscript->GetAI = &GetAI_npc_car_controller;
    newscript->RegisterSelf();
}
