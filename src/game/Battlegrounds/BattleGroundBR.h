#ifndef __BATTLEGROUNDBR_H
#define __BATTLEGROUNDBR_H

#include "BattleGround.h"

#define BG_BR_NODES_MAX 2
#define DOOR_ENTRY 180636

enum BRArenaNodes
{
    ARENA_OBJECT_DOOR = 0,
};

const float ARENA_BR_DoorPositions[BG_BR_NODES_MAX][4] =
{
    { -117.381f, 149.775f, -40.384f, 0.0340097f },     // alliance
    { -76.9176f, 149.735f, -40.384f, 3.144212f },      // horde
};

class BattleGroundBRScore : public BattleGroundScore
{
public:
    BattleGroundBRScore() {};
    virtual ~BattleGroundBRScore() {};
private:
};

class BattleGroundBR : public BattleGround
{
    friend class BattleGroundMgr;

    public:
        /* Construction */
        BattleGroundBR();
        BattleGroundBR(const BattleGroundBR& br);
        void Update(uint32 diff);

        static uint32 GetNextArenaId();

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        /* Battleground Events */
        void RemovePlayer(Player *plr, ObjectGuid guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        void HandleKillPlayer(Player *player, Player *killer);
        virtual bool SetupBattleGround();
        virtual void Reset();
        void EndBattleGround(Team winner);
        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);

        void UpdateTeamScore(Team team);
        void UpdatePlayerScore(Player *Source, uint32 type, uint32 value);
        virtual void FillInitialWorldStates(WorldPacket& data, uint32& count);

        Team GetWinningTeam() const override;

        /* Scorekeeping */
        uint32 GetTeamScore(Team team) const { return m_TeamScores[GetTeamIndexByTeamId(team)]; }
        void AddPoint(Team team, uint32 Points = 1) { m_TeamScores[GetTeamIndexByTeamId(team)] += Points; }
        void SetTeamPoint(Team team, uint32 Points = 0) { m_TeamScores[GetTeamIndexByTeamId(team)] = Points; }
        void RemovePoint(Team team, uint32 Points = 1) { m_TeamScores[GetTeamIndexByTeamId(team)] -= Points; }
    private:
        uint32 m_AllianceDeaths = 0;
        uint32 m_HordeDeaths = 0;
        uint32 m_totalTime = 0;
        uint32 m_arenaId = 0;
};
#endif