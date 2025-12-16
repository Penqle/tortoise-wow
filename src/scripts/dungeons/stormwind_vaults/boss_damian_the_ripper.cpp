#include "scriptPCH.h"

using namespace std;

struct boss_damian_the_ripperAI final : ScriptedAI {
    explicit boss_damian_the_ripperAI(Creature *c) : ScriptedAI(c) {
        boss_damian_the_ripperAI::Reset();
    }

    void Reset() override {
        _vanishedAt = 0;
    }

    void Aggro(Unit *target) override {
        _lastUpdateTick = 0;
        _lastEventProcessedAt = 0;
        _darkMendingPhase = eDarkMendingPhases::PhaseOne;
        _theRippersMadnessPhase = eTheRippersMadnessPhases::PhaseOne;
        _vanishPhase = eVanishPhases::PhaseOne;
        _vanishedAt = 0;

        _eventQueue.Reset();
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastVanish), Milliseconds(400));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastGouge), _gougeInterval);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastSinisterStrike), _sinisterStrikeInterval);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastDarkMending), Milliseconds(400));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastTheRippersMadness), Milliseconds(400));

        me->MonsterSendTextToZone("What's this, victims fighting their way to me? How thrilling!", CHAT_MSG_MONSTER_YELL);
    }

    void JustDied(Unit *killer) override {
        me->SetVisibility(VISIBILITY_ON);
        me->MonsterSendTextToZone("Rip, RIP, I will rip you apart!", CHAT_MSG_MONSTER_SAY);
    }

    void UpdateAI(uint32 diff) override {
        _lastUpdateTick += diff;

        if (IsVanished()) {
            // We delay making ourselves invisible so players can see spell animation + chat line.
            if (me->GetVisibility() != VISIBILITY_OFF && _lastUpdateTick > _vanishedAt + 800) {
                me->SetVisibility(VISIBILITY_OFF);
                return;
            }

            if (_lastUpdateTick < _vanishedAt + _vanishDuration.count()) {
                // Still vanished, skip.
                return;
            }

            // No longer vanished!
            const auto randomPlayer = GetRandomPlayerInRange(80.f, true, nullptr);
            if (randomPlayer == nullptr) {
                // Failed to find a player, just return and try again.
                return;
            }

            WorldLocation behindPosition;
            randomPlayer->GetPointBehindObject(behindPosition, 2.5f);

            // Teleport
            me->NearTeleportTo(behindPosition);
            DoResetThreat();

            // Reset Vanish state
            _vanishedAt = 0;

            // Set visible
            me->SetVisibility(VISIBILITY_ON);

            // Attack
            AttackStart(randomPlayer);
            m_creature->AddThreat(randomPlayer, 300.f);

            // Special Attack Handling
            if (randomPlayer->GetHealthPercent() <= 40)
            {
                int32 damage = randomPlayer->GetHealth();
                me->CastCustomSpell(randomPlayer, SpellBackstab, &damage, nullptr, nullptr, false);
                me->MonsterSendTextToZone("Another one bites the dust.", CHAT_MSG_MONSTER_YELL);
            }
            else
            {
                int32 damage = randomPlayer->GetHealth() / 2;
                me->CastCustomSpell(randomPlayer, SpellBackstab, &damage, nullptr, nullptr, false);
            }
        }

        if (!me->SelectHostileTarget() || !me->GetVictim()) {
            return;
        }

        _eventQueue.Update(diff);

        switch (const auto nextEvent = PopEvent(); nextEvent) {
            case eSpellCastEvents::EventNone: {
                DoMeleeAttackIfReady();
                break;
            }
            case eSpellCastEvents::EventCastDarkMending: {
                if (!EventCastDarkMendingPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastDarkMendingHandler();
                break;
            }
            case eSpellCastEvents::EventCastGouge: {
                if (!EventCastGougePredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastGougeHandler();
                break;
            }
            case eSpellCastEvents::EventCastSinisterStrike: {
                if (!EventCastSinisterStrikePredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastSinisterStrikeHandler();
                break;
            }
            case eSpellCastEvents::EventCastTheRippersMadness: {
                if (!EventCastTheRippersMadnessPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastTheRippersMadnessHandler();
                break;
            }
            case eSpellCastEvents::EventCastVanish: {
                if (!EventCastVanishPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastVanishHandler();
                break;
            }
        }
    }

private:
    enum eSpellIds {
        SpellBackstab = 46320,
        SpellDarkMending = 16588,
        SpellGouge = 11286,
        SpellSinisterStrike = 11294,
        SpellVanish = 24222,
    };

    enum class eSpellCastEvents {
        EventNone,
        EventCastDarkMending,
        EventCastGouge,
        EventCastSinisterStrike,
        EventCastTheRippersMadness,
        EventCastVanish,
    };

    enum class eDarkMendingPhases {
        PhaseOne,
        Finished,
    };

    enum class eTheRippersMadnessPhases {
        PhaseOne,
        Finished,
    };

    enum class eVanishPhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished
    };

    EventMap _eventQueue;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastEventProcessedAt = 0;
    const uint32_t _minimumTicksBetweenEvents = 2000;
    Milliseconds _gougeInterval = Seconds(15);
    Milliseconds _sinisterStrikeInterval = Seconds(10);

    eDarkMendingPhases _darkMendingPhase = eDarkMendingPhases::PhaseOne;
    eTheRippersMadnessPhases _theRippersMadnessPhase = eTheRippersMadnessPhases::PhaseOne;
    eVanishPhases _vanishPhase = eVanishPhases::PhaseOne;
    uint32_t _vanishedAt = 0;
    Milliseconds _vanishDuration = Seconds(3);

    /**
     * @brief Used to evaluate whether Damian is currently vanished.
     * @return True if Damian is currently vanished, false otherwise.
     */
    [[nodiscard]]
    bool IsVanished() const {
        return _vanishedAt != 0;
    }

    /**
     * \brief Attempts to pop an event from the event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eSpellCastEvents PopEvent() {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastEventProcessedAt < _minimumTicksBetweenEvents) {
            return eSpellCastEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eSpellCastEvents>(_eventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eSpellCastEvents::EventNone) {
            _lastEventProcessedAt = _lastUpdateTick;
        }
        return poppedEvent;
    }

    /**
     * @brief Predicate for the EventCastDarkMending event.
     * @return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastDarkMendingPredicate() {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_darkMendingPhase) {
            case eDarkMendingPhases::PhaseOne: {
                return me->GetHealthPercent() <= 5;
            }
            case eDarkMendingPhases::Finished:
            default: {
                return false;
            }
        }
    }

    /**
     * @brief Event handler for the EventCastDarkMending event.
     */
    void EventCastDarkMendingHandler() {
        switch (_darkMendingPhase) {
            case eDarkMendingPhases::PhaseOne: {
                DoCast(me, SpellDarkMending);
                me->MonsterSendTextToZone("In pain I find salvation, and so shall you!", CHAT_MSG_MONSTER_YELL);
                _darkMendingPhase = eDarkMendingPhases::Finished;
                return;
            }
            case eDarkMendingPhases::Finished:
            default: {
                return;
            }
        }
    }

    /**
     * @brief Predicate for the EventCastGouge event.
     * @return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastGougePredicate() {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        return me->GetNearestVictimInRange(0.f, 4.5f, false) != nullptr;
    }

    /**
     * @brief Event handler for the EventCastGouge event.
     */
    void EventCastGougeHandler() {
        const auto randomPlayer = GetRandomPlayerInRange(4.5f, true, nullptr);
        if (randomPlayer == nullptr || !randomPlayer->isFacing(me->GetPosition())) {
            _eventQueue.Repeat(Milliseconds(400));
            return;
        }

        DoCast(randomPlayer, SpellGouge, true);
        me->MonsterSendTextToZone("You should stay quiet for a while!", CHAT_MSG_MONSTER_YELL);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastGouge), _gougeInterval);
    }

    /**
     * @brief Predicate for the EventCastSinisterStrike event.
     * @return True if the event handler should fire, false otherwise.
     */
    [[nodiscard]]
    bool EventCastSinisterStrikePredicate() {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        return me->GetDistance(me->GetVictim()) <= 4.5f;
    }

    /**
     * Event handler for the SpellCastSinisterStrike event.
     */
    void EventCastSinisterStrikeHandler() {
        DoCast(me->GetVictim(), SpellSinisterStrike);
        me->MonsterSendTextToZone("My blade craves your blood!", CHAT_MSG_MONSTER_YELL);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastSinisterStrike), _sinisterStrikeInterval);
    }

    /**
     * @brief Predicate for the EventCastTheRippersMadness event.
     * @return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastTheRippersMadnessPredicate() {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_theRippersMadnessPhase) {
            case eTheRippersMadnessPhases::PhaseOne: {
                return me->GetHealthPercent() <= 1;
            }
            case eTheRippersMadnessPhases::Finished:
            default: {
                return false;
            }
        }
    }

    void EventCastTheRippersMadnessHandler() {
        const auto victim = me->GetVictim();
        if (victim) {
            me->DoKillUnit(victim);
            me->MonsterSendTextToZone("The Shadow demands justice!", CHAT_MSG_MONSTER_YELL);
        } else {
            _eventQueue.Repeat(Milliseconds(400));
        }
    }

    /**
     * @brief Predicate for the EventCastVanish event.
     * @return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastVanishPredicate() {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_vanishPhase) {
            case eVanishPhases::PhaseOne: {
                return me->GetHealthPercent() <= 70;
            }
            case eVanishPhases::PhaseTwo: {
                return me->GetHealthPercent() <= 40;
            }
            case eVanishPhases::PhaseThree: {
                return me->GetHealthPercent() <= 10;
            }
            case eVanishPhases::Finished:
            default: {
                return false;
            }
        }
    }

    /**
     * @brief Event handler for the EventCastVanish event.
     */
    void EventCastVanishHandler() {
        switch (_vanishPhase) {
            case eVanishPhases::PhaseOne: {
                _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastVanish), Milliseconds(400));
                me->MonsterSendTextToZone("The shadow's veil embraces me!", CHAT_MSG_MONSTER_YELL);
                _vanishPhase = eVanishPhases::PhaseTwo;
                break;
            }
            case eVanishPhases::PhaseTwo: {
                _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastVanish), Milliseconds(400));
                me->MonsterSendTextToZone("Now you see me, now you don't!", CHAT_MSG_MONSTER_YELL);
                _vanishPhase = eVanishPhases::PhaseThree;
                break;
            }
            case eVanishPhases::PhaseThree: {
                _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastVanish), Milliseconds(400));
                me->MonsterSendTextToZone("Think fast, where am I now?", CHAT_MSG_MONSTER_YELL);
                _vanishPhase = eVanishPhases::Finished;
                break;
            }
            case eVanishPhases::Finished:
            default: {
                return;
            }
        }

        DoCast(me, SpellVanish);
        me->ClearTarget();
        _vanishedAt = _lastUpdateTick;
    }
};

CreatureAI *GetAI_boss_damian_the_ripper(Creature *pCreature) {
    return new boss_damian_the_ripperAI(pCreature);
}

void AddSC_boss_damian_the_ripper() {
    Script *newscript = new Script;
    newscript->Name = "boss_damian_the_ripper";
    newscript->GetAI = &GetAI_boss_damian_the_ripper;
    newscript->RegisterSelf();
}