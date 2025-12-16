/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "black_morass.h"
#include "black_morass_trash.hpp"


class npc_frostbitten_bronze_soldierAI : public ScriptedAI
{
public:
    explicit npc_frostbitten_bronze_soldierAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_frostbitten_bronze_soldierAI::Reset();
    }

private:

    bool m_bHasBegged{};

public:
    void Reset() override
    {
        m_bHasBegged = false;

        m_creature->SetHealth(1);

        m_creature->AddUnitState(UNIT_STAT_CAN_NOT_MOVE);
        m_creature->SetStandState(UNIT_STAND_STATE_DEAD);
    }

    void Aggro(Unit* pWho) override
    {
        DoPlaySoundToSet(m_creature, 7); // TODO: Replace with DoScriptText()
        m_creature->MonsterTextEmote("The body of the bronze soldier shatters as soon as you try to touch it.");

        pWho->DealDamage(m_creature, m_creature->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer())
        {
            if (!m_bHasBegged && m_creature->IsWithinDistInMap(pWho, 12.f))
            {
                switch (urand(0, 4))
                {
                case 0:
                {
                    m_creature->MonsterSay("Please, I can't handle this, end with my life...");
                    break;
                }
                case 1:
                {
                    m_creature->MonsterSay("AT LAST! Finally I can rest.");
                    break;
                }
                case 2:
                {
                    m_creature->MonsterSay("Careful... Careful with the drake. I just want to... sleep.");
                    break;
                }
                case 3:
                {
                    m_creature->MonsterSay("This is suicide! End with my suffering, please, strangers...");
                    break;
                }
                case 4:
                {
                    m_creature->MonsterSay("I can't handle this suffering anymore...");
                    break;
                }
                default:
                {
                    break;
                }
                }

                DoPlaySoundToSet(m_creature, 6931); // TODO: Replace with DoScriptText()
                m_bHasBegged = true;
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_frostbitten_bronze_soldier(Creature* pCreature)
{
    return new npc_frostbitten_bronze_soldierAI(pCreature);
}


class npc_infinite_dragonspawnAI : public ScriptedAI
{
public:
    explicit npc_infinite_dragonspawnAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_dragonspawnAI::Reset();
    }

private:

    uint32 m_uiAbility_Timer{};

public:
    void Reset() override
    {
        m_uiAbility_Timer = 1000;
    }

    void EnterCombat(Unit*) override
    {
        switch (urand(0, 2))
        {
        case 1:
        {
            m_creature->MonsterSay("Our numbers are endless!");
            break;
        }
        case 2:
        {
            m_creature->MonsterSay("Our mission cannot be compromised!");
            break;
        }
        default:
        {
            break;
        }
        }
    }

    void JustDied(Unit*) override
    {
        if (urand(0, 1))
        {
            m_creature->MonsterYell("You're too late, we are infinite...");
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiAbility_Timer < uiDiff)
        {
            if (Unit * pCurrentTarget{ m_creature->GetVictim() })
            {
                if (m_creature->CanReachWithMeleeAutoAttack(pCurrentTarget))
                {
                    if (!pCurrentTarget->HasAura(nsInfiniteDragonspawn::SPELL_REND))
                    {
                        m_creature->CastSpell(pCurrentTarget, nsInfiniteDragonspawn::SPELL_REND, false);
                    }
                    else
                    {
                        m_creature->CastSpell(pCurrentTarget, nsInfiniteDragonspawn::SPELL_CLEAVE, false);
                    }
                }

                m_uiAbility_Timer = 10000;
            }
        }
        else
        {
            m_uiAbility_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_dragonspawn(Creature* pCreature)
{
    return new npc_infinite_dragonspawnAI(pCreature);
}


class npc_infinite_riftguardAI : public ScriptedAI
{
public:
    explicit npc_infinite_riftguardAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_riftguardAI::Reset();
    }

private:

    uint32 m_uiRoar_Timer{};
    uint32 m_uiCheckForCaster_Timer{};

public:
    void Reset() override
    {
        m_uiRoar_Timer = 5000;
        m_uiCheckForCaster_Timer = 5000;
    }

    void EnterCombat(Unit*) override
    {
        switch (urand(0, 2))
        {
        case 1:
        {
            m_creature->MonsterSay("The sands flow in our favor, we cannot be stopped!");
            break;
        }
        case 2:
        {
            m_creature->MonsterSay("Our mission cannot be compromised! Stop them!");
            break;
        }
        default:
        {
            break;
        }
        }
    }

    void JustDied(Unit*) override
    {
        if (urand(0, 1))
        {
            m_creature->MonsterYell("You're only delaying the inevitable... ");
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiCheckForCaster_Timer < uiDiff)
        {
            if (Unit * pChargeTarget{ m_creature->GetHostileCasterInRange(0, 50.f) })
            {
                if (pChargeTarget->IsNonMeleeSpellCasted(false, false, true))
                {
                    if (DoCastSpellIfCan(pChargeTarget, nsInfiniteRiftGuard::SPELL_RUSHING_CHARGE) == CAST_OK)
                    {
                        m_creature->MonsterSay("Your pathetic magic means nothing!");

                        m_uiCheckForCaster_Timer = 15000;
                    }
                }
            }
        }
        else
        {
            m_uiCheckForCaster_Timer -= uiDiff;
        }

        if (m_uiRoar_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, nsInfiniteRiftGuard::SPELL_ECHOING_ROAR) == CAST_OK)
            {
                m_uiRoar_Timer = 30000;
            }
        }
        else
        {
            m_uiRoar_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_riftguard(Creature* pCreature)
{
    return new npc_infinite_riftguardAI(pCreature);
}


class npc_infinite_riftweaverAI : public ScriptedAI
{
public:
    explicit npc_infinite_riftweaverAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_riftweaverAI::Reset();
    }

private:

    uint32 m_timeStopTimer;
    uint32 m_shadowShockTimer;
    uint32 m_darkenVisionTimer;
    uint32 m_mindBlastTimer;

public:
    void Reset() override
    {
        m_timeStopTimer = 20000;
        m_shadowShockTimer = 12000;
        m_darkenVisionTimer = 10000;
        m_mindBlastTimer = 12000;
    }

    void EnterCombat(Unit*) override
    {
        switch (urand(0, 2))
        {
        case 1:
        {
            m_creature->MonsterSay("Our rifts must be preserved!");
            break;
        }
        case 2:
        {
            m_creature->MonsterSay("Our time has come!");
            break;
        }
        default:
        {
            break;
        }
        }
    }

    void JustDied(Unit*) override
    {
        if (urand(0, 1))
        {
            m_creature->MonsterYell("You've merely removed a grain from the hourglass... ");
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_timeStopTimer < uiDiff)
        {
            m_creature->GetVictim()->AddAura(nsInfiniteRiftWeaver::SPELL_TIME_STOP);
            m_creature->MonsterSay("The timeways are ours to command!");

            m_timeStopTimer = 20000;
        }
        else
        {
            m_timeStopTimer -= uiDiff;
        }

        if (m_shadowShockTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsInfiniteRiftWeaver::SPELL_SHADOW_SHOCK) == CAST_OK)
            {
                m_shadowShockTimer = 12000;
            }
        }
        else
        {
            m_shadowShockTimer -= uiDiff;
        }

        if (m_darkenVisionTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictimInRange(0.f, 10.f), nsInfiniteRiftWeaver::SPELL_DARKEN_VISION) == CAST_OK)
            {
                m_darkenVisionTimer = 24000;
            }
        }
        else
        {
            m_darkenVisionTimer -= uiDiff;
        }

        if (m_mindBlastTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsInfiniteRiftWeaver::SPELL_MIND_BLAST) == CAST_OK)
            {
                m_mindBlastTimer = 12000;
            }
        }
        else
        {
            m_mindBlastTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_riftweaver(Creature* pCreature)
{
    return new npc_infinite_riftweaverAI(pCreature);
}


class npc_infinite_whelpAI : public ScriptedAI
{
public:
    explicit npc_infinite_whelpAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_whelpAI::Reset();
    }

private:

    uint32 m_uiManaBurn_Timer{};

    nsInfiniteWhelp::Phase phase{};

public:
    void Reset() override
    {
        m_uiManaBurn_Timer = 3000;

        phase = nsInfiniteWhelp::Phase::ONE;

        m_creature->SetPowerPercent(POWER_MANA, 1.f); // Start with 1% mana
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->GetPowerPercent(POWER_MANA) > 75.f && phase == nsInfiniteWhelp::Phase::ONE)
        {
            m_creature->MonsterTextEmote("The whelp begins vibrating with the energy it's absorbed!");

            phase = nsInfiniteWhelp::Phase::TWO;
        }

        if (m_creature->GetPowerPercent(POWER_MANA) > 99.f)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsInfiniteWhelp::SPELL_ARCANE_EXPLOSION) == CAST_OK)
            {
                m_creature->SetPowerPercent(POWER_MANA, 0.f);
                m_creature->DealDamage(m_creature, (m_creature->GetHealth() / 2), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);

                phase = nsInfiniteWhelp::Phase::ONE;
            }
        }

        if (m_uiManaBurn_Timer < uiDiff)
        {
            m_creature->ModifyPower(POWER_MANA, 150);

            Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
            if (!PlayerList.isEmpty())
            {
                for (const auto& itr : PlayerList)
                {
                    if (Player * pPlayer{ itr.getSource() })
                    {
                        if (pPlayer->GetDistance3dToCenter(m_creature) < 20.f)
                        {
                            pPlayer->ModifyPower(POWER_MANA, (pPlayer->GetMaxPower(POWER_MANA) * .05f));
                        }
                    }
                }
            }

            m_uiManaBurn_Timer = 3000;
        }
        else
        {
            m_uiManaBurn_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_whelp(Creature* pCreature)
{
    return new npc_infinite_whelpAI(pCreature);
}


class npc_infinite_timeripperAI : public ScriptedAI
{
public:
    explicit npc_infinite_timeripperAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_timeripperAI::Reset();
    }

private:

    bool m_bDoOnce{};

    uint32 m_uiPhase_Timer{};

    nsInfiniteTimeripper::Phase phase{};

    std::list <ObjectGuid> m_lDragonSpawns;

public:
    void Reset() override
    {
        m_bDoOnce = false;

        m_uiPhase_Timer = 1000;

        phase = nsInfiniteTimeripper::Phase::ONE;

        DespawnDragonSpawns();
    }

    void DespawnDragonSpawns()
    {
        if (!m_lDragonSpawns.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_lDragonSpawns)
                {
                    if (Creature * pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon * tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_lDragonSpawns.clear();
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->HasAura(nsInfiniteTimeripper::AURA_SHADOWGUARD))
        {
            m_creature->AddAura(nsInfiniteTimeripper::AURA_SHADOWGUARD);
        }

        if (!m_bDoOnce)
        {
            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);

            if (Creature * pDragonSpawn1{ m_creature->SummonCreature(nsInfiniteTimeripper::NPC_DRAGONSPAWN, -1422.32f, 6910.95f, -138.01f, 0.41f, TEMPSUMMON_MANUAL_DESPAWN) })
            {
                pDragonSpawn1->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);

                m_lDragonSpawns.push_back(pDragonSpawn1->GetGUIDLow());
            }

            if (Creature * pDragonSpawn2{ m_creature->SummonCreature(nsInfiniteTimeripper::NPC_DRAGONSPAWN, -1414.38f, 6896.57f, -138.07f, 0.46f, TEMPSUMMON_MANUAL_DESPAWN) })
            {
                pDragonSpawn2->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);

                m_lDragonSpawns.push_back(pDragonSpawn2->GetGUIDLow());
            }

            m_bDoOnce = true;
        }

        // if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
        //     return;

        // DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_timeripper(Creature* pCreature)
{
    return new npc_infinite_timeripperAI(pCreature);
}


