#include "scriptPCH.h"

/* boss_taranaszz */

enum RaresSpells
{
    /* boss_tarangos */
    SPELL_ICE_BREATH = 16350,
    SPELL_REND       = 17153,
    /* boss_blademaster_kargron */
    SPELL_THRASH     = 21919,
    SPELL_PARRY      = 5256,
    SPELL_ENRAGE     = 28131,

    SPELL_TRANSFORM_VISUAL = 24085,
    SPELL_MOONFIRE_AOE     = 27737,
    SPELL_WRATH            = 27737,
    SPELL_REGROWTH         = 27637,
    SPELL_HEALING_TOUCH    = 25297,
    /**/
    SPELL_LIGHTNING_BOLT   = 15207,
    SPELL_LIGHTNING_SHIELD = 10432,
    SPELL_HEALING_TOTEM    = 10463,
    /**/
    SPELL_AOE_FEAR         = 5246,
    SPELL_POISON_BOLT      = 22937,
    /**/
    SPELL_BIG_FIREBALL     = 20678,
    SPELL_IMMOLATE         = 20294,
    SPELL_FIRE_NOVA        = 23462,
    /**/
    SPELL_CLEAVE           = 26350,
    SPELL_SHIELD_BLOCK     = 12169,
    SPELL_SPELLSTONE       = 128,
    /**/
    SPELL_DEVOTION_AURA    = 10293,
    SPELL_HOLY_STRIKE      = 17284,
    SPELL_HAMMER_OF_JUSTICE = 10308,
    SPELL_HOLY_LIGHT       = 25292,
    SPELL_HAMMER_OF_WRATH  = 24239,
    /**/
    SPELL_RAGE             = 12686,
    SPELL_SUNDER_ARMOR     = 11596,
    /**/
    SPELL_FIRE_SHIELD      = 19626,
    SPELL_EVASION          = 15087,
    SPELL_SLICE_AND_DICE   = 6434,
    SPELL_SWEEPING_STRIKES = 12292,
    SPELL_IMMOLATE1        = 25309,
    /**/
    SPELL_THUNDER_CLAP     = 11581,
    SPELL_KNOCKBACK        = 19813,
    SPELL_DEM_SHOUT        = 11556,
};

enum RaresEvents
{
    /* boss_tarangos */
    EVENT_ICE_BREATH = 1,
    EVENT_REND,
    /* boss_blademaster_kargron */
    EVENT_THRASH,
    /**/
    EVENT_MOONFIRE_AOE,
    EVENT_WRATH,
    EVENT_HEALING_TOUCH,
    EVENT_TRANSFORM,
    /**/
    EVENT_LIGHTNING_BOLT,
    EVENT_LIGHTNING_SHIELD,
    EVENT_HEALING_TOTEM,
    /**/
    EVENT_AOE_FEAR,
    EVENT_POISON_BOLT,
    /**/
    EVENT_BIG_FIREBALL,
    EVENT_IMMOLATE,
    EVENT_FIRE_NOVA,
    /**/
    EVENT_CLEAVE,
    EVENT_SHIELD_BLOCK,
    EVENT_SPELLSTONE,
    /**/
    EVENT_HOLY_STRIKE,
    EVENT_HAMMER_OF_JUSTICE,
    EVENT_HOLY_LIGHT,
    EVENT_HAMMER_OF_WRATH,
    /**/
    EVENT_RAGE,
    EVENT_SUNDER_ARMOR,
    /**/
    EVENT_EVASION,
    EVENT_SLICE_AND_DICE,
    EVENT_SWEEPING_STRIKES,
    /**/
    EVENT_THUNDER_CLAP,
    EVENT_KNOCKBACK,
    EVENT_DEM_SHOUT,
};

