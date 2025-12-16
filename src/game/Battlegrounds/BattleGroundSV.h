#ifndef __BATTLEGROUNDSV_H
#define __BATTLEGROUNDSV_H

#include "BattleGround.h"

enum BG_SV_BattlegroundNodes
{
    BG_SV_HUMAN_TOWER = 0,
    BG_SV_ORC_TOWER = 1,
    BG_SV_HERALD_POINT = 2,

    BG_SV_DYNAMIC_NODES_COUNT = 3,                    // dynamic nodes that can be captured
};

enum BG_SV_ObjectTypes
{
    BG_SV_OBJECTID_BANNER_0 = 180087,       // Neutral Banner
    BG_SV_OBJECTID_BANNER_A = 180058,
    BG_SV_OBJECTID_BANNER_CONT_A = 180059,
    BG_SV_OBJECTID_BANNER_H = 180060,
    BG_SV_OBJECTID_BANNER_CONT_H = 180061,
    BG_SV_OBJECTID_FLAG_STAND = 2000381,
};

enum BG_SV_BuffObjects
{
    BG_SV_OBJECTID_SPEEDBUFF = 179871,
    BG_SV_OBJECTID_REGENBUFF = 179904,
    BG_SV_OBJECTID_BERSERKERBUFF = 179905,
    BG_SV_OBJECTID_CHEST = 179311,
};

enum BG_SV_ObjectType
{
    // banners[5] * 3
    BG_SV_OBJECT_BANNER_NEUTRAL   = 0,
    BG_SV_OBJECT_BANNER_CONT_A    = 1,
    BG_SV_OBJECT_BANNER_CONT_H    = 2,
    BG_SV_OBJECT_BANNER_ALLY      = 3,
    BG_SV_OBJECT_BANNER_HORDE     = 4,
    // flagstands * 3
    BG_SV_OBJECT_BANNER_FLAGSTAND = 15,
    // buffs[3] * 6
    BG_SV_OBJECT_SPEEDBUFF        = 18,
    BG_SV_OBJECT_REGENBUFF        = 19,
    BG_SV_OBJECT_BERSERKBUFF      = 20,
    // chest * 6
    BG_SV_OBJECT_CHEST            = 36,
    // 2 gates possible
    BG_SV_OBJECT_MAX              = 42
};

enum BG_SV_CreatureType
{
    BG_SV_CREATURE_SPIRITGUIDE_A   = 0,
    BG_SV_CREATURE_SPIRITGUIDE_H   = 1,
    BG_SV_CREATURE_HERALD          = 2,
    BG_SV_CREATURE_DRAGON          = 3,
    BG_SV_CREATURE_HUMAN_LEADER    = 4,
    BG_SV_CREATURE_ORC_LEADER      = 5,
    BG_SV_CREATURE_TOWER_GUARDS_A  = 6,
    BG_SV_CREATURE_TOWER_GUARDS_H  = 11,
    BG_SV_CREATURE_LEADER_GUARDS_A = 16,
    BG_SV_CREATURE_LEADER_GUARDS_H = 22,
    BG_SV_CREATURE_HUMAN_ARMY      = 28,
    BG_SV_CREATURE_ORC_ARMY        = 68,
    BG_SV_CREATURE_MAX             = 108
};

enum BG_SV_Timers
{
    BG_SV_FLAG_CAPTURING_TIME = 60000
};

enum BG_SV_NodeStatus
{
    BG_SV_NODE_TYPE_NEUTRAL = 0,
    BG_SV_NODE_TYPE_CONTESTED = 1,
    BG_SV_NODE_STATUS_ALLY_CONTESTED = 1,
    BG_SV_NODE_STATUS_HORDE_CONTESTED = 2,
    BG_SV_NODE_TYPE_OCCUPIED = 3,
    BG_SV_NODE_STATUS_ALLY_OCCUPIED = 3,
    BG_SV_NODE_STATUS_HORDE_OCCUPIED = 4
};