class npc_infinite_riftlordAI : public ScriptedAI
{
public:
    explicit npc_infinite_riftlordAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_riftlordAI::Reset();
    }

private:

    uint32 m_uiWhirlwindTimer{};
    uint32 m_uiDemoShoutTimer{};
    uint32 m_uiThunderTimer{};

public:
    void Reset() override
    {
        m_uiWhirlwindTimer = 6000;
        m_uiDemoShoutTimer = 16500;
        m_uiThunderTimer = 15000;
    }

    void EnterCombat(Unit*) override
    {
        if (DoCastSpellIfCan(m_creature, nsInfiniteRiftlord::SPELL_DEMO_SHOUT) == CAST_OK)
        {
            if (urand(0, 1))
            {
                m_creature->MonsterSay("The sands of time shall be scattered to the winds!");
            }
        }
    }

    void JustDied(Unit*) override
    {
        if (urand(0, 1))
        {
            m_creature->MonsterSay("Impossible... ");
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiWhirlwindTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsInfiniteRiftlord::SPELL_WHIRLWIND) == CAST_OK)
            {
                m_uiWhirlwindTimer = 6000;
            }
        }
        else
        {
            m_uiWhirlwindTimer -= uiDiff;
        }

        if (m_uiDemoShoutTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, nsInfiniteRiftlord::SPELL_DEMO_SHOUT) == CAST_OK)
            {
                m_creature->MonsterYell("Your courage fails!");
                m_uiDemoShoutTimer = 16500;
            }
        }
        else
        {
            m_uiDemoShoutTimer -= uiDiff;
        }

        if (m_uiThunderTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsInfiniteRiftlord::SPELL_THUNDERCLAP) == CAST_OK)
            {
                m_uiThunderTimer = 15000;
            }
        }
        else
        {
            m_uiThunderTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_riftlord(Creature* pCreature)
{
    return new npc_infinite_riftlordAI(pCreature);
}


class npc_aqir_addAI : public ScriptedAI
{
public:
    explicit npc_aqir_addAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_aqir_addAI::Reset();
    }

private:

    uint32 m_uiMindBlast_Timer{};
    uint32 m_uiShield_Timer{};
    uint32 m_uiHeal_Timer{};
    uint32 m_uiShadowStrike_Timer{};
    uint32 m_uiPiercingShadow_Timer{};
    uint32 m_uiPoisonVolley_Timer{};
    uint32 m_uiPlagueCloud_Timer{};

public:
    void Reset() override
    {
        m_uiMindBlast_Timer = 1000;
        m_uiHeal_Timer = 15000;
        m_uiShield_Timer = 1000;
        m_uiShadowStrike_Timer = 1000;
        m_uiPiercingShadow_Timer = 5000;
        m_uiPoisonVolley_Timer = 5000;
        m_uiPlagueCloud_Timer = 2000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        switch (m_creature->GetEntry())
        {
        case nsAqirAdd::NPC_CLERIC:
        {
            if (!m_creature->HasAura(nsAqirAdd::AURA_SHADOWFORM))
            {
                m_creature->AddAura(nsAqirAdd::AURA_SHADOWFORM);
            }

            if (m_uiMindBlast_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsAqirAdd::SPELL_MIND_BLAST) == CAST_OK)
                {
                    m_uiMindBlast_Timer = 8000;
                }
            }
            else
            {
                m_uiMindBlast_Timer -= uiDiff;
            }

            if (m_uiHeal_Timer < uiDiff)
            {
                if (Unit * pFriendlyTarget{ m_creature->SelectRandomFriendlyTarget(nullptr, 15.0f) })
                {
                    if (pFriendlyTarget->GetHealthPercent() < 75.f)
                    {
                        if (DoCastSpellIfCan(pFriendlyTarget, nsAqirAdd::SPELL_HEAL) == CAST_OK)
                        {
                            m_uiHeal_Timer = 15000;
                        }
                    }
                }
            }
            else
            {
                m_uiHeal_Timer -= uiDiff;
            }

            if (m_uiShield_Timer < uiDiff)
            {
                if (Unit * pShieldTarget{ m_creature->FindLowestHpFriendlyUnit(15.f) })
                {
                    if (DoCastSpellIfCan(pShieldTarget, nsAqirAdd::SPELL_SHIELD) == CAST_OK)
                    {
                        m_uiShield_Timer = 7500;
                    }
                }
            }
            else
            {
                m_uiShield_Timer -= uiDiff;
            }

            break;
        }
        case nsAqirAdd::NPC_WARRIOR:
        {
            if (m_uiShadowStrike_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsAqirAdd::SPELL_SHADOW_STRIKE) == CAST_OK)
                {
                    m_uiShadowStrike_Timer = 10000;
                }
            }
            else
            {
                m_uiShadowStrike_Timer -= uiDiff;
            }

            if (m_uiPiercingShadow_Timer < uiDiff)
            {
                Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
                if (!PlayerList.isEmpty())
                {
                    for (const auto& itr : PlayerList)
                    {
                        if (Player * pPlayer{ itr.getSource() })
                        {
                            if (pPlayer->GetDistance3dToCenter(m_creature) < 35.f)
                            {
                                DoCastSpellIfCan(pPlayer, nsAqirAdd::SPELL_PIERCING_SHADOW);
                            }
                        }
                    }

                    m_uiPiercingShadow_Timer = 15000;
                }
            }
            else
            {
                m_uiPiercingShadow_Timer -= uiDiff;
            }

            DoMeleeAttackIfReady();

            break;
        }
        case nsAqirAdd::NPC_DRONE:
        {
            if (m_uiPoisonVolley_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsAqirAdd::SPELL_POISON_BOLT_VOLLEY) == CAST_OK)
                {
                    m_uiPoisonVolley_Timer = 12000;
                }
            }
            else
            {
                m_uiPoisonVolley_Timer -= uiDiff;
            }

            if (m_uiPlagueCloud_Timer < uiDiff)
            {
                if (Creature * pCloudTarget{ m_creature->SummonCreature(nsAqirAdd::NPC_POISONCLOUD,
                    m_creature->GetVictim()->GetPositionX(),
                    m_creature->GetVictim()->GetPositionY(),
                    m_creature->GetVictim()->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 5000) })
                {
                    pCloudTarget->CastSpell(pCloudTarget, nsAqirAdd::SPELL_PLAGUE_CLOUD, false);

                    m_uiPlagueCloud_Timer = 10000;
                }
            }
            else
            {
                m_uiPlagueCloud_Timer -= uiDiff;
            }

            DoMeleeAttackIfReady();

            break;
        }
        }
    }
};