struct boss_tarangosAI : public ScriptedAI
{
    boss_tarangosAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_ICE_BREATH, Seconds(urand(15, 60)));
        m_events.ScheduleEvent(EVENT_REND, Seconds(urand(10, 45)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_ICE_BREATH:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ICE_BREATH) == CAST_OK)
                        m_events.Repeat(Seconds(60));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_REND:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REND) == CAST_OK)
                        m_events.Repeat(Seconds(45));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_blademaster_kargronAI : public ScriptedAI
{
    boss_blademaster_kargronAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;
    bool m_bEnraged;

    void Reset() override
    {
        m_events.Reset();
        m_bEnraged = false;
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_THRASH, Seconds(urand(5, 30)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bEnraged)
        {
            if (m_creature->GetHealthPercent() < 20.0f)
            {
                DoCastSpellIfCan(m_creature, SPELL_PARRY, CF_TRIGGERED | CF_FORCE_CAST);
                DoCastSpellIfCan(m_creature, SPELL_ENRAGE, CF_TRIGGERED | CF_FORCE_CAST);
                m_bEnraged = true;
            }
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_THRASH:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_THRASH) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

enum Phases
{
    PHASE_MOONKIN,
    PHASE_NIGHT_ELF
};

struct boss_mallon_the_moontouchedAI : public ScriptedAI
{
    boss_mallon_the_moontouchedAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;
    Phases phase;
    bool m_bRegrowth;

    void Reset() override
    {
        phase = PHASE_MOONKIN;
        m_events.Reset();
        m_bRegrowth = false;
        m_creature->SetDisplayId(m_creature->GetNativeDisplayId());
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_MOONFIRE_AOE, Seconds(15));
        m_events.ScheduleEvent(EVENT_WRATH, Seconds(urand(5, 20)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (phase == PHASE_MOONKIN)
        {
            if (m_creature->GetHealthPercent() < 50.0f)
            {
                phase = PHASE_NIGHT_ELF;
                m_events.RescheduleEvent(EVENT_MOONFIRE_AOE, Seconds(15));
                m_events.CancelEvent(EVENT_WRATH);
                m_events.ScheduleEvent(EVENT_HEALING_TOUCH, Seconds(urand(30, 70)));
                DoCast(m_creature, SPELL_TRANSFORM_VISUAL);
                m_events.ScheduleEvent(EVENT_TRANSFORM, 250);
            }
        }
        else
        {
            if (m_creature->GetHealthPercent() < 10.0f && !m_bRegrowth)
            {
                DoCastSpellIfCan(m_creature, SPELL_REGROWTH, CF_TRIGGERED | CF_FORCE_CAST);
                m_bRegrowth = true;
            }
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_MOONFIRE_AOE:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_MOONFIRE_AOE) == CAST_OK)
                        m_events.Repeat(Seconds(50));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_WRATH:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_WRATH) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HEALING_TOUCH:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_HEALING_TOUCH) == CAST_OK)
                        m_events.Repeat(Seconds(70));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_TRANSFORM:
                {
                    m_creature->SetDisplayId(18750);
                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_grugthok_the_seerAI : public ScriptedAI
{
    boss_grugthok_the_seerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_LIGHTNING_BOLT, Seconds(urand(2, 10)));
        m_events.ScheduleEvent(EVENT_LIGHTNING_SHIELD, Seconds(urand(10, 30)));
        m_events.ScheduleEvent(EVENT_HEALING_TOTEM, Seconds(urand(30, 60)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_LIGHTNING_BOLT:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_LIGHTNING_BOLT) == CAST_OK)
                        m_events.Repeat(Seconds(10));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_LIGHTNING_SHIELD:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_LIGHTNING_SHIELD) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HEALING_TOTEM:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_HEALING_TOTEM, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(60));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_twilight_watcher_crendusAI : public ScriptedAI
{
    boss_twilight_watcher_crendusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_BIG_FIREBALL, Seconds(urand(20, 40)));
        m_events.ScheduleEvent(EVENT_IMMOLATE, Seconds(urand(5, 25)));
        m_events.ScheduleEvent(EVENT_FIRE_NOVA, Seconds(urand(10, 15)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_BIG_FIREBALL:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_BIG_FIREBALL) == CAST_OK)
                        m_events.Repeat(Seconds(40));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_IMMOLATE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_IMMOLATE) == CAST_OK)
                        m_events.Repeat(Seconds(25));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_FIRE_NOVA:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_FIRE_NOVA, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(15));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_the_wandering_knightAI : public ScriptedAI
{
    boss_the_wandering_knightAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;
    bool m_bEnraged;

    void Reset() override
    {
        m_events.Reset();
        m_bEnraged = false;
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_CLEAVE, Seconds(urand(10, 20)));
        m_events.ScheduleEvent(EVENT_SHIELD_BLOCK, Seconds(urand(5, 15)));
        m_events.ScheduleEvent(EVENT_SPELLSTONE, Seconds(urand(20, 45)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bEnraged)
        {
            if (m_creature->GetHealthPercent() < 10.0f)
            {
                DoCastSpellIfCan(m_creature, SPELL_ENRAGE, CF_FORCE_CAST);
                m_bEnraged = true;
            }
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_CLEAVE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_SHIELD_BLOCK:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_SHIELD_BLOCK) == CAST_OK)
                        m_events.Repeat(Seconds(15));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_SPELLSTONE:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_SPELLSTONE) == CAST_OK)
                        m_events.Repeat(Seconds(45));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_crusader_larsariusAI : public ScriptedAI
{
    boss_crusader_larsariusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
        m_creature->RemoveAurasDueToSpell(SPELL_DEVOTION_AURA);
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();
        DoCast(m_creature, SPELL_DEVOTION_AURA, true);

        m_events.ScheduleEvent(EVENT_HOLY_STRIKE, Seconds(urand(8, 20)));
        m_events.ScheduleEvent(EVENT_HAMMER_OF_JUSTICE, Seconds(urand(10, 30)));
        m_events.ScheduleEvent(EVENT_HOLY_LIGHT, Seconds(urand(20, 40)));
        m_events.ScheduleEvent(EVENT_HAMMER_OF_WRATH, Seconds(5));
    }

    Unit* GetTargetHammerOfWrath()
    {
        if (!m_creature->CanHaveThreatList())
            return nullptr;

        // ThreatList m_threatlist;
        ThreatList const& threatlist = m_creature->GetThreatManager().getThreatList();
        ThreatList::const_iterator itr = threatlist.begin();

        if (threatlist.empty())
            return nullptr;

        std::vector<Unit*> suitableUnits;
        suitableUnits.reserve(threatlist.size());
        advance(itr, 0);
        for (; itr != threatlist.end(); ++itr)
        {
            if (Unit* pTarget = m_creature->GetMap()->GetUnit((*itr)->getUnitGuid()))
            {
                if (pTarget->ToPlayer() && pTarget->GetHealthPercent() < 20.0f)
                    return pTarget;
            }
        }

        return nullptr;
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HOLY_STRIKE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_JUSTICE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HOLY_LIGHT:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_HOLY_LIGHT) == CAST_OK)
                        m_events.Repeat(Seconds(40));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_WRATH:
                {
                    if (Unit* target = GetTargetHammerOfWrath())
                    {
                        if (DoCastSpellIfCan(m_creature, SPELL_HAMMER_OF_WRATH) == CAST_OK)
                            m_events.Repeat(Seconds(6));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_kintozoAI : public ScriptedAI
{
    boss_kintozoAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;
    bool m_bEnraged;

    void Reset() override
    {
        m_events.Reset();
        m_bEnraged = false;
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_RAGE, Seconds(urand(20, 45)));
        m_events.ScheduleEvent(EVENT_SUNDER_ARMOR, Seconds(urand(10, 20)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bEnraged)
        {
            if (m_creature->GetHealthPercent() < 20.0f)
            {
                DoCastSpellIfCan(m_creature, SPELL_ENRAGE, CF_FORCE_CAST);
                m_bEnraged = true;
            }
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_RAGE:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_RAGE) == CAST_OK)
                        m_events.Repeat(Seconds(45));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_SUNDER_ARMOR:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SUNDER_ARMOR) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_zareth_terrorbladeAI : public ScriptedAI
{
    boss_zareth_terrorbladeAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
        m_creature->RemoveAurasDueToSpell(SPELL_FIRE_SHIELD);
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_creature->AddAura(SPELL_FIRE_SHIELD);
        m_events.ScheduleEvent(EVENT_EVASION, Seconds(urand(20, 45)));
        m_events.ScheduleEvent(EVENT_SLICE_AND_DICE, Seconds(urand(15, 30)));
        m_events.ScheduleEvent(EVENT_SWEEPING_STRIKES, Seconds(urand(25, 45)));
        m_events.ScheduleEvent(EVENT_IMMOLATE, Seconds(urand(5, 20)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_EVASION:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_EVASION) == CAST_OK)
                        m_events.Repeat(Seconds(40));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_SLICE_AND_DICE:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_SLICE_AND_DICE) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_SWEEPING_STRIKES:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_SWEEPING_STRIKES, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(45));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_IMMOLATE:
                {
                    if (Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SELECT_FLAG_NO_TOTEM | SELECT_FLAG_NO_PET))
                    {
                        if (DoCastSpellIfCan(target, SPELL_IMMOLATE) == CAST_OK)
                            m_events.Repeat(Seconds(20));
                        else
                            m_events.Repeat(100);
                    }

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_jalakarAI : public ScriptedAI
{
    boss_jalakarAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;
    bool m_bEnraged;

    void Reset() override
    {
        m_events.Reset();
        m_bEnraged = false;
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_THUNDER_CLAP, Seconds(urand(5, 15)));
        m_events.ScheduleEvent(EVENT_KNOCKBACK, Seconds(urand(10, 20)));
        m_events.ScheduleEvent(EVENT_DEM_SHOUT, Seconds(urand(15, 35)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bEnraged)
        {
            if (m_creature->GetHealthPercent() < 15.0f)
            {
                DoCastSpellIfCan(m_creature, SPELL_ENRAGE, CF_FORCE_CAST);
                m_bEnraged = true;
            }
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_THUNDER_CLAP:
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_THUNDER_CLAP) == CAST_OK)
                        m_events.Repeat(Seconds(15));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_KNOCKBACK:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_KNOCKBACK) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_DEM_SHOUT:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DEM_SHOUT) == CAST_OK)
                        m_events.Repeat(Seconds(35));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct boss_explorer_ashbeardAI : public ScriptedAI
{
    boss_explorer_ashbeardAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;
    bool m_bEnraged;

    void Reset() override
    {
        m_events.Reset();
        m_bEnraged = false;
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        m_events.ScheduleEvent(EVENT_DEM_SHOUT, Seconds(urand(15, 35)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bEnraged)
        {
            if (m_creature->GetHealthPercent() < 15.0f)
            {
                DoCastSpellIfCan(m_creature, SPELL_ENRAGE, CF_FORCE_CAST);
                m_bEnraged = true;
            }
        }

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_DEM_SHOUT:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DEM_SHOUT) == CAST_OK)
                        m_events.Repeat(Seconds(35));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_tarangos(Creature* pCreature)
{
    return new boss_tarangosAI(pCreature);
}

CreatureAI* GetAI_boss_blademaster_kargron(Creature* pCreature)
{
    return new boss_blademaster_kargronAI(pCreature);
}

CreatureAI* GetAI_boss_mallon_the_moontouched(Creature* pCreature)
{
    return new boss_mallon_the_moontouchedAI(pCreature);
}

CreatureAI* GetAI_boss_grugthok_the_seer(Creature* pCreature)
{
    return new boss_grugthok_the_seerAI(pCreature);
}

CreatureAI* GetAI_boss_twilight_watcher_crendus(Creature* pCreature)
{
    return new boss_twilight_watcher_crendusAI(pCreature);
}

CreatureAI* GetAI_boss_the_wandering_knight(Creature* pCreature)
{
    return new boss_the_wandering_knightAI(pCreature);
}

CreatureAI* GetAI_boss_crusader_larsarius(Creature* pCreature)
{
    return new boss_crusader_larsariusAI(pCreature);
}

CreatureAI* GetAI_boss_kintozo(Creature* pCreature)
{
    return new boss_kintozoAI(pCreature);
}

CreatureAI* GetAI_boss_zareth_terrorblade(Creature* pCreature)
{
    return new boss_zareth_terrorbladeAI(pCreature);
}

CreatureAI* GetAI_boss_jalakar(Creature* pCreature)
{
    return new boss_jalakarAI(pCreature);
}

CreatureAI* GetAI_boss_explorer_ashbeard(Creature* pCreature)
{
    return new boss_explorer_ashbeardAI(pCreature);
}

namespace nsMobMollyWinterveil {
    static constexpr uint32 SPELL_1 = 11976;
    static constexpr uint32 SPELL_2 = 46266;
}

class mob_molly_winterveilAI : public ScriptedAI {
public:
    explicit mob_molly_winterveilAI(Creature* pCreature) : ScriptedAI(pCreature) {
        Reset();
    }

private:
    uint32 m_spell1Timer = 0; // Timer for SPELL_1 cast
    uint32 m_spell2Timer = 3000; // Timer for first cast of SPELL_2 (3 seconds)
    bool m_spell2FirstCast = true;

public:
    void Reset() override {
        m_spell1Timer = 0;
        m_spell2Timer = 3000;
        m_spell2FirstCast = true;
    }

    void UpdateAI(const uint32 diff) override {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Cast SPELL_1 every 8 seconds
        if (m_spell1Timer < diff) {
            DoCastSpellIfCan(m_creature->GetVictim(), nsMobMollyWinterveil::SPELL_1);
            m_spell1Timer = 8000; // Reset the timer
        }
        else {
            m_spell1Timer -= diff; // Decrement the timer
        }

        // Cast SPELL_2 first 3 seconds into the encounter, then every 24 seconds
        if (m_spell2FirstCast) {
            if (m_spell2Timer < diff) {
                DoCastSpellIfCan(m_creature->GetVictim(), nsMobMollyWinterveil::SPELL_2);
                m_spell2FirstCast = false; // Set to false after the first cast
            }
            else {
                m_spell2Timer -= diff; // Decrement the timer
            }
        }
        else {
            if (m_spell2Timer < diff) {
                DoCastSpellIfCan(m_creature->GetVictim(), nsMobMollyWinterveil::SPELL_2);
                m_spell2Timer = 24000; // Reset the timer
            }
            else {
                m_spell2Timer -= diff; // Decrement the timer
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_molly_winterveilAI(Creature* pCreature) {
    return new mob_molly_winterveilAI(pCreature);
}

void AddSC_boss_rares()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "mob_molly_winterveil";
    newscript->GetAI = &GetAI_mob_molly_winterveilAI;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_tarangos";
    newscript->GetAI = &GetAI_boss_tarangos;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_blademaster_kargron";
    newscript->GetAI = &GetAI_boss_blademaster_kargron;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_mallon_the_moontouched";
    newscript->GetAI = &GetAI_boss_mallon_the_moontouched;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_grugthok_the_seer";
    newscript->GetAI = &GetAI_boss_grugthok_the_seer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_twilight_watcher_crendus";
    newscript->GetAI = &GetAI_boss_twilight_watcher_crendus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_the_wandering_knight";
    newscript->GetAI = &GetAI_boss_the_wandering_knight;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_crusader_larsarius";
    newscript->GetAI = &GetAI_boss_crusader_larsarius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_kintozo";
    newscript->GetAI = &GetAI_boss_kintozo;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_zareth_terrorblade";
    newscript->GetAI = &GetAI_boss_zareth_terrorblade;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_jalakar";
    newscript->GetAI = &GetAI_boss_jalakar;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_explorer_ashbeard";
    newscript->GetAI = &GetAI_boss_explorer_ashbeard;
    newscript->RegisterSelf();
}