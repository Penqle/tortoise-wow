#include "scriptPCH.h"

enum
{
    SPELL_RIFT_ENTANGLEMENT   = 51194,
    SPELL_NETHER_BANISHMENT   = 51195,
    SPELL_CURSE_OF_THE_RIFT   = 51196,
    SPELL_NETHERBOLT          = 51198,
    SPELL_OVERFLOWING_HATRED  = 51204,
    SPELL_RIFT_FEEDBACK       = 51205,
    SPELL_ENRAGE              = 51206,
    SPELL_LEADER_OF_THE_TRIBE = 51207,
    SPELL_OPENING_THE_RIFT    = 51209,

    NPC_RIFT_PORTAL           = 59973,
    NPC_RIFT_LOST_DRAENEI     = 59975,
    NPC_DRAENEI_RIFTSTALKER   = 59976,
    NPC_DRAENEI_RIFTWALKER    = 59977,
    NPC_DRAENEI_NETHERWALKER  = 59978,
    NPC_SHADOW_LOST_DRAENEI   = 59979,
};

struct boss_sanv_tasdalAI : public ScriptedAI
{
    boss_sanv_tasdalAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_phase;
    uint32 m_riftEntanglementTimer;
    uint32 m_netherBanishmentTimer;
    uint32 m_curseOfTheRiftTimer;
    uint32 m_netherboltTimer;
    uint32 m_overflowingHatredTimer;
    uint32 m_riftFeedbackTimer;
    ObjectGuidSet m_riftPortals;

    void Reset() override
    {
        m_phase = 0;
        m_riftEntanglementTimer = 5000;
        m_netherBanishmentTimer = 3000;
        m_curseOfTheRiftTimer = 7000;
        m_netherboltTimer = 1500;
        m_overflowingHatredTimer = 6000;
        m_riftFeedbackTimer = 55000;
        DespawnRiftPortals();
        m_creature->RemoveGuardians();
    }

    void SummonRiftPortals()
    {
        if (Creature* pPortal = m_creature->SummonCreature(NPC_RIFT_PORTAL, -6477.459f, -2749.203f, 22.861f, 0.6f, TEMPSUMMON_DEAD_DESPAWN, 30000))
            m_riftPortals.insert(pPortal->GetObjectGuid());

        if (Creature* pPortal = m_creature->SummonCreature(NPC_RIFT_PORTAL, -6434.794f, -2688.485f, 16.567f, 5.8f, TEMPSUMMON_DEAD_DESPAWN, 30000))
            m_riftPortals.insert(pPortal->GetObjectGuid());

        if (Creature* pPortal = m_creature->SummonCreature(NPC_RIFT_PORTAL, -6405.194f, -2729.056f, 16.544f, 1.5f, TEMPSUMMON_DEAD_DESPAWN, 30000))
            m_riftPortals.insert(pPortal->GetObjectGuid());
    }

    void DespawnRiftPortals()
    {
        for (auto const& guid : m_riftPortals)
        {
            if (Creature* pPortal = m_creature->GetMap()->GetCreature(guid))
                pPortal->DespawnOrUnsummon();
        }
        m_riftPortals.clear();
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_phase < 1 && m_creature->GetHealthPercent() < 80.0f)
        {
            m_phase = 1;
            SummonRiftPortals();
            m_creature->MonsterYell("DEBUG: Phase 2");
            return;
        }

        if (m_phase < 2 && m_creature->GetHealthPercent() < 50.0f)
        {
            m_phase = 2;
            m_overflowingHatredTimer = 55000;
            m_riftFeedbackTimer = 60000;
            m_creature->InterruptNonMeleeSpells(false);
            m_creature->CastSpell(m_creature, SPELL_OPENING_THE_RIFT, false);
            m_creature->MonsterYell("DEBUG: Phase 3");
            return;
        }

        if (m_phase < 3 && m_creature->GetHealthPercent() < 20.0f)
        {
            m_phase = 3;
            m_creature->CastSpell(m_creature, SPELL_LEADER_OF_THE_TRIBE, true);
            m_creature->CastSpell(m_creature, SPELL_ENRAGE, true);
            m_creature->MonsterYell("DEBUG: Phase 4");
            return;
        }

