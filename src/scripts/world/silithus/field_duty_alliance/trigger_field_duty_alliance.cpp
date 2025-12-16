#include "trigger_field_duty_alliance.h"

#include "npc_arcanist_nozzlespring.h"
#include "npc_captain_blackanvil.h"
#include "npc_hivezora_abomination.h"
#include "npc_janela_stouthammer.h"

npc_hivezora_abomination* trigger_field_duty_alliance::FindHiveZoraAbomination()
{
    Creature* abomination = nullptr;
    if (!m_cachedAbominationGuid.IsEmpty())
    {
        abomination = me->GetMap()->GetCreature(m_cachedAbominationGuid);
    }
    if (!abomination)
    {
        abomination = me->FindNearestCreature(Silithus::Creatures::ENTRY_HIVEZORA_ABOMINATION, 200.0f, true);
    }
    if (abomination && abomination->IsAlive())
    {
        m_cachedAbominationGuid = abomination->GetGUID();
        return dynamic_cast<npc_hivezora_abomination*>(abomination->AI());
    }
    return nullptr;
}

npc_captain_blackanvil* trigger_field_duty_alliance::FindCaptainBlackanvil()
{
    Creature* captainBlackanvil = nullptr;
    if (!m_cachedBlackanvilGuid.IsEmpty())
    {
        captainBlackanvil = me->GetMap()->GetCreature(m_cachedBlackanvilGuid);
    }
    if (!captainBlackanvil)
    {
        captainBlackanvil = me->FindNearestCreature(Silithus::Creatures::ENTRY_CAPTAIN_BLACKANVIL, 200.0f, true);
    }
    if (captainBlackanvil && captainBlackanvil->IsAlive())
    {
        m_cachedBlackanvilGuid = captainBlackanvil->GetGUID();
        return dynamic_cast<npc_captain_blackanvil*>(captainBlackanvil->AI());
    }
    return nullptr;
}

npc_arcanist_nozzlespring* trigger_field_duty_alliance::FindArcanistNozzlespring()
{
    Creature* arcanist = nullptr;
    if (!m_cachedArcanistGuid.IsEmpty())
    {
        arcanist = m_creature->GetMap()->GetCreature(m_cachedArcanistGuid);
    }

    if (!arcanist)
    {
        arcanist = m_creature->FindNearestCreature(Silithus::Creatures::ENTRY_ARCANIST_NOZZLESPRING, 200.f);
    }

    if (arcanist && arcanist->IsAlive())
    {
        m_cachedArcanistGuid = arcanist->GetGUID();
        return dynamic_cast<npc_arcanist_nozzlespring*>(arcanist->AI());
    }

    return nullptr;
}

npc_janela_stouthammer* trigger_field_duty_alliance::FindJanelaStouthammer()
{
    Creature* janela = nullptr;
    if (!m_cachedJanelaGuid.IsEmpty())
    {
        janela = m_creature->GetMap()->GetCreature(m_cachedJanelaGuid);
    }

    if (!janela)
    {
        janela = m_creature->FindNearestCreature(Silithus::Creatures::ENTRY_JANELA_STOUTHAMMER, 200.f);
    }

    if (janela && janela->IsAlive())
    {
        m_cachedJanelaGuid = janela->GetGUID();
        return dynamic_cast<npc_janela_stouthammer*>(janela->AI());
    }

    return nullptr;
}

Creature* trigger_field_duty_alliance::FindSergeantCarnes()
{
    Creature* sergeant = nullptr;
    if (!m_cachedSergeantGuid.IsEmpty())
    {
        sergeant = m_creature->GetMap()->GetCreature(m_cachedSergeantGuid);
    }

    if (!sergeant)
    {
        sergeant = m_creature->FindNearestCreature(Silithus::Creatures::ENTRY_SERGEANT_CARNES, 200.f);
    }

    if (sergeant && sergeant->IsAlive())
    {
        m_cachedSergeantGuid = sergeant->GetGUID();
        return sergeant;
    }

    return nullptr;
}