CreatureAI* GetAI_npc_aqir_add(Creature* pCreature)
{
    return new npc_aqir_addAI(pCreature);
}


class npc_swamp_mobAI : public ScriptedAI
{
public:
    explicit npc_swamp_mobAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_swamp_mobAI::Reset();
    }

private:

    uint32 m_uiPoison_Timer{};
    uint32 m_uiWound_Timer{};
    uint32 m_uiParalyze_Timer{};

public:
    void Reset() override
    {
        m_uiPoison_Timer = 21000;
        m_uiWound_Timer = 10000;
        m_uiParalyze_Timer = 35000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        switch (m_creature->GetEntry())
        {
        case nsSwampMob::NPC_PYTHON:
        {
            if (m_uiPoison_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsSwampMob::SPELL_POISON) == CAST_OK)
                {
                    m_uiPoison_Timer = 21000;
                }
            }
            else
            {
                m_uiPoison_Timer -= uiDiff;
            }

            break;
        }
        case nsSwampMob::NPC_CROC:
        {
            if (m_uiWound_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsSwampMob::SPELL_WOUND) == CAST_OK)
                {
                    m_uiWound_Timer = 10000;
                }
            }
            else
            {
                m_uiWound_Timer -= uiDiff;
            }

            break;
        }
        case nsSwampMob::NPC_TARANTULA:
        {
            if (m_uiParalyze_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsSwampMob::SPELL_PARALYZING_POISON) == CAST_OK)
                {
                    m_uiParalyze_Timer = 35000;
                }
            }
            else
            {
                m_uiParalyze_Timer -= uiDiff;
            }

            break;
        }
        default:
        {
            break;
        }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_swamp_mob(Creature* pCreature)
{
    return new npc_swamp_mobAI(pCreature);
}


class boss_chronarAI : public ScriptedAI
{
public:
    explicit boss_chronarAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_chronarAI::Reset();
    }

private:

    bool m_bEnrageActive{};

    uint32 m_uiShout_Timer{};
    uint32 m_uiMortalStrike_Timer{};
    uint32 m_uiSweepingSlam_Timer{};
    uint32 m_uiSpellReflectionTimer;

