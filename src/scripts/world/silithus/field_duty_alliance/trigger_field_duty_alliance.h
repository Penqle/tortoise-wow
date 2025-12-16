#pragma once
#include <AI/AbilityTimer.h>
#include "defines.h"

#include "scriptPCH.h"

struct npc_hivezora_abomination;
struct npc_arcanist_nozzlespring;
struct npc_captain_blackanvil;
struct npc_janela_stouthammer;

struct trigger_field_duty_alliance : public ScriptedAI
{
private:
    enum EventStages
    {
        Waiting1Idle,
        DialogJanelaLookoutSpottedAbomination,
        DialogJanelaSendSoldierToFindBlackanvil,
        DialogSoldierRunToCaptainBlackanvil,
        DialogSoldierAnnounceProblem,
        DialogJanelaLookAlive,
        DialogBlackanvilWalksToJanela,
        DialogBlackanvilComplainsAboutDay,
        DialogBlackanvilWalksInFrontOfJanela,
        DialogBlackanvilStandReady,
        DialogFootmenMakeALine,
        DialogBlackanvilEngage,
        DialogAllEngage,
        DialogDone,
        CombatActive,
        CombatDone,
        FinishedReturnToSpawnPositions,
        FinishedBlackanvilJoinsCircle,
        FinishedBlackanvilBecomesQuestgiver,
        FinishedDone,
    };
    Silithus::EventState::EventState m_eventState = Silithus::EventState::WAITING_FOR_START;
    EventStages m_eventStage = Waiting1Idle;

    ObjectGuid m_cachedAbominationGuid = 0;
    ObjectGuid m_cachedArcanistGuid = 0;
    ObjectGuid m_cachedBlackanvilGuid = 0;
    ObjectGuid m_cachedJanelaGuid = 0;
    ObjectGuid m_cachedSergeantGuid = 0;
    ObjectGuid m_commandedSoldier = 0;

    // Throttles updates so we're not constantly scanning for NPCs
    AbilityTimer m_updateThrottleTimer = AbilityTimer(0, 400, 400, 0);

    // How long the quest will remain completable after the event is finished
    AbilityTimer m_eventCompleteTimer = AbilityTimer(0, 180000, 180000, 0);

    // Controls when the next event pulse will occur (e.g. next dialog line)
    AbilityTimer m_eventPulseTimer = AbilityTimer(0, 400, 400, 0);

    // Resets the event after a minute of inactivity
    AbilityTimer m_eventForceResetTimer = AbilityTimer(0, 60000, 60000, 60000);

    void SetEventStateWaitingForStart();

    void SetEventStateDialogInProgress();

    void SetEventStateFinished();

    Creature* SpawnCaptainBlackanvil();
    Creature* SpawnHiveZoraAbomination();

    void UpdateEventState(const uint32_t delta);

public:
    explicit trigger_field_duty_alliance(Creature* pCreature);

    [[nodiscard]] npc_arcanist_nozzlespring* FindArcanistNozzlespring();
    [[nodiscard]] npc_captain_blackanvil* FindCaptainBlackanvil();
    [[nodiscard]] npc_hivezora_abomination* FindHiveZoraAbomination();
    [[nodiscard]] npc_janela_stouthammer* FindJanelaStouthammer();
    [[nodiscard]] Creature* FindSergeantCarnes();

    void Reset() override;

    Silithus::EventState::EventState EventState() const;

    void StartEvent();

    void UpdateAI(const uint32 delta) override;

    static CreatureAI* GetAI(Creature* pCreature);

    static void RegisterScript();
};
