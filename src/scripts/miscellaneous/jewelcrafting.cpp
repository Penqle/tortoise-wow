#include "scriptPCH.h"

enum JCSpecs
{
    SPELL_GEMOLOGY = 57551,
    SPELL_GOLDSMITH = 57553,

    NPC_GEMOLOGIST = 73102,
    NPC_GOLDSMITH = 73101,

    NPC_GEMOLOGIST_GOSSIP = 3875,
    NPC_GOLDSMITH_GOSSIP = 3876
};

bool GossipHello_npc_jewelcrafter(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->GetEntry() == NPC_GEMOLOGIST && pPlayer->HasSpell(SPELL_GEMOLOGY))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Train me.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->GetEntry() == NPC_GOLDSMITH && pPlayer->HasSpell(SPELL_GOLDSMITH))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Train me.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pCreature->GetEntry() == NPC_GEMOLOGIST ? NPC_GEMOLOGIST_GOSSIP : NPC_GOLDSMITH_GOSSIP, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_jewelcrafter(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->GetSession()->SendTrainerList(pCreature->GetGUID());
        return true;
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->GetSession()->SendTrainerList(pCreature->GetGUID());
        return true;
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_jewelcrafting()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_jewelcrafter";
    newscript->pGossipHello = &GossipHello_npc_jewelcrafter;
    newscript->pGossipSelect = &GossipSelect_npc_jewelcrafter;
    newscript->RegisterSelf();
}
