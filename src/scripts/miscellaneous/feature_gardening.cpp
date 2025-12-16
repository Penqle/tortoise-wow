
#include "scriptPCH.h"

enum GardenObjects
{
    LIFESPAN_PLANTER = 60 * MINUTE * IN_MILLISECONDS, 
    LIFESPAN_GROWING = 10 * MINUTE * IN_MILLISECONDS, 
    LIFESPAN_GROWING_TICK =  9 * MINUTE * IN_MILLISECONDS, 
    LIFESPAN_BUTTON =  5 * MINUTE * IN_MILLISECONDS, 
    LIFESPAN_SPLASH =  2,

    PUMPKIN_SEEDS = 51706,
    BERRY_SEEDS = 51707,
    WATERMELON_SEEDS = 51708,
    MUSHROOM_SEEDS = 51716,

    REFRESHING_SPRING_WATER = 159,
    UNGORO_SOIL = 11018,

    PLANTER_ITEM_ENTRY = 51705,

    WOODEN_PLANTER = 1000334,
    PLANTER_EARTH = 1000335,
    GARDEN_ZONE_CHECK = 1000373,

    PUMPKIN_SPROUTLING = 1000336,
    PUMPKIN_SPROUTLING_ACTIVE = 1000337,
    PUMPKIN_SMALL = 1000338,
    PUMPKIN_SMALL_ACTIVE = 1000339,
    PUMPKIN_MEDIUM = 1000340,
    PUMPKIN_MEDIUM_ACTIVE = 1000341,
    PUMPKIN_HARVEST = 1000342,

    BERRY_SPROUTLING = 1000343,
    BERRY_SPROUTLING_ACTIVE = 1000344,
    BERRY_SMALL = 1000345,
    BERRY_SMALL_ACTIVE = 1000346,
    BERRY_MEDIUM = 1000347,
    BERRY_MEDIUM_ACTIVE = 1000348,
    BERRY_HARVEST = 1000349,

    WATERMELON_SPROUTLING = 1000350,
    WATERMELON_SPROUTLING_ACTIVE = 1000351,
    WATERMELON_SMALL = 1000352,
    WATERMELON_SMALL_ACTIVE = 1000353,
    WATERMELON_MEDIUM = 1000354,
    WATERMELON_MEDIUM_ACTIVE = 1000355,
    WATERMELON_HARVEST = 1000356,

    MUSHROOM_SPROUTLING = 1000358,
    MUSHROOM_SPROUTLING_ACTIVE = 1000359,
    MUSHROOM_SMALL = 1000360,
    MUSHROOM_SMALL_ACTIVE = 1000361,
    MUSHROOM_MEDIUM = 1000362,
    MUSHROOM_MEDIUM_ACTIVE = 1000363,
    MUSHROOM_HARVEST = 1000364,

    WATER_SPLASH = 1000357,
    DUST_CLOUD = 1000365
};

bool GOHello_go_simple_wooden_planter(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(PUMPKIN_SEEDS, 1)) 
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Plant Country Pumpkin Seeds.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (pPlayer->HasItemCount(BERRY_SEEDS, 1)) 
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Plant Mountain Berries Seeds.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    if (pPlayer->HasItemCount(WATERMELON_SEEDS, 1)) 
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Plant Striped Melon Seeds.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);  
    if (pPlayer->HasItemCount(MUSHROOM_SEEDS, 1))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Plant Magic Mushroom Spores.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);

    pPlayer->SEND_GOSSIP_MENU(90351, pGo->GetGUID());
    return true;
}

