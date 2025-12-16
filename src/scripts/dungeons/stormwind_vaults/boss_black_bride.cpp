#include "scriptPCH.h"

using namespace std;

struct boss_black_brideAI final : ScriptedAI {
    explicit boss_black_brideAI(Creature *c) : ScriptedAI(c) {
        boss_black_brideAI::Reset();
    }

    void Reset() override {
    }

    void Aggro(Unit *target) override {
        _lastUpdateTick = 0;
        _lastEventProcessedAt = 0;

        _eventQueue.Reset();
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastLichSlap), Seconds(16), Seconds(18));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastScreamsOfThePast), Seconds(6));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastShadowBoltVolley), Seconds(10));
        me->MonsterSendTextToZone("Come and meet your end.", CHAT_MSG_MONSTER_YELL);
    }

    void JustDied(Unit *killer) override {
        me->MonsterSendTextToZone("D-Damien, my.. my love.", CHAT_MSG_MONSTER_SAY);
    }

    void UpdateAI(uint32 diff) override {
        _lastUpdateTick += diff;

        if (!me->SelectHostileTarget() || !me->GetVictim()) {
            return;
        }

        _eventQueue.Update(diff);

        switch (const auto nextEvent = PopEvent(); nextEvent) {
            case eBlackBrideEvents::EventCastLichSlap: {
                if (!EventCastLichSlapPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastLichSlapHandler();
                break;
            }
            case eBlackBrideEvents::EventCastScreamsOfThePast: {
                if (!EventCastScreamsOfThePastPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastScreamsOfThePastHandler();
                break;
            }
            case eBlackBrideEvents::EventCastShadowBoltVolley: {
                if (!EventCastShadowBoltVolleyPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastShadowBoltVolleyHandler();
                break;
            }
            case eBlackBrideEvents::EventNone: {
                DoMeleeAttackIfReady();
                break;
            }
        }
    }

private:
    /**
     * \brief Contains all spell IDs for spells cast by the Black Bride.
     */
    enum eBlackBrideSpells {
        SpellLichSlap = 28873,
        SpellScreamsOfThePast = 7074,
        SpellShadowBoltVolley = 17228,
    };

    /**
     * \brief Contains all script events for spell casts etc. for the Black Bride.
     */
    enum class eBlackBrideEvents {
        EventNone,
        EventCastLichSlap,
        EventCastScreamsOfThePast,
        EventCastShadowBoltVolley,
    };

    EventMap _eventQueue;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastEventProcessedAt = 0;
    const uint32_t _minimumTicksBetweenEvents = 2000;

    /**
     * \brief Attempts to pop an event from the event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eBlackBrideEvents PopEvent() {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastEventProcessedAt < _minimumTicksBetweenEvents) {
            return eBlackBrideEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eBlackBrideEvents>(_eventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eBlackBrideEvents::EventNone) {
            _lastEventProcessedAt = _lastUpdateTick;
        }
        return poppedEvent;
    }

    /**
     * \brief Predicate for the EventCastLichSlap event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastLichSlapPredicate() const {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the EventCastLichSlap event.
     */
    void EventCastLichSlapHandler() {
        DoCast(me->GetVictim(), SpellLichSlap);
        me->MonsterSendTextToZone("Your touch defiles me, I am only his!", CHAT_MSG_MONSTER_YELL);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastLichSlap), Seconds(16), Seconds(18));
    }

    /**
     * \brief Predicate for the EventCastScreamsOfThePast event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastScreamsOfThePastPredicate() const {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the EventCastScreamsOfThePast event.
     */
    void EventCastScreamsOfThePastHandler() {
        DoCast(me->GetVictim(), SpellScreamsOfThePast);
        me->MonsterSendTextToZone("I would've done anything for your love.", CHAT_MSG_MONSTER_YELL);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastScreamsOfThePast), Seconds(20));
    }

    /**
     * \brief Predicate for the EventCastShadowBoltVolley event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastShadowBoltVolleyPredicate() const {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the EventCastShadowBoltVolley event.
     */
    void EventCastShadowBoltVolleyHandler() {
        DoCast(me->GetVictim(), SpellShadowBoltVolley);
        me->MonsterSendTextToZone("Infidels!", CHAT_MSG_MONSTER_YELL);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastShadowBoltVolley), Seconds(15));
    }
};

CreatureAI *GetAI_boss_black_bride(Creature *pCreature) {
    return new boss_black_brideAI(pCreature);
}

void AddSC_boss_black_bride() {
    Script *newscript = new Script;
    newscript->Name = "boss_black_bride";
    newscript->GetAI = &GetAI_boss_black_bride;
    newscript->RegisterSelf();
}