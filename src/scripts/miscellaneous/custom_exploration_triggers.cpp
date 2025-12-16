#include "scriptPCH.h"

struct custom_exploration_trigger : public GameObjectAI
{
    explicit custom_exploration_trigger(GameObject* pGo) : GameObjectAI(pGo) { m_uiUpdateTimer = 1000; }
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            using namespace std;
            using namespace MaNGOS;

            list<Player*> players;
            AnyPlayerInObjectRangeCheck check(me, 30.0f);
            PlayerListSearcher<AnyPlayerInObjectRangeCheck> searcher(players, check);
            Cell::VisitWorldObjects(me, searcher, 30.0f);

            for (Player* player : players)
            {
                if (player->IsAlive())
                {                    
                    array<tuple<uint32, uint32, uint32>, 6> quests_and_objectives =
                    {{                        
                        { 80204, 80203, 3000201 }, // Gathering Intel    
                        { 70029, 70028, 3000101 }, // What We Know  
                        { 39001, 20120, 3000102 }, // Curiosity Leads Us Forward         
                        { 40295, 60343, 2010868 }, // Mystery of Lake Mennar
                        { 40420, 60374, 2010890 }, // Nethergarde Scouting
                        { 40486, 60376, 2010903 }  // Investigating Hateforge
                    }};
                    for (auto const& quest : quests_and_objectives)
                    {
                        const auto& [quest_id, objective_id, gameobject_id] = quest;
                        if ((player->GetQuestStatus(quest_id) == QUEST_STATUS_INCOMPLETE) && me->GetEntry() == gameobject_id)
                        {
                            if (CreatureInfo const* objective = sObjectMgr.GetCreatureTemplate(objective_id))
                                player->KilledMonster(objective, ObjectGuid());
                        }                                                        
                    }
                }
            }
            m_uiUpdateTimer = 2500;
        }
        else
        m_uiUpdateTimer -= uiDiff;
    }
};

GameObjectAI* GetAI_custom_exploration_trigger(GameObject* gameobject) { return new custom_exploration_trigger(gameobject); }

void AddSC_custom_exploration_triggers()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "custom_exploration_trigger";
    newscript->GOGetAI = &GetAI_custom_exploration_trigger;
    newscript->RegisterSelf();
}
