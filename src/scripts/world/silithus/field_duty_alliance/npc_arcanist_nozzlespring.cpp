#include "npc_arcanist_nozzlespring.h"

npc_arcanist_nozzlespring::npc_arcanist_nozzlespring(Creature* pCreature): ScriptedAI(pCreature)
{
    npc_arcanist_nozzlespring::Reset();
}

void npc_arcanist_nozzlespring::Reset()
{
}

void npc_arcanist_nozzlespring::UpdateAI(const uint32 delta)
{
    if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
    {
        return;
    }

    m_gcdTimer.Update(delta);
    m_fireballTimer.Update(delta);

    if (m_creature->IsNonMeleeSpellCasted(false))
    {
        return;
    }

    if (m_fireballTimer.IsReady() && m_gcdTimer.IsReady())
    {
        const auto result = m_creature->CastSpell(m_creature->GetVictim(), m_fireballTimer.SpellID(), false);
        if (result == SPELL_CAST_OK)
        {
            m_creature->ResetAttackTimer();
            m_fireballTimer.Reset();
            m_gcdTimer.Reset();
        }
    }

    DoMeleeAttackIfReady();
}

CreatureAI* npc_arcanist_nozzlespring::GetAI(Creature* pCreature)
{
    return new npc_arcanist_nozzlespring(pCreature);
}

void npc_arcanist_nozzlespring::RegisterScript()
{
    const auto script = new Script();
    script->Name = "npc_arcanist_nozzlespring";
    script->GetAI = &npc_arcanist_nozzlespring::GetAI;
    script->RegisterSelf();
}
