#include "scriptPCH.h"

using namespace std;

struct boss_thamgrarrAI final : ScriptedAI {
    explicit boss_thamgrarrAI(Creature *creature) : ScriptedAI(creature) {
        boss_thamgrarrAI::Reset();
    }

    void Reset() override {
        // TODO This is for debugging. SQL Patch required to fix NPC.
        me->SetMaxPower(POWER_MANA, 50000);
        me->SetPower(POWER_MANA, 50000);
    }

    void Aggro(Unit *) override {
        _lastUpdateTick = 0;

        _lastSpellEventProcessedAt = 0;
        _spellEventQueue.Reset();
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::RainOfFire), Seconds(6));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::Fireball), Seconds(10));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::KnockAway), Seconds(12), Seconds(14));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::IceBlock), Milliseconds(400));

        _lastTextEventProcessedAt = 0;
        _textEventQueue.Reset();
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::AggroTham), Milliseconds(0));
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::AggroGrarr), Milliseconds(0));
    }

    void UpdateAI(const uint32_t diff) override {
        _lastUpdateTick += diff;

        if (!me->SelectHostileTarget() || !me->GetVictim()) {
            return;
        }

        _spellEventQueue.Update(diff);

        switch (const auto nextEvent = PopSpellEvent(); nextEvent) {
            case eSpellEvents::EventNone:
                DoMeleeAttackIfReady();
                break;
            case eSpellEvents::RainOfFire:
                if (!SpellEventRainOfFirePredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventRainOfFireHandler();
                break;
            case eSpellEvents::Fireball:
                if (!SpellEventFireballPredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventFireballHandler();
                break;
            case eSpellEvents::KnockAway:
                if (!SpellEventSlamPredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventSlamHandler();
                break;
            case eSpellEvents::IceBlock:
                if (!SpellEventIceBlockPredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventIceBlockHandler();
                break;
        }

        // We update the text event queue after spell event processing, because spell events may want to queue up text events.
        _textEventQueue.Update(diff);

        switch (const auto nextEvent = PopTextEvent(); nextEvent) {
            case eTextEvents::EventNone:
                break;
            case eTextEvents::AggroTham:
                me->MonsterSendTextToZone("Finally, something to amuse me.", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::AggroGrarr:
                me->MonsterSendTextToZone("Kill them, kill them all!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::RainOfFireTham:
                me->MonsterSendTextToZone("Death comes from above.", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::RainOfFireGrarr:
                me->MonsterSendTextToZone("Grarr sees puny people dance! Dance more for Grarr!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::KnockAwayTham:
                me->MonsterSendTextToZone("You're making me angry!", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::KnockAwayGrarr:
                me->MonsterSendTextToZone("Back, stay back!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::IceBlockTham:
                me->MonsterSendTextToZone("I will not fail!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::IceBlockGrarr:
                me->MonsterSendTextToZone("Grarr starting to feel cold...", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::DeathTham:
                me->MonsterSendTextToZone("Defeated by mongrels...", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::DeathGrarr:
                me->MonsterSendTextToZone("Tham, Grarr not feel so good...", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
        }
    }

private:
    enum eSpellIds {
        SpellFireball = 25306,
        SpellKnockAway = 18670,
        SpellIceBlock = 11958,
        SpellRainOfFire = 19717,
    };

    enum class eSpellEvents {
        EventNone,
        Fireball,
        KnockAway,
        IceBlock,
        RainOfFire,
    };

    enum class eTextEvents {
        EventNone,
        AggroTham,
        AggroGrarr,
        RainOfFireTham,
        RainOfFireGrarr,
        KnockAwayTham,
        KnockAwayGrarr,
        IceBlockTham,
        IceBlockGrarr,
        DeathTham,
        DeathGrarr,
    };

    enum class eIceBlockPhases {
        PhaseOne,
        Finished
    };

    EventMap _spellEventQueue;
    EventMap _textEventQueue;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastSpellEventProcessedAt = 0;
    uint32_t _lastTextEventProcessedAt = 0;
    const uint32_t _minimumTicksBetweenSpellEvents = 4000;
    const uint32_t _minimumTicksBetweenTextEvents = 1250;
    const char *_nameTham = "Tham";
    const char *_nameGrarr = "Grarr";
    eIceBlockPhases _iceBlockPhase = eIceBlockPhases::PhaseOne;

    /**
     * \brief Attempts to pop an event from the spell event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eSpellEvents PopSpellEvent() {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastSpellEventProcessedAt < _minimumTicksBetweenSpellEvents) {
            return eSpellEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eSpellEvents>(_spellEventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eSpellEvents::EventNone) {
            _lastSpellEventProcessedAt = _lastUpdateTick;
        }
        return poppedEvent;
    }

    /**
     * \brief Attempts to pop an event from the text event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eTextEvents PopTextEvent() {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastTextEventProcessedAt < _minimumTicksBetweenTextEvents) {
            return eTextEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eTextEvents>(_textEventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eTextEvents::EventNone) {
            _lastTextEventProcessedAt = _lastUpdateTick;
        }
        return poppedEvent;
    }

    /**
     * \brief Predicate for the RainOfFire spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool SpellEventRainOfFirePredicate() const {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the RainOfFire spell event.
     */
    void SpellEventRainOfFireHandler() {
        DoCast(me->GetVictim(), SpellRainOfFire);
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFireTham), Milliseconds(0));
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFireGrarr), Milliseconds(0));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::RainOfFire), Seconds(18), Seconds(20));
    }

    /**
     * \brief Predicate for the Fireball spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool SpellEventFireballPredicate() const {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the Fireball spell event.
     */
    void SpellEventFireballHandler() {
        const auto randomPlayer = GetRandomPlayerInRange(30.f, true, nullptr);
        if (randomPlayer == nullptr) {
            // Failed to find a player, just return and try again.
            _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::Fireball), Milliseconds(400));
            return;
        }
        DoCast(randomPlayer, SpellFireball);
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::Fireball), Seconds(10));
    }

    /**
     * \brief Predicate for the KnockAway spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool SpellEventSlamPredicate() const {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the KnockAway spell event.
     */
    void SpellEventSlamHandler() {
        DoCast(me->GetVictim(), SpellKnockAway);
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::KnockAwayTham), Milliseconds(0));
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::KnockAwayGrarr), Milliseconds(0));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::KnockAway), Seconds(12), Seconds(14));
    }

    /**
     * \brief Predicate for the IceBlock spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
     [[nodiscard]]
    bool SpellEventIceBlockPredicate() const {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_iceBlockPhase) {
            case eIceBlockPhases::PhaseOne:
                return me->GetHealthPercent() <= 10;
            case eIceBlockPhases::Finished:
            default:
                return false;
        }
    }

    /**
     * \brief Event handler for the IceBlock spell event.
     */
    void SpellEventIceBlockHandler() {
        DoCast(me, SpellIceBlock);
        switch (_iceBlockPhase) {
            case eIceBlockPhases::PhaseOne:
                _iceBlockPhase = eIceBlockPhases::Finished;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::IceBlockTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::IceBlockGrarr), Milliseconds(0));
                break;
            case eIceBlockPhases::Finished:
                break;
        }
    }
};

CreatureAI *GetAI_boss_thamgrarr(Creature *creature) {
    return new boss_thamgrarrAI(creature);
}

void AddSC_boss_thamgrarr() {
    auto pScript = new Script;
    pScript->Name = "boss_thamgrarr";
    pScript->GetAI = &GetAI_boss_thamgrarr;
    pScript->RegisterSelf();
}