enum BG_SV_WorldStates
{
    BG_SV_SPARKS_COUNT_ALLIANCE = 2530,
    BG_SV_SPARKS_COUNT_HORDE = 2531,
};

const uint32 BG_SV_NodeWorldStates[3] = { 2534, 2539, 2544 };

enum BG_SV_NPC
{
    NPC_HERALD = 13760,

    NPC_MARSHAL_GREYWALL = 93000,
    NPC_HUMAN_FOOTMAN = 93001,
    NPC_HUMAN_ARCHER = 93002,
    NPC_HUMAN_CONJURER = 93003,
    NPC_HUMAN_CLERIC = 93004,

    NPC_WARLORD_BLACKSKULL = 93005,
    NPC_ORC_GRUNT = 93006,
    NPC_ORC_SPEARMAN = 93007,
    NPC_ORC_NECROLYTE = 93008,
    NPC_ORC_WARLOCK = 93009
};

enum BG_SV_Sounds
{
    BG_SV_SOUND_NODE_CLAIMED = 8192,
    BG_SV_SOUND_NODE_CAPTURED_ALLIANCE = 8173,
    BG_SV_SOUND_NODE_CAPTURED_HORDE = 8213,
    BG_SV_SOUND_NODE_ASSAULTED_ALLIANCE = 8212,
    BG_SV_SOUND_NODE_ASSAULTED_HORDE = 8174,
};

enum BG_SV_Spells
{
    SV_SPELL_NORTH_TOWER = 45925,
    SV_SPELL_SOUTH_TOWER = 45926,
};

enum BG_SV_Items
{
    ITEM_FLICKERING_TIME_SPARK = 81390,
    ITEM_VAMPIRE_HEART = 50244,
    ITEM_CRYSTAL_OF_VENGEANCE = 50245,
    ITEM_CONCENTRATED_POWER_OF_WILL = 50246,
    ITEM_SUPERCONDUCTING_MAGNET = 50247,
    ITEM_BLACK_WIDOW_EGGS = 50248,
};

enum BG_SV_Locations
{
    SV_BASE_HUMAN = 930,
    SV_BASE_ORC = 931,
    SV_GRAVEYARD_HUMAN = 932,
    SV_GRAVEYARD_ORC = 933,
};

Position const BG_SV_NodePositions[BG_SV_DYNAMIC_NODES_COUNT] =
{
    {1661.94f, 307.334f, 143.662f, 1.798f},         // human tower
    {1013.34f, 249.37f, 117.43f, 4.76f},            // orc tower
    {1315.50f, 266.75f, 75.96f, 4.8f},              // herald point
};

const uint8 BG_SV_CaptureNodesSparkTicks[3] = { 0, 1, 2 };

Position const BG_SV_BuffPositions[6] =
{
    {1632.22f, 143.54f, 104.7f, 0.79f},  // tree
    {1356.95f, -117.16f, 103.5f, 1.19f}, // mine
    {1240.48f, 178.16f, 67.6f, 3.98f},   // stables
    {1077.14f, 412.6f, 93.7f, 5.38f},    // well
    {1324.09f, 578.5f, 105.2f, 3.95f},   // mine 2
    {1444.28f, 306.99f, 71.9f, 0.23f},   // wind
};

Position const BG_SV_HeraldPos = { 1318.8f, 255.87f, 75.6f, 1.68f };

Position const BG_SV_SpiritGuidePos[2] =
{
    {1697.1f, 504.9f, 122.9f, 0.7f},                 // human graveyard
    {926.7f, 77.4f, 129.7f, 0.5f}                    // orc graveyard
};

