#include "scriptPCH.h"

using namespace std;

struct boss_nazornaAI final : ScriptedAI {
    explicit boss_nazornaAI(Creature *c) : ScriptedAI(c) {
        boss_nazornaAI::Reset();
    }

    void Reset() override {
    }

    void Aggro(Unit *target) override {
        _lastUpdateTick = 0;
        _lastEventProcessedAt = 0;
        _shadowBoltVolleyPhase = eShadowBoltVolleyPhases::PhaseOne;
        _infernoPhase = eInfernoPhases::PhaseOne;

        _eventQueue.Reset();
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastShadowBoltVolley), Milliseconds(400));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastInferno), Milliseconds(400));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastArmageddon), Milliseconds(400));

        me->MonsterSendTextToZone("Bow before the might of the Legion!", CHAT_MSG_MONSTER_YELL);
    }

    void JustDied(Unit *killer) override {
        me->MonsterSendTextToZone("Lord Archimonde, forgive m-me.", CHAT_MSG_MONSTER_SAY);
    }

    void UpdateAI(uint32 diff) override {
        _lastUpdateTick += diff;

        if (!me->SelectHostileTarget() || !me->GetVictim()) {
            return;
        }

        _eventQueue.Update(diff);

        switch (const auto nextEvent = PopEvent(); nextEvent) {
            case eSpellCastEvents::EventCastShadowBoltVolley: {
                if (!EventCastShadowBoltVolleyPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastShadowBoltVolleyHandler();
                break;
            }
            case eSpellCastEvents::EventCastInferno: {
                if (!EventCastInfernoPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastInfernoHandler();
                break;
            }
            case eSpellCastEvents::EventCastArmageddon: {
                if (!EventCastArmageddonPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastArmageddonHandler();
                break;
            }
            case eSpellCastEvents::EventCastBanish:
                break;
            case eSpellCastEvents::EventCastDemonPortal:
                break;
            case eSpellCastEvents::EventNone: {
                DoMeleeAttackIfReady();
                break;
            }
        }
    }

private:
    enum eSpellIds {
        SpellArmageddon = 20478,
        SpellBanish = 27565,
        // TODO - probably need a dummy spell here
        // SpellDemonPortal =
        // FIXME: This spell just doesn't work as intended - doesn't seem to do damage to nearby enemies.
        SpellInferno = 19695,
        SpellShadowBoltVolley = 15245,
    };

    enum class eSpellCastEvents {
        EventNone,
        EventCastArmageddon,
        EventCastBanish,
        EventCastDemonPortal,
        EventCastInferno,
        EventCastShadowBoltVolley,
    };

    enum class eShadowBoltVolleyPhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished,
    };

    enum class eInfernoPhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        PhaseFour,
        PhaseFive,
        PhaseSix,
        PhaseSeven,
        Finished,
    };

    EventMap _eventQueue;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastEventProcessedAt = 0;
    const uint32_t _minimumTicksBetweenEvents = 2000;
    eShadowBoltVolleyPhases _shadowBoltVolleyPhase = eShadowBoltVolleyPhases::PhaseOne;
    eInfernoPhases _infernoPhase = eInfernoPhases::PhaseOne;

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
     * @brief Spell cast predicate for the ShadowBoltVolley event.
     * @return True if we should cast, false otherwise.
     */
    [[nodiscard]]
    bool EventCastShadowBoltVolleyPredicate() const {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_shadowBoltVolleyPhase) {
            case eShadowBoltVolleyPhases::PhaseOne: {
                return me->GetHealthPercent() <= 70;
            }
            case eShadowBoltVolleyPhases::PhaseTwo: {
                return me->GetHealthPercent() <= 50;
            }
            case eShadowBoltVolleyPhases::PhaseThree: {
                return me->GetHealthPercent() <= 20;
            }
            case eShadowBoltVolleyPhases::Finished:
            default: {
                return false;
            }
        }
    }

    /**
     *  @brief Spell cast handler for the Shadow Bolt Volley spell.
     */
    void EventCastShadowBoltVolleyHandler() {
        DoCast(me, SpellShadowBoltVolley);
        me->MonsterSendTextToZone("Perish!", CHAT_MSG_MONSTER_YELL);
        switch (_shadowBoltVolleyPhase) {
            case eShadowBoltVolleyPhases::PhaseOne: {
                _shadowBoltVolleyPhase = eShadowBoltVolleyPhases::PhaseTwo;
                break;
            }
            case eShadowBoltVolleyPhases::PhaseTwo: {
                _shadowBoltVolleyPhase = eShadowBoltVolleyPhases::PhaseThree;
                break;
            }
            case eShadowBoltVolleyPhases::PhaseThree: {
                _shadowBoltVolleyPhase = eShadowBoltVolleyPhases::Finished;
                break;
            }
            case eShadowBoltVolleyPhases::Finished:
            default: {
                break;
            }
        }

        if (_shadowBoltVolleyPhase != eShadowBoltVolleyPhases::Finished) {
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastShadowBoltVolley), Milliseconds(400));
        }
    }

    /**
     * @brief Predicate for the Inferno spell.
     * @return True if we should cast, false otherwise.
     */
    [[nodiscard]]
    bool EventCastInfernoPredicate() const {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_infernoPhase) {
            case eInfernoPhases::PhaseOne: {
                return me->GetHealthPercent() <= 85;
            }
            case eInfernoPhases::PhaseTwo: {
                return me->GetHealthPercent() <= 70;
            }
            case eInfernoPhases::PhaseThree: {
                return me->GetHealthPercent() <= 55;
            }
            case eInfernoPhases::PhaseFour: {
                return me->GetHealthPercent() <= 40;
            }
            case eInfernoPhases::PhaseFive: {
                return me->GetHealthPercent() <= 35;
            }
            case eInfernoPhases::PhaseSix: {
                return me->GetHealthPercent() <= 20;
            }
            case eInfernoPhases::PhaseSeven: {
                return me->GetHealthPercent() <= 5;
            }
            case eInfernoPhases::Finished:
            default: {
                return false;
            }
        }
    }

    /**
     * @brief Casts the Inferno spell.
     */
    void EventCastInfernoHandler() {
        DoCast(me, SpellInferno);
        me->MonsterSendTextToZone("My will burns yours!", CHAT_MSG_MONSTER_YELL);
        switch (_infernoPhase) {
            case eInfernoPhases::PhaseOne: {
                _infernoPhase = eInfernoPhases::PhaseTwo;
                break;
            }
            case eInfernoPhases::PhaseTwo: {
                _infernoPhase = eInfernoPhases::PhaseThree;
                break;
            }
            case eInfernoPhases::PhaseThree: {
                _infernoPhase = eInfernoPhases::PhaseFour;
                break;
            }
            case eInfernoPhases::PhaseFour: {
                _infernoPhase = eInfernoPhases::PhaseFive;
                break;
            }
            case eInfernoPhases::PhaseFive: {
                _infernoPhase = eInfernoPhases::PhaseSix;
                break;
            }
            case eInfernoPhases::PhaseSix: {
                _infernoPhase = eInfernoPhases::PhaseSeven;
                break;
            }
            case eInfernoPhases::PhaseSeven: {
                _infernoPhase = eInfernoPhases::Finished;
                break;
            }
            case eInfernoPhases::Finished:
            default: {
                break;
            }
        }

        if (_infernoPhase != eInfernoPhases::Finished) {
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastInferno), Milliseconds(400));
        }
    }

    /**
     * @brief Predicate for the cast armageddon event.
     * @return True if we should cast, false otherwise.
     */
    [[nodiscard]]
    bool EventCastArmageddonPredicate() {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        return me->GetHealthPercent() <= 3;
    }

    /**
     * Casts the Armageddon spell.
     */
    void EventCastArmageddonHandler() {
        DoCast(me, SpellArmageddon);
        me->MonsterSendTextToZone("The flames will eat you all alive!", CHAT_MSG_MONSTER_YELL);
    }
};

CreatureAI *GetAI_boss_nazorna(Creature *pCreature) {
    return new boss_nazornaAI(pCreature);
}

void AddSC_boss_nazorna() {
    Script *newscript = new Script;
    newscript->Name = "boss_nazorna";
    newscript->GetAI = &GetAI_boss_nazorna;
    newscript->RegisterSelf();
}