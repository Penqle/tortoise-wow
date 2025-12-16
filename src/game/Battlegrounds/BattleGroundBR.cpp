#include "Object.h"
#include "Player.h"
#include "BattleGround.h"
#include "BattleGroundBR.h"
#include "Creature.h"
#include "GameObject.h"
#include "ObjectMgr.h"
#include "BattleGroundMgr.h"
#include "WorldPacket.h"
#include "Language.h"
#include "MapManager.h"
#include "World.h"

uint32 BattleGroundBR::GetNextArenaId()
{
    static std::atomic<uint32> arenaId = 0;
    static bool init = false;

    //initial state, query.
    if (!init)
    {
        std::unique_ptr<QueryResult> res = std::unique_ptr<QueryResult>(CharacterDatabase.Query("SELECT MAX(arena_id) FROM arena_stats_single"));

        if (res)
        {
            arenaId = (*res)[0].GetUInt32();
        }
        init = true;
    }

    return ++arenaId;
}


BattleGroundBR::BattleGroundBR()
{
    m_StartMessageIds[BG_STARTING_EVENT_FIRST]  = 0;
    m_StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_ARENA_THIRTY_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_THIRD]  = LANG_ARENA_FIFTEEN_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_ARENA_BEGUN;

    m_StartDelayTimes[BG_STARTING_EVENT_FIRST] = BG_START_DELAY_1M;
    m_StartDelayTimes[BG_STARTING_EVENT_SECOND] = BG_START_DELAY_30S;
    m_StartDelayTimes[BG_STARTING_EVENT_THIRD] = BG_START_DELAY_15S;
    m_StartDelayTimes[BG_STARTING_EVENT_FOURTH] = BG_START_DELAY_NONE;

    m_arenaId = GetNextArenaId();
}


//somehow THIS is the reconstructuring constructor call.
BattleGroundBR::BattleGroundBR(const BattleGroundBR& br) : BattleGround(br)
{
    m_StartMessageIds[BG_STARTING_EVENT_FIRST] = 0;
    m_StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_ARENA_THIRTY_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_THIRD] = LANG_ARENA_FIFTEEN_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_ARENA_BEGUN;

    m_StartDelayTimes[BG_STARTING_EVENT_FIRST] = BG_START_DELAY_1M;
    m_StartDelayTimes[BG_STARTING_EVENT_SECOND] = BG_START_DELAY_30S;
    m_StartDelayTimes[BG_STARTING_EVENT_THIRD] = BG_START_DELAY_15S;
    m_StartDelayTimes[BG_STARTING_EVENT_FOURTH] = BG_START_DELAY_NONE;

    m_arenaId = GetNextArenaId();
}

void BattleGroundBR::Update(uint32 diff)
{
    // prevent players from falling under the floor
    for (const auto& itr : m_Players)
    {
        Player* pPlayer = sObjectMgr.GetPlayer(itr.first);
        if (!pPlayer)
            continue;

        if (pPlayer->GetPositionZ() < -1.0f)
            pPlayer->NearLandTo(pPlayer->GetPositionX(), pPlayer->GetPositionY(), 3.0f, pPlayer->GetOrientation());
    }

    if (GetStatus() == STATUS_IN_PROGRESS)
        m_totalTime += diff;

    // Execute this at the end, since it can delete the BattleGround object!
    BattleGround::Update(diff);
}

Team BattleGroundBR::GetWinningTeam() const
{
    if (m_AllianceDeaths == m_HordeDeaths)
        return TEAM_NONE;
    return m_AllianceDeaths < m_HordeDeaths ? ALLIANCE : HORDE;
}

void BattleGroundBR::StartingEventCloseDoors()
{
    if (GetStatus() != STATUS_WAIT_JOIN)
        return;

    // Plummet visibility distance so you cannot see enemy players until the match begins.
    // May be better to just update visibility code instead of this...
    // 40 is roughly to the middle of the map -- perfect area to not be able to see other team.
    //GetBgMap()->SetVisibilityDistance(45.0f);
}

inline void ResetUnitHealthAndPower(Unit* pUnit)
{
    if (!pUnit->IsAlive())
        return;

    pUnit->SetHealth(pUnit->GetMaxHealth());

    if (pUnit->GetMaxPower(POWER_MANA))
        pUnit->SetPower(POWER_MANA, pUnit->GetMaxPower(POWER_MANA));

    switch (pUnit->GetPowerType())
    {
        case POWER_FOCUS:
        case POWER_ENERGY:
            pUnit->SetPower(pUnit->GetPowerType(), pUnit->GetMaxPower(pUnit->GetPowerType()));
            break;
    }
}

void BattleGroundBR::StartingEventOpenDoors()
{
    // Reset visibility distance back to normal.
    // GetBgMap()->InitVisibilityDistance();
    OpenDoorEvent(BG_EVENT_DOOR);

    // Loop through players in BG and reset their health and mana again. This is due to the lack of Preparation spell in vanilla.
    // Notice we do not reset cooldowns here, like on AddPlayer() due to potential abuse.
    for (auto& itr : GetPlayers())
    {
        if (Player* pPlayer = sObjectMgr.GetPlayer(itr.first))
        {
            ResetUnitHealthAndPower(pPlayer);

            if (Pet* pPet = pPlayer->GetPet())
                ResetUnitHealthAndPower(pPet);
        }
    }
}

