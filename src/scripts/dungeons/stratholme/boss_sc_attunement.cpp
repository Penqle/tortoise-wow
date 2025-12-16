/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Creature* pCreature, const uint32& uiTime, Functor&& function)
{
    pCreature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pCreature->m_Events.CalculateTime(uiTime));
}

struct Location
{
    float m_fX{}, m_fY{}, m_fZ{}, m_fO{};
};

static constexpr uint8 NUMBER_OF_ADDS{ 8 };
static const Location vfSpawnPoints[NUMBER_OF_ADDS] =
{
    { 3413.55f, -3041.98f, 136.53f, 5.33f },
    { 3427.16f, -3036.51f, 136.54f, 4.54f },
    { 3440.08f, -3044.79f, 136.54f, 3.77f },
    { 3443.54f, -3059.70f, 136.54f, 2.98f },
    { 3435.39f, -3072.69f, 136.54f, 2.18f },
    { 3420.36f, -3076.07f, 136.54f, 1.41f },
    { 3407.22f, -3067.97f, 136.54f, 0.61f },
    { 3403.84f, -3052.83f, 136.54f, 6.11f }
};

static constexpr uint32 SPELL_HOLY_LIGHT{ 25292 };
static constexpr uint32 SPELL_HOLY_SHOCK{ 25902 };
static constexpr uint32 SPELL_HOLY_STRIKE{ 17284 };
static constexpr uint32 SPELL_DIVINE_SHIELD{ 1020 };
static constexpr uint32 SPELL_BLADE_STORM{ 9632 };

static constexpr uint32 NPC_FALLEN_SPIRIT{ 2000013 };

class boss_sc_attunementAI : public ScriptedAI
{
public:
    explicit boss_sc_attunementAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_sc_attunementAI::Reset();
    }

private:
    uint32 m_uiHolyLight_Timer{};
    uint32 m_uiHolyShock_Timer{};
    uint32 m_uiHolyStrike_Timer{};

    std::list<uint32> m_lFallenSpirits;

    enum class Phase : uint8
    {
        ONE,
        TWO,
        THREE,
        FOUR,
        FIVE
    };

    Phase m_Phase{};

