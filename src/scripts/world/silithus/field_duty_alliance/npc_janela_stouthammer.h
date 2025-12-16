#pragma once
#include <AI/AbilityTimer.h>
#include "trigger_field_duty_alliance.h"

#include "scriptPCH.h"

struct npc_janela_stouthammer : public ScriptedAI
{
private:
    constexpr static int GOSSIP_ACTION_REPORTING_FOR_FIELD_DUTY = GOSSIP_ACTION_INFO_DEF + 1;
    constexpr static int GOSSIP_ACTION_START_EVENT = GOSSIP_ACTION_REPORTING_FOR_FIELD_DUTY + 1;

    constexpr static uint32_t GOSSIP_TEXT_REPORTING_FOR_FIELD_DUTY = 2593001;
    constexpr static uint32_t GOSSIP_TEXT_WERE_EXPECTING_AN_ATTACK = 2593002;
    constexpr static uint32_t GOSSIP_TEXT_IM_READY_START_EVENT = 2593003;
    constexpr static uint32_t GOSSIP_TEXT_THANKS_FOR_ASSIST = 2593005;

    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    AbilityTimer m_crusaderStrikeTimer = AbilityTimer(14518, 7500, 15000, 0);
    // Divine Shield is used only if we're low hp
    AbilityTimer m_divineShieldTimer = AbilityTimer(13874, 60000, 120000, 0);
    AbilityTimer m_holyLightTimer = AbilityTimer(25263, 5000, 10000, 0);

    ObjectGuid m_cachedTriggerGuid;

    [[nodiscard]] trigger_field_duty_alliance* FindTriggerAI();

    static npc_janela_stouthammer* GetStouthammerAI(Creature* creature);

    void StartEvent();

public:
    npc_janela_stouthammer(Creature* pCreature);

    void Aggro(Unit* creature) override;
    void Reset() override;
    void UpdateAI(const uint32 delta) override;

    void EventReset();

    static CreatureAI* GetAI(Creature* pCreature);
    static bool GossipHello(Player* player, Creature* creature);
    static bool GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action);
    static void RegisterScript();
};
