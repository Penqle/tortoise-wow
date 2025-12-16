#include "scriptPCH.h"
#include "stormwind_vault.h"

enum AzsoshSpells
{
    SPELL_POSSESS_VISUAL        = 23014, // Used on dead NPC
    SPELL_DRAIN_LIFE            = 27994, //11700,
    SPELL_MIND_BLAST            = 10947,
    SPELL_CORRUPTION            = 18656,
    SPELL_BALNAZZAR_STUN        = 17398, // Stuns all players

    SPELL_ROOT_SELF             = 20548,
    SPELL_KELTHUZAD_CHANNEL     = 29423,

    SPELL_DARK_CHANNELING       = 21157,
};

enum Events
{
    EVENT_SPELL_CORRUPTION,
    EVENT_GUARDS_ANIMATED,
};

enum EventStates
{
    EVENT_DRAIN_LIFE_PERCENT_80 = 1,
    EVENT_DRAIN_LIFE_PERCENT_60 = 2,
    EVENT_DRAIN_LIFE_PERCENT_20 = 4,

    EVENT_REANIMATE_DEAD        = 8,
};

enum NPCs
{
    NPC_VAULT_GUARD     = 80828,
    NPC_RISEN_GUARD     = 30005,
};

std::vector<ObjectGuid> m_vaultGuards;

struct boss_aszosh_grimflameAI : public ScriptedAI
{
    uint8 eventStates;
    uint8 LastHealthPercentage;

    boss_aszosh_grimflameAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    void ResetGuards()
    {
        for (auto& guardGuid : m_vaultGuards)
        {
            if (Creature* guard = me->GetMap()->GetCreature(guardGuid))
            {
                if (guard->GetDeathState() == DEAD)
                {
                    guard->SetDeathState(JUST_ALIVED);
                    guard->SetHealth(guard->GetMaxHealth());
                }

                guard->SetFactionTemporary(35);
                guard->CombatStop();
                guard->DeleteThreatList();
            }
        }
    }

    void Reset() override
    {
        m_events.Reset();
        ResetGuards();

        eventStates = 0;
        LastHealthPercentage = 100;

        m_events.ScheduleEvent(EVENT_SPELL_CORRUPTION, Seconds(60));

        // Needed on initialization spawn.
        if (!me->IsMoving())
            DoCast(me, SPELL_POSSESS_VISUAL);
    }

    void JustReachedHome() override
    {
        DoCast(me, SPELL_POSSESS_VISUAL);
    }

    void KilledUnit(Unit* unit) override
    {
        if (!unit->IsPlayer())
            return;

        if (urand(0, 1))
            me->MonsterYell("Soon you will serve me!");
    }

    void Aggro(Unit* target) override
    {
        me->InterruptNonMeleeSpells(false, SPELL_POSSESS_VISUAL);
        me->MonsterYell("I was amongst the first you know... Nothing will stop me from claiming my vengeance!");
    }

    void JustDied(Unit* killer) override
    {
        me->MonsterSay("Your will... is not... your own...");
    }

