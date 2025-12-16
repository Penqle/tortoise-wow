#include "scriptPCH.h"

enum
{
    SPELL_ARCANE_OVERLOAD = 51100,
    SPELL_ARCANE_DAMPENING = 51101,
    SPELL_UNSTABLE_MAGIC = 51102,
    SPELL_ARCANE_PRISON = 51107,
};

struct npc_anomalusAI : public ScriptedAI
{
    npc_anomalusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_arcaneOverloadTimer;
    uint32 m_unstableMagicTimer;
    uint32 m_arcanePrisonTimer;

    void Reset() override
    {
        m_arcaneOverloadTimer = 7500;
        m_unstableMagicTimer = 14000;
        m_arcanePrisonTimer = 3000;
    }

    float GetSpellTimerMultiplier() const
    {
        return std::max(30.0f, m_creature->GetHealthPercent()) / 100.0f;
    }

    bool SelectTargetAndTryCast(uint32 spellId)
    {
        auto const& threatList = m_creature->GetThreatManager().getThreatList();
        for (auto const& itr : threatList)
        {
            if (Player* pPlayer = ToPlayer(itr->getTarget()))
            {
                if (pPlayer != m_creature->GetVictim() && !pPlayer->HasAura(SPELL_ARCANE_OVERLOAD) && !pPlayer->HasAura(SPELL_ARCANE_DAMPENING) && !pPlayer->HasAura(SPELL_ARCANE_PRISON))
                {
                    if (DoCastSpellIfCan(pPlayer, spellId) == CAST_OK)
                        return true;
                }
            }
        }

        return false;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_arcaneOverloadTimer <= uiDiff)
        {
            if (SelectTargetAndTryCast(SPELL_ARCANE_OVERLOAD))
                m_arcaneOverloadTimer = uint32(15000.0f * GetSpellTimerMultiplier());
        }
        else
            m_arcaneOverloadTimer -= uiDiff;

        if (m_unstableMagicTimer <= uiDiff)
        {
            if (SelectTargetAndTryCast(SPELL_UNSTABLE_MAGIC))
                m_unstableMagicTimer = uint32(24000.0f * GetSpellTimerMultiplier());
        }
        else
            m_unstableMagicTimer -= uiDiff;

        if (m_arcanePrisonTimer <= uiDiff)
        {
            if (SelectTargetAndTryCast(SPELL_ARCANE_PRISON))
                m_arcanePrisonTimer = uint32(9000.0f * GetSpellTimerMultiplier());
        }
        else
            m_arcanePrisonTimer -= uiDiff;


        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_anomalus(Creature* pCreature)
{
    return new npc_anomalusAI(pCreature);
}

enum
{
    SPELL_UNSTABLE_ZONE = 51103, // aoe visual on ground
    SPELL_UNSTABLE_DAMAGE = 51104, // deals damage to target
};

struct npc_unstable_magic_zoneAI : public ScriptedAI
{
    npc_unstable_magic_zoneAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
        m_creature->CastSpell(m_creature, SPELL_UNSTABLE_ZONE, true);
        m_creature->m_Events.AddLambdaEventAtOffset([npc = m_creature]() { npc->DoKillUnit(); }, 8000);
    }

    void Reset() override
    {
        SetCombatMovement(false);
        SetMeleeAttack(false);
    }

    void DamageTaken(Unit* pAttacker, uint32& damage) override
    {
        if (pAttacker == m_creature)
            return;

        damage = 0;
    }

    void JustDied(Unit*) override
    {
        if (Player* pPlayer = m_creature->FindNearestPlayer(8.0f))
        {
            m_creature->CastSpell(pPlayer, SPELL_UNSTABLE_DAMAGE, true);
            return;
        }

        std::list<Player*> players;
        m_creature->GetAlivePlayerListInRange(m_creature, players, 200.0f);
        for (Player* pPlayer : players)
            m_creature->CastSpell(pPlayer, SPELL_UNSTABLE_DAMAGE, true);
    }
};

CreatureAI* GetAI_npc_unstable_magic_zone(Creature* pCreature)
{
    return new npc_unstable_magic_zoneAI(pCreature);
}

void AddSC_boss_anomalus()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_anomalus";
    newscript->GetAI = &GetAI_npc_anomalus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_unstable_magic_zone";
    newscript->GetAI = &GetAI_npc_unstable_magic_zone;
    newscript->RegisterSelf();
}
