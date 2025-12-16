#pragma once
#include "ScriptedAI.h"

class npc_loothelperAI : public ScriptedAI
{
private:
    uint32_t lootEntry = 0;
    bool visibleToPlayers = false;
public:
    npc_loothelperAI(Creature* pCreature);

    uint32_t GetCreatureEntry() const;
    bool IsVisibleToPlayers() const;
    void SetCreatureEntry(uint32_t entry);
    void SetPlayerVisibility(bool visible);

    void Reset() override;
};