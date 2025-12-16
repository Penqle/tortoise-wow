#include "scriptPCH.h"

enum
{
    SPELL_BLUE_MOON_AURA = 51080,
    SPELL_RED_MOON_AURA = 51081,
    SPELL_WORGEN_DIMENSION = 51096,

    NPC_RED_OWL = 59997,
    NPC_BLUE_OWL = 59998,
};

struct boss_keeper_gnarlmoonAI : public ScriptedAI
{
    boss_keeper_gnarlmoonAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    bool m_firstIntermission;
    bool m_secondIntermission;
    uint32 m_deadOwlCount;

    void Reset() override
    {
        m_firstIntermission = false;
        m_secondIntermission = false;
        m_deadOwlCount = 0;
    }

    void EnterCombat(Unit* pVictim) override
    {
        m_creature->MonsterYell("DEBUG: Enter Combat");

        std::list<Player*> players;
        m_creature->GetAlivePlayerListInRange(m_creature, players, 100.0f);

        uint32 count = 0;
        for (Player* pPlayer : players)
        {
            if (count++ > (players.size() / 2))
                pPlayer->AddAura(SPELL_BLUE_MOON_AURA, 0, m_creature);
            else
                pPlayer->AddAura(SPELL_RED_MOON_AURA, 0, m_creature);
        }
    }

    void BeginIntermission()
    {
        m_creature->MonsterYell("DEBUG: Begin Intermission");
        m_creature->CastSpell(m_creature, SPELL_WORGEN_DIMENSION, true);
        m_deadOwlCount = 0;
        
        if (Creature* pOwl = m_creature->SummonCreature(NPC_BLUE_OWL, -11123.232f, -1849.593f, 165.766f, 5.375f, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000))
            pOwl->SetInCombatWithZone();
        if (Creature* pOwl = m_creature->SummonCreature(NPC_BLUE_OWL, -11094.944f, -1827.316f, 165.766f, 5.375f, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000))
            pOwl->SetInCombatWithZone();
        if (Creature* pOwl = m_creature->SummonCreature(NPC_RED_OWL, -11101.063f, -1877.609f, 165.766f, 2.194f, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000))
            pOwl->SetInCombatWithZone();
        if (Creature* pOwl = m_creature->SummonCreature(NPC_RED_OWL, -11073.061f, -1855.183f, 165.765f, 2.194f, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000))
            pOwl->SetInCombatWithZone();

    }

    void EndIntermission()
    {
        m_creature->MonsterYell("DEBUG: End Intermission");
        m_creature->RemoveAurasDueToSpell(SPELL_WORGEN_DIMENSION);
    }

    void SummonedCreatureJustDied(Creature* pSummon) override
    {
        if (pSummon->GetEntry() == NPC_BLUE_OWL || pSummon->GetEntry() == NPC_RED_OWL)
        {
            m_creature->MonsterYell("DEBUG: Owl Died");

            if (++m_deadOwlCount >= 4)
                EndIntermission();
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_firstIntermission && m_creature->GetHealthPercent() < 66.6f)
        {
            m_firstIntermission = true;
            BeginIntermission();
            return;
        }

        if (!m_secondIntermission && m_creature->GetHealthPercent() < 33.3f)
        {
            m_secondIntermission = true;
            BeginIntermission();
            return;
        }

        if (!m_CreatureSpells.empty())
            UpdateSpellsList(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_keeper_gnarlmoon(Creature* pCreature)
{
    return new boss_keeper_gnarlmoonAI(pCreature);
}

struct npc_blood_ravenAI : public ScriptedAI
{
    npc_blood_ravenAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    void Reset() override
    {
    }

    void DamageTaken(Unit* pAttacker, uint32& damage) override
    {
        if (!pAttacker->HasAura(SPELL_BLUE_MOON_AURA))
            damage = 0;
    }
};

CreatureAI* GetAI_npc_blood_raven(Creature* pCreature)
{
    return new npc_blood_ravenAI(pCreature);
}

void AddSC_boss_keeper_gnarlmoon()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_keeper_gnarlmoon";
    newscript->GetAI = &GetAI_boss_keeper_gnarlmoon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_blood_raven";
    newscript->GetAI = &GetAI_npc_blood_raven;
    newscript->RegisterSelf();
}
