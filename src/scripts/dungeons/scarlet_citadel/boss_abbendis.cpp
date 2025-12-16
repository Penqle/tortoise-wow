/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"
#include "boss_abbendis.hpp"


class boss_abbendisAI : public ScriptedAI
{
public:
    explicit boss_abbendisAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        boss_abbendisAI::Reset();
    }

private:

    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {

    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ABBENDIS, IN_PROGRESS);
        m_creature->SetInCombatWithZone();
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;
        
        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ABBENDIS, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;
    
        m_creature->SetRespawnDelay(604800);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ABBENDIS, DONE);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_abbendis(Creature* pCreature)
{
    return new boss_abbendisAI(pCreature);
}

void AddSC_boss_abbendis()
{
    Script* pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "boss_abbendis";
    pNewscript->GetAI = &GetAI_boss_abbendis;
    pNewscript->RegisterSelf();
}