void trigger_field_duty_alliance::SetEventStateWaitingForStart()
{
    m_eventStage = Waiting1Idle;
    m_eventState = Silithus::EventState::WAITING_FOR_START;
    m_eventCompleteTimer.Reset();
    if (auto const abomination = FindHiveZoraAbomination())
    {
        abomination->m_creature->DisappearAndDie();
    }
    if (auto const captainBlackanvil = FindCaptainBlackanvil())
    {
        captainBlackanvil->m_creature->DisappearAndDie();
    }
    if (auto const arcanistNozzlespring = FindArcanistNozzlespring())
    {
        if (arcanistNozzlespring->m_creature->IsAlive())
        {
            arcanistNozzlespring->m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::SPAWN_ARCANIST_NOZZLESPRING, MOVE_RUN_MODE, 0, Silithus::Locations::SPAWN_ARCANIST_NOZZLESPRING.orientation);
        }
    }
    if (auto const sergeantCarnes = FindSergeantCarnes())
    {
        if (sergeantCarnes->IsAlive())
        {
            const auto pos = sergeantCarnes->GetCreatureData()->position;
            sergeantCarnes->GetMotionMaster()->MovePoint(0, pos.x, pos.y, pos.z, MOVE_RUN_MODE, 0, pos.o);
        }
    }
    if (auto const janelaStouthammer = FindJanelaStouthammer())
    {
        janelaStouthammer->EventReset();
    }
    std::list<Creature*> footmen;
    GetCreatureListWithEntryInGrid(footmen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_FOOTMAN, 150.0f);
    for (auto const footman : footmen)
    {
        if (footman->IsAlive())
        {
            const auto pos = footman->GetCreatureData()->position;
            footman->GetMotionMaster()->MovePoint(0, pos.x, pos.y, pos.z, MOVE_RUN_MODE, 0, pos.o);
            footman->SetCallsForHelp(true);
            footman->SetNoCallAssistance(false);
        }
    }
    std::list<Creature*> riflemen;
    GetCreatureListWithEntryInGrid(riflemen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_RIFLEMAN, 150.0f);
    for (auto const rifleman : riflemen)
    {
        if (rifleman->IsAlive())
        {
            const auto pos = rifleman->GetCreatureData()->position;
            rifleman->GetMotionMaster()->MovePoint(0, pos.x, pos.y, pos.z, MOVE_RUN_MODE, 0, pos.o);
        }
    }
}

void trigger_field_duty_alliance::SetEventStateDialogInProgress()
{
    m_eventState = Silithus::EventState::DIALOG_IN_PROGRESS;
}

void trigger_field_duty_alliance::SetEventStateFinished()
{
    m_eventState = Silithus::EventState::FINISHED;
}

Creature* trigger_field_duty_alliance::SpawnCaptainBlackanvil()
{
    if (auto const blackanvil = FindCaptainBlackanvil())
    {
        blackanvil->m_creature->DisappearAndDie();
    }
    const auto blackanvil = m_creature->SummonCreature(
        Silithus::Creatures::ENTRY_CAPTAIN_BLACKANVIL,
        Silithus::Locations::SPAWN_CAPTAIN_BLACKANVIL,
        TEMPSUMMON_DEAD_DESPAWN,
        0);
    m_cachedBlackanvilGuid = blackanvil->GetGUID();
    blackanvil->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
    blackanvil->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
    blackanvil->SetCallsForHelp(false);
    blackanvil->SetNoCallAssistance(true);
    return blackanvil;
}

Creature* trigger_field_duty_alliance::SpawnHiveZoraAbomination()
{
    if (auto const abomination = FindHiveZoraAbomination())
    {
        abomination->m_creature->DisappearAndDie();
    }
    const auto abomination = m_creature->SummonCreature(
        Silithus::Creatures::ENTRY_HIVEZORA_ABOMINATION,
        Silithus::Locations::SPAWN_HIVEZORA_ABOMINATION,
        TEMPSUMMON_DEAD_DESPAWN,
        0);
    m_cachedAbominationGuid = abomination->GetGUID();
    return abomination;
}

