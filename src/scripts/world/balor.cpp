#include "scriptPCH.h"
#include "ScriptObjects.h"

enum BalorExplosives
{
    QUEST_EXPLOSIVES_MAKE_MY_HEART_GO_BOOM = 41698,

    GO_EXPLOSIVES_FORGE                    = 2020178,
    GO_EXPLOSIVES_WATCHTOWER               = 2020179,
    GO_EXPLOSIVES_OUTER_WALL               = 2020180,

    GO_GUID_EXPLOSIVES_FORGE               = 5022619,
    GO_GUID_EXPLOSIVES_WATCHTOWER          = 5022613,
    GO_GUID_EXPLOSIVES_OUTER_WALL          = 5022612,

    NPC_CREDIT_EXPLOSIVES_FORGE            = 60075,
    NPC_CREDIT_EXPLOSIVES_WATCHTOWER       = 60076,
    NPC_CREDIT_EXPLOSIVES_OUTER_WALL       = 60077,

    GOSSIP_EXPLOSIVES_TEXT                 = 4169801,
    GOSSIP_EXPLOSIVES_OPTION               = GOSSIP_ACTION_INFO_DEF + 1
};

static char const* const EXPLOSIVES_GOSSIP_TEXT = "<This seems to be a fitting place for Rufus' explosives.>";
static char const* const EXPLOSIVES_GOSSIP_OPTION = "<Place the explosives.>";

struct ExplosivesObjective
{
    uint32 gameObjectGuid;
    uint32 gameObjectEntry;
    uint32 creditEntry;
    uint8 objectiveIndex;
};

static ExplosivesObjective const EXPLOSIVES_OBJECTIVES[] =
{
    { GO_GUID_EXPLOSIVES_FORGE,      GO_EXPLOSIVES_FORGE,      NPC_CREDIT_EXPLOSIVES_FORGE,      0 },
    { GO_GUID_EXPLOSIVES_WATCHTOWER, GO_EXPLOSIVES_WATCHTOWER, NPC_CREDIT_EXPLOSIVES_WATCHTOWER, 1 },
    { GO_GUID_EXPLOSIVES_OUTER_WALL, GO_EXPLOSIVES_OUTER_WALL, NPC_CREDIT_EXPLOSIVES_OUTER_WALL, 2 }
};

static ExplosivesObjective const* GetExplosivesObjective(GameObject const* pGo)
{
    if (!pGo)
        return nullptr;

    uint32 const dbGuid = pGo->GetDBTableGUIDLow();
    for (ExplosivesObjective const& objective : EXPLOSIVES_OBJECTIVES)
        if (objective.gameObjectGuid == dbGuid && objective.gameObjectEntry == pGo->GetEntry())
            return &objective;

    return nullptr;
}

static bool HasIncompleteExplosivesObjective(Player const* pPlayer, ExplosivesObjective const* objective)
{
    if (!pPlayer || !objective)
        return false;

    QuestStatusData const* questStatus = pPlayer->GetQuestStatusData(QUEST_EXPLOSIVES_MAKE_MY_HEART_GO_BOOM);
    if (!questStatus || questStatus->m_status != QUEST_STATUS_INCOMPLETE)
        return false;

    Quest const* quest = sObjectMgr.GetQuestTemplate(QUEST_EXPLOSIVES_MAKE_MY_HEART_GO_BOOM);
    if (!quest || objective->objectiveIndex >= QUEST_OBJECTIVES_COUNT)
        return false;

    uint8 const objectiveIndex = objective->objectiveIndex;
    if (quest->ReqCreatureOrGOId[objectiveIndex] != int32(objective->creditEntry))
        return false;

    return questStatus->m_creatureOrGOcount[objectiveIndex] < quest->ReqCreatureOrGOCount[objectiveIndex];
}

static void SendExplosivesNpcText(Player* pPlayer)
{
    WorldPacket data(SMSG_NPC_TEXT_UPDATE, 512);
    data << uint32(GOSSIP_EXPLOSIVES_TEXT);

    data << float(1.0f);
    data << EXPLOSIVES_GOSSIP_TEXT;
    data << EXPLOSIVES_GOSSIP_TEXT;
    data << uint32(0);
    data << uint32(0);
    data << uint32(0);
    data << uint32(0);
    data << uint32(0);
    data << uint32(0);
    data << uint32(0);

    for (uint32 i = 1; i < 8; ++i)
    {
        data << float(0.0f);
        data << "Greetings $N";
        data << "Greetings $N";
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
    }

    pPlayer->GetSession()->SendPacket(&data);
}

static void SendExplosivesGossip(Player* pPlayer, GameObject* pGo)
{
    SendExplosivesNpcText(pPlayer);
    pPlayer->PlayerTalkClass->ClearMenus();
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, EXPLOSIVES_GOSSIP_OPTION, GOSSIP_SENDER_MAIN, GOSSIP_EXPLOSIVES_OPTION);
    pPlayer->SEND_GOSSIP_MENU(GOSSIP_EXPLOSIVES_TEXT, pGo->GetObjectGuid());
}

struct go_balor_explosivesAI : public GameObjectAI
{
    explicit go_balor_explosivesAI(GameObject* pGo) : GameObjectAI(pGo) {}

    bool OnUse(Unit* pUser) override
    {
        Player* pPlayer = pUser ? pUser->ToPlayer() : nullptr;
        if (!pPlayer)
            return false;

        ExplosivesObjective const* objective = GetExplosivesObjective(me);
        if (!HasIncompleteExplosivesObjective(pPlayer, objective))
            return true;

        SendExplosivesGossip(pPlayer, me);
        return true;
    }
};

class balor_gameobject_script : public AllGameObjectScript
{
public:
    balor_gameobject_script() : AllGameObjectScript("balor_gameobject_script") {}

    GameObjectAI* GetGameObjectAI(GameObject* pGo) const override
    {
        if (GetExplosivesObjective(pGo))
            return new go_balor_explosivesAI(pGo);

        return nullptr;
    }

    bool CanGameObjectGossipHello(Player* pPlayer, GameObject* pGo) override
    {
        ExplosivesObjective const* objective = GetExplosivesObjective(pGo);
        if (!HasIncompleteExplosivesObjective(pPlayer, objective))
            return false;

        SendExplosivesGossip(pPlayer, pGo);
        return true;
    }

    bool CanGameObjectGossipSelect(Player* pPlayer, GameObject* pGo, uint32 uiSender, uint32 uiAction, char const* /*code*/) override
    {
        if (uiSender != GOSSIP_SENDER_MAIN || uiAction != GOSSIP_EXPLOSIVES_OPTION)
            return false;

        ExplosivesObjective const* objective = GetExplosivesObjective(pGo);
        if (!objective)
            return false;

        pPlayer->CLOSE_GOSSIP_MENU();
        if (HasIncompleteExplosivesObjective(pPlayer, objective))
            pPlayer->KilledMonsterCredit(objective->creditEntry);

        return true;
    }
};

void AddSC_balor()
{
    new balor_gameobject_script();
}
