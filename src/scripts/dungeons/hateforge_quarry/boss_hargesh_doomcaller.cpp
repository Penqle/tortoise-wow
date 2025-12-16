
#include "scriptPCH.h"


struct Location
{
    float m_fX{}, m_fY{}, m_fZ{}, m_fO{};
};

static const Location vfSpawnPoint[] =
{
    { -8300.825195f, -3735.292725f, 138.12f, 6.020778f },
    { -8283.150391f, -3740.716309f, 137.77f, 2.820284f }
};

static constexpr uint32 NPC_HARGESH_DOOMCALLER{ 60737 };
static constexpr uint32 NPC_FACELESS_TERROR{ 60738 };

static constexpr uint32 SPELL_IMMOLATE{ 11668 };
static constexpr uint32 SPELL_SHADOW_BOLT_VOLLEY{ 27646 };
static constexpr uint32 SPELL_SHADOW_BOLT{ 12739 };
static constexpr uint32 SPELL_IMMUNE_ALL{ 29230 };
static constexpr uint32 SPELL_SHADOW_CHANNELING{ 12380 };

static constexpr int32 VOICE_SCRIPT_AGGRO{ -1999959 };
static constexpr int32 VOICE_SCRIPT_PHASE2{ -1999960 };
static constexpr int32 VOICE_SCRIPT_DIED{ -1999961 };


class boss_hargesh_doomcallerAI : public ScriptedAI
{
public:
    explicit boss_hargesh_doomcallerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_hargesh_doomcallerAI::Reset();
    }

private:

    bool m_bPhaseTwo{};
    bool m_bAddsAreDead{};

    uint8 m_uiDeadCounter{};

    uint32 m_uiImmolate_Timer{};
    uint32 m_uiShadowBoltVolley_Timer{};
    uint32 m_uiShadowBolt_Timer{};
    uint32 m_uiCheckIfAddsAreDead_Timer{};

    std::vector<ObjectGuid> m_vFacelessTerror;