public:

    void Reset() override
    {
        m_bEnrageActive = false;

        m_uiShout_Timer = 5000;
        m_uiMortalStrike_Timer = 18000;
        m_uiSweepingSlam_Timer = 25000;
        m_uiSpellReflectionTimer = 17000;
    }

    void EnterCombat(Unit*) override
    {
        m_creature->MonsterYell("It seems we have visitors. You should not have come here mortals, now I will ensure that you will not leave.");
    }

    void JustDied(Unit*) override
    {
        m_creature->MonsterSay("Too soon...");
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiShout_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossChronar::SPELL_SHOUT) == CAST_OK)
            {
                m_uiShout_Timer = 60000;
            }
        }
        else
        {
            m_uiShout_Timer -= uiDiff;
        }

        if (m_uiMortalStrike_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossChronar::SPELL_MORTAL_STRIKE) == CAST_OK)
            {
                m_uiMortalStrike_Timer = 18000;
            }
        }
        else
        {
            m_uiMortalStrike_Timer -= uiDiff;
        }

        if (m_uiSweepingSlam_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossChronar::SPELL_SWEEPING_SLAM) == CAST_OK)
            {
                m_creature->MonsterYell("You're nothing compared to my might!");

                m_uiSweepingSlam_Timer = 25000;
            }

        }
        else
        {
            m_uiSweepingSlam_Timer -= uiDiff;
        }

        if (m_uiSpellReflectionTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossChronar::SPELL_REFLECTION) == CAST_OK)
            {
                m_creature->MonsterYell("Your magic turns against you!");
                m_uiSpellReflectionTimer = urand(10000, 17000);
            }
        }
        else
            m_uiSpellReflectionTimer -= uiDiff;

        if (!m_bEnrageActive && m_creature->GetHealthPercent() < 35.0f)
        {
            m_creature->MonsterYell("Enough playing around, this ends now!");
            m_creature->AddAura(nsBossChronar::SPELL_ENRAGE);

            m_bEnrageActive = true;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_chronar(Creature* pCreature)
{
    return new boss_chronarAI(pCreature);
}


class boss_harbingerAI : public ScriptedAI
{
public:
    explicit boss_harbingerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_harbingerAI::Reset();
    }

private:

    bool m_bAddsSpawned{};
    bool m_bBurstDone{};
    bool m_bInsanityDone{};

    float m_fOldHP{};

    uint32 m_uiVeil_Timer{};
    uint32 m_uiInstanity_Timer{};

public:
    void Reset() override
    {
        m_bAddsSpawned = false;
        m_bBurstDone = false;
        m_bInsanityDone = false;

        m_fOldHP = 100.f;

        m_uiVeil_Timer = 5000;
        m_uiInstanity_Timer = 15000;
    }

    void EnterCombat(Unit*) override
    {
        m_creature->MonsterYell("Shuul og i agthu yrr sk'uuyat uulwi ma oou sshoq'met ez nuq far'al I zz nuq al'tha Ssaggh ni za an'zig yrr puul ywaq gul'kafh");

        Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
        for (const auto& itr : playerList)
        {
            if (Player * pPlayer{ itr.getSource() })
            {
                m_creature->MonsterWhisper("There is a great and terrible truth at the beginning of all things. I am its herald. Listen to my sermon, and know your infinite inconsequence.", pPlayer, true);
            }
        }
    }

    void JustDied(Unit*) override
    {
        m_creature->MonsterSay("Hul bala miz rilakich...");

        Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
        for (const auto& itr : playerList)
        {
            if (Player * pPlayer{ itr.getSource() })
            {
                m_creature->MonsterWhisper("How is this possible...", pPlayer, true);
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (GameObject * pForceField{ m_creature->FindNearestGameObject(3000513, 100.f) }) // TODO: Stop spam
        {
            pForceField->AddObjectToRemoveList();
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiVeil_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossHarbringer::SPELL_VEIL_OF_SHADOW) == CAST_OK)
            {
                m_uiVeil_Timer = 15000;
            }
        }
        else
        {
            m_uiVeil_Timer -= uiDiff;
        }

        const float fCurrentHP{ m_creature->GetHealthPercent() };

        if (fCurrentHP < (m_fOldHP - 20.f)) // Shadowbolt volley every 20% hp loss
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossHarbringer::SPELL_SHADOWBOLT_VOLLEY) == CAST_OK)
            {
                m_fOldHP = fCurrentHP;
            }
        }

        if (!m_bAddsSpawned && fCurrentHP < 50.f) // Spawn adds at 50% hp
        {
            for (uint8 i{}; i < 5; ++i)
            {
                if (Creature * pLarvae{ m_creature->SummonCreature(nsBossHarbringer::NPC_LARVAE,
                    m_creature->GetVictim()->GetPositionX() + frand(-8.f, 8.f),
                    m_creature->GetVictim()->GetPositionY() + frand(-8.f, 8.f),
                    m_creature->GetMap()->GetHeight(m_creature->GetPositionX(),
                    m_creature->GetPositionY(), m_creature->GetPositionZ()),
                    0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 1000) })
                {
                    pLarvae->AI()->AttackStart(m_creature->GetVictim());
                    pLarvae->AddThreat(m_creature->GetVictim(), 100.f);
                }
            }

            m_creature->MonsterYell("W'oq uhn'agth ez qam Sk'arr!");

            Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
            for (const auto& itr : playerList)
            {
                if (Player * pPlayer{ itr.getSource() })
                {
                    m_creature->MonsterWhisper("Come, servants of rot.Consume!", pPlayer, true);
                }
            }

            m_bAddsSpawned = true;
        }

        if (!m_bBurstDone && m_creature->GetHealthPercent() < 35.f)
        {
            m_creature->AddAura(nsBossHarbringer::SPELL_SHADOWFORM);

            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossHarbringer::SPELL_SHADOW_BURST) == CAST_OK)
            {
                m_creature->MonsterYell("Ak'agthshi ma uhnish, ak'uq shg'cul vwahuhn! H'iwn iggksh Phquathi gag OOU KAAXTH SHUUL!");
            }

            Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
            for (const auto& itr : playerList)
            {
                if (Player * pPlayer{ itr.getSource() })
                {
                    m_creature->MonsterWhisper("Our numbers are endless, our power beyond reckoning! All who oppose the Destroyer will DIE A THOUSAND DEATHS!", pPlayer, true);
                }
            }

            m_bBurstDone = true;
        }

        if (!m_bInsanityDone && m_creature->GetHealthPercent() < 10.f)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossHarbringer::SPELL_CAUSE_INSANITY) == CAST_OK)
            {
                m_bInsanityDone = true;
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_harbinger(Creature* pCreature)
{
    return new boss_harbingerAI(pCreature);
}


class boss_epochronosAI : public ScriptedAI
{
public:
    explicit boss_epochronosAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_epochronosAI::Reset();
    }

private:

    bool m_bShadeSummoned{};
    bool m_bEnrageActive{};

    uint32 m_uiSandBreath_Timer{};
    uint32 m_uiSwoop_Timer{};
    uint32 m_uiArcaneBlast_Timer{};
    uint32 m_uiBanish_Timer{};

    uint32 m_uiSummonEntry{};

public:
    void Reset() override
    {
        m_bShadeSummoned = false;
        m_bEnrageActive = false;

        m_uiSandBreath_Timer = 3000;
        m_uiSwoop_Timer = 12000;
        m_uiArcaneBlast_Timer = 10000;
        m_uiBanish_Timer = 500;

        m_uiSummonEntry = 0;
    }

    void EnterCombat(Unit*) override
    {
        m_creature->MonsterYell("Time moves in our favor, your intrusion ends here!");
    }

    void JustDied(Unit*) override
    {
        m_creature->MonsterYell("We are infinite...");

        if (GameObject * pSandWall{ m_creature->FindNearestGameObject(2010865, 75.f) })
        {
            pSandWall->AddObjectToRemoveList();
        }

        if (GameObject * pBarrier{ m_creature->FindNearestGameObject(180322, 75.f) })
        {
            pBarrier->AddObjectToRemoveList();
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiSandBreath_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossEpochronos::SPELL_SAND_BREATH) == CAST_OK)
            {
                m_uiSandBreath_Timer = 15000;
            }
        }
        else
        {
            m_uiSandBreath_Timer -= uiDiff;
        }

        if (m_uiSwoop_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsBossEpochronos::SPELL_SWOOP) == CAST_OK)
            {
                m_uiSwoop_Timer = 12000;
            }
        }
        else
        {
            m_uiSwoop_Timer -= uiDiff;
        }

        if (m_uiArcaneBlast_Timer < uiDiff)
        {
            if (Unit * pCurrentTarget{ m_creature->SelectRandomUnfriendlyTarget(nullptr, 25.f) })
            {
                if (DoCastSpellIfCan(pCurrentTarget, nsBossEpochronos::SPELL_ARCANE_BLAST) == CAST_OK)
                {
                    m_uiArcaneBlast_Timer = 10000;
                }
            }
        }
        else
        {
            m_uiArcaneBlast_Timer -= uiDiff;
        }


        if (!m_bShadeSummoned && m_creature->GetHealthPercent() < 50.f)
        {
            m_creature->MonsterYell("Face the consequences of your actions!");
            m_creature->AddAura(nsBossEpochronos::SPELL_BANISH);

            switch (urand(1, 3))
            {
            case 1:
            {
                m_uiSummonEntry = nsBossEpochronos::NPC_LICH_KING;
                break;
            }
            case 2:
            {
                m_uiSummonEntry = nsBossEpochronos::NPC_KAELTHAS;
                break;
            }
            case 3:
            {
                m_uiSummonEntry = nsBossEpochronos::NPC_VASHJ;
                break;
            }
            default:
            {
                break;
            }
            }

            m_creature->SummonCreature(m_uiSummonEntry,
                m_creature->GetPositionX(),
                m_creature->GetPositionY(),
                m_creature->GetPositionZ(), 0);

            m_bShadeSummoned = true;
        }

        if (m_uiBanish_Timer < uiDiff)
        {
            if (m_creature->FindNearestCreature(m_uiSummonEntry, 100.f, true))
            {
                if (!m_creature->HasAura(nsBossEpochronos::SPELL_BANISH))
                {
                    m_creature->AddAura(nsBossEpochronos::SPELL_BANISH);
                }
            }
        }
        else
        {
            m_uiBanish_Timer -= uiDiff;
        }

        if (!m_bEnrageActive && m_creature->GetHealthPercent() < 25.f)
        {
            m_creature->ApplyCastTimePercentMod(25.f, true);
            m_creature->MonsterYell("Time for a change of pace!");

            m_bEnrageActive = true;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_epochronos(Creature* pCreature)
{
    return new boss_epochronosAI(pCreature);
}


class npc_shadeAI : public ScriptedAI
{
public:
    explicit npc_shadeAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_shadeAI::Reset();
    }

private:

    uint32 m_uiScream_Timer{};
    uint32 m_uiPlague_Timer{};
    uint32 m_uiDeathDecay_Timer{};
    uint32 m_uiDeathCoil_Timer{};
    uint32 m_uiDarkStrike_Timer{};
    uint32 m_uiConeOfFire_Timer{};
    uint32 m_uiAmplifyFire_Timer{};
    uint32 m_uiPyro_Timer{};
    uint32 m_uiChainLightning_Timer{};
    uint32 m_uiLightningCloud_Timer{};
    uint32 m_uiLightningBolt_Timer{};

public:
    void Reset() override
    {
        m_uiScream_Timer = 13000;
        m_uiPlague_Timer = 15000;
        m_uiDeathDecay_Timer = 8000;
        m_uiDeathCoil_Timer = 5000;
        m_uiDarkStrike_Timer = 6000;
        m_uiConeOfFire_Timer = 8000;
        m_uiAmplifyFire_Timer = 500;
        m_uiPyro_Timer = 10000;
        m_uiChainLightning_Timer = 8000;
        m_uiLightningCloud_Timer = 18000;
        m_uiLightningBolt_Timer = 1000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiScream_Timer < uiDiff)
        {
            Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
            for (const auto& itr : playerList)
            {
                if (Player * pPlayer{ itr.getSource() })
                {
                    pPlayer->AddAura(nsShade::SPELL_SCREAMS);
                }
            }

            m_uiScream_Timer = 13000;
        }
        else
        {
            m_uiScream_Timer = 1000;
        }

        switch (m_creature->GetEntry())
        {
        case nsShade::NPC_LICH_KING:
        {
            if (m_uiPlague_Timer < uiDiff)
            {
                uint8 uiPlagueCount{};

                Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
                for (const auto& itr : playerList)
                {
                    if (uiPlagueCount >= 2)
                        break;

                    if (Player * pPlayer{ itr.getSource() })
                    {
                        if (!pPlayer->HasAura(nsShade::SPELL_PLAGUE))
                        {
                            if (DoCastSpellIfCan(pPlayer, nsShade::SPELL_PLAGUE) == CAST_OK)
                            {
                                ++uiPlagueCount;
                            }
                        }
                    }
                }

                m_uiPlague_Timer = 15000;
            }
            else
            {
                m_uiPlague_Timer -= uiDiff;
            }

            if (m_uiDeathDecay_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_DEATHNDECAY) == CAST_OK)
                {
                    m_uiDeathDecay_Timer = 25000;
                }
            }
            else
            {
                m_uiDeathDecay_Timer -= uiDiff;
            }

            if (m_uiDeathCoil_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_DEATHCOIL) == CAST_OK)
                {
                    m_uiDeathCoil_Timer = 10000;
                }
            }
            else
            {
                m_uiDeathCoil_Timer -= uiDiff;
            }

            if (m_uiDarkStrike_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_DARKSTRIKE) == CAST_OK)
                {
                    m_uiDarkStrike_Timer = 6000;
                }
            }
            else
            {
                m_uiDarkStrike_Timer -= uiDiff;
            }

            DoMeleeAttackIfReady();

            break;
        }
        case nsShade::NPC_KAELTHAS:
        {
            if (m_uiConeOfFire_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_CONE_OF_FIRE) == CAST_OK)
                {
                    m_uiConeOfFire_Timer = 8000;
                }
            }
            else
            {
                m_uiConeOfFire_Timer -= uiDiff;
            }

            if (m_uiAmplifyFire_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_AMPLIFY_FLAMES) == CAST_OK)
                {
                    m_uiAmplifyFire_Timer = 30000;

                    Map::PlayerList const& playerList{ m_creature->GetMap()->GetPlayers() };
                    for (const auto& itr : playerList)
                    {
                        if (Player * pPlayer{ itr.getSource() })
                        {
                            if (pPlayer->GetDistance3dToCenter(m_creature) < 10.f)
                            {
                                pPlayer->AddAura(nsShade::SPELL_AMPLIFY_FLAMES);
                            }
                        }
                    }
                }
            }
            else
            {
                m_uiAmplifyFire_Timer -= uiDiff;
            }

            if (m_uiPyro_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_PYROBLAST) == CAST_OK)
                {
                    m_uiPyro_Timer = 10000;
                }
            }
            else
            {
                m_uiPyro_Timer -= uiDiff;
            }

            DoMeleeAttackIfReady();

            break;
        }
        case nsShade::NPC_VASHJ:
        {
            if (!m_creature->HasAura(nsShade::AURA_LIGHTNING_SHIELD))
            {
                m_creature->AddAura(nsShade::AURA_LIGHTNING_SHIELD);
            }

            if (m_uiChainLightning_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_CHAIN_LIGHTNING) == CAST_OK)
                {
                    m_uiChainLightning_Timer = 8000;
                }
            }
            else
            {
                m_uiChainLightning_Timer -= uiDiff;
            }

            if (m_uiLightningCloud_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->SelectRandomUnfriendlyTarget(), nsShade::SPELL_LIGHTNING_CLOUD) == CAST_OK)
                {
                    m_uiLightningCloud_Timer = 18000;
                }
            }
            else
            {
                m_uiLightningCloud_Timer -= uiDiff;
            }

            if (m_uiLightningBolt_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsShade::SPELL_LIGHTNING_BOLT) == CAST_OK)
                {
                    m_uiLightningBolt_Timer = 1000;
                }
            }
            else
            {
                m_uiLightningBolt_Timer -= uiDiff;
            }

            break;
        }
        default:
        {
            break;
        }
        }
    }
};