Position const BG_SV_TowerGuardsPos[2][5] =
{
    {
        {1683.88f, 310.95f, 108.7f, 0.02f},
        {1683.14f, 321.88f, 108.7f, 0.07f},
        {1658.05f, 322.5f, 143.9f, 1.77f},
        {1652.53f, 312.7f, 143.9f, 3.4f},
        {1667.07f, 316.8f, 143.9f, 0.18f}
    },
    {
        {1003.6f, 250.1f, 96.0f, 1.7f},
        {1011.9f, 251.16f, 96.0f, 1.7f},
        {1015.3f, 241.0f, 111.0f, 4.8f},
        {1012.47f, 257.9f, 117.5f, 1.6f},
        {1014.05f, 240.2f, 117.5f, 4.8f}
    }
};

Position const BG_SV_LeaderPos[2]
{
    {1673.8f, 423.3f, 114.9f, 4.66f},
    {968.35f, 175.64f, 100.5f, 0.55f},
};

struct NPCData
{
    uint32 entry = 0;
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    float o = 0.0f;
};

NPCData const BG_SV_LeaderGuardsPos[2][6] =
{
    // footman, conjurer, cleric
    {
        {NPC_HUMAN_FOOTMAN, 1678.05f, 422.08f, 115.0f, 4.66f},
        {NPC_HUMAN_FOOTMAN, 1669.69f, 422.52f, 115.0f, 4.66f},
        {NPC_HUMAN_CONJURER, 1679.98f, 424.64f, 115.0f, 4.66f},
        {NPC_HUMAN_CONJURER, 1668.3f, 425.0f, 115.0f, 4.66f},
        {NPC_HUMAN_CLERIC, 1676.1f, 424.46f, 115.0f, 4.66f},
        {NPC_HUMAN_CLERIC, 1671.1f, 424.5f, 115.0f, 4.66f}
    },
    // grunt, warlock, necrolyte
    {
        {NPC_ORC_GRUNT, 967.55f, 178.71f, 100.5f, 0.55f},
        {NPC_ORC_GRUNT, 970.25f, 172.6f, 100.5f, 0.55f},
        {NPC_ORC_WARLOCK, 970.45f, 169.9f, 100.5f, 0.55f},
        {NPC_ORC_WARLOCK, 964.44f, 179.4f, 100.5f, 0.55f},
        {NPC_ORC_NECROLYTE, 965.9f, 177.0f, 100.5f, 0.55f},
        {NPC_ORC_NECROLYTE, 967.8f, 173.0f, 100.5f, 0.55f}
    }
};

