#include "scriptPCH.h"

using namespace std;

struct boss_volkan_cruelbladeAI final : ScriptedAI {
    explicit boss_volkan_cruelbladeAI(Creature *c) : ScriptedAI(c) {
        boss_volkan_cruelbladeAI::Reset();
    }

    void Reset() override {
    }

    void Aggro(Unit *target) override {
        _lastUpdateTick = 0;
        _lastEventProcessedAt = 0;
        _minimumTicksBetweenEvents = 2000;
        _bloodlustPhase = eBloodlustPhases::PhaseOne;
        _bladestormPhase = eBladestormPhases::PhaseOne;
        _eventQueue.Reset();
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastBlink), Seconds(10));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastBloodlust), Milliseconds(400));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastThunderClap), Seconds(15), Seconds(40));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastBladestorm), Milliseconds(400));
        me->MonsterSendTextToZone("I will be a prisoner no longer!", CHAT_MSG_MONSTER_YELL);
    }

    void JustDied(Unit *killer) override {
        me->MonsterSendTextToZone("Lok'tar... *whimper* ...O-Ogar...", CHAT_MSG_MONSTER_SAY);
    }

    void UpdateAI(uint32 diff) override {
        _lastUpdateTick += diff;

        if (!me->SelectHostileTarget() || !me->GetVictim()) {
            return;
        }

        _eventQueue.Update(diff);

        switch (const auto nextEvent = PopEvent(); nextEvent) {
            case eSpellCastEvents::EventCastBlink: {
                EventCastBlinkHandler();
                break;
            }
            case eSpellCastEvents::EventCastBloodlust: {
                if (!EventCastBloodlustPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastBloodlustHandler();
                break;
            }
            case eSpellCastEvents::EventCastThunderClap: {
                EventCastThunderClapHandler();
                break;
            }
            case eSpellCastEvents::EventCastBladestorm: {
                if (!EventCastBladestormPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastBladestormHandler();
                break;
            }
            case eSpellCastEvents::EventNone: {
                DoMeleeAttackIfReady();
                break;
            }
        }
    }

private:
    /**
     * \brief Contains all spell IDs for spells cast by Volkan Cruelblade.
     */
    enum eSpellIds {
        SpellBlinkVisual = 7141,
        SpellBloodlust = 23951,
        SpellThunderClap = 23931,
        SpellBladestorm = 9632,
    };

    /**
     * \brief Contains all script events for spell casts etc. for Volkan Cruelblade.
     */
    enum class eSpellCastEvents {
        EventNone,
        EventCastBlink,
        EventCastBloodlust,
        EventCastThunderClap,
        EventCastBladestorm,
    };

    enum class eBloodlustPhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished,
    };

    enum class eBladestormPhases {
        PhaseOne,
        PhaseTwo
    };

    EventMap _eventQueue;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastEventProcessedAt = 0;
    uint32_t _minimumTicksBetweenEvents = 0;
    eBloodlustPhases _bloodlustPhase = eBloodlustPhases::PhaseOne;
    eBladestormPhases _bladestormPhase = eBladestormPhases::PhaseOne;

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
     * \brief Event handler for the EventCastBlink event.
     */
    void EventCastBlinkHandler() {
        // If we're casting something already, interrupt it so we can blink.
        if (me->IsNonMeleeSpellCasted()) {
            me->CastStop();
        }

        const auto victim = me->GetVictim();
        list<Player *> targets{1};
        if (victim->IsPlayer()) {
            // We check the Bladestorm phase because if we're blinking during Bladestorm, the tank tried to run away.
            if (_bladestormPhase != eBladestormPhases::PhaseTwo) {
                targets.push_back(victim->ToPlayer());
            }
        }

        const auto player = GetRandomPlayerInRange(40.f, true, &targets);
        if (player == nullptr) {
            // Failed to find a player, requeue the event.
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastBlink), Seconds(2));
            return;
        }

        WorldLocation playerPosition;
        player->GetPosition(playerPosition);

        WorldLocation behindPosition;
        player->GetPointBehindObject(behindPosition, 2.5f);

        DoCastAOE(SpellBlinkVisual);
        me->MonsterSendTextToZone("Behind you!", CHAT_MSG_MONSTER_YELL);
        me->NearTeleportTo(behindPosition);
        DoResetThreat();
        AttackStart(player);
        m_creature->AddThreat(player, 300.0f);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastBlink), Seconds(30));
    }

    /**
     * \brief Predicate for the EventCastBloodlust event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastBloodlustPredicate() const {
        switch (_bloodlustPhase) {
            case eBloodlustPhases::PhaseOne:
                return me->GetHealthPercent() <= 70;
            case eBloodlustPhases::PhaseTwo:
                return me->GetHealthPercent() <= 40;
            case eBloodlustPhases::PhaseThree:
                return me->GetHealthPercent() <= 10;
            case eBloodlustPhases::Finished:
                break;
        }

        return false;
    }

    /**
     * \brief Event handler for the EventCastBloodlust event.
     */
    void EventCastBloodlustHandler() {
        DoCast(me, SpellBloodlust);
        switch (_bloodlustPhase) {
            case eBloodlustPhases::PhaseOne:
                _bloodlustPhase = eBloodlustPhases::PhaseTwo;
                me->MonsterSendTextToZone("Feel the heat of the Burning Blade!", CHAT_MSG_MONSTER_YELL);
                break;
            case eBloodlustPhases::PhaseTwo:
                _bloodlustPhase = eBloodlustPhases::PhaseThree;
                me->MonsterSendTextToZone("I will see you fall! Trk'hsk!", CHAT_MSG_MONSTER_YELL);
                break;
            case eBloodlustPhases::PhaseThree:
                _bloodlustPhase = eBloodlustPhases::Finished;
                me->MonsterSendTextToZone("Lok'tar Ogar!", CHAT_MSG_MONSTER_YELL);
                break;
            case eBloodlustPhases::Finished:
                break;
        }

        if (_bloodlustPhase != eBloodlustPhases::Finished) {
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastBloodlust), Seconds(15));
        }
    }

    /**
     * \brief Event handler for the EventCastThunderClap event.
     */
    void EventCastThunderClapHandler() {
        DoCastAOE(SpellThunderClap);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastThunderClap), Seconds(90), Seconds(120));
    }

    /**
     * \brief Predicate for the EventCastBladestorm event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastBladestormPredicate() const {
        return me->GetHealthPercent() <= 5 && !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the EventCastBladestorm event.
     */
    void EventCastBladestormHandler() {
        // We need to Bladestorm until death, so clear the event queue and only queue Bladestorm.
        _eventQueue.Reset();
        _minimumTicksBetweenEvents = 0;
        if (_bladestormPhase == eBladestormPhases::PhaseOne) {
            me->MonsterSendTextToZone("Feel the wrath of the Cruelblade!", CHAT_MSG_MONSTER_YELL);
            _bladestormPhase = eBladestormPhases::PhaseTwo;
        }

        DoCastAOE(SpellBladestorm);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellCastEvents::EventCastBladestorm), Milliseconds(400));
    }
};

CreatureAI *GetAI_boss_volkan_cruelblade(Creature *pCreature) {
    return new boss_volkan_cruelbladeAI(pCreature);
}

void AddSC_boss_volkan_cruelblade() {
    Script *newscript = new Script;
    newscript->Name = "boss_volkan_cruelblade";
    newscript->GetAI = &GetAI_boss_volkan_cruelblade;
    newscript->RegisterSelf();
}