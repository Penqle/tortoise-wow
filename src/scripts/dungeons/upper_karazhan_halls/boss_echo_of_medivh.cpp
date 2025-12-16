#include "scriptPCH.h"

enum
{
    SPELL_ENRAGE = 8269,
    SPELL_GUARDIANS_IRE = 51109,
    SPELL_MEDIVHS_FURY = 51110,
    SPELL_GAZE_OF_THE_GUARDIAN = 51111,
    SPELL_PYROBLAST = 51112,
    SPELL_FLAMESTRIKE = 51113,
    SPELL_FROST_NOVA = 51114,
    SPELL_ARCANE_BLAST = 51116,
    SPELL_FROSTBOLT = 51118,
    SPELL_ARCANE_MISSILES = 51120,
    SPELL_SHADEBOLT = 51121,
    SPELL_SHADOWBOLT = 51122,
    SPELL_SHADOWFORM = 51125,

    NPC_SHADE_OF_MEDIVH = 59994,
    NPC_UNSTOPPABLE_INFERNAL = 59995,
};

struct npc_echo_of_medivhAI : public ScriptedAI
{
    npc_echo_of_medivhAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();

    }

    bool m_phase2;
    bool m_phase3;
    bool m_phase4;
    uint32 m_gazeOftheGuardianTimer;
    uint32 m_summonShadeOfMedivhTimer;

    void Reset() override
    {
        m_phase2 = false;
        m_phase3 = false;
        m_phase4 = false;
        m_summonShadeOfMedivhTimer = 10000;
        m_gazeOftheGuardianTimer = urand(20000, 25000);
    }

    void SpellHit(WorldObject* pCaster, SpellEntry const* pSpellEntry) override
    {
        if (pSpellEntry->HasEffect(SPELL_EFFECT_INTERRUPT_CAST))
        {
            m_creature->CastSpell(m_creature, SPELL_GUARDIANS_IRE, true);

            if (SpellAuraHolder* pAura = m_creature->GetSpellAuraHolder(SPELL_GUARDIANS_IRE))
            {
                if (pAura->GetStackAmount() >= 4)
                    m_creature->CastSpell(m_creature, SPELL_MEDIVHS_FURY, true);
            }
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->HasAura(SPELL_SHADOWFORM))
        {
            if (m_summonShadeOfMedivhTimer <= diff)
            {
                m_creature->SummonCreature(NPC_SHADE_OF_MEDIVH, 0, 0, 0, 0, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 30000);
                m_summonShadeOfMedivhTimer = 10000;
            }
            else
                m_summonShadeOfMedivhTimer -= diff;
        }

        if (m_creature->IsNonMeleeSpellCasted())
            return;

        if (m_gazeOftheGuardianTimer <= diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_GAZE_OF_THE_GUARDIAN) == CAST_OK)
            {
                m_gazeOftheGuardianTimer = urand(20000, 25000);
                return;
            }
        }
        else
            m_gazeOftheGuardianTimer -= diff;

        if (m_creature->GetHealthPercent() < 80.0f && !m_phase2)
        {
            m_phase2 = true;
            m_creature->SummonCreature(NPC_UNSTOPPABLE_INFERNAL, 0, 0, 0, 0, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 30000);
            return;
        }

        if (m_creature->GetHealthPercent() < 50.0f && !m_phase3)
        {
            m_phase3 = true;
            m_creature->CastSpell(m_creature, SPELL_SHADOWFORM, true);
            m_creature->SummonCreature(NPC_UNSTOPPABLE_INFERNAL, 0, 0, 0, 0, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 30000);
            return;
        }

        if (m_creature->GetHealthPercent() < 20.0f && !m_phase4)
        {
            m_phase4 = true;
            m_creature->CastSpell(m_creature, SPELL_ENRAGE, true);
            m_creature->CastSpell(m_creature, SPELL_MEDIVHS_FURY, true);
            m_creature->SummonCreature(NPC_UNSTOPPABLE_INFERNAL, 0, 0, 0, 0, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 30000);
            return;
        }

        std::vector<uint32> availableSpells = { SPELL_PYROBLAST, SPELL_FLAMESTRIKE, SPELL_FROST_NOVA, SPELL_ARCANE_BLAST, SPELL_FROSTBOLT, SPELL_ARCANE_MISSILES };
        if (m_creature->HasAura(SPELL_SHADOWFORM))
            availableSpells.push_back(SPELL_SHADOWBOLT);
        else
            availableSpells.push_back(SPELL_SHADEBOLT);

        uint32 const spellId = SelectRandomContainerElement(availableSpells);

        if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, spellId, SELECT_FLAG_IN_LOS | SELECT_FLAG_PLAYER))
        {
            if (DoCastSpellIfCan(pTarget, spellId) == CAST_OK)
                return;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_echo_of_medivh(Creature* pCreature)
{
    return new npc_echo_of_medivhAI(pCreature);
}

void AddSC_boss_echo_of_medivh()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_echo_of_medivh";
    newscript->GetAI = &GetAI_npc_echo_of_medivh;
    newscript->RegisterSelf();
}