void trigger_field_duty_alliance::UpdateEventState(const uint32_t delta)
{
}

trigger_field_duty_alliance::trigger_field_duty_alliance(Creature* pCreature) : ScriptedAI(pCreature)
{
    trigger_field_duty_alliance::Reset();
}

void trigger_field_duty_alliance::Reset()
{
}

Silithus::EventState::EventState trigger_field_duty_alliance::EventState() const
{
    return m_eventState;
}

void trigger_field_duty_alliance::StartEvent()
{
    SetEventStateDialogInProgress();
}

void trigger_field_duty_alliance::UpdateAI(const uint32_t delta)
{
    m_updateThrottleTimer.Update(delta);
    m_eventPulseTimer.Update(delta);

    if (!m_updateThrottleTimer.IsReady())
    {
        return;
    }

    m_updateThrottleTimer.Reset();

    // Nothing to do while idling.
    if (m_eventState == Silithus::EventState::WAITING_FOR_START)
    {
        m_eventForceResetTimer.Reset();
        return;
    }

    m_eventForceResetTimer.Update(delta);
    if (m_eventForceResetTimer.IsReady())
    {
        SetEventStateWaitingForStart();
    }

    if (m_eventState == Silithus::EventState::FINISHED)
    {
        if (m_eventStage == FinishedReturnToSpawnPositions && m_eventPulseTimer.IsReady())
        {
            m_eventForceResetTimer.Reset();
            m_eventPulseTimer.SetCooldown(4000);
            m_eventStage = FinishedBlackanvilJoinsCircle;
            if (auto const arcanistNozzlespring = FindArcanistNozzlespring())
            {
                if (arcanistNozzlespring->m_creature->IsAlive())
                {
                    arcanistNozzlespring->m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::SPAWN_ARCANIST_NOZZLESPRING, MOVE_RUN_MODE, 0, Silithus::Locations::SPAWN_ARCANIST_NOZZLESPRING.orientation);
                    arcanistNozzlespring->m_creature->CombatStop(true);
                }
            }
            if (auto const sergeantCarnes = FindSergeantCarnes())
            {
                if (sergeantCarnes->IsAlive())
                {
                    const auto pos = sergeantCarnes->GetCreatureData()->position;
                    sergeantCarnes->GetMotionMaster()->MovePoint(0, pos.x, pos.y, pos.z, MOVE_RUN_MODE, 0, pos.o);
                    sergeantCarnes->CombatStop(true);
                }
            }
            if (auto const janelaStouthammer = FindJanelaStouthammer())
            {
                janelaStouthammer->m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::SPAWN_JANELA_STOUTHAMMER, MOVE_RUN_MODE, 0, Silithus::Locations::SPAWN_JANELA_STOUTHAMMER.orientation);
                janelaStouthammer->m_creature->CombatStop(true);
            }

            std::list<Creature*> footmen;
            GetCreatureListWithEntryInGrid(footmen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_FOOTMAN, 150.0f);
            for (auto const footman : footmen)
            {
                if (footman->IsAlive())
                {
                    const auto pos = footman->GetCreatureData()->position;
                    footman->GetMotionMaster()->MovePoint(0, pos.x, pos.y, pos.z, MOVE_RUN_MODE, 0, pos.o);
                    footman->SetCallsForHelp(true);
                    footman->SetNoCallAssistance(false);
                    footman->CombatStop(true);
                }
            }
            std::list<Creature*> riflemen;
            GetCreatureListWithEntryInGrid(riflemen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_RIFLEMAN, 150.0f);
            for (auto const rifleman : riflemen)
            {
                if (rifleman->IsAlive())
                {
                    const auto pos = rifleman->GetCreatureData()->position;
                    rifleman->GetMotionMaster()->MovePoint(0, pos.x, pos.y, pos.z, MOVE_RUN_MODE, 0, pos.o);
                    rifleman->CombatStop(true);
                }
            }
        }
        else if (m_eventStage == FinishedBlackanvilJoinsCircle && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            if (blackanvil)
            {
                m_eventForceResetTimer.Reset();
                m_eventPulseTimer.SetCooldown(10000);
                m_eventStage = FinishedBlackanvilBecomesQuestgiver;
                blackanvil->m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::DESTINATION_CAPTAIN_BLACKANVIL_CIRCLE, MOVE_WALK_MODE, 0, Silithus::Locations::DESTINATION_CAPTAIN_BLACKANVIL_CIRCLE.orientation);
            }
        }
        else if (m_eventStage == FinishedBlackanvilBecomesQuestgiver && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            if (blackanvil)
            {
                m_eventForceResetTimer.Reset();
                m_eventPulseTimer.SetCooldown(180000);
                m_eventStage = FinishedDone;
                blackanvil->m_creature->CombatStop(true);
                blackanvil->m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                blackanvil->m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
            }
        }
        else if (m_eventStage == FinishedDone)
        {
            /*
             * We split the checks here because we're expecting m_eventPulseTimer to be longer than 1 minute,
             * and we don't want to reset the event if it's not ready yet.
             */
            m_eventForceResetTimer.Reset();
            if (m_eventPulseTimer.IsReady())
            {
                SetEventStateWaitingForStart();
            }
        }
    }

    if (m_eventState == Silithus::EventState::FIGHT_IN_PROGRESS)
    {
        const auto abomination = FindHiveZoraAbomination();
        if (m_eventStage == CombatActive && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            if (abomination && blackanvil)
            {
                m_eventForceResetTimer.Reset();

                // If anyone respawns mid-fight, force them to re-engage the abomination
                if (const auto janela = FindJanelaStouthammer())
                {
                    if (janela->m_creature->GetVictim() == nullptr)
                    {
                        janela->m_creature->EnterCombatWithTarget(abomination->m_creature);
                    }
                }
                if (const auto sergeant = FindSergeantCarnes())
                {
                    if (sergeant->GetVictim() == nullptr)
                    {
                        sergeant->EnterCombatWithTarget(abomination->m_creature);
                    }
                }
                if (const auto arcanist = FindArcanistNozzlespring())
                {
                    if (arcanist->m_creature->GetVictim() == nullptr)
                    {
                        arcanist->m_creature->EnterCombatWithTarget(abomination->m_creature);
                    }
                }

                std::list<Creature*> footmen;
                GetCreatureListWithEntryInGrid(footmen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_FOOTMAN, 50.f);
                for (auto const footman : footmen)
                {
                    if (footman->IsAlive() && footman->GetVictim() == nullptr)
                    {
                        footman->EnterCombatWithTarget(abomination->m_creature);
                    }
                }
                std::list<Creature*> riflemen;
                GetCreatureListWithEntryInGrid(riflemen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_RIFLEMAN, 50.f);
                for (auto const rifleman : riflemen)
                {
                    if (rifleman->IsAlive() && rifleman->GetVictim() == nullptr)
                    {
                        rifleman->EnterCombatWithTarget(abomination->m_creature);
                    }
                }
            }
            else
            {
                // If we can't find an alive abomination, we killed it, or we need to let the event reset.
                m_eventPulseTimer.SetCooldown(3000);
                m_eventStage = CombatDone;
            }
        }
        else if (m_eventStage == CombatDone && m_eventPulseTimer.IsReady())
        {
            // If we got here because Blackanvil died, clean up the abomination.
            if (abomination)
            {
                abomination->m_creature->DisappearAndDie();
            }
            m_eventForceResetTimer.Reset();
            m_eventStage = FinishedReturnToSpawnPositions;
            m_eventState = Silithus::EventState::FINISHED;
        }
    }

    if (m_eventState == Silithus::EventState::DIALOG_IN_PROGRESS)
    {
        if (m_eventStage == Waiting1Idle && m_eventPulseTimer.IsReady())
        {
            SpawnHiveZoraAbomination();
            const auto abomination = FindHiveZoraAbomination();
            const auto janelaStouthammer = FindJanelaStouthammer();
            if (abomination && janelaStouthammer)
            {
                janelaStouthammer->m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                abomination->BecomeImmune();
                m_eventPulseTimer.SetCooldown(3000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogJanelaLookoutSpottedAbomination;
            }
        }
        else if (m_eventStage == DialogJanelaLookoutSpottedAbomination && m_eventPulseTimer.IsReady())
        {
            const auto abomination = FindHiveZoraAbomination();
            const auto janelaStouthammer = FindJanelaStouthammer();
            if (abomination && janelaStouthammer)
            {
                janelaStouthammer->m_creature->SetFacingToObject(abomination->m_creature);
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_JANELA_LOOKOUT_SPOTTED, janelaStouthammer->m_creature, nullptr, CHAT_TYPE_SAY);
                janelaStouthammer->m_creature->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                m_eventPulseTimer.SetCooldown(4000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogJanelaSendSoldierToFindBlackanvil;
            }
        }
        else if (m_eventStage == DialogJanelaSendSoldierToFindBlackanvil && m_eventPulseTimer.IsReady())
        {
            if (const auto janelaStouthammer = FindJanelaStouthammer())
            {
                // Find nearest soldier
                if (const auto soldier = janelaStouthammer->m_creature->FindNearestCreature(Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_FOOTMAN, 100.f, true))
                {
                    m_commandedSoldier = soldier->GetGUID();
                    janelaStouthammer->m_creature->SetFacingToObject(soldier);
                    DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_JANELA_SEND_SOLDIER, janelaStouthammer->m_creature, nullptr, CHAT_TYPE_SAY);
                    m_eventPulseTimer.SetCooldown(3000);
                    m_eventForceResetTimer.Reset();
                    m_eventStage = DialogSoldierRunToCaptainBlackanvil;
                }
            }
        }
        else if (m_eventStage == DialogSoldierRunToCaptainBlackanvil && m_eventPulseTimer.IsReady())
        {
            const auto janelaStouthammer = FindJanelaStouthammer();
            const auto soldier = m_creature->GetMap()->GetCreature(m_commandedSoldier);
            if (janelaStouthammer && soldier)
            {
                janelaStouthammer->m_creature->SetFacingTo(Silithus::Locations::SPAWN_JANELA_STOUTHAMMER.orientation);
                soldier->GetMotionMaster()->MovePoint(0, Silithus::Locations::FETCH_CAPTAIN_BLACKANVIL, MOVE_RUN_MODE, 0, Silithus::Locations::FETCH_CAPTAIN_BLACKANVIL.orientation);
                SpawnCaptainBlackanvil();
                m_eventPulseTimer.SetCooldown(4000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogSoldierAnnounceProblem;
            }
        }
        else if (m_eventStage == DialogSoldierAnnounceProblem && m_eventPulseTimer.IsReady())
        {
            const auto soldier = m_creature->GetMap()->GetCreature(m_commandedSoldier);
            if (soldier)
            {
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_SOLDIER_ANNOUNCE_PROBLEM, soldier);
                m_eventPulseTimer.SetCooldown(2000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogJanelaLookAlive;
            }
        }
        else if (m_eventStage == DialogJanelaLookAlive && m_eventPulseTimer.IsReady())
        {
            const auto abomination = FindHiveZoraAbomination();
            const auto janelaStouthammer = FindJanelaStouthammer();
            if (abomination && janelaStouthammer)
            {
                abomination->BeginPathing();
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_JANELA_LOOK_ALIVE, janelaStouthammer->m_creature);
                m_eventPulseTimer.SetCooldown(2000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogBlackanvilWalksToJanela;
            }
        }
        else if (m_eventStage == DialogBlackanvilWalksToJanela && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            const auto soldier = m_creature->GetMap()->GetCreature(m_commandedSoldier);
            const auto sergeant = FindSergeantCarnes();
            const auto arcanist = FindArcanistNozzlespring();
            if (blackanvil && soldier && sergeant && arcanist)
            {
                blackanvil->m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::DESTINATION_CAPTAIN_BLACKANVIL_BEHIND_JANELA, MOVE_WALK_MODE, 0, Silithus::Locations::SPAWN_JANELA_STOUTHAMMER.orientation);
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_BLACKANVIL_BETTER_BE_IMPORTANT, blackanvil->m_creature);
                soldier->GetMotionMaster()->MovePoint(0, Silithus::Locations::DESTINATION_SOLDIER_SLOT_4, MOVE_RUN_MODE, 0, Silithus::Locations::DESTINATION_SOLDIER_SLOT_4.orientation);

                // Arcanist Nozzlespring and Sergeant Carnes should walk to their positions
                sergeant->GetMotionMaster()->MovePoint(0, Silithus::Locations::DESTINATION_SERGEANT_CARNES, MOVE_WALK_MODE, 0, Silithus::Locations::DESTINATION_SERGEANT_CARNES.orientation);
                arcanist->m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::DESTINATION_ARCANIST_NOZZLESPRING, MOVE_WALK_MODE, 0, Silithus::Locations::DESTINATION_ARCANIST_NOZZLESPRING.orientation);

                // Find all footmen and move them to slots 1-3
                std::list<Creature*> footmen;
                GetCreatureListWithEntryInGrid(footmen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_FOOTMAN, 150.0f);
                auto footmanCount = 0;
                for (const auto footman : footmen)
                {
                    if (footman->IsDead() || footman->GetGUID() == m_commandedSoldier)
                    {
                        continue;
                    }
                    ++footmanCount;
                    Movement::Location destination;
                    switch (footmanCount)
                    {
                    case 1:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_1;
                        break;
                    case 2:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_2;
                        break;
                    case 3:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_3;
                        break;
                    default:
                        continue;
                    }
                    footman->GetMotionMaster()->MovePoint(0, destination, MOVE_RUN_MODE, 0, destination.orientation);
                }

                // Find all riflemen and move them to slots 5-12
                std::list<Creature*> riflemen;
                GetCreatureListWithEntryInGrid(riflemen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_RIFLEMAN, 150.0f);
                auto riflemanCount = 0;
                for (const auto rifleman : riflemen)
                {
                    if (rifleman->IsDead())
                    {
                        continue;
                    }
                    ++riflemanCount;
                    Movement::Location destination;
                    switch (riflemanCount)
                    {
                    case 1:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_5;
                        break;
                    case 2:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_6;
                        break;
                    case 3:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_7;
                        break;
                    case 4:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_8;
                        break;
                    case 5:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_9;
                        break;
                    case 6:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_10;
                        break;
                    case 7:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_11;
                        break;
                    case 8:
                        destination = Silithus::Locations::DESTINATION_SOLDIER_SLOT_12;
                        break;
                    default:
                        continue;
                    }
                    rifleman->GetMotionMaster()->MovePoint(0, destination, MOVE_RUN_MODE, 0, destination.orientation);
                }

                m_eventPulseTimer.SetCooldown(10000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogBlackanvilComplainsAboutDay;
            }
        }
        else if (m_eventStage == DialogBlackanvilComplainsAboutDay && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            if (blackanvil)
            {
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_BLACKANVIL_COMPLAINS_ABOUT_DAY, blackanvil->m_creature);
                m_eventPulseTimer.SetCooldown(4000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogBlackanvilWalksInFrontOfJanela;
            }
        }
        else if (m_eventStage == DialogBlackanvilWalksInFrontOfJanela && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            if (blackanvil)
            {
                blackanvil->m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::DESTINATION_CAPTAIN_BLACKANVIL_FACING_ABOMINATION, MOVE_WALK_MODE, 0, Silithus::Locations::DESTINATION_CAPTAIN_BLACKANVIL_FACING_ABOMINATION.orientation);
                m_eventPulseTimer.SetCooldown(2500);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogBlackanvilStandReady;
            }
        }
        else if (m_eventStage == DialogBlackanvilStandReady && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            if (blackanvil)
            {
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_BLACKANVIL_STAND_READY, blackanvil->m_creature);
                m_eventPulseTimer.SetCooldown(3000);
                m_eventForceResetTimer.Reset();
                m_eventStage = DialogFootmenMakeALine;
            }
        }
        else if (m_eventStage == DialogFootmenMakeALine && m_eventPulseTimer.IsReady())
        {
            const auto blackanvil = FindCaptainBlackanvil();
            const auto abomination = FindHiveZoraAbomination();
            if (abomination && blackanvil)
            {
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_BLACKANVIL_FORM_A_LINE, blackanvil->m_creature);
                abomination->BecomeAttackable();
                std::list<Creature*> footmen;
                GetCreatureListWithEntryInGrid(footmen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_FOOTMAN, 150.0f);
                for (const auto footman : footmen)
                {
                    if (footman->IsDead())
                    {
                        continue;
                    }
                    footman->SetCallsForHelp(false);
                    footman->SetNoCallAssistance(true);
                    footman->EnterCombatWithTarget(abomination->m_creature);
                }
                m_eventPulseTimer.SetCooldown(3000);
                m_eventStage = DialogBlackanvilEngage;
                m_eventForceResetTimer.Reset();
            }
        }
        else if (m_eventStage == DialogBlackanvilEngage && m_eventPulseTimer.IsReady())
        {
            const auto abomination = FindHiveZoraAbomination();
            const auto blackanvil = FindCaptainBlackanvil();
            if (blackanvil && abomination)
            {
                blackanvil->m_creature->EnterCombatWithTarget(abomination->m_creature);
                m_eventPulseTimer.SetCooldown(2000);
                m_eventStage = DialogAllEngage;
                m_eventForceResetTimer.Reset();
            }
        }
        else if (m_eventStage == DialogAllEngage && m_eventPulseTimer.IsReady())
        {
            const auto abomination = FindHiveZoraAbomination();
            const auto arcanist = FindArcanistNozzlespring();
            const auto blackanvil = FindCaptainBlackanvil();
            const auto janela = FindJanelaStouthammer();
            const auto sergeant = FindSergeantCarnes();
            if (abomination && arcanist && blackanvil && janela && sergeant)
            {
                DoScriptText(Silithus::ScriptTexts::SCRIPT_TEXT_BLACKANVIL_OPEN_FIRE, blackanvil->m_creature);
                // Named NPCs attack
                arcanist->m_creature->EnterCombatWithTarget(abomination->m_creature);
                janela->m_creature->EnterCombatWithTarget(abomination->m_creature);
                sergeant->EnterCombatWithTarget(abomination->m_creature);
                // All riflemen attack
                std::list<Creature*> riflemen;
                GetCreatureListWithEntryInGrid(riflemen, m_creature, Silithus::Creatures::ENTRY_IRONFORGE_BRIGADE_RIFLEMAN, 150.0f);
                for (const auto rifleman : riflemen)
                {
                    if (rifleman->IsDead())
                    {
                        continue;
                    }
                    rifleman->EnterCombatWithTarget(abomination->m_creature);
                }
                m_eventPulseTimer.SetCooldown(5000);
                m_eventStage = DialogDone;
                m_eventForceResetTimer.Reset();
            }
        }
        else if (m_eventStage == DialogDone && m_eventPulseTimer.IsReady())
        {
            m_eventState = Silithus::EventState::FIGHT_IN_PROGRESS;
            m_eventStage = CombatActive;
            m_eventForceResetTimer.Reset();
        }
    }
}

CreatureAI* trigger_field_duty_alliance::GetAI(Creature* pCreature)
{
    return new trigger_field_duty_alliance(pCreature);
}

void trigger_field_duty_alliance::RegisterScript()
{
    const auto script = new Script();
    script->Name = "trigger_field_duty_alliance";
    script->GetAI = &trigger_field_duty_alliance::GetAI;
    script->RegisterSelf();
}
