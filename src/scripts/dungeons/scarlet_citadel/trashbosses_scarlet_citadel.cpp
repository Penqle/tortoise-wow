/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"
#include "trashbosses_scarlet_citadel.hpp"


class npc_eric_vesper_AI : public ScriptedAI
{
public:
    explicit npc_eric_vesper_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        npc_eric_vesper_AI::Reset();
    }

private:

    uint32 m_uiLightningCloud_Timer{};
    uint32 m_uiLightningWave_Timer{};
    uint32 m_uiDrainMana_Timer{};
    uint32 m_uiEnergize_Timer{};
    uint32 m_uiRandomFightText_Timer{};

    // Areatrigger
    bool m_bIsTrashAllowedToSpawn{};
    uint32 m_uiCheckPulse{};

    std::vector<ObjectGuid> m_vSpawnedAdds;

    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {
        m_uiLightningCloud_Timer = nsERIC_VESPER::INITIAL_TIMER_LIGHTNING_CLOUD;
        m_uiLightningWave_Timer = nsERIC_VESPER::INITIAL_TIMER_LIGHTNING_WAVE;
        m_uiDrainMana_Timer = nsERIC_VESPER::INITIAL_TIMER_DRAIN_MANA;
        m_uiEnergize_Timer = nsERIC_VESPER::TIMER_ENERGIZE;
        m_uiRandomFightText_Timer = nsERIC_VESPER::TIMER_RANDOM_TEXT;

        // Areatrigger
        m_bIsTrashAllowedToSpawn = true;
        m_uiCheckPulse = nsERIC_VESPER::TIMER_CHECK_PULSE;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_creature->SetInCombatWithZone();
        m_creature->SetPower(POWER_MANA, 0);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ERIC_VESPER, IN_PROGRESS);
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;

        DespawnAdds();

        if (m_creature->HasAura(nsERIC_VESPER::SPELL_ENERGIZE))
        {
            m_creature->RemoveAurasDueToSpell(nsERIC_VESPER::SPELL_ENERGIZE);
        }

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ERIC_VESPER, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;

        DespawnAdds();

        m_creature->SetRespawnDelay(nsERIC_VESPER::TWO_HOURS); // Respawn Eric Dark once again after 2 hours if Boss Araeus isn't dead yet (partly handled in boss_ardaeus.cpp)

        m_creature->MonsterSay(nsERIC_VESPER::TEXT_DIED);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ERIC_VESPER, DONE);
    }

    void AreaTrigger(const uint32& uiDiff)
    {
        if (m_uiCheckPulse < uiDiff)
        {
            Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
            for (const auto& itr : PlayerList)
            {
                if (!itr.getSource()->IsGameMaster() && itr.getSource()->IsAlive())
                {
                    if (itr.getSource()->IsInRange3d(
                        nsERIC_VESPER::fAreatrigger[0][0],
                        nsERIC_VESPER::fAreatrigger[0][1],
                        nsERIC_VESPER::fAreatrigger[0][2],
                        nsERIC_VESPER::fAreatrigger[0][3],
                        nsERIC_VESPER::fAreatrigger[0][4]))
                    {
                        SummonAdds();
                    }
                }
            }

            m_uiCheckPulse = nsERIC_VESPER::TIMER_CHECK_PULSE;
        }
        else
        {
            m_uiCheckPulse -= uiDiff;
        }
    }

    void SummonAdds()
    {
        for (const auto& itr : nsERIC_VESPER::pairlol)
        {
            if (Creature* pSummoned{ m_creature->SummonCreature(itr.second,
                nsERIC_VESPER::vfAddSpawn[0].m_fX,
                nsERIC_VESPER::vfAddSpawn[0].m_fY,
                nsERIC_VESPER::vfAddSpawn[0].m_fZ,
                nsERIC_VESPER::vfAddSpawn[0].m_fO,
                TEMPSUMMON_MANUAL_DESPAWN)})
            {
                pSummoned->MonsterMoveWithSpeed(itr.first.m_fX, itr.first.m_fY, itr.first.m_fZ, itr.first.m_fO, 5.f, MOVE_PATHFINDING);
                pSummoned->SetHomePosition(itr.first.m_fX, itr.first.m_fY, itr.first.m_fZ, itr.first.m_fO);

                if (!pSummoned->IsInCombat())
                {
                    pSummoned->HandleEmote(EMOTE_STATE_READY2H);
                }

                m_vSpawnedAdds.push_back(pSummoned->GetObjectGuid());
            }
        }

        m_creature->SetFactionTemplateId(nsERIC_VESPER::FACTION_HOSTILE);
        m_creature->MonsterYell(nsERIC_VESPER::TEXT_SUMMON_ADDS);
        m_creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);

        m_bIsTrashAllowedToSpawn = false;
    }

    void DespawnAdds()
    {
        if (!m_vSpawnedAdds.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vSpawnedAdds)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_vSpawnedAdds.clear();
            }
        }
    }

    void CastLightningCloud(const uint32& uiDiff)
    {
        if (m_uiLightningCloud_Timer < uiDiff)
        {
            if (Unit* pClosestTarget{ m_creature->FindNearestHostilePlayer(15.f) })
            {
                if (DoCastSpellIfCan(pClosestTarget, nsERIC_VESPER::SPELL_LIGHTNING_CLOUD) == CanCastResult::CAST_OK)
                {
                    m_uiLightningCloud_Timer = nsERIC_VESPER::TIMER_LIGHTNING_CLOUD;
                }
            }
        }
        else
        {
            m_uiLightningCloud_Timer -= uiDiff;
        }
    }

    void CastLightningWave(const uint32& uiDiff)
    {
        if (m_uiLightningWave_Timer < uiDiff)
        {
            if (Unit* pTargetLowestHP{ m_creature->FindLowestHpHostileUnit(50.f) })
            {
                if (m_creature->IsWithinLOSInMap(pTargetLowestHP))
                {
                    if (DoCastSpellIfCan(pTargetLowestHP, nsERIC_VESPER::SPELL_LIGHTNING_WAVE) == CanCastResult::CAST_OK)
                    {
                        m_uiLightningWave_Timer = urand(nsERIC_VESPER::TIMER_MIN_LIGHTNING_WAVE, nsERIC_VESPER::TIMER_MAX_LIGHTNING_WAVE);
                    }
                }
            }
        }
        else
        {
            m_uiLightningWave_Timer -= uiDiff;
        }
    }

    void DrainMana(const uint32& uiDiff)
    {
        if (m_uiDrainMana_Timer < uiDiff)
        {
            if (Unit* pTarget{ m_creature->GetHostileCasterInRange(0, 50.f) })
            {
                if (m_creature->IsWithinLOSInMap(pTarget))
                {
                    if (DoCastSpellIfCan(pTarget, nsERIC_VESPER::SPELL_DRAIN_MANA) == CanCastResult::CAST_OK)
                    {
                        m_uiDrainMana_Timer = nsERIC_VESPER::TIMER_DRAIN_MANA;
                    }
                }
            }
        }
        else
        {
            m_uiDrainMana_Timer -= uiDiff;
        }
    }

    void ChannelEnergize(const uint32& uiDiff)
    {
        if (m_uiEnergize_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, nsERIC_VESPER::SPELL_ENERGIZE) == CanCastResult::CAST_OK)
            {
                m_creature->AttackStop();
            }
        }
        else
        {
            m_uiEnergize_Timer -= uiDiff;
        }
    }

    void DoExplosion()
    {
        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        if (PlayerList.isEmpty())
            return;

        for (const auto& itr : PlayerList)
        {
            if (Player* pPlayer{ itr.getSource() })
            {
                if (pPlayer->IsAlive() && !pPlayer->IsGameMaster())
                {
                    m_creature->DoKillUnit(pPlayer);
                }
            }
        }

        npc_eric_vesper_AI::EnterEvadeMode();
    }

    void RandomFightTexts(const uint32& uiDiff)
    {
        if (m_uiRandomFightText_Timer < uiDiff)
        {
            std::string strRandomText{};
            const uint32 uiRnd{ urand(0, 3) };
            switch (uiRnd)
            {
                case 0:
                {
                    strRandomText = nsERIC_VESPER::TEXT_RANDOM0;
                    break;
                }
                case 1:
                {
                    strRandomText = nsERIC_VESPER::TEXT_RANDOM1;
                    break;
                }
                case 2:
                {
                    strRandomText = nsERIC_VESPER::TEXT_RANDOM2;
                    break;
                }
                case 3:
                {
                    strRandomText = nsERIC_VESPER::TEXT_RANDOM3;
                    break;
                }
                default:
                {
                    sLog.outError("[SC] Brother Eric Vesper: RandomFightTexts(const uint32& uiDiff): i out of range.");
                    break;
                }
            }

            m_creature->MonsterSay(strRandomText);

            m_uiRandomFightText_Timer = nsERIC_VESPER::TIMER_RANDOM_TEXT;
        }
        else
        {
            m_uiRandomFightText_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
        {
            if (m_bIsTrashAllowedToSpawn)
            {
                AreaTrigger(uiDiff);
            }

            return;
        }

        if (!m_creature->HasAura(nsERIC_VESPER::SPELL_ENERGIZE))
        {
            CastLightningCloud(uiDiff);
            CastLightningWave(uiDiff);
            DrainMana(uiDiff);

            ChannelEnergize(uiDiff);

            RandomFightTexts(uiDiff);
        }

        if (m_creature->GetPower(POWER_MANA) >= m_creature->GetMaxPower(POWER_MANA))
        {
            DoExplosion();
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_eric_vesper(Creature* pCreature)
{
    return new npc_eric_vesper_AI(pCreature);
}


class npc_darkcaller_rayn_AI : public ScriptedAI
{
public:
    explicit npc_darkcaller_rayn_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_darkcaller_rayn_AI::Reset();
    }

private:

    uint32 m_uiMindControl_Timer{};
    uint32 m_uiShadowVolley_Timer{};
    uint32 m_uiMindFlay_Timer{};
    uint32 m_uiImpendingDoom_Timer{};

    uint32 m_uiShadowformCheck_Timer{};

public:
    void Reset() override
    {
        m_uiMindControl_Timer = nsRayn::INITIAL_TIMER_MIND_CONTROL;
        m_uiShadowVolley_Timer = nsRayn::INITIAL_TIMER_SHADOW_VOLLEY;
        m_uiMindFlay_Timer = nsRayn::INITIAL_TIMER_MIND_FLAY;
        m_uiImpendingDoom_Timer = nsRayn::INITIAL_TIMER_IMPENDING_DOOM;

        m_uiShadowformCheck_Timer = nsRayn::TIMER_SHADOWFORM_CHECK;
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        m_creature->SetRespawnDelay(nsRayn::SEVEN_DAYS);
    }

    void CheckForShadowform(const uint32& uiDiff)
    {
        if (m_uiShadowformCheck_Timer < uiDiff)
        {
            if (!m_creature->HasAura(nsRayn::SPELL_SHADOWFORM))
            {
                m_creature->AddAura(nsRayn::SPELL_SHADOWFORM);
            }

            m_uiShadowformCheck_Timer = nsRayn::TIMER_SHADOWFORM_CHECK;;
        }
        else
        {
            m_uiShadowformCheck_Timer -= uiDiff;
        }
    }

    void DoMindControl(const uint32& uiDiff)
    {
        if (m_uiMindControl_Timer < uiDiff)
        {
            if (m_creature->GetThreatManager().getThreatList().size() > 1)
            {
                if (Unit* pRandomTarget{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER) })
                {
                    if (m_creature->IsWithinLOSInMap(pRandomTarget))
                    {
                        if (DoCastSpellIfCan(pRandomTarget, nsRayn::SPELL_MIND_CONTROL) == CanCastResult::CAST_OK)
                        {
                            m_uiMindControl_Timer = urand(nsRayn::TIMER_MIN_MIND_CONTROL, nsRayn::TIMER_MAX_MIND_CONTROL);
                        }
                    }
                }
            }
        }
        else
        {
            m_uiMindControl_Timer -= uiDiff;
        }
    }

    void CastShadowVolley(const uint32& uiDiff)
    {
        if (m_uiShadowVolley_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, nsRayn::SPELL_SHADOW_VOLLEY) == CanCastResult::CAST_OK)
            {
                m_uiShadowVolley_Timer = urand(nsRayn::TIMER_MIN_SHADOW_VOLLEY, nsRayn::TIMER_MAX_SHADOW_VOLLEY);
            }
        }
        else
        {
            m_uiShadowVolley_Timer -= uiDiff;
        }
    }

    void ChannelMindFlay(const uint32& uiDiff)
    {
        if (m_uiMindFlay_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsRayn::SPELL_MIND_FLAY) == CanCastResult::CAST_OK)
            {
                m_uiMindFlay_Timer = urand(nsRayn::TIMER_MIN_MIND_FLAY, nsRayn::TIMER_MAX_MIND_FLAY);
            }
        }
        else
        {
            m_uiMindFlay_Timer -= uiDiff;
        }
    }

    void CastImpendingDoom(const uint32& uiDiff)
    {
        if (m_uiImpendingDoom_Timer < uiDiff)
        {
            if (Unit* pRandomManaTarget{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_POWER_MANA) })
            {
                if (DoCastSpellIfCan(pRandomManaTarget, nsRayn::SPELL_IMPENDING_DOOM) == CanCastResult::CAST_OK)
                {
                    m_uiImpendingDoom_Timer = nsRayn::TIMER_IMPENDING_DOOM;
                }
            }
        }
        else
        {
            m_uiImpendingDoom_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        CheckForShadowform(uiDiff);

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMindControl(uiDiff);
        CastShadowVolley(uiDiff);
        ChannelMindFlay(uiDiff);
        CastImpendingDoom(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_darkcaller_rayn(Creature* pCreature)
{
    return new npc_darkcaller_rayn_AI(pCreature);
}


void AddSC_trash_bosses_scarlet_citadel()
{
    Script* pNewscript;

    // Caster's Nightmare Wing
    pNewscript = new Script;
    pNewscript->Name = "npc_eric_vesper";
    pNewscript->GetAI = &GetAI_npc_eric_vesper;
    pNewscript->RegisterSelf();

    // Shadow Wing
    pNewscript = new Script;
    pNewscript->Name = "npc_darkcaller_rayn";
    pNewscript->GetAI = &GetAI_npc_darkcaller_rayn;
    pNewscript->RegisterSelf();
}