bool GOSelect_go_simple_wooden_planter(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    float x, y, z;
    pGo->GetSafePosition(x, y, z);

    uint32 static_go{0};
    uint32 currency{0};

    switch (action)
    {
        case GOSSIP_ACTION_INFO_DEF + 1:
        {
            currency = PUMPKIN_SEEDS;
            static_go = PUMPKIN_SPROUTLING;
            break;
        }
        case GOSSIP_ACTION_INFO_DEF + 2:
        {
            currency = BERRY_SEEDS;
            static_go = BERRY_SPROUTLING;
            break;
        }
        case GOSSIP_ACTION_INFO_DEF + 3:
        {
            currency = WATERMELON_SEEDS;
            static_go = WATERMELON_SPROUTLING;
            break;
        }
        case GOSSIP_ACTION_INFO_DEF + 4:
        {
            currency = MUSHROOM_SEEDS;
            static_go = MUSHROOM_SPROUTLING;
            break;
        }
        default:
            break;
    }
    if (pPlayer->HasItemCount(currency, 1, false))
    {
        pPlayer->DestroyItemCount(currency, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();
        pPlayer->SummonGameObject(static_go, x, y, z + 0.4F, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
        pGo->UseDoorOrButton();
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct go_farm_vegetable_growing_stage : public GameObjectAI
{
    explicit go_farm_vegetable_growing_stage(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = LIFESPAN_GROWING_TICK;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                float x, y, z;
                me->GetSafePosition(x, y, z);

                uint32 active_go = 0;

                switch (me->GetEntry())
                {
                case PUMPKIN_SPROUTLING:
                    active_go = PUMPKIN_SPROUTLING_ACTIVE;
                    break;
                case PUMPKIN_SMALL:
                    active_go = PUMPKIN_SMALL_ACTIVE;
                    break;
                case PUMPKIN_MEDIUM:
                    active_go = PUMPKIN_MEDIUM_ACTIVE;
                    break;
                case BERRY_SPROUTLING:
                    active_go = BERRY_SPROUTLING_ACTIVE;
                    break;
                case BERRY_SMALL:
                    active_go = BERRY_SMALL_ACTIVE;
                    break;
                case BERRY_MEDIUM:
                    active_go = BERRY_MEDIUM_ACTIVE;
                    break;
                case WATERMELON_SPROUTLING:
                    active_go = WATERMELON_SPROUTLING_ACTIVE;
                    break;
                case WATERMELON_SMALL:
                    active_go = WATERMELON_SMALL_ACTIVE;
                    break;
                case WATERMELON_MEDIUM:
                    active_go = WATERMELON_MEDIUM_ACTIVE;
                    break;
                case MUSHROOM_SPROUTLING:
                    active_go = MUSHROOM_SPROUTLING_ACTIVE;
                    break;
                case MUSHROOM_SMALL:
                    active_go = MUSHROOM_SMALL_ACTIVE;
                    break;
                case MUSHROOM_MEDIUM:
                    active_go = MUSHROOM_MEDIUM_ACTIVE;
                    break;
                default:
                    break;
                }

                me->SummonGameObject(active_go, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true);
                me->Despawn(); 
                me->UpdateObjectVisibility();
                m_uiUpdateTimer = LIFESPAN_GROWING_TICK;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }

            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_farm_vegetable_growing_stage(GameObject* gameobject)
{
    return new go_farm_vegetable_growing_stage(gameobject);
}

bool GOHello_go_farm_grow_activate(Player* pPlayer, GameObject* pGo)
{
    float x, y, z;
    pGo->GetSafePosition(x, y, z);

    uint32 static_go{0};
    uint32 currency{0};
    bool harvest{0};

    switch (pGo->GetEntry())
    {
    case PUMPKIN_SPROUTLING_ACTIVE:
    {
        currency = UNGORO_SOIL;
        static_go = PUMPKIN_SMALL;
        break;
    }
    case PUMPKIN_SMALL_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = PUMPKIN_MEDIUM;
        break;
    }
    case PUMPKIN_MEDIUM_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = PUMPKIN_HARVEST;
        harvest = true;
        break;
    }
    case BERRY_SPROUTLING_ACTIVE:
    {
        currency = UNGORO_SOIL;
        static_go = BERRY_SMALL;
        break;
    }
    case BERRY_SMALL_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = BERRY_MEDIUM;
        break;
    }
    case BERRY_MEDIUM_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = BERRY_HARVEST;
        harvest = true;
        break;
    }
    case WATERMELON_SPROUTLING_ACTIVE:
    {
        currency = UNGORO_SOIL;
        static_go = WATERMELON_SMALL;
        break;
    }
    case WATERMELON_SMALL_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = WATERMELON_MEDIUM;
        break;
    }
    case WATERMELON_MEDIUM_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = WATERMELON_HARVEST;
        harvest = true;
        break;
    }
    case MUSHROOM_SPROUTLING_ACTIVE:
    {
        currency = UNGORO_SOIL;
        static_go = MUSHROOM_SMALL;
        break;
    }
    case MUSHROOM_SMALL_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = MUSHROOM_MEDIUM;
        break;
    }
    case MUSHROOM_MEDIUM_ACTIVE:
    {
        currency = REFRESHING_SPRING_WATER;
        static_go = MUSHROOM_HARVEST;
        harvest = true;
        break;
    }
    default:
        break;
    }

    if (pPlayer->HasItemCount(currency, 1))
    {
        pPlayer->DestroyItemCount(currency, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();
        pPlayer->SummonGameObject(static_go, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, harvest == false ? LIFESPAN_GROWING : LIFESPAN_BUTTON, true);
        pPlayer->SummonGameObject(currency == REFRESHING_SPRING_WATER ? WATER_SPLASH : DUST_CLOUD, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_SPLASH, true);
        pGo->Despawn();
        pGo->UpdateObjectVisibility();
        return true;
    }
    else
    {
        ChatHandler(pPlayer).PSendSysMessage(currency == REFRESHING_SPRING_WATER ? "You're out of Refreshing Spring Water! Find more." : "You're out of Un'Goro Soil! Find more.");
        return false;
    }
}

void AddSC_gardening()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "go_farm_grow_activate";
    newscript->pGOHello = &GOHello_go_farm_grow_activate;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_farm_vegetable_growing_stage";
    newscript->GOGetAI = &GetAI_go_farm_vegetable_growing_stage;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_simple_wooden_planter";
    newscript->pGOHello = &GOHello_go_simple_wooden_planter;
    newscript->pGOGossipSelect = &GOSelect_go_simple_wooden_planter;
    newscript->RegisterSelf();
}