CreatureAI* GetAI_npc_shade(Creature* pCreature)
{
    return new npc_shadeAI(pCreature);
}

class npc_rotmawAI : public ScriptedAI
{
public:
    explicit npc_rotmawAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_rotmawAI::Reset();
    }

private:

    bool m_bIsConsuming{};

    uint32 m_uiRot_Timer{};
    uint32 m_uiConsume_Timer{};
    uint32 m_uiMortalWound_Timer{};
    uint32 m_uiSunderArmor_Timer{};

private:
    void Reset() override
    {
        m_bIsConsuming = false;

        m_uiRot_Timer = 1000;
        m_uiConsume_Timer = 10000;
        m_uiMortalWound_Timer = 14000;
        m_uiSunderArmor_Timer = 5000;

        m_creature->SetRooted(false);
        m_creature->ClearUnitState(UNIT_STAT_ROOT);
        m_creature->SetReactState(REACT_AGGRESSIVE);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiRot_Timer < uiDiff)
        {
            if (!m_creature->GetVictim()->HasAura(nsRotmaw::SPELL_ROT))
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsRotmaw::SPELL_ROT) == CAST_OK)
                {
                    m_uiRot_Timer = 15000;
                }
            }
        }
        else
        {
            m_uiRot_Timer -= uiDiff;
        }

        if (m_uiConsume_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsRotmaw::SPELL_CONSUME) == CAST_OK)
            {
                m_creature->StopMoving();
                m_creature->AddUnitState(UNIT_STAT_ROOT);
                m_creature->SetRooted(true);
                m_creature->SetReactState(REACT_PASSIVE);

                if (Unit * pTarget{ m_creature->GetVictim() })
                {
                    pTarget->TeleportPositionRelocation(m_creature->GetPosition());

                    const float fOriginalscale{ pTarget->GetNativeScale() };
                    pTarget->SetTransformScale(0.00001f);

                    pTarget->GetThreatManager().modifyThreatPercent(pTarget, -100);

                    if (Player * pPlayer{ pTarget->GetCharmerOrOwnerPlayerOrPlayerItself() })
                    {
                        DoAfterTime(m_creature, 15.5 * IN_MILLISECONDS, [creature = m_creature, player = pPlayer, originalscale = fOriginalscale, this]()
                            {
                                DoCastSpellIfCan(player, nsRotmaw::SPELL_KNOCKBACK);

                                player->SetTransformScale(originalscale);

                                m_creature->SetRooted(false);
                                m_creature->ClearUnitState(UNIT_STAT_ROOT);
                                m_creature->SetReactState(REACT_AGGRESSIVE);

                                m_bIsConsuming = false;
                            });
                    }

                    m_creature->PMonsterEmote("|cffff8040Rotmaw is consuming %s and cannot move!|r", nullptr, true, pTarget->GetName());
                }

                m_bIsConsuming = true;
            }

            m_uiConsume_Timer = 25000;
        }
        else
        {
            m_uiConsume_Timer -= uiDiff;
        }

        if (!m_bIsConsuming && m_uiMortalWound_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsRotmaw::SPELL_MORTAL_WOUND) == CAST_OK)
            {
                m_uiMortalWound_Timer = 14000;
            }
        }
        else
        {
            m_uiMortalWound_Timer -= uiDiff;
        }

        if (m_uiSunderArmor_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsRotmaw::SPELL_SUNDER) == CAST_OK)
            {
                m_uiSunderArmor_Timer = 18000;
            }
        }
        else
        {
            m_uiSunderArmor_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_rotmaw(Creature* pCreature)
{
    return new npc_rotmawAI(pCreature);
}


class npc_mossheartAI : public ScriptedAI
{
public:
    explicit npc_mossheartAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_mossheartAI::Reset();
    }

private:

    bool m_bEngaged{};

    uint32 m_uiRejuv_Timer{};
    uint32 m_uiTangle_Timer{};
    uint32 m_uiMoss_Timer{};

    nsMosshear::Phase phase{};

public:
    void Reset() override
    {
        m_bEngaged = false;

        m_uiRejuv_Timer = 500;
        m_uiTangle_Timer = 25000;
        m_uiMoss_Timer = 18000;

        phase = nsMosshear::Phase::ONE;
    }

    void EnterCombat(Unit*) override
    {
        m_creature->MonsterYell("Who dares defile the sanctity of the morass...");

        m_bEngaged = true;
    }

    void KilledUnit(Unit*) override
    {
        m_creature->MonsterSay("You belong to the bog now...");
    }

    void JustDied(Unit*) override
    {
        m_creature->MonsterSay("I failed...");
    }

    void ApplyDredge()
    {
        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        if (!PlayerList.isEmpty())
        {
            for (const auto& itr : PlayerList)
            {
                if (Player * pPlayer{ itr.getSource() })
                {
                    if (pPlayer->GetDistance3dToCenter(m_creature) < 10.f)
                    {
                        pPlayer->AddAura(nsMosshear::SPELL_DREDGE_SICKNESS);
                    }
                }
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->IsInCombat() && !m_creature->HasAura(nsMosshear::SPELL_STEALTH))
        {
            DoCastSpellIfCan(m_creature, nsMosshear::SPELL_STEALTH);
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_bEngaged && !m_creature->HasAura(nsMosshear::AURA_THORNS))
        {
            m_creature->AddAura(nsMosshear::AURA_THORNS);
        }

        if (m_creature->GetHealthPercent() < 75.f)
        {
            if (m_uiRejuv_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, nsMosshear::SPELL_REJUV) == CAST_OK)
                {
                    m_uiRejuv_Timer = 20000;
                }
            }
            else
            {
                m_uiRejuv_Timer -= uiDiff;
            }
        }

        if (phase == nsMosshear::Phase::ONE && m_creature->GetHealthPercent() < 50.f)
        {
            ApplyDredge();

            phase = nsMosshear::Phase::TWO;
        }

        if (phase == nsMosshear::Phase::TWO && m_creature->GetHealthPercent() < 25.f)
        {
            ApplyDredge();

            phase = nsMosshear::Phase::THREE;
        }

        if (m_uiTangle_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsMosshear::SPELL_TANGLE_ROOTS) == CAST_OK)
            {
                m_creature->MonsterYell("The very earth rises in defiance...");

                m_uiTangle_Timer = 25000;
            }
        }
        else
        {
            m_uiTangle_Timer -= uiDiff;
        }

        if (m_uiMoss_Timer < uiDiff)
        {
            if (m_creature->GetVictim()->HasAura(nsMosshear::SPELL_MOSS_HANDS))
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsMosshear::SPELL_MOSS_FEET) == CAST_OK)
                {
                    m_creature->PMonsterEmote("|cffff8040Mossheart covers %s with moss!|r", nullptr, true, m_creature->GetVictim()->GetName());

                    m_uiMoss_Timer = 18000;
                }
            }
            else
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), nsMosshear::SPELL_MOSS_HANDS) == CAST_OK)
                {
                    m_creature->PMonsterEmote("|cffff8040Mossheart covers %s with moss!|r", nullptr, true, m_creature->GetVictim()->GetName());

                    m_uiMoss_Timer = 18000;
                }
            }
        }
        else
        {
            m_uiMoss_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_mossheart(Creature* pCreature)
{
    return new npc_mossheartAI(pCreature);
}


class npc_antnormiAI : public ScriptedAI
{
public:
    explicit npc_antnormiAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_antnormiAI::Reset();
    }

private:

    bool m_bEnraged{};

    uint32 m_uiThrash_Timer{};
    uint32 m_uiCoweringRoar_Timer{};
    uint32 m_uiShadowShock_Timer{};
    uint32 m_uiEnrage_Timer{};

public:
    void Reset() override
    {
        m_bEnraged = false;

        m_uiThrash_Timer = 12000;
        m_uiCoweringRoar_Timer = 20000;
        m_uiShadowShock_Timer = 15000;
        m_uiEnrage_Timer = 300000;
    }

    void JustDied(Unit*) override
    {
        m_creature->PlayDirectMusic(30247); // TODO: Replace

        m_creature->MonsterSay("My death changes nothing, YOU HEAR ME? NOTHING!");
    }

    void EnterCombat(Unit*) override
    {
        m_creature->PlayDirectMusic(30246); // TODO: Replace

        m_creature->MonsterYell("You again?! So the others have failed to stop the lapdogs of the Bronze, pathetic. Know that I am not like them, I have spent centuries in a paradox to attain this form.");
        m_creature->MonsterYell("We are Infinite!Your journey ends here now, time will belong to US!");
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiThrash_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsAntnormi::SPELL_THRASH) == CAST_OK)
            {
                m_uiThrash_Timer = 12000;
            }
        }
        else
        {
            m_uiThrash_Timer -= uiDiff;
        }

        if (m_uiCoweringRoar_Timer < uiDiff)
        {
            m_creature->PMonsterEmote("|cffff8040Antnormi is preparing for a bellowing roar!|r", nullptr, true);
            m_uiCoweringRoar_Timer = 25000;

            DoAfterTime(m_creature, 5 * IN_MILLISECONDS, [creature = m_creature, this]()
                {
                    DoCastSpellIfCan(creature->GetVictim(), nsAntnormi::SPELL_COWERING_ROAR);
                });
        }
        else
        {
            m_uiCoweringRoar_Timer -= uiDiff;
        }

        if (m_uiShadowShock_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetHostileCasterInRange(0, 30), nsAntnormi::SPELL_SHADOW_SHOCK) == CAST_OK)
            {
                m_uiShadowShock_Timer = 10000;
            }
        }
        else
        {
            m_uiShadowShock_Timer -= uiDiff;
        }

        if (!m_bEnraged && m_uiEnrage_Timer < uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), nsAntnormi::SPELL_ENRAGE);

            m_creature->PlayDirectMusic(30248); // TODO: Replace

            m_creature->MonsterYell("Let time undo you!");

            m_bEnraged = true;
        }
        else
        {
            m_uiEnrage_Timer -= uiDiff;
        }

        if (!m_bEnraged && m_creature->GetHealthPercent() < 20.f)
        {
            DoCastSpellIfCan(m_creature, nsAntnormi::SPELL_ENRAGE);

            m_creature->MonsterYell("Let time undo you!");
            m_creature->PlayDirectMusic(30248); // TODO: Replace

            m_bEnraged = true;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_antnormi(Creature* pCreature)
{
    return new npc_antnormiAI(pCreature);
}

class npc_logistical_officerAI : public ScriptedAI
{
public:
    explicit npc_logistical_officerAI(Creature* c) : ScriptedAI(c)
    {
        npc_logistical_officerAI::Reset();
    }

private:

    bool m_bDoOnce{};

    int movementPhase{};
    int summonChoice{};
    int currentSummonChoice{};

    uint32 m_uiUpdate_Timer{};

    uint32 m_uiSummonCreatureEntry{};

    GameObject* pPortalLeft{};
    GameObject* pPortalRight{};
    GameObject* pPortal{};

    Map* m_Map{};

    nsLogisticalOfficer::Phase phase{};

public:
    void Reset() override
    {
        m_bDoOnce = false;

        movementPhase = 0;
        summonChoice = 0;
        currentSummonChoice = 0;

        m_uiUpdate_Timer = 1000;

        m_uiSummonCreatureEntry = 0;

        m_Map = m_creature->GetMap();

        if (m_Map)
        {
            pPortalLeft = m_Map->GetGameObject(nsLogisticalOfficer::GOB_PORTAL_GROUND_LEFT);
            pPortalRight = m_Map->GetGameObject(nsLogisticalOfficer::GOB_PORTAL_GROUND_RIGHT);
        }

        pPortal = nullptr;

        phase = nsLogisticalOfficer::Phase::ONE;
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_creature->GetMapId() == 269)
        {
            if (m_creature->FindNearestGameObject(nsLogisticalOfficer::GOB_SAND_WALL, 50.f))
            {
                m_creature->SetVisibility(VISIBILITY_ON);
            }
            else
            {
                m_creature->SetVisibility(VISIBILITY_OFF);
            }
        }
        else
        {
            if (m_uiUpdate_Timer < uiDiff)
            {
                switch (phase)
                {
                case nsLogisticalOfficer::Phase::ONE:
                {
                    m_bDoOnce = false;

                    m_creature->CastSpell(m_creature, nsLogisticalOfficer::SPELL_ARCANE_CHANNEL, true);
                    m_creature->MonsterSay("Next up ... ");

                    if (GameObject * pSummonPortal{ m_creature->FindNearestGameObject(nsLogisticalOfficer::GOB_PORTAL_SUMMON, 10.f) })
                    {
                        m_creature->SetFacingToObject(pSummonPortal);
                    }

                    phase = nsLogisticalOfficer::Phase::TWO;

                    m_uiUpdate_Timer = 5000;

                    break;
                }
                case nsLogisticalOfficer::Phase::TWO:
                {
                    m_creature->CastSpell(m_creature, nsLogisticalOfficer::SPELL_SUBTLETY, true);

                    do
                    {
                        summonChoice = urand(1, 6);
                    } while (summonChoice == currentSummonChoice);

                    switch (summonChoice)
                    {
                    case 1:
                    {
                        m_uiSummonCreatureEntry = 65132; // Timbermaw
                        break;
                    }

                    case 2:
                    {
                        m_uiSummonCreatureEntry = 65133; // Varian
                        break;
                    }

                    case 3:
                    {
                        m_uiSummonCreatureEntry = 65134; // Baker
                        break;
                    }

                    case 4:
                    {
                        m_uiSummonCreatureEntry = 65135; // Kobold
                        break;
                    }

                    case 5:
                    {
                        m_uiSummonCreatureEntry = 65131; // Baby Thrall
                        break;
                    }

                    case 6:
                    {
                        m_uiSummonCreatureEntry = 65137; // Tauren Primalist
                        break;
                    }
                    default:
                    {
                        break;
                    }
                    }

                    currentSummonChoice = summonChoice;

                    if (Creature * pSummon{ m_creature->SummonCreature(m_uiSummonCreatureEntry, -8473.43f, -4226.01f, -214.74f, 0) })
                    {
                        pSummon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                        pSummon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_CONFUSED);

                        pSummon->SetFacingToObject(m_creature);

                        pSummon->CastSpell(pSummon, nsLogisticalOfficer::SPELL_TELEPORT, true);
                    }

                    phase = nsLogisticalOfficer::Phase::THREE;

                    m_uiUpdate_Timer = 2000;

                    break;
                }
                case nsLogisticalOfficer::Phase::THREE:
                {
                    if (Creature * pSummon{ m_creature->FindNearestCreature(m_uiSummonCreatureEntry, 25.f, true) })
                    {
                        switch (summonChoice)
                        {
                        case 1:
                        {
                            pSummon->MonsterTextEmote("The Timbermaw sniffs the air.");
                            pSummon->MonsterSay("Where is this...?");
                            break;
                        }
                        case 2:
                        {
                            pSummon->MonsterSay("What is this? I demand to know who you are!");
                            break;
                        }
                        case 3:
                        {
                            pSummon->MonsterSay("..freshly baked... What? What just happened?");
                            break;
                        }
                        case 4:
                        {
                            pSummon->MonsterTextEmote("The Kobold stares at George.");
                            pSummon->MonsterSay("You has candle?");

                            pSummon->UpdateSpeed(MOVE_RUN, true, 1.f);

                            pSummon->GetMotionMaster()->MovePoint(0, -8472.93f, -4221.71f, -214.39f);

                            pSummon->SetFacingToObject(m_creature);
                            break;
                        }
                        case 5:
                        {
                            pSummon->MonsterSay("Aedelas? Where are you? What is this place?");
                            break;
                        }
                        case 6:
                        {
                            pSummon->MonsterSay("Ancestors watch over me... where am I?");
                            break;
                        }
                        default:
                        {
                            break;
                        }
                        }
                    }

                    phase = nsLogisticalOfficer::Phase::FOUR;

                    m_uiUpdate_Timer = 5000;

                    break;
                }
                case nsLogisticalOfficer::Phase::FOUR:
                {
                    if (Creature * pSummon{ m_creature->FindNearestCreature(m_uiSummonCreatureEntry, 25.f, true) })
                    {
                        switch (summonChoice)
                        {
                        case 1:
                        {
                            m_creature->MonsterSay("Ah yes. One of those Timbermaw creatures. This one is meant to be the first to resist demonic corruption and lead its tribe to freedom.");
                            break;
                        }
                        case 2:
                        {
                            m_creature->MonsterSay("My apologies, King Varian. We are protectors of the sacred timelines and are conducting a minor correction in yours. Please step into this portal.");
                            break;
                        }
                        case 3:
                        {
                            m_creature->MonsterSay("Hmmm... I don't recognize this one. Assistant, I think we summoned the wrong human male.");
                            break;
                        }
                        case 4:
                        {
                            m_creature->MonsterSay("A simple Kobold. Funny, this particular Kobold is responsible for stealing a powerful lantern from Lady Sylvanas. The theft of this lantern led to many deaths and branched timelines.");
                            break;
                        }
                        case 5:
                        {
                            m_creature->MonsterSay("Welcome young one. This young orc will grow to be the mighty Warchief of the Horde!");
                            break;
                        }
                        case 6:
                        {
                            m_creature->MonsterSay("Greetings honored Tamaala, lifemate of Chieftain Cairne Bloodhoof. We are the the protectors of the sacred timelines. Please, let us guide you home to your ancestral spirits.");
                            break;
                        }
                        default:
                        {
                            break;
                        }
                        }
                    }

                    phase = nsLogisticalOfficer::Phase::FIVE;

                    m_uiUpdate_Timer = 6000;

                    break;
                }

                case nsLogisticalOfficer::Phase::FIVE:
                {
                    if (Creature * pSummon{ m_creature->FindNearestCreature(m_uiSummonCreatureEntry, 25.f, true) })
                    {
                        switch (summonChoice)
                        {
                        case 1:
                        {
                            m_creature->MonsterSay("Let's get you to your assigned timeline.");
                            pPortal = m_creature->SummonGameObject(nsLogisticalOfficer::GOB_PORTAL_WATERFALL, -8480.77f, -4221.29f, -215.03f, 0, 0, 0, 0, 0, 10000);
                            break;
                        }
                        case 2:
                        {
                            pSummon->MonsterSay("Although I do not understand, I feel compelled to follow your instructions. Do not let this happen again.");
                            pSummon->HandleEmote(EMOTE_ONESHOT_TALK);
                            pPortal = m_creature->SummonGameObject(nsLogisticalOfficer::GOB_PORTAL_STORMWIND, -8464.56f, -4222.97f, -214.35f, 0, 0, 0, 0, 0, 10000);
                            break;
                        }
                        case 3:
                        {
                            pSummon->MonsterYell("OH MY GOD � IS THAT A DRAGON?? CALL THE GUARDS! HELP!!");
                            pSummon->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
                            pSummon->GetMotionMaster()->MoveConfused();
                            pPortal = m_creature->SummonGameObject(nsLogisticalOfficer::GOB_PORTAL_STORMWIND, -8464.56f, -4222.97f, -214.35f, 0, 0, 0, 0, 0, 10000);
                            break;
                        }
                        case 4:
                        {
                            m_creature->MonsterSay("Come now little Kobold. Your candle is in this portal here.");
                            pSummon->MonsterYell("CANDLE!!!");
                            pSummon->HandleEmote(EMOTE_ONESHOT_APPLAUD);
                            pPortal = m_creature->SummonGameObject(nsLogisticalOfficer::GOB_PORTAL_UC, -8480.77f, -4221.29f, -215.03f, 0, 0, 0, 0, 0, 10000);
                            break;
                        }
                        case 5:
                        {
                            pSummon->MonsterTextEmote("Go'el laughs to himself.");
                            pSummon->HandleEmote(EMOTE_ONESHOT_LAUGH);
                            pSummon->MonsterSay("You've got a funny energy about you, elf.");
                            pPortal = m_creature->SummonGameObject(nsLogisticalOfficer::GOB_PORTAL_ORG, -8480.77f, -4221.29f, -215.03f, 0, 0, 0, 0, 0, 10000);
                            break;
                        }
                        case 6:
                        {
                            pSummon->MonsterSay("I shall go where my ancestors command, but beware elf. I sense an evil lurking in this place.");
                            pPortal = m_creature->SummonGameObject(nsLogisticalOfficer::GOB_PORTAL_THUNDERBLUFF, -8464.56f, -4222.97f, -214.35f, 0, 0, 0, 0, 0, 10000);
                            break;
                        }
                        default:
                        {
                            break;
                        }
                        }

                        if (pPortal)
                        {
                            m_creature->SetFacingToObject(pPortal);
                        }
                    }

                    phase = nsLogisticalOfficer::Phase::SIX;

                    m_uiUpdate_Timer = 2500;

                    break;
                }
                case nsLogisticalOfficer::Phase::SIX:
                {
                    if (Creature * pSummon{ m_creature->FindNearestCreature(m_uiSummonCreatureEntry, 25.f, true) })
                    {
                        switch (summonChoice)
                        {
                        case 3:
                        {
                            m_creature->MonsterSay("Quickly little human! Run into the portal before the terrifying beast gets you!!");
                            m_creature->MonsterTextEmote("George chuckles.");

                            pSummon->UpdateSpeed(MOVE_RUN, true, 1.f);
                            pSummon->GetMotionMaster()->MovementExpired(true);

                            break;
                        }

                        case 5:
                        {
                            m_creature->MonsterSay("Your shamanistic powers are strong even now. Now into the portal, young warchief.");
                            break;
                        }
                        default:
                        {
                            break;
                        }
                        }

                        m_creature->SetFacingToObject(pPortal);
                    }

                    phase = nsLogisticalOfficer::Phase::SEVEN;

                    m_uiUpdate_Timer = 1000;

                    break;
                }
                case nsLogisticalOfficer::Phase::SEVEN:
                {
                    if (Creature * pSummon{ m_creature->FindNearestCreature(m_uiSummonCreatureEntry, 30.f, true) })
                    {
                        if (pPortal)
                        {
                            if (summonChoice == 3 || summonChoice == 4)
                            {
                                pSummon->MonsterMove(pPortal->GetPositionX(), pPortal->GetPositionY(), pPortal->GetPositionZ());
                            }
                            else
                            {
                                pSummon->MonsterMoveWithSpeed(pPortal->GetPositionX(), pPortal->GetPositionY(), pPortal->GetPositionZ(), 0.f, 1.5f, MOVE_WALK);
                            }
                        }

                        if (pSummon->FindNearestGameObject(3000205, 1))
                        {
                            pSummon->CastSpell(pSummon, nsLogisticalOfficer::SPELL_TELEPORT, true);
                            pSummon->ForcedDespawn(500);

                            switch (summonChoice)
                            {
                            case 2:
                            {
                                if (!m_bDoOnce)
                                {
                                    m_creature->MonsterSay("Kings can be... difficult.");

                                    m_bDoOnce = true;
                                }

                                break;
                            }
                            default:
                            {
                                break;
                            }
                            }
                        }
                    }
                    else
                    {
                        pPortal->AddObjectToRemoveList();
                        phase = nsLogisticalOfficer::Phase::ONE;
                    }

                    m_uiUpdate_Timer = 1000;
                    break;
                }
                default:
                {
                    break;
                }
                }
            }
            else
            {
                m_uiUpdate_Timer -= uiDiff;
            }
        }
    }
};