Position const BG_SV_FightPos[2][40] =
{
    {
        { 1089.871948f, 372.608307f, 91.255173f, 5.754815f },
        { 1081.790649f, 404.379578f, 92.567368f, 5.267868f },
        { 1084.334106f, 439.242340f, 91.942886f, 4.985120f },
        { 1042.665649f, 395.495087f, 94.316727f, 3.956248f },
        { 989.172241f, 255.421692f, 95.693085f, 4.674886f },
        { 976.175293f, 211.822861f, 96.586990f, 4.439268f },
        { 1234.576660f, 202.980011f, 65.979385f, 4.351304f },
        { 1256.719849f, 165.886093f, 66.571434f, 3.817233f },
        { 1268.657959f, 131.205658f, 70.258514f, 1.814472f },
        { 1273.959351f, 138.282730f, 69.222992f, 0.923045f },
        { 1403.285034f, 197.126740f, 64.125320f, 5.610307f },
        { 1350.325684f, 242.668793f, 64.319946f, 1.942497f },
        { 1313.840454f, 263.703461f, 75.824715f, 4.825696f },
        { 1419.615356f, 343.403198f, 71.202370f, 2.226024f },
        { 1434.250610f, 301.345276f, 70.590858f, 1.025943f },
        { 1295.766602f, 267.966095f, 63.743332f, 2.702769f },
        { 1256.202637f, 282.512848f, 64.326279f, 2.812725f },
        { 1229.005371f, 300.379425f, 67.581604f, 2.569251f },
        { 1196.940552f, 324.518341f, 73.066986f, 2.518986f },
        { 1168.967041f, 340.266937f, 79.776794f, 2.613233f },
        { 1136.969482f, 355.691345f, 84.055824f, 2.707481f },
        { 1275.016113f, 507.645355f, 103.673340f, 0.584551f },
        { 1304.102539f, 489.817963f, 98.785088f, 5.501150f },
        { 1322.966553f, 513.243347f, 104.263680f, 1.292985f },
        { 1396.675903f, 385.845337f, 79.164177f, 5.743834f },
        { 1526.267212f, 96.045013f, 96.623749f, 5.577320f },
        { 1554.320923f, 107.403976f, 100.069595f, 0.370126f },
        { 1588.575073f, 122.741158f, 100.417450f, 0.044187f },
        { 1604.986938f, 104.659576f, 100.415154f, 4.827269f },
        { 1587.302246f, 81.621399f, 100.248505f, 3.354648f },
        { 1649.818604f, 169.488495f, 104.880051f, 1.079350f },
        { 1672.687988f, 208.792633f, 106.256439f, 1.102126f },
        { 1692.544922f, 251.684601f, 107.606331f, 1.212867f },
        { 1702.531372f, 300.295074f, 108.806625f, 1.586717f },
        { 1688.246094f, 401.499725f, 115.054756f, 1.478332f },
        { 1651.893433f, 437.606110f, 113.888535f, 1.890666f },
        { 1417.227539f, -31.152784f, 100.150642f, 3.192072f },
        { 1376.570557f, -13.058056f, 98.066856f, 2.830003f },
        { 1343.113647f, -53.676384f, 102.391373f, 4.619922f },
        { 1309.177124f, -33.359138f, 100.106384f, 2.956449f },
    },
    {
        { 1090.377319f, 373.794861f, 91.255173f, 5.754815f },
        { 1082.513062f, 404.985931f, 92.567368f, 5.267868f },
        { 1085.305908f, 440.242828f, 91.942886f, 4.985120f },
        { 1041.461060f, 398.127411f, 94.316727f, 3.956248f },
        { 991.187622f, 257.690887f, 95.693085f, 4.674886f },
        { 976.274109f, 211.861252f, 96.586990f, 4.439268f },
        { 1235.866089f, 203.982040f, 65.979385f, 4.351304f },
        { 1256.774170f, 166.367798f, 66.571434f, 3.817233f },
        { 1266.751831f, 132.285156f, 70.258514f, 1.814472f },
        { 1273.189087f, 139.101990f, 69.222992f, 0.923045f },
        { 1402.651367f, 197.308578f, 64.125320f, 5.610307f },
        { 1350.300903f, 243.449005f, 64.319946f, 1.942497f },
        { 1314.067383f, 264.214844f, 75.824715f, 4.825696f },
        { 1414.283813f, 349.298706f, 71.202370f, 2.226024f },
        { 1437.535156f, 304.852814f, 70.590858f, 1.025943f },
        { 1291.414673f, 273.871490f, 63.743332f, 2.702769f },
        { 1256.476685f, 288.602509f, 64.326279f, 2.812725f },
        { 1232.650635f, 302.517303f, 67.581604f, 2.569251f },
        { 1196.746460f, 325.492401f, 73.066986f, 2.518986f },
        { 1172.995605f, 343.229523f, 79.776794f, 2.613233f },
        { 1134.821533f, 357.254547f, 84.055824f, 2.707481f },
        { 1274.604248f, 507.848846f, 103.673340f, 0.584551f },
        { 1304.026123f, 489.821991f, 98.785088f, 5.501150f },
        { 1322.681641f, 513.404297f, 104.263680f, 1.292985f },
        { 1392.957520f, 388.720612f, 79.164177f, 5.743834f },
        { 1529.335205f, 99.281876f, 96.623749f, 5.577320f },
        { 1549.278320f, 112.652344f, 100.069595f, 0.370126f },
        { 1590.085693f, 123.791809f, 100.417450f, 0.044187f },
        { 1605.776978f, 106.861557f, 100.415154f, 4.827269f },
        { 1587.540894f, 81.830276f, 100.248505f, 3.354648f },
        { 1649.874756f, 172.911682f, 104.880051f, 1.079350f },
        { 1676.329956f, 213.055725f, 106.256439f, 1.102126f },
        { 1692.684570f, 251.742859f, 107.606331f, 1.212867f },
        { 1703.002808f, 300.449127f, 108.806625f, 1.586717f },
        { 1691.393677f, 406.502106f, 115.054756f, 1.478332f },
        { 1652.160889f, 438.454468f, 113.888535f, 1.890666f },
        { 1417.064453f, -30.271542f, 100.150642f, 3.192072f },
        { 1375.353149f, -8.266575f, 98.066856f, 2.830003f },
        { 1343.197266f, -53.644531f, 102.391373f, 4.619922f },
        { 1310.082275f, -33.152271f, 100.106384f, 2.956449f },
    }
};