    void UpdateAI(uint32 diff) override
    {
        m_events.Update(diff);

        if (!me->SelectHostileTarget() || !me->GetVictim())
            return;

        // Leashed out of room.
        if (me->GetPositionY() < 132.644f)
        {
            EnterEvadeMode();
            ResetGuards();
            me->MonsterYell("What's that smell? Your fear? Run away cowards, but soon nothing will stop me.");
        }

        // Animate dead guards. Stun all players during.
        if (me->GetHealthPercent() <= 40 && !(eventStates & EVENT_REANIMATE_DEAD))
        {
            me->MonsterYell("How about a glimpse of your future?");

            DoCast(me, SPELL_ROOT_SELF, true);
            DoCast(me, SPELL_KELTHUZAD_CHANNEL, true);

            m_events.ScheduleEvent(EVENT_GUARDS_ANIMATED, Seconds(3));

            for (auto& guardGuid : m_vaultGuards)
                if (Creature* guard = me->GetMap()->GetCreature(guardGuid))
                    guard->CastSpell(guard, SPELL_DARK_CHANNELING, true);

            eventStates |= EVENT_REANIMATE_DEAD;
        }

        // Timed events
        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_SPELL_CORRUPTION:
                    DoCast(me->GetVictim(), SPELL_CORRUPTION);
                    m_events.Repeat(Seconds(60), Seconds(75));
                    break;
                case EVENT_GUARDS_ANIMATED:
                {
                    for (auto& guardGuid : m_vaultGuards)
                    {
                        if (Creature* guard = me->GetMap()->GetCreature(guardGuid))
                        {
                            guard->SetEntry(NPC_RISEN_GUARD);
                            guard->SetFactionTemporary(14);
                            guard->SetDisplayId(urand(0, 1) ? 10975 : 7848);
                            guard->SetDeathState(JUST_ALIVED);
                            guard->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
                            guard->CastSpell(guard, 23700, true); // twisting nether (for visual)

                            guard->Attack(me->GetVictim(), true);
                            guard->SetUInt32Value(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_NONE);
                            guard->SetRooted(false);
                            guard->GetMotionMaster()->MoveChase(me->GetVictim());
                        }
                    }

                    me->InterruptNonMeleeSpells(false, SPELL_KELTHUZAD_CHANNEL);
                    me->RemoveAurasDueToSpell(SPELL_ROOT_SELF);
                }
                break;
            }
        }

        // Drain life events
        if (me->GetHealthPercent() <= 80 && !(eventStates & EVENT_DRAIN_LIFE_PERCENT_80))
        {
            eventStates |= EVENT_DRAIN_LIFE_PERCENT_80;
            me->MonsterYell("As your strength faulters, you empower me further!");
            me->CastStop();
            DoCast(me->GetVictim(), SPELL_DRAIN_LIFE);
            return;
        }
        else if (me->GetHealthPercent() <= 60 && !(eventStates & EVENT_DRAIN_LIFE_PERCENT_60))
        {
            eventStates |= EVENT_DRAIN_LIFE_PERCENT_60;
            me->MonsterYell("Watch as I take all that you are!");
            me->CastStop();
            DoCast(me->GetVictim(), SPELL_DRAIN_LIFE);
            return;
        }
        else if (me->GetHealthPercent() <= 20 && !(eventStates & EVENT_DRAIN_LIFE_PERCENT_20))
        {
            eventStates |= EVENT_DRAIN_LIFE_PERCENT_20;
            me->MonsterYell("Soon you will serve me.");
            me->CastStop();
            DoCast(me->GetVictim(), SPELL_DRAIN_LIFE);
            return;
        }

        // Mind Blast every 2% HP loss.
        if (LastHealthPercentage - me->GetHealthPercent() >= 2)
        {
            if (DoCastSpellIfCan(me->GetVictim(), SPELL_MIND_BLAST) == CAST_OK)
            {
                if (!urand(0, 6))
                    me->MonsterYell("Even your own mind will betray you.");

                LastHealthPercentage = me->GetHealthPercent();
            }
        }

        DoMeleeAttackIfReady();
    }

    EventMap m_events;
    uint32 m_weilCount;
    uint32 m_lichSlapCount;
};

struct mob_vault_guardAI : public ScriptedAI
{
    mob_vault_guardAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    void Reset() override
    {
        sLog.outString("reset called, going home");
        DoGoHome();
    }

    void JustReachedHome() override
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);

        if (me->GetDeathState() == ALIVE)
        {
            me->SetDeathState(JUST_DIED);
            me->SetHealth(0);
        }

        me->SetEntry(NPC_VAULT_GUARD);
        me->SetDisplayId(2990);
        me->SetFactionTemporary(35);

        sLog.outString("faked death");
    }

    void UpdateAI(uint32 diff) override
    {
        if (!me->GetVictim())
            EnterEvadeMode();

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_aszosh_grimflame(Creature* pCreature)
{
    return new boss_aszosh_grimflameAI(pCreature);
}

CreatureAI* GetAI_mob_vault_guard(Creature* pCreature)
{
    return new mob_vault_guardAI(pCreature);
}

void AddSC_boss_aszosh_grimflame()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_aszosh_grimflame";
    newscript->GetAI = &GetAI_boss_aszosh_grimflame;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_vault_guard";
    newscript->GetAI = &GetAI_mob_vault_guard;
    newscript->RegisterSelf();
}
