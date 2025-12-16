#pragma once
#include "defines.h"

#include "scriptPCH.h"

struct npc_hiveregal_hunterkiller : ScriptedAI
{
private:
    static constexpr uint32_t SPELL_THUNDERCLAP = 15588;
    static constexpr uint32_t SPELL_CHARGE = 25821;
    static constexpr uint32_t SPELL_CLEAVE = 11427;
    static constexpr uint32_t SPELL_FEAR = 25815;

    static constexpr uint32_t HUNTERKILLER_WAYPOINTS_NUMBER = 16;
    static inline Movement::Location HunterKillerWaypoint[HUNTERKILLER_WAYPOINTS_NUMBER] =
    {
        { -7769.14f, 549.365f, -44.1111f, 0.868761f},
        { -7762.88f, 564.709f, -45.9125f, 1.17899f},
        { -7749.28f, 589.14f, -47.1617f, 1.05334f},
        { -7748.5f, 622.853f, -45.2946f, 0.982653f},
        { -7730.37f, 643.343f, -46.7866f, 0.456442f},
        { -7694.24f, 660.321f, -51.0377f, 0.441519f},
        { -7674.25f, 671.264f, -50.4592f, 0.0841609f},
        { -7655.01f, 671.601f, -47.9161f, 1.13424f},
        { -7634.07f, 672.497f, -47.8617f, 0.0857299f},
        { -7603.06f, 667.321f, -48.6429f, 6.0249f},
        { -7571.59f, 665.263f, -48.3899f, 0.0480175f},
        { -7562.58f, 687.328f, -49.9864f, 1.36749f},
        { -7559.18f, 689.958f, -40.8654f, 1.44927f},
        { -7555.3f, 692.953f, -30.7562f, 0.671711f},
        { -7548.27f, 697.037f, -25.6632f, 1.09582f},
        { -7547.07f, 706.949f, -17.7001f, 4.68419f},
    };
public:
    npc_hiveregal_hunterkiller(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_hiveregal_hunterkiller::Reset();
        m_bReachedCamp = false;
        m_uiMoveTimer = 0;
        m_uiWaypoint = 0;
        pCreature->SetFactionTemplateId(35);
    }

    uint32 m_uiThunderClapTimer;
    uint32 m_uiChargeTimer;
    uint32 m_uiCleaveTimer;
    uint32 m_uiFearTimer;
    uint32 m_uiMoveTimer;
    uint32 m_uiWaypoint;

    bool m_bReachedCamp;

    void Reset() override
    {
        m_uiThunderClapTimer = 17000;
        m_uiChargeTimer = urand(15000, 20000);
        m_uiCleaveTimer = urand(4000, 8000);
        m_uiFearTimer = urand(5000, 10000);
        // m_creature->MonsterTextEmote("Reset", nullptr); // pour debug
    }

    Unit* GetVictimInRangePlayerOnly(float min, float max)
    {
        ThreatList const& tList = m_creature->GetThreatManager().getThreatList();
        for (const auto itr : tList)
        {
            if (ObjectGuid uiTargetGuid = itr->getUnitGuid())
            {
                if (Unit* pTarget = m_creature->GetMap()->GetUnit(uiTargetGuid))
                {
                    if (pTarget->GetTypeId() == TYPEID_PLAYER && m_creature->IsInRange(pTarget, min, max))
                        return pTarget;
                }
            }
        }
        return nullptr;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_bReachedCamp)
        {
            if (m_uiMoveTimer < uiDiff)
            {
                if (m_uiWaypoint == HUNTERKILLER_WAYPOINTS_NUMBER)
                {
                    m_creature->SetFactionTemplateId(14);
                    if (Creature* krug = GetClosestCreatureWithEntry(m_creature, Silithus::CreatureEntries::KRUG_SKULLSPLIT, 50.0f))
                        AttackStart(krug);

                    // Update home position to the camp in the case that the killer evades for whatever reason
                    m_creature->SetHomePosition(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), m_creature->GetOrientation());
                    m_bReachedCamp = true;
                }
                else
                {
                    float X = 0.0f;
                    float Y = 0.0f;
                    m_creature->GetMotionMaster()->MovePoint(0, HunterKillerWaypoint[m_uiWaypoint]);
                    X = m_creature->GetPositionX() - HunterKillerWaypoint[m_uiWaypoint].x;
                    Y = m_creature->GetPositionY() - HunterKillerWaypoint[m_uiWaypoint].y;
                    m_uiMoveTimer = sqrt((X * X) + (Y * Y)) / (m_creature->GetSpeed(MOVE_WALK) * 0.003f);
                }
                m_uiWaypoint++;
            }
            else
                m_uiMoveTimer -= uiDiff;

            return;
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->IsNonMeleeSpellCasted(false))
            return;

        // THUNDERCLAP
        if (m_uiThunderClapTimer <= uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_THUNDERCLAP);
            m_uiThunderClapTimer = 20000;
        }
        else
            m_uiThunderClapTimer -= uiDiff;

        // CHARGE
        if (m_uiChargeTimer <= uiDiff)
        {
            if (Unit* pTarget = GetVictimInRangePlayerOnly(5.0f, 30.0f))
            {
                DoCastSpellIfCan(pTarget, SPELL_CHARGE);
                m_uiChargeTimer = urand(30000, 35000);
            }
        }
        else
            m_uiChargeTimer -= uiDiff;

        // CLEAVE
        if (m_uiCleaveTimer <= uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE);
            m_uiCleaveTimer = urand(5000, 12000);
        }
        else
            m_uiCleaveTimer -= uiDiff;

        // FEAR
        if (m_uiFearTimer <= uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FEAR);
            m_uiFearTimer = urand(58000, 63000);
        }
        else
            m_uiFearTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }

    static CreatureAI* GetAI(Creature* creature)
    {
        return new npc_hiveregal_hunterkiller(creature);
    }

    static void register_script()
    {
        const auto script = new Script();
        script->Name = "npc_hiveregal_hunterkiller";
        script->GetAI = &npc_hiveregal_hunterkiller::GetAI;
        script->RegisterSelf();
    }
};
