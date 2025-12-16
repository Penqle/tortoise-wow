#pragma once
#include <cstdint>
#include <AI/ScriptedAI.h>
#include <AI/AbilityTimer.h>

#include "scriptPCH.h"

class Creature;
class CreatureAI;

struct npc_arcanist_nozzlespring : public ScriptedAI
{
    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    AbilityTimer m_fireballTimer = AbilityTimer(13375, 0, 0, 0);
public:
    npc_arcanist_nozzlespring(Creature* pCreature);

    void Reset() override;

    void UpdateAI(const uint32_t delta) override;

    static CreatureAI* GetAI(Creature* pCreature);

    static void RegisterScript();
};