public:
    void Reset() override
    {
        m_uiHolyLight_Timer = urand(20000, 35000);
        m_uiHolyShock_Timer = 20000;
        m_uiHolyStrike_Timer = 10000;

        m_Phase = Phase::ONE;

        DespawnAdds();
    }

    void Aggro(Unit* /*pWho*/) override
    {
        m_creature->MonsterYell("The Scarlet Crusade stands tall. Come minions of the Scourge and face the Light’s might!");
    }

    void JustDied(Unit* /*pWho*/) override
    {
        DespawnAdds();
    }

    void SetPhase(Phase phase)
    {
        m_Phase = phase;
        m_creature->PMonsterYell("PHASE: %s", phase);
    }

    Phase IsPhase() const
    {
        return m_Phase;
    }

    void CastHolyLight(const uint32& uiDiff, const uint32& uiMinTimer, const uint32& uiMaxTimer) // TODO: Doesn't cast, it's instant atm
    {
        if (m_uiHolyLight_Timer < uiDiff)
        {
            const int32 iMaxHealth{ int32(m_creature->GetMaxHealth()) };
            m_creature->CastCustomSpell(m_creature, SPELL_HOLY_LIGHT, &iMaxHealth, nullptr, nullptr, true);

            m_uiHolyLight_Timer = urand(uiMinTimer, uiMaxTimer);
        }
        else
        {
            m_uiHolyLight_Timer -= uiDiff;
        }
    }

    void DoHolyShock(const uint32& uiDiff, const uint32& uiTimer)
    {
        if (m_uiHolyShock_Timer < uiDiff)
        {
            if (Unit* pVictim{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_BOTTOMAGGRO, 0) })
            {
                const int32 iDamage{ irand(3000, 3500) };
                m_creature->CastCustomSpell(pVictim, SPELL_HOLY_SHOCK, &iDamage, nullptr, nullptr, true);

                m_uiHolyShock_Timer = uiTimer;
            }
        }
        else
        {
            m_uiHolyShock_Timer -= uiDiff;
        }
    }

    void DoHolyStrike(const uint32& uiDiff, const uint32& uiTimer) // TODO: Doesn't work at all
    {
        if (m_uiHolyStrike_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
            {
                m_uiHolyStrike_Timer = uiTimer;
            }
        }
        else
        {
            m_uiHolyStrike_Timer -= uiDiff;
        }
    }

    void SummonAdds() // TODO: Crashes the server
    {
        for (uint8 i{ 0 }; i < NUMBER_OF_ADDS; ++i)
        {
            if (Creature* pFallenSpirit{ m_creature->SummonCreature(NPC_FALLEN_SPIRIT,
                vfSpawnPoints[i].m_fX,
                vfSpawnPoints[i].m_fY,
                vfSpawnPoints[i].m_fZ,
                vfSpawnPoints[i].m_fO,TEMPSUMMON_MANUAL_DESPAWN) })
            {
                m_lFallenSpirits.push_back(pFallenSpirit->GetObjectGuid());

                pFallenSpirit->GetMotionMaster()->MoveChase(m_creature);
            }
        }
    }

    void DespawnAdds()
    {
        if (!m_lFallenSpirits.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_lFallenSpirits)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_lFallenSpirits.clear();
            }
        }
    }

    void DoBladeStorm()
    {
        if (DoCastSpellIfCan(m_creature, SPELL_DIVINE_SHIELD) == CAST_OK)
        {
            if (IsPhase() == Phase::TWO)
            {
                m_creature->MonsterYell("I AM THE GRAND CRUSADER.THE SCOURGE WILL FALL!");
            }
            else if (IsPhase() == Phase::FOUR)
            {
                m_creature->MonsterYell("Light, grant me one final blessing! I shall not fail!");
            }

            DoCast(m_creature, SPELL_BLADE_STORM);
        }
    }

    bool AllSpiritsAreDead()
    {
        if (!m_lFallenSpirits.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                const std::size_t uiSizeOfSpawnedSpirits{ m_lFallenSpirits.size() };
                std::size_t uiDeathCounter{};

                for (const auto& guid : m_lFallenSpirits)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (!pCreature->IsAlive())
                        {
                            ++uiDeathCounter;
                        }
                    }
                }

                if (uiDeathCounter >= uiSizeOfSpawnedSpirits)
                {
                    return true;
                }
            }
        }

        return false;
    }

    void CallFourHorsemen()
    {
        m_creature->MonsterYell("Horsemen! Trample them!");

        // TODO: While the boss is bubbled and whirlwinding, 4 horsemen spirits should spawn in the corners and run in circles.
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (IsPhase() == Phase::ONE)
        {
            CastHolyLight(uiDiff, 15000, 30000);
            DoHolyShock(uiDiff, 20000);
            DoHolyStrike(uiDiff, 10000);

            if (m_creature->HealthBelowPct(75))
            {
                m_creature->MonsterSay(66109);
                SummonAdds();
                SetPhase(Phase::TWO);
            }
            else if (IsPhase() == Phase::TWO)
            {
                if (AllSpiritsAreDead())
                {
                    DoBladeStorm();
                    
                    DoAfterTime(m_creature, (3 * IN_MILLISECONDS), [creature = m_creature]()
                    {
                        if (boss_sc_attunementAI* boss_sc_attunement{ dynamic_cast<boss_sc_attunementAI*>(creature->AI()) })
                        {
                            boss_sc_attunement->CallFourHorsemen();
                        }
                    });

                    DoAfterTime(m_creature, (18 * IN_MILLISECONDS), [creature = m_creature]()
                    {
                        if (boss_sc_attunementAI* boss_sc_attunement{ dynamic_cast<boss_sc_attunementAI*>(creature->AI()) })
                        {
                            boss_sc_attunement->SetPhase(Phase::THREE);
                        }
                    });
                }
                else
                {
                    CastHolyLight(uiDiff, 15000, 30000);
                    DoHolyShock(uiDiff, 20000);
                    DoHolyStrike(uiDiff, 10000);
                }
            }
            else if (IsPhase() == Phase::THREE)
            {
                CastHolyLight(uiDiff, 15000, 30000);
                DoHolyShock(uiDiff, 20000);
                DoHolyStrike(uiDiff, 10000);

                if (m_creature->HealthBelowPct(25))
                {
                    SummonAdds();
                    SetPhase(Phase::FOUR);
                }
            }
            else if (IsPhase() == Phase::FOUR)
            {
                if (AllSpiritsAreDead())
                {
                    DoBladeStorm();

                    DoAfterTime(m_creature, (3 * IN_MILLISECONDS), [creature = m_creature]()
                    {
                        if (boss_sc_attunementAI* boss_sc_attunement{ dynamic_cast<boss_sc_attunementAI*>(creature->AI()) })
                        {
                            boss_sc_attunement->CallFourHorsemen();
                        }
                    });

                    DoAfterTime(m_creature, (18 * IN_MILLISECONDS), [creature = m_creature]()
                    {
                        if (boss_sc_attunementAI* boss_sc_attunement{ dynamic_cast<boss_sc_attunementAI*>(creature->AI()) })
                        {
                            boss_sc_attunement->SetPhase(Phase::FIVE);
                        }
                    });
                }
                else
                {
                    CastHolyLight(uiDiff, 15000, 30000);
                    DoHolyShock(uiDiff, 20000);
                    DoHolyStrike(uiDiff, 10000);
                }
            }
            else if (IsPhase() == Phase::FIVE)
            {
                DoHolyShock(uiDiff, 8000);
                DoHolyStrike(uiDiff, 1000);
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_sc_attunement(Creature* pCreature)
{
    return new boss_sc_attunementAI(pCreature);
}


static constexpr uint32 NPC_GRAND_CRUSADER_DATHROHAN{ 2000092 };

static constexpr uint32 SPELL_ARCANE_EXPLOSION{ 19712 };

struct npc_scarlet_spiritAI : public ScriptedAI
{
    explicit npc_scarlet_spiritAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_scarlet_spiritAI::Reset();
    }

    uint32 m_uiRangeCheck_Timer{};

    void Reset() override
    {
        m_uiRangeCheck_Timer = 800;

        // TODO: Set HP for 10 player
    }

    bool IsCloseToBoss(const uint32& uiDiff)
    {
        if (m_uiRangeCheck_Timer < uiDiff)
        {
            if (Creature* pCreature{ GetClosestCreatureWithEntry(m_creature, NPC_GRAND_CRUSADER_DATHROHAN, 100.f) })
            {
                if (m_creature->GetDistance3dToCenter(pCreature) < 3.f && pCreature->IsAlive())
                {
                    return true;
                }
                else
                {
                    m_uiRangeCheck_Timer = 800;
                }
            }
        }
        else
        {
            m_uiRangeCheck_Timer -= uiDiff;
        }

        return false;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->IsAlive())
            return;

        if (npc_scarlet_spiritAI::IsCloseToBoss(uiDiff))
        {
            if (DoCastSpellIfCan(m_creature, SPELL_ARCANE_EXPLOSION) == CAST_OK)
            {
                m_creature->DoKillUnit(m_creature);
            }
        }
    }
};

CreatureAI* GetAI_npc_scarlet_spirit(Creature* pCreature)
{
    return new npc_scarlet_spiritAI(pCreature);
}


static constexpr uint32 NPC_HIGHLORD_MOGRAINE{ 2000093 };
static constexpr uint32 NPC_SIR_ZELIEK{ 2000094 };
static constexpr uint32 NPC_THANE_KORTHAZZ{ 2000095 };
static constexpr uint32 NPC_LADY_BLAUMEUX{ 2000096 };

static constexpr uint32 SPELL_KNOCKBACK{ 28438 };

struct npc_horsemen_spiritAI : public ScriptedAI
{
    explicit npc_horsemen_spiritAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_horsemen_spiritAI::Reset();
    }

    uint32 m_uiKnockback_Timer{};

    void Reset() override
    {
        m_uiKnockback_Timer = 500;

        // TODO: Make them non-attackable, non-targetable and ignore any aggro
    }

    void DespawnHorsemen(const uint32& uiDiff)
    {
        // TODO: Despawn Horsemen after 15s
    }

    void DoKnockback(const uint32& uiDiff)
    {
        if (m_uiKnockback_Timer < uiDiff)
        {
            Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
            if (!PlayerList.isEmpty())
            {
                for (const auto& itr : PlayerList)
                {
                    if (Player* pPlayer{ itr.getSource() })
                    {
                        if ((m_creature->GetDistance3dToCenter(pPlayer) < 3.f) && pPlayer->IsAlive() && !pPlayer->IsGameMaster())
                        {
                            if (DoCastSpellIfCan(m_creature, SPELL_KNOCKBACK) == CAST_OK)
                            {
                                // Do we want to do something?
                            }
                        }
                    }
                }
            }

            m_uiKnockback_Timer = 500;
        }
        else
        {
            m_uiKnockback_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        DoKnockback(uiDiff);
    }
};

CreatureAI* GetAI_npc_horsemen_spirit(Creature* pCreature)
{
    return new npc_horsemen_spiritAI(pCreature);
}


void AddSC_boss_sc_attunement()
{
    Script* newscript{};

    newscript = new Script;
    newscript->Name = "duplicate_dathrohan_balnazzar";
    newscript->GetAI = &GetAI_boss_sc_attunement;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_scarlet_spirit";
    newscript->GetAI = &GetAI_npc_scarlet_spirit;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_horsemen_spirit";
    newscript->GetAI = &GetAI_npc_horsemen_spirit;
    newscript->RegisterSelf();
}