public:
    void Reset() override
    {
        m_uiDeadCounter = 0;

        m_uiImmolate_Timer = 30000;
        m_uiShadowBoltVolley_Timer = 60000;
        m_uiShadowBolt_Timer = 10000;
        m_uiCheckIfAddsAreDead_Timer = 500;

        m_bPhaseTwo = false;
        m_bAddsAreDead = false;

        m_creature->RemoveAurasDueToSpell(SPELL_IMMUNE_ALL);

        DespawnFacelessTerror();
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoScriptText(VOICE_SCRIPT_AGGRO, m_creature);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DoScriptText(VOICE_SCRIPT_DIED, m_creature);
        DespawnFacelessTerror();
    }

    void EnterEvadeMode() override
    {
        m_creature->RemoveAurasDueToSpell(SPELL_SHADOW_CHANNELING);
        m_creature->RemoveAurasDueToSpell(SPELL_IMMUNE_ALL);
        m_creature->SetRooted(false);
        m_creature->ClearUnitState(UNIT_STAT_ROOT);

        ScriptedAI::EnterEvadeMode();
    }

    void CastImmolate(const uint32& uiDiff)
    {
        if (m_uiImmolate_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_IMMOLATE) == CanCastResult::CAST_OK)
            {
                m_uiImmolate_Timer = 30000;
            }
        }
        else
        {
            m_uiImmolate_Timer -= uiDiff;
        }
    }

    void CastShadowBoltVolley(const uint32& uiDiff)
    {
        if (m_uiShadowBoltVolley_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_BOLT_VOLLEY) == CanCastResult::CAST_OK)
            {
                m_uiShadowBoltVolley_Timer = 90000;
            }
        }
        else
        {
            m_uiShadowBoltVolley_Timer -= uiDiff;
        }
    }

    void CastShadowBolt(const uint32& uiDiff)
    {
        if (m_uiShadowBolt_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_BOLT) == CanCastResult::CAST_OK)
            {
                m_uiShadowBolt_Timer = 10000;
            }
        }
        else
        {
            m_uiShadowBolt_Timer -= uiDiff;
        }
    }

    void PhaseTwo()
    {
        m_creature->CastSpell(m_creature, SPELL_IMMUNE_ALL, true);

        m_creature->ClearTarget();
        m_creature->StopMoving();
        m_creature->AddUnitState(UNIT_STAT_ROOT);
        m_creature->SetRooted(true);

        m_creature->CastSpell(m_creature, SPELL_SHADOW_CHANNELING, true);

        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        for (const auto& itr : PlayerList)
        {
            if (Player* pPlayer{ itr.getSource() })
            {
                if (pPlayer && pPlayer->IsAlive() && !pPlayer->IsGameMaster())
                {
                    if (Creature* pFacelessTerror1{ m_creature->SummonCreature(NPC_FACELESS_TERROR,
                        vfSpawnPoint[0].m_fX, vfSpawnPoint[0].m_fY, vfSpawnPoint[0].m_fZ, vfSpawnPoint[0].m_fO, TEMPSUMMON_MANUAL_DESPAWN) })
                    {
                        pFacelessTerror1->AI()->AttackStart(pPlayer);
                        m_vFacelessTerror.push_back(pFacelessTerror1->GetObjectGuid());
                    }

                    if (Creature* pFacelessTerror2{ m_creature->SummonCreature(NPC_FACELESS_TERROR,
                        vfSpawnPoint[0].m_fX, vfSpawnPoint[0].m_fY, vfSpawnPoint[0].m_fZ, vfSpawnPoint[0].m_fO, TEMPSUMMON_MANUAL_DESPAWN) })
                    {
                        pFacelessTerror2->AI()->AttackStart(pPlayer);
                        m_vFacelessTerror.push_back(pFacelessTerror2->GetObjectGuid());
                    }

                    DoScriptText(VOICE_SCRIPT_PHASE2, m_creature);
                    m_bPhaseTwo = true;
                    return;
                }
            }
        }
    }

    void CheckIfAddsAreDead(const uint32& uiDiff)
    {
        if (m_uiCheckIfAddsAreDead_Timer < uiDiff)
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vFacelessTerror)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (!pCreature->IsAlive())
                        {
                            ++m_uiDeadCounter;

                            if (m_uiDeadCounter == m_vFacelessTerror.size()) // Check if all summoned adds are dead
                            {
                                m_creature->RemoveAurasDueToSpell(SPELL_SHADOW_CHANNELING);
                                m_creature->RemoveAurasDueToSpell(SPELL_IMMUNE_ALL);
                                m_creature->SetRooted(false);
                                m_creature->ClearUnitState(UNIT_STAT_ROOT);
                                m_creature->AddThreat(m_creature->GetVictim(), 10.f);

                                m_bAddsAreDead = true;
                            }
                        }
                        else // At least one of them is still alive, reset counter and check again
                        {
                            m_uiDeadCounter = 0;
                        }
                    }
                }
            }

            m_uiCheckIfAddsAreDead_Timer = 500;
        }
        else
        {
            m_uiCheckIfAddsAreDead_Timer -= uiDiff;
        }
    }

    void DespawnFacelessTerror()
    {
        if (!m_vFacelessTerror.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vFacelessTerror)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_vFacelessTerror.clear();
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->GetPositionZ() < 135.f)
        {
            boss_hargesh_doomcallerAI::EnterEvadeMode();
            return;
        }

        if (!m_bPhaseTwo || m_bAddsAreDead)
        {
            CastImmolate(uiDiff);
            CastShadowBoltVolley(uiDiff);
            CastShadowBolt(uiDiff);
        }

        if (m_creature->HealthBelowPct(60) && !m_bPhaseTwo)
        {
            PhaseTwo();
        }

        if (!m_bAddsAreDead)
        {
            CheckIfAddsAreDead(uiDiff);
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_hargesh_doomcaller(Creature* pCreature)
{
    return new boss_hargesh_doomcallerAI(pCreature);
}


class npc_faceless_terrorAI : public ScriptedAI
{
public:
    explicit npc_faceless_terrorAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_faceless_terrorAI::Reset();
    }

private:
    bool m_bCalledEvade{};
    uint32 m_uiRaidWipeCheck_Timer{};

public:
    void Reset() override
    {
        m_bCalledEvade = false;
        m_uiRaidWipeCheck_Timer = 5000;
    }

    void CheckForRaidWipe(const uint32& uiDiff)
    {
        if (m_uiRaidWipeCheck_Timer < uiDiff)
        {
            Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
            for (const auto& itr : PlayerList)
            {
                if (Player* pPlayer{ itr.getSource() })
                {
                    if (Creature* pCreature{ GetClosestCreatureWithEntry(pPlayer, NPC_HARGESH_DOOMCALLER, 250.f) })
                    {
                        if (boss_hargesh_doomcallerAI* hargesh_doomcaller{ dynamic_cast<boss_hargesh_doomcallerAI*>(pCreature->AI()) })
                        {
                            hargesh_doomcaller->ScriptedAI::EnterEvadeMode();
                            m_bCalledEvade = true;

                            break;
                        }
                    }
                }
            }

            m_uiRaidWipeCheck_Timer = 5000;
        }
        else
        {
            m_uiRaidWipeCheck_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
        {
            if (!m_bCalledEvade)
            {
                CheckForRaidWipe(uiDiff);
            }
        }
        else
        {
            DoMeleeAttackIfReady();
        }
    }
};

CreatureAI* GetAI_npc_faceless_terror(Creature* pCreature)
{
    return new npc_faceless_terrorAI(pCreature);
}


void AddSC_boss_hargesh_doomcaller()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_hargesh_doomcaller";
    pNewscript->GetAI = &GetAI_boss_hargesh_doomcaller;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_faceless_terror";
    pNewscript->GetAI = &GetAI_npc_faceless_terror;
    pNewscript->RegisterSelf();
}