        if (m_phase != 1)
        {
            if (m_riftEntanglementTimer <= uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_RIFT_ENTANGLEMENT, SELECT_FLAG_PLAYER))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_RIFT_ENTANGLEMENT) == CAST_OK)
                    {
                        m_riftEntanglementTimer = 13000;
                        return;
                    }
                }
            }
            else
                m_riftEntanglementTimer -= uiDiff;

            if (m_netherBanishmentTimer <= uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_NETHER_BANISHMENT, SELECT_FLAG_PLAYER))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_NETHER_BANISHMENT) == CAST_OK)
                    {
                        m_netherBanishmentTimer = 11000;
                        return;
                    }
                }
            }
            else
                m_netherBanishmentTimer -= uiDiff;

            if (m_curseOfTheRiftTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_CURSE_OF_THE_RIFT) == CAST_OK)
                {
                    m_curseOfTheRiftTimer = 15000;
                    return;
                }
            }
            else
                m_curseOfTheRiftTimer -= uiDiff;

            if (m_netherboltTimer <= uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_NETHERBOLT, SELECT_FLAG_PLAYER))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_NETHERBOLT) == CAST_OK)
                    {
                        m_netherboltTimer = 5500;
                        return;
                    }
                }
            }
            else
                m_netherboltTimer -= uiDiff;
        }
        
        if (m_phase > 0)
        {
            if (m_overflowingHatredTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_OVERFLOWING_HATRED) == CAST_OK)
                {
                    m_overflowingHatredTimer = m_phase == 1 ? 8500 : urand(30000, 37000);
                    return;
                }
            }
            else
                m_overflowingHatredTimer -= uiDiff;
        }

        if (m_phase > 1)
        {
            if (m_riftFeedbackTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_RIFT_FEEDBACK) == CAST_OK)
                {
                    m_riftFeedbackTimer = 45000;
                    return;
                }
            }
            else
                m_riftFeedbackTimer -= uiDiff;
        }
        

        DoMeleeAttackIfReady();
    }
};


CreatureAI* GetAI_boss_sanv_tasdal(Creature* pCreature)
{
    return new boss_sanv_tasdalAI(pCreature);
}

struct npc_rift_portalAI : public ScriptedAI
{
    npc_rift_portalAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_riftLostDraeneiTimer;
    uint32 m_riftDraeneiRiftguardTimer;

    void Reset() override
    {
        m_riftLostDraeneiTimer = 7000;
        m_riftDraeneiRiftguardTimer = urand(30000, 50000);
    }

    void AttackStart(Unit* pVictim) override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_riftLostDraeneiTimer <= uiDiff)
        {
            uint32 entry;
            switch (urand(0, 9))
            {
                case 0:
                    entry = NPC_SHADOW_LOST_DRAENEI;
                    break;
                case 1:
                    entry = NPC_DRAENEI_NETHERWALKER;
                    break;
                default:
                    entry = NPC_RIFT_LOST_DRAENEI;
                    break;
            }

            if (Creature* pSummon = m_creature->SummonCreature(entry, 0, 0, 0, 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 30000))
                if (Player* pPlayer = pSummon->FindNearestHostilePlayer(50.0f))
                    pSummon->AI()->AttackStart(pPlayer);

            m_riftLostDraeneiTimer = 7000;
        }
        else
            m_riftLostDraeneiTimer -= uiDiff;

        if (m_riftDraeneiRiftguardTimer <= uiDiff)
        {
            uint32 entry;
            switch (urand(0, 1))
            {
                case 0:
                    entry = NPC_DRAENEI_RIFTWALKER;
                    break;
                default:
                    entry = NPC_DRAENEI_RIFTSTALKER;
                    break;
            }

            if (Creature* pSummon = m_creature->SummonCreature(entry, 0, 0, 0, 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 30000))
                if (Player* pPlayer = pSummon->FindNearestHostilePlayer(50.0f))
                    pSummon->AI()->AttackStart(pPlayer);

            m_riftDraeneiRiftguardTimer = urand(30000, 50000);
        }
        else
            m_riftDraeneiRiftguardTimer -= uiDiff;

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        //DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_rift_portal(Creature* pCreature)
{
    return new npc_rift_portalAI(pCreature);
}

void AddSC_boss_sanv_tasdal()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "boss_sanv_tasdal";
    newscript->GetAI = &GetAI_boss_sanv_tasdal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_rift_portal";
    newscript->GetAI = &GetAI_rift_portal;
    newscript->RegisterSelf();
}
