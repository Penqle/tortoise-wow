#include "scriptPCH.h"
#include <sstream>

using namespace std;

struct boss_aszosh_grimbladeAI final : ScriptedAI
{
    explicit boss_aszosh_grimbladeAI(Creature *creature) : ScriptedAI(creature)
    {
        boss_aszosh_grimbladeAI::Reset();
    }

    void Reset() override
    {
        // TODO This is for debugging. SQL Patch required to fix NPC.
        me->SetMaxPower(POWER_MANA, 50000);
        me->SetPower(POWER_MANA, 50000);

        list<Creature *> risenLackeys;
        me->GetCreatureListWithEntryInGrid(risenLackeys, 10482, 500.f);
        for (auto lackey : risenLackeys)
        {
            lackey->RemoveFromWorld();
        }
    }

    void Aggro(Unit*) override
    {
        _lastUpdateTick = 0;

        _lastMindBlastHealth = me->GetHealth();

        _lastEventProcessedAt = 0;
        _drainLifePhase = eDrainLifePhases::PhaseOne;
        _eventQueue.Reset();
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastCorruption), Seconds(15));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastDrainLife), Milliseconds(400));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastMindBlast), Milliseconds(400));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastRisenLackey), Milliseconds(400));

        me->MonsterSendTextToZone("I was amongst the first, and I will claim vengeance for Gul'dan!", CHAT_MSG_MONSTER_YELL);
    }

    void JustDied(Unit* killer) override
    {
        me->MonsterSendTextToZone("Your will is not your... *cough* ...own...", CHAT_MSG_MONSTER_SAY);
    }

    void UpdateAI(const uint32_t diff) override
    {
        _lastUpdateTick += diff;

        if (!me->SelectHostileTarget() || !me->GetVictim())
        {
            return;
        }

        _eventQueue.Update(diff);

        switch (const auto nextEvent = PopEvent(); nextEvent)
        {
            case eSpellCastEvents::EventCastCorruption:
            {
                if (!EventCastCorruptionPredicate())
                {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastCorruptionHandler();
                break;
            }
            case eSpellCastEvents::EventCastDrainLife:
            {
                if (!EventCastDrainLifePredicate())
                {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastDrainLifeHandler();
                break;
            }
            case eSpellCastEvents::EventCastMindBlast:
            {
                if (!EventCastMindBlastPredicate())
                {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastMindBlastHandler();
                break;
            }
            case eSpellCastEvents::EventCastRisenLackey:
            {
                if (!EventCastRisenLackeyPredicate())
                {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastRisenLackeyHandler();
                break;
            }
            case eSpellCastEvents::EventNone:
            {
                DoMeleeAttackIfReady();
                break;
            }
        }
    }

private:
    /**
     * The percentage of health we should lose before casting mind blast.
     */
    double _mindBlastEveryPct = 0.05;

    /**
     * \brief Contains all spell IDs for spells cast by Aszosh Grimflame.
     */
    enum eSpellIds
    {
        SpellRisenLackey = 17618,
        SpellMindBlast = 10947,
        SpellDrainLife = 11700,
        SpellCorruption = 18656,
    };

    /**
     * \brief Contains all script events for spell casts etc. for Aszosh Grimflame.
     */
    enum class eSpellCastEvents
    {
        EventNone,
        EventCastRisenLackey,
        EventCastMindBlast,
        EventCastDrainLife,
        EventCastCorruption,
    };

    enum class eDrainLifePhases
    {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished,
    };

    EventMap _eventQueue;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastEventProcessedAt = 0;
    uint32_t _minimumTicksBetweenEvents = 0;
    eDrainLifePhases _drainLifePhase = eDrainLifePhases::PhaseOne;
    /**
     * This variable tracks what our health was the last time we cast mind blast.
     */
    uint32_t _lastMindBlastHealth;

    /**
     * \brief Attempts to pop an event from the event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eSpellCastEvents PopEvent()
    {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastEventProcessedAt < _minimumTicksBetweenEvents)
        {
            return eSpellCastEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eSpellCastEvents>(_eventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eSpellCastEvents::EventNone)
        {
            _lastEventProcessedAt = _lastUpdateTick;
        }

        return poppedEvent;
    }

    /**
     * \brief Event handler for the EventCastDrainLife event.
     */
    void EventCastDrainLifeHandler()
    {
        DoCast(me->GetVictim(), SpellDrainLife);
        switch (_drainLifePhase)
        {
            case eDrainLifePhases::PhaseOne:
                _drainLifePhase = eDrainLifePhases::PhaseTwo;
                me->MonsterSendTextToZone("Your strength becomes my own!", CHAT_MSG_MONSTER_YELL);
                break;
            case eDrainLifePhases::PhaseTwo:
                _drainLifePhase = eDrainLifePhases::PhaseThree;
                me->MonsterSendTextToZone("I will take everything you have!", CHAT_MSG_MONSTER_YELL);
                break;
            case eDrainLifePhases::PhaseThree:
                _drainLifePhase = eDrainLifePhases::Finished;
                me->MonsterSendTextToZone("You will serve me soon!", CHAT_MSG_MONSTER_YELL);
                break;
            case eDrainLifePhases::Finished:
                break;
        }

        if (_drainLifePhase != eDrainLifePhases::Finished)
        {
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastDrainLife), Milliseconds(400));
        }
    }

    /**
     * \brief Predicate for the EventCastDrainLife event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastDrainLifePredicate() const
    {
        if (me->IsNonMeleeSpellCasted())
        {
            return false;
        }

        switch (_drainLifePhase)
        {
            case eDrainLifePhases::PhaseOne:
                return me->GetHealthPercent() <= 80;
            case eDrainLifePhases::PhaseTwo:
                return me->GetHealthPercent() <= 40;
            case eDrainLifePhases::PhaseThree:
                return me->GetHealthPercent() <= 20;
            case eDrainLifePhases::Finished:
                break;
        }

        return false;
    }

    /**
     * \brief Event handler for the EventCastMindBlast event.
     */
    void EventCastMindBlastHandler()
    {
        DoCast(me->GetVictim(), SpellMindBlast);

        if (urand(0, 1))
        {
            me->MonsterSendTextToZone("Your own mind shall become your enemy.", CHAT_MSG_MONSTER_YELL);
        }

        _lastMindBlastHealth = me->GetHealth();
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastMindBlast), Milliseconds(400));
    }

    /**
     * @brief Predicate for the EventCastMindBlast event.
     * @return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastMindBlastPredicate() const
    {
        if (me->IsNonMeleeSpellCasted())
        {
            return false;
        }

        const auto healthToLose = me->GetMaxHealth() * _mindBlastEveryPct;
        return _lastMindBlastHealth - healthToLose > me->GetHealth();
    }

    /**
     * @brief Event handler for the EventCastCorruption event.
     */
    void EventCastCorruptionHandler()
    {
        const auto victim = me->GetNearestVictimInRange(0.f, 40.f, false);
        if (victim == nullptr)
        {
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastCorruption), Milliseconds(400));
            return;
        }

        DoCast(victim, SpellCorruption);
        
        if (urand(0, 1))
        {
            me->MonsterSendTextToZone("Feel your blood boil.", CHAT_MSG_MONSTER_YELL);
        }

        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastCorruption), Seconds(30));
    }

    /**
     * @brief Predicate for the EventCastCorruption event.
     * @return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastCorruptionPredicate() const
    {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * @brief Event handler for the EventCastRisenLackey event.
     */
    void EventCastRisenLackeyHandler()
    {
        DoCast(me, SpellRisenLackey);

        if (urand(0, 1))
        {
            me->MonsterSendTextToZone("Rise bones of misery and serve your new master!", CHAT_MSG_MONSTER_YELL);
        }

        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastRisenLackey), Milliseconds(400));
    }

    /**
     * @brief Predicate for the EventCastRisenLackey event.
     * @return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastRisenLackeyPredicate() const
    {
        if (me->IsNonMeleeSpellCasted())
        {
            return false;
        }

        list<Creature *> risenLackeys;
        me->GetCreatureListWithEntryInGrid(risenLackeys, 10482, 500.f);
        for (auto lackey: risenLackeys)
        {
            if (lackey->IsAlive())
            {
                return false;
            }
        }

        return true;
    }
};

CreatureAI *GetAI_boss_aszosh_grimblade(Creature* creature)
{
    return new boss_aszosh_grimbladeAI(creature);
}

void AddSC_boss_aszosh_grimflame()
{
    Script* newscript = new Script;
    newscript->Name = "boss_aszosh_grimflame";
    newscript->GetAI = &GetAI_boss_aszosh_grimblade;
    newscript->RegisterSelf();
}