struct BG_SV_BannerTimer
{
    uint32 timer = 0;
    uint8 type = 0;
    uint8 teamIndex = 0;
};

class BattleGroundSVScore : public BattleGroundScore
{
public:
    BattleGroundSVScore() {};
    virtual ~BattleGroundSVScore() {};
private:
};

class BattleGroundSV : public BattleGround
{
    friend class BattleGroundMgr;

    public:
        /* Construction */
        BattleGroundSV();
        ~BattleGroundSV();
        void Update(uint32 diff);

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        /* Battleground Events */
        void RemovePlayer(Player *plr, ObjectGuid guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        void HandleKillPlayer(Player *player, Player *killer);
        void HandleKillUnit(Creature* creature, Player* killer);
        void StartFinalEvent();
        virtual bool SetupBattleGround();
        virtual void Reset();
        void EndBattleGround(Team winner);
        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);

        /* Nodes occupying */
        void EventPlayerClickedOnFlag(Player* source, GameObject* target_obj) override;

        void UpdateTeamScore(Team team);
        void UpdatePlayerScore(Player *Source, uint32 type, uint32 value);
        virtual void FillInitialWorldStates(WorldPacket& data, uint32& count);

        Team GetWinningTeam() const override;

        uint32 GetAuraForTower(uint8 node);
        uint32 GetTowerNameId(uint8 node);
        Team GetHeraldControlledTeam();
        uint32 GetTeamSparks(TeamId team) const { return m_resources[team]; }
        void UpdateTeamSparks(TeamId team);
        void AddTeamSparks(TeamId team, uint32 count);
        void SetGeneralsActive(bool set) { m_generalsActive = set; }
        bool IsGeneralsActive() { return m_generalsActive; }
        bool SetupSkirmishes();

    private:
        /* Gameobject spawning/despawning */
        void CreateBanner(uint8 node, uint8 type, uint8 teamIndex, bool delay);
        void DelBanner(uint8 node, uint8 type, uint8 teamIndex);

        /* Creature spawning/despawning */
        void NodeOccupied(uint8 node, Team team);
        void NodeDeOccupied(uint8 node);
        void ApplyTowerBuffOnTeam(uint32 spellId, Team teamId);

        void UpdateNodeWorldState(uint8 node);

        uint8 m_Nodes[BG_SV_DYNAMIC_NODES_COUNT];
        uint8 m_prevNodes[BG_SV_DYNAMIC_NODES_COUNT];
        BG_SV_BannerTimer m_BannerTimers[BG_SV_DYNAMIC_NODES_COUNT];
        uint32 m_NodeTimers[BG_SV_DYNAMIC_NODES_COUNT];
        uint32 m_resources[BG_TEAMS_COUNT];
        uint32 m_lastTick[BG_TEAMS_COUNT];
        bool m_generalsActive;
        ObjectGuid m_allianceGeneralGuid;
        ObjectGuid m_hordeGeneralGuid;
};
#endif