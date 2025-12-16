#pragma once
#include <AI/AbilityTimer.h>

#include "scriptPCH.h"

struct npc_orgrimmar_legion_grunt : ScriptedAI
{
private:
    enum EventStates
    {
        STATE_WAITING_FOR_HIVEKILLER,
        STATE_HIVEKILLER_SEEN,
        STATE_FIGHTING_HIVEKILLER,
        STATE_HIVEKILLER_DEAD
    };
    static constexpr int VOICELINE_FOR_THE_HORDE = -1780139;
    static constexpr uint32_t VOICELINE_DELAY = 3000;

    EventStates m_eventState = STATE_WAITING_FOR_HIVEKILLER;
    AbilityTimer m_yellTimer = AbilityTimer(0, VOICELINE_DELAY, VOICELINE_DELAY, VOICELINE_DELAY);
public:
    npc_orgrimmar_legion_grunt(Creature* pCreature) : ScriptedAI(pCreature)
    {
    }

    void Reset() override
    {
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        auto hiveRegalHunterKiller = m_creature->FindNearestCreature(Silithus::CreatureEntries::HIVEREGAL_HUNTERKILLER, 100.f, true);
        if (!hiveRegalHunterKiller)
        {
            hiveRegalHunterKiller = m_creature->FindNearestCreature(Silithus::CreatureEntries::HIVEREGAL_HUNTERKILLER, 100.f, false);

            // If it's not found, it must have despawned
            if (!hiveRegalHunterKiller)
            {
                m_eventState = STATE_WAITING_FOR_HIVEKILLER;
                m_yellTimer.Reset();
            }
            else if (m_eventState == STATE_FIGHTING_HIVEKILLER)
            {
                if (hiveRegalHunterKiller->IsDead())
                {
                    m_eventState = STATE_HIVEKILLER_DEAD;
                    m_creature->HandleEmote(EMOTE_STATE_NONE);
                }
            }
            else if (m_eventState == STATE_HIVEKILLER_DEAD)
            {
                m_yellTimer.Update(uiDiff);
                if (m_yellTimer.IsReady())
                {
                    // Yells "FOR THE HORDE!"
                    m_creature->MonsterYell(VOICELINE_FOR_THE_HORDE, LANG_ORCISH);
                    m_yellTimer.Reset();
                    m_eventState = STATE_WAITING_FOR_HIVEKILLER;
                }
            }
        }
        else
        {
            if (m_eventState == STATE_WAITING_FOR_HIVEKILLER)
            {
                if (!m_creature->IsValidAttackTarget(hiveRegalHunterKiller) && hiveRegalHunterKiller->IsAlive())
                {
                    m_eventState = STATE_HIVEKILLER_SEEN;
                    m_creature->HandleEmote(EMOTE_STATE_READY2H);
                }
            }

            if (m_eventState == STATE_HIVEKILLER_SEEN)
            {
                if (m_creature->IsValidAttackTarget(hiveRegalHunterKiller))
                {
                    m_eventState = STATE_FIGHTING_HIVEKILLER;
                    m_creature->EnterCombatWithTarget(hiveRegalHunterKiller);
                }
            }
        }

        ScriptedAI::UpdateAI(uiDiff);
    }

    static CreatureAI* GetAI(Creature* creature)
    {
        return new npc_orgrimmar_legion_grunt(creature);
    }

    static void register_script()
    {
        const auto script = new Script();
        script->Name = "npc_orgrimmar_legion_grunt";
        script->GetAI = &npc_orgrimmar_legion_grunt::GetAI;
        script->RegisterSelf();
    }
};