bool GossipHello_npc_logistics_dialogue(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->GetMapId() == 269)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "I will make this right.", GOSSIP_SENDER_MAIN, 1);
        pPlayer->SEND_GOSSIP_MENU(91976, pCreature->GetGUID());
    }
    else
    {
        pPlayer->SEND_GOSSIP_MENU(91978, pCreature->GetGUID());
    }

    return true;
}

bool GossipSelect_npc_logistics_dialogue(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    pPlayer->CLOSE_GOSSIP_MENU();

    switch (uiAction)
    {
    case 1:
    {
        pCreature->MonsterWhisper("Good luck with the challenges ahead.", pPlayer, false);
        pPlayer->TeleportTo(269, -1557.80f, 7102.30f, 23.86f, 3.17f);
        break;
    }
    default:
    {
        break;
    }
    }

    return true;
}

CreatureAI* GetAI_npc_logistical_officer(Creature* pCreature)
{
    return new npc_logistical_officerAI(pCreature);
}

void AddSC_black_morass_trash()
{
    Script* pNewscript{};

    pNewscript = new Script;
    pNewscript->Name = "npc_frostbitten_bronze_soldier";
    pNewscript->GetAI = &GetAI_npc_frostbitten_bronze_soldier;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_dragonspawn";
    pNewscript->GetAI = &GetAI_npc_infinite_dragonspawn;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_riftguard";
    pNewscript->GetAI = &GetAI_npc_infinite_riftguard;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_riftweaver";
    pNewscript->GetAI = &GetAI_npc_infinite_riftweaver;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_whelp";
    pNewscript->GetAI = &GetAI_npc_infinite_whelp;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_timeripper";
    pNewscript->GetAI = &GetAI_npc_infinite_timeripper;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_riftlord";
    pNewscript->GetAI = &GetAI_npc_infinite_riftlord;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_aqir_add";
    pNewscript->GetAI = &GetAI_npc_aqir_add;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_swamp_mob";
    pNewscript->GetAI = &GetAI_npc_swamp_mob;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "boss_chronar";
    pNewscript->GetAI = &GetAI_boss_chronar;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "boss_harbringer";
    pNewscript->GetAI = &GetAI_boss_harbinger;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "boss_epochronos";
    pNewscript->GetAI = &GetAI_boss_epochronos;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_shade";
    pNewscript->GetAI = &GetAI_npc_shade;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_rotmaw";
    pNewscript->GetAI = &GetAI_npc_rotmaw;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_mossheart";
    pNewscript->GetAI = &GetAI_npc_mossheart;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_antnormi";
    pNewscript->GetAI = &GetAI_npc_antnormi;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_logistical_officer";
    pNewscript->GetAI = &GetAI_npc_logistical_officer;
    pNewscript->pGossipHello = &GossipHello_npc_logistics_dialogue;
    pNewscript->pGossipSelect = &GossipSelect_npc_logistics_dialogue;
    pNewscript->RegisterSelf();
}