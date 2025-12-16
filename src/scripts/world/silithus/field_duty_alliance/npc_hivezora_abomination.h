#pragma once
#include <cstdint>
#include <vector>
#include <AI/AbilityTimer.h>

#include "scriptPCH.h"

class Creature;
class CreatureAI;

struct npc_hivezora_abomination : public ScriptedAI
{
    uint32_t m_currentWaypoint;
    std::vector <Movement::Location> m_waypoints;

    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    AbilityTimer m_abominationSpitTimer = AbilityTimer(25262, 10000, 20000);
    AbilityTimer m_envelopingWindsTimer = AbilityTimer(23103, 10000, 20000);
    AbilityTimer m_poisonCloudTimer = AbilityTimer(25198, 10000, 20000);
    AbilityTimer m_wingsOfDespairTimer = AbilityTimer(25260, 30000, 45000);

    bool m_combatStopping = false;

public:
    npc_hivezora_abomination(Creature* pCreature);

    void EnterEvadeMode() override;
    void MovementInform(uint32_t movementType, uint32_t pointId) override;
    void Reset() override;
    void OnCombatStop() override;
    void UpdateAI(const uint32_t delta) override;

    void BecomeAttackable() const;
    void BecomeImmune() const;
    void BeginPathing();

    static CreatureAI* GetAI(Creature* pCreature);

    static void RegisterScript();
};
