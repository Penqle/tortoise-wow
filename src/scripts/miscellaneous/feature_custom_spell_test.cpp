#include "scriptPCH.h"

struct boss_custom_spell_test_AI : public ScriptedAI
{
    boss_custom_spell_test_AI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 counter = 0;
    uint32 pyro_timer;

    void SetDefaults()
    {
        pyro_timer = 10000;
        counter = 0;
    }

    void Aggro(Unit* who) override
    {

    }

    void Reset() override
    {
        SetDefaults();
    }

    void JustRespawned() override
    {
        SetDefaults();
    }

    void JustReachedHome() override
    {
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (pyro_timer < diff)
        {
            ++counter;
            auto spellEntry = sSpellMgr.GetSpellEntry(11366);
            auto customSpellEntry = new SpellEntry(*spellEntry);
            customSpellEntry->EffectBasePoints[EFFECT_0] *= counter;
            me->CastCustomSpell(me->GetVictim(), customSpellEntry);
           // me->CastSpell(me->GetVictim(), spellEntry, false);
            pyro_timer = urand(9000, 14000);
        }
        else
            pyro_timer -= diff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* Get_AIboss_custom_spell_test_AI(Creature* creature)
{
    return new boss_custom_spell_test_AI(creature);
}

void AddSC_CUSTOM_SPELL()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "boss_custom_spell";
    newscript->GetAI = &Get_AIboss_custom_spell_test_AI;
    newscript->RegisterSelf();
}
