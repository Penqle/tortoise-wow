#include "scriptPCH.h"

#define ARENA_AMBASSADOR_INVITATION_TEXT 90004
#define BLOODY_COIN 50015

bool GossipHello_npc_arena_ambassador(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Take me to the arena!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(ARENA_AMBASSADOR_INVITATION_TEXT, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_arena_ambassador(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        p_Player->TeleportTo(0, -13233.059570f, 218.713669f, 31.868229f, 1.079525f);
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_arena_vendor(Player *pPlayer, Creature *_Creature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Speed (15 seconds): 1 Bloody Coin", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Stamina (30 minutes): 3 Bloody Coins", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Intellect (30 minutes): 3 Bloody Coins", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Agility (30 minutes): 3 Bloody Coins", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Strength (30 minutes): 3 Bloody Coins", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Spirit (30 minutes): 3 Bloody Coins", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
    pPlayer->SEND_GOSSIP_MENU(90316, _Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_arena_vendor(Player *player, Creature *creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1) // Speed
    {
        if (player->HasItemCount(BLOODY_COIN, 1, false))
        {
            player->DestroyItemCount(BLOODY_COIN, 1, true);
            player->SaveInventoryAndGoldToDB();
            creature->CastSpell(creature, 14867, true);
            player->CastSpell(player, 2379, true);
        }
        else
        {
            player->GetSession()->SendNotification("Not enough Blood Coins.");
            return false;
        }
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2) // Stamina
    {
        if (player->HasItemCount(BLOODY_COIN, 3, false))
        {
            player->DestroyItemCount(BLOODY_COIN, 3, true);
            player->SaveInventoryAndGoldToDB();
            creature->CastSpell(creature, 14867, true);
            player->CastSpell(player, 12178, true);
        }
        else
        {
            player->GetSession()->SendNotification("Not enough Blood Coins.");
            return false;
        }
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 3) // Intellect
    {
        if (player->HasItemCount(BLOODY_COIN, 3, false))
        {
            player->DestroyItemCount(BLOODY_COIN, 3, true);
            player->SaveInventoryAndGoldToDB();
            creature->CastSpell(creature, 14867, true);
            player->CastSpell(player, 12176, true);
        }
        else
        {
            player->GetSession()->SendNotification("Not enough Blood Coins.");
            return false;
        }
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 4) // Agility
    {
        if (player->HasItemCount(BLOODY_COIN, 3, false))
        {
            player->DestroyItemCount(BLOODY_COIN, 3, true);
            player->SaveInventoryAndGoldToDB();
            creature->CastSpell(creature, 14867, true);
            player->CastSpell(player, 12174, true);
        }
        else
        {
            player->GetSession()->SendNotification("Not enough Blood Coins.");
            return false;
        }
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 5) // Strength
    {
        if (player->HasItemCount(BLOODY_COIN, 3, false))
        {
            player->DestroyItemCount(BLOODY_COIN, 3, true);
            player->SaveInventoryAndGoldToDB();
            creature->CastSpell(creature, 14867, true);
            player->CastSpell(player, 12179, true);
        }
        else
        {
            player->GetSession()->SendNotification("Not enough Blood Coins.");
            return false;
        }
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 6) // Spirit
    {
        if (player->HasItemCount(BLOODY_COIN, 3, false))
        {
            player->DestroyItemCount(BLOODY_COIN, 3, true);
            player->SaveInventoryAndGoldToDB();
            creature->CastSpell(creature, 14867, true);
            player->CastSpell(player, 12177, true);
        }
        else
        {
            player->GetSession()->SendNotification("Not enough Blood Coins.");
            return false;
        }
    }

    player->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_arena_tournament()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_arena_ambassador";
    newscript->pGossipHello = &GossipHello_npc_arena_ambassador;
    newscript->pGossipSelect = &GossipSelect_npc_arena_ambassador;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_arena_vendor";
    newscript->pGossipHello = GossipHello_npc_arena_vendor;
    newscript->pGossipSelect = GossipSelect_npc_arena_vendor;
    newscript->RegisterSelf();
}
