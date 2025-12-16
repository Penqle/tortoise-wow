#pragma once
#include <AI/AbilityTimer.h>

#include "scriptPCH.h"

struct npc_captain_blackanvil : public ScriptedAI
{
private:
    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    AbilityTimer m_mortalStrikeTimer = AbilityTimer(16856, 4000, 10000);
    AbilityTimer m_thunderClapTimer = AbilityTimer(15548, 10000, 15000);

    constexpr static uint32_t GOSSIP_TEXT_NOT_IMPRESSED_EVENT_COMPLETE = 2593004;

    static npc_captain_blackanvil* GetBlackanvilAI(Creature* creature);
public:
    explicit npc_captain_blackanvil(Creature* pCreature);

    void Reset() override;
    void UpdateAI(const uint32 delta) override;
    static bool GossipHello(Player* player, Creature* creature);
    static bool GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action);

    static CreatureAI* GetAI(Creature* pCreature);
    static void RegisterScript();
};