void BattleGroundBR::AddPlayer(Player *plr)
{
    BattleGround::AddPlayer(plr);
    //create score and add it to map, default values are set in constructor
    BattleGroundBRScore* sc = new BattleGroundBRScore;

    m_PlayerScores[plr->GetObjectGuid()] = sc;

    // When player is added, call this function to restore full hp/mana and reset cooldowns.
    plr->RemoveAllArenaSpellCooldown();
}

void BattleGroundBR::RemovePlayer(Player* /*plr*/, ObjectGuid /*guid*/)
{
}

void BattleGroundBR::UpdateTeamScore(Team team)
{
}

void BattleGroundBR::HandleAreaTrigger(Player *Source, uint32 Trigger)
{
    // this is wrong way to implement these things. On official it done by gameobject spell cast.
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;
}

bool BattleGroundBR::SetupBattleGround()
{
    /*doors
    for (int i = 0; i < BG_BR_NODES_MAX; ++i)
    {
        if (!AddObject(ARENA_OBJECT_DOOR + 3 * i, DOOR_ENTRY, ARENA_BR_DoorPositions[i][0], ARENA_BR_DoorPositions[i][1], ARENA_SV_DoorPositions[i][2], ARENA_BR_DoorPositions[i][3], 0, 0, sin(ARENA_BR_DoorPositions[i][3] / 2), cos(ARENA_BR_DoorPositions[i][3] / 2))
            || !AddObject(ARENA_OBJECT_DOOR + 3 * i + 1, DOOR_ENTRY, ARENA_BR_DoorPositions[i][0], ARENA_BR_DoorPositions[i][1], ARENA_SV_DoorPositions[i][2], ARENA_BR_DoorPositions[i][3], 0, 0, sin(ARENA_BR_DoorPositions[i][3] / 2), cos(ARENA_BR_DoorPositions[i][3] / 2)))
            sLog.outErrorDb("BatteGroundSV: Failed to spawn door objects!");
    }
    */

    return true;
}

void BattleGroundBR::Reset()
{
    //call parent's class reset
    BattleGround::Reset();

    for (uint32 i = 0; i < BG_TEAMS_COUNT; ++i)
    {
        m_TeamScores[i] = 0;
    }
}

void BattleGroundBR::EndBattleGround(Team winner)
{
    if (winner == TEAM_NONE)
        return;

    Team loser = (winner == ALLIANCE) ? HORDE : ALLIANCE;

    // rewards
    bool isBGWeekend = BattleGroundMgr::IsBGWeekend(GetTypeID());

    uint32 repGain = isBGWeekend ? 90 : 60;
    RewardReputationToTeam(1008, repGain, winner);
    RewardReputationToTeam(1008, repGain / 4, loser);
    RewardHonorToTeam(isBGWeekend ? 400 : 200, winner);
    RewardHonorToTeam(isBGWeekend ? 100 : 50, loser);
    
    for (const auto& bgPlayer : m_Players)
    {
        auto player = sObjectAccessor.FindPlayer(bgPlayer.first);

        if (player)
        {
            CharacterDatabase.PExecute("INSERT INTO arena_stats_single (`arena_id`, `team_id`, `level`, `item_level`, `class`, `race`, `won`, `duration`) VALUES (%u, %u, %u, %u, %u, %u, %u, %u)",
                m_arenaId, player->GetTeam() == ALLIANCE ? 0 : 1,
                player->GetLevel(), player->GetAverageItemLevel(), 
                player->GetClass(), player->GetRace(), player->GetTeam() == winner ? 1 : 0, m_totalTime / IN_MILLISECONDS);
        }
    }


    BattleGround::EndBattleGround(winner);
}

void BattleGroundBR::HandleKillPlayer(Player *player, Player *killer)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    BattleGround::HandleKillPlayer(player, killer);

    // Applied above but remove here instead.
    player->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SKINNABLE);
}

void BattleGroundBR::UpdatePlayerScore(Player *Source, uint32 type, uint32 value)
{
    BattleGroundScoreMap::iterator itr = m_PlayerScores.find(Source->GetObjectGuid());
    if (itr == m_PlayerScores.end())                        // player not found
        return;

    BattleGround::UpdatePlayerScore(Source, type, value);

    if (type == SCORE_DEATHS)
    {
        switch (Source->GetTeam())
        {
            case ALLIANCE:
                m_AllianceDeaths++;
                break;
            case HORDE:
                m_HordeDeaths++;
                break;
        }

        // If both all team members are dead on either side, end arena.
        if (m_AllianceDeaths >= GetMaxPlayersPerTeam())
            EndBattleGround(HORDE);
        else if (m_HordeDeaths >= GetMaxPlayersPerTeam())
            EndBattleGround(ALLIANCE);
    }
}

WorldSafeLocsEntry const* BattleGroundBR::GetClosestGraveYard(Player* player)
{
    return nullptr;
}

void BattleGroundBR::FillInitialWorldStates(WorldPacket& data, uint32& count)
{
}