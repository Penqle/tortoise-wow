#include "scriptPCH.h"
#include "npc_loothelper.h"

using namespace std;

const int GOSSIP_ERASE_ME = GOSSIP_ACTION_INFO_DEF + 3;
const int GOSSIP_GENERATE_LOOT = GOSSIP_ACTION_INFO_DEF + 4;
const int GOSSIP_GENERATE_LOOT_REAL = GOSSIP_ACTION_INFO_DEF + 5;
const int GOSSIP_HIDE_FROM_PLAYERS = GOSSIP_ACTION_INFO_DEF + 1;
const int GOSSIP_SHOW_TO_PLAYERS = GOSSIP_ACTION_INFO_DEF + 2;

void KillCreature(Player* player, Creature* creature)
{
    player->DealDamage(creature, creature->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
}

void EraseCreature(Player* player, Creature* creature)
{
    if (creature->GetSubtype() == CREATURE_SUBTYPE_TEMPORARY_SUMMON)
    {
        ((TemporarySummon*)creature)->UnSummon();
    }
    else
    {
        KillCreature(player, creature);
    }
}

bool GenerateMenuOptions(Player* pPlayer, Creature* pCreature, npc_loothelperAI* loothelperAi)
{
    if (!loothelperAi->IsVisibleToPlayers())
    {
        if (!pPlayer->IsGameMaster())
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            return false;
        }
    }

    if (loothelperAi->GetCreatureEntry() == 0)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "This NPC must be spawned via the !loothelper command.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Erase me.", GOSSIP_SENDER_MAIN, GOSSIP_ERASE_ME);
        return true;
    }

    const auto creatureTemplate = sObjectMgr.GetCreatureTemplate(loothelperAi->GetCreatureEntry());
    if (!creatureTemplate)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "This NPC has an invalid entry.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Erase me.", GOSSIP_SENDER_MAIN, GOSSIP_ERASE_ME);
        return true;
    }

    if (pPlayer->IsGameMaster())
    {
        stringstream ss;
        ss << "When you are ready, click 'Show me to players'." << "\n";
        ss << "This will make the NPC visible to players so they can generate loot for their group." << "\n";
        ss << "Creature entry: " << loothelperAi->GetCreatureEntry() << "\n";
        ss << "Visible: " << (loothelperAi->IsVisibleToPlayers() ? "yes" : "no");
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, ss.str().c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
    }

    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "Generate loot.", GOSSIP_SENDER_MAIN, GOSSIP_GENERATE_LOOT);

    if (pPlayer->IsGameMaster())
    {
        if (loothelperAi->IsVisibleToPlayers())
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "Hide me from players.", GOSSIP_SENDER_MAIN, GOSSIP_HIDE_FROM_PLAYERS);
        }
        else
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_2, "Show me to players.", GOSSIP_SENDER_MAIN, GOSSIP_SHOW_TO_PLAYERS);
        }

        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Erase me.", GOSSIP_SENDER_MAIN, GOSSIP_ERASE_ME);
    }
    return true;
}

bool GossipHello_npc_loothelper(Player* pPlayer, Creature* pCreature)
{
    if (npc_loothelperAI* loothelperAi = dynamic_cast<npc_loothelperAI*>(pCreature->AI()))
    {
        const auto result = GenerateMenuOptions(pPlayer, pCreature, loothelperAi);
        if (!result)
        {
            return false;
        }
    }
    else
    {
        return false;
    }
    
    pPlayer->SEND_GOSSIP_MENU(1001000, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_loothelper(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (npc_loothelperAI* loothelperAi = dynamic_cast<npc_loothelperAI*>(pCreature->AI()))
    {
        if (!loothelperAi->IsVisibleToPlayers())
        {
            if (!pPlayer->IsGameMaster())
            {
                pPlayer->CLOSE_GOSSIP_MENU();
                return false;
            }
        }

        if (uiAction == GOSSIP_HIDE_FROM_PLAYERS)
        {
            loothelperAi->SetPlayerVisibility(false);
        }
        else if (uiAction == GOSSIP_SHOW_TO_PLAYERS)
        {
            loothelperAi->SetPlayerVisibility(true);
        }
        else if (uiAction == GOSSIP_ERASE_ME)
        {
            EraseCreature(pPlayer, pCreature);
            return true;
        }
        else if (uiAction == GOSSIP_GENERATE_LOOT)
        {
            if (pPlayer->IsGameMaster())
            {
                stringstream ss;
                ss << "!!! WARNING !!!" << "\n";
                ss << "You are about to generate loot for YOURSELF." << "\n";
                ss << "If you are trying to fix a loot issue, please do not do this." << "\n";
                ss << "Make a group member generate loot instead by making the loot helper visible." << "\n";
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, ss.str().c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            }
            else
            {
                stringstream ss;
                ss << "!!! WARNING !!!" << "\n";
                ss << "You are about to generate loot for your group." << "\n";
                ss << "Please ensure your members are nearby and ready to loot the boss." << "\n";
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, ss.str().c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            }
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "Generate loot and make the helper lootable.", GOSSIP_SENDER_MAIN, GOSSIP_GENERATE_LOOT_REAL);
            pPlayer->SEND_GOSSIP_MENU(1001000, pCreature->GetGUID());
            return true;
        }
        else if (uiAction == GOSSIP_GENERATE_LOOT_REAL)
        {
            const auto creatureTemplate = sObjectMgr.GetCreatureTemplate(loothelperAi->GetCreatureEntry());
            if (!creatureTemplate)
            {
                return false;
            }
            pCreature->SetLootRecipient(pPlayer);
            pCreature->SetLootIdOverride(creatureTemplate->loot_id);
            pCreature->SetGoldOverride(creatureTemplate->gold_min, creatureTemplate->gold_max);

            KillCreature(pPlayer, pCreature);
        }
        pPlayer->CLOSE_GOSSIP_MENU();
        return true;
    }
    else
    {
        return false;
    }
}


CreatureAI* GetAI_npc_loothelper(Creature* pCreature)
{
    return new npc_loothelperAI(pCreature);
}

void AddSC_npc_loothelper()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "npc_loothelper";
    newscript->GetAI = &GetAI_npc_loothelper;
    newscript->pGossipHello = &GossipHello_npc_loothelper;
    newscript->pGossipSelect = &GossipSelect_npc_loothelper;
    newscript->RegisterSelf();
}

inline npc_loothelperAI::npc_loothelperAI(Creature* pCreature) : ScriptedAI(pCreature)
{
    Reset();
}

uint32_t npc_loothelperAI::GetCreatureEntry() const
{
    return lootEntry;
}

inline bool npc_loothelperAI::IsVisibleToPlayers() const { return visibleToPlayers; }

void npc_loothelperAI::SetCreatureEntry(uint32_t entry)
{
    lootEntry = entry;
}

inline void npc_loothelperAI::SetPlayerVisibility(bool visible)
{
    visibleToPlayers = visible;
    if (visible)
    {
        me->SetVisibility(VISIBILITY_ON);
    }
    else
    {
        me->SetVisibility(VISIBILITY_OFF);
    }
}

inline void npc_loothelperAI::Reset()
{
    SetPlayerVisibility(false);
}
