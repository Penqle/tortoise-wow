/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"
#include "trashmobs_scarlet_citadel.hpp"


//////////////////////////////////////////
// Caster's Nightmare Wing
//////////////////////////////////////////

class npc_citadel_inquisitor_AI : public ScriptedAI
{
public:
    explicit npc_citadel_inquisitor_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_inquisitor_AI::Reset();
    }

private:

    bool m_bCastedDivineShieldOnce{};

    uint32 m_uiCounterSpell_Timer{};
    uint32 m_uiHolyNova_Timer{};
    uint32 m_uiGreaterHeal_Timer{};

public:
    void Reset() override
    {
        m_bCastedDivineShieldOnce = false;

        m_uiCounterSpell_Timer = nsCitadelInquisitor::INITIAL_TIMER_COUNTERSPELL;
        m_uiHolyNova_Timer = nsCitadelInquisitor::TIMER_HOLY_NOVA;
        m_uiGreaterHeal_Timer = nsCitadelInquisitor::TIMER_GREATER_HEAL;

        m_creature->SetNoCallAssistance(true); // Link groups manually
    }

    void CastCounterSpell(const uint32& uiDiff)
    {
        if (m_uiCounterSpell_Timer < uiDiff)
        {
            if (Unit* pRandomTarget{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_POWER_MANA) })
            {
                if (pRandomTarget->IsNonMeleeSpellCasted(true))
                {
                    if (DoCastSpellIfCan(pRandomTarget, nsCitadelInquisitor::SPELL_COUNTERSPELL) == CAST_OK)
                    {
                        m_uiCounterSpell_Timer = urand(nsCitadelInquisitor::TIMER_MIN_COUNTERSPELL, nsCitadelInquisitor::TIMER_MAX_COUNTERSPELL);
                    }
                }
            }
        }
        else
        {
            m_uiCounterSpell_Timer -= uiDiff;
        }
    }

    void CastHolyNova(const uint32& uiDiff)
    {
        if (m_uiHolyNova_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->SelectRandomFriendlyTarget(nullptr, 12.f) })
            {
                if (pFriendlyTarget->GetHealthPercent() < 90.f)
                {
                    if (DoCastSpellIfCan(m_creature, nsCitadelInquisitor::SPELL_HOLY_NOVA) == CanCastResult::CAST_OK)
                    {
                        m_uiHolyNova_Timer = nsCitadelInquisitor::TIMER_HOLY_NOVA;
                    }
                }
            }
        }
        else
        {
            m_uiHolyNova_Timer -= uiDiff;
        }
    }

    void CastDivineShield(const uint32& uiDiff)
    {
        if (m_creature->GetHealthPercent() < 10.f && !m_bCastedDivineShieldOnce)
        {
            if (DoCastSpellIfCan(m_creature, nsCitadelInquisitor::SPELL_DIVINE_SHIELD) == CanCastResult::CAST_OK)
            {
                m_bCastedDivineShieldOnce = true;
            }
        }
    }

    void CastGreaterHeal(const uint32& uiDiff)
    {
        if (m_uiGreaterHeal_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->FindLowestHpFriendlyUnit(40.f) })
            {
                if (m_creature->IsWithinLOSInMap(pFriendlyTarget))
                {
                    if (pFriendlyTarget->GetHealthPercent() < 40.f)
                    {
                        if (DoCastSpellIfCan(pFriendlyTarget, nsCitadelInquisitor::SPELL_GREATER_HEAL) == CanCastResult::CAST_OK)
                        {
                            m_uiGreaterHeal_Timer = nsCitadelInquisitor::TIMER_GREATER_HEAL;
                        }
                    }
                }
            }
        }
        else
        {
            m_uiGreaterHeal_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        CastCounterSpell(uiDiff);
        CastHolyNova(uiDiff);
        CastDivineShield(uiDiff);
        CastGreaterHeal(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_inquisitor(Creature* pCreature)
{
    return new npc_citadel_inquisitor_AI(pCreature);
}


class npc_citadel_valiant_AI : public ScriptedAI
{
public:
    explicit npc_citadel_valiant_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_valiant_AI::Reset();
    }

private:

    uint32 m_uiCharge_Timer{};
    uint32 m_uiCleave_Timer{};

public:
    void Reset() override
    {
        m_uiCharge_Timer = nsCitadelValiant::TIMER_CHARGE;
        m_uiCleave_Timer = nsCitadelValiant::TIMER_CLEAVE;

        m_creature->SetNoCallAssistance(true); // Link groups manually
    }

    void DoCharge(const uint32& uiDiff)
    {
        if (m_uiCharge_Timer < uiDiff)
        {
            if (Unit* chargeTarget{ m_creature->GetHostileCasterInRange(0, 50.f) })
            {
                if (m_creature->IsWithinLOSInMap(chargeTarget))
                {
                    if (chargeTarget->IsNonMeleeSpellCasted(false, false, true))
                    {
                        if (DoCastSpellIfCan(chargeTarget, nsCitadelValiant::SPELL_CHARGE) == CanCastResult::CAST_OK)
                        {
                            if (m_creature->IsInRange3d(chargeTarget->GetPositionX(), chargeTarget->GetPositionY(), chargeTarget->GetPositionZ(), 0.0f, 2.f))
                            {
                                DoCast(m_creature, nsCitadelValiant::SPELL_SONICBURST);
                            }

                            m_uiCharge_Timer = nsCitadelValiant::TIMER_CHARGE;
                        }
                    }
                }
            }
        }
        else
        {
            m_uiCharge_Timer -= uiDiff;
        }
    }

    void DoCleave(const uint32& uiDiff)
    {
        if (m_uiCleave_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, nsCitadelValiant::SPELL_CLEAVE) == CanCastResult::CAST_OK)
            {
                m_uiCleave_Timer = nsCitadelValiant::TIMER_CLEAVE;
            }
        }
        else
        {
            m_uiCleave_Timer -= uiDiff;
        }
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoCharge(uiDiff);
        DoCleave(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_valiant(Creature* pCreature)
{
    return new npc_citadel_valiant_AI(pCreature);
}


class npc_citadel_footman_AI : public ScriptedAI
{
public:
    explicit npc_citadel_footman_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_footman_AI::Reset();
    }

private:

    uint32 m_uiDisarm_Timer{};
    uint32 m_uiFrenzy_Timer{};

public:
    void Reset() override
    {
        m_uiDisarm_Timer = nsCitadelFootman::INITIAL_TIMER_DISARM;
        m_uiFrenzy_Timer = nsCitadelFootman::INITIAL_TIMER_FRENZY;

        m_creature->SetNoCallAssistance(true); // Link groups manually
    }

    void DoDisarm(const uint32& uiDiff)
    {
        if (m_uiDisarm_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, nsCitadelFootman::SPELL_DISARM) == CanCastResult::CAST_OK)
            {
                DoCast(m_creature->GetVictim(), nsCitadelFootman::SPELL_HAMSTRING);

                m_creature->GetThreatManager().modifyThreatPercent(m_creature->GetVictim(), -100);

                m_uiDisarm_Timer = nsCitadelFootman::TIMER_DISARM;
            }
        }
        else
        {
            m_uiDisarm_Timer -= uiDiff;
        }
    }

    void GoFrenzy(const uint32& uiDiff)
    {
        if (m_uiFrenzy_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, nsCitadelFootman::SPELL_FRENZY) == CanCastResult::CAST_OK)
            {
                m_uiFrenzy_Timer = nsCitadelFootman::TIMER_FRENZY; // Just renew spell if enemy isn't dead already
            }
        }
        else
        {
            m_uiFrenzy_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoDisarm(uiDiff);
        GoFrenzy(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_footman(Creature* pCreature)
{
    return new npc_citadel_footman_AI(pCreature);
}


//////////////////////////////////////////
// Ambush Park
//////////////////////////////////////////

// TODO: Behave like a toxic player too! ;)
class npc_citadel_interrogator_AI : public ScriptedAI
{
public:
    explicit npc_citadel_interrogator_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_interrogator_AI::Reset();
    }

private:
    bool m_bAlreadyUsedFrenzy{};
    bool m_bAlreadyUsedEvasion{};

    uint8 m_uiSinisterStrikeHits{};

    uint32 m_uiBlind_Timer{};
    uint32 m_uiGouge_Timer{};
    uint32 m_uiSinisterStrike_Timer{};

public:
    void Reset() override
    {
        m_uiSinisterStrike_Timer = urand(nsCitadelInterrogator::TIMER_MIN_SINISTER_STRIKE, nsCitadelInterrogator::TIMER_MAX_SINISTER_STRIKE);
        m_uiGouge_Timer = nsCitadelInterrogator::INITIAL_TIMER_GAUGE;
        m_uiBlind_Timer = nsCitadelInterrogator::INITIAL_TIMER_BLIND;

        m_uiSinisterStrikeHits = 0;

        m_bAlreadyUsedFrenzy = false;
        m_bAlreadyUsedEvasion = false;

        m_creature->AddAura(nsCitadelInterrogator::SPELL_STEALTH);
    }

    void GoFrenzy()
    {
        if (m_creature->HealthBelowPct(25) && !m_bAlreadyUsedFrenzy)
        {
            if (DoCastSpellIfCan(m_creature, nsCitadelInterrogator::SPELL_FRENZY) == CanCastResult::CAST_OK)
            {
                m_bAlreadyUsedFrenzy = true;
            }
        }
    }

    void DoEvasion()
    {
        if (m_creature->HealthBelowPct(50) && !m_bAlreadyUsedEvasion)
        {
            if (DoCastSpellIfCan(m_creature, nsCitadelInterrogator::SPELL_EVASION) == CanCastResult::CAST_OK)
            {
                m_bAlreadyUsedEvasion = true;
            }
        }
    }

    void DoEviscerate()
    {
        DoCastSpellIfCan(m_creature->GetVictim(), nsCitadelInterrogator::SPELL_EVISCERATE);
    }

    void DoBlind(const uint32& uiDiff)
    {
        if (m_uiBlind_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsCitadelInterrogator::SPELL_BLIND) == CanCastResult::CAST_OK)
            {
                m_creature->GetThreatManager().modifyThreatPercent(m_creature->GetVictim(), -100);

                m_uiBlind_Timer = urand(nsCitadelInterrogator::TIMER_MIN_BLIND, nsCitadelInterrogator::TIMER_MAX_BLIND);
            }
        }
        else
        {
            m_uiBlind_Timer -= uiDiff;
        }
    }

    void DoGauge(const uint32& uiDiff)
    {
        if (m_uiGouge_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsCitadelInterrogator::SPELL_GOUGE) == CanCastResult::CAST_OK)
            {
                m_creature->GetThreatManager().modifyThreatPercent(m_creature->GetVictim(), -100);

                m_uiGouge_Timer = urand(nsCitadelInterrogator::TIMER_MIN_GAUGE, nsCitadelInterrogator::TIMER_MAX_GAUGE);
            }
        }
        else
        {
            m_uiGouge_Timer -= uiDiff;
        }
    }

    void DoSinisterStrike(const uint32& uiDiff)
    {
        if (m_uiSinisterStrike_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsCitadelInterrogator::SPELL_SINISTER_STRIKE) == CanCastResult::CAST_OK)
            {
                m_uiSinisterStrike_Timer = urand(nsCitadelInterrogator::TIMER_MIN_SINISTER_STRIKE, nsCitadelInterrogator::TIMER_MAX_SINISTER_STRIKE);

                ++m_uiSinisterStrikeHits;

                if (m_uiSinisterStrikeHits >= 5)
                {
                    DoEviscerate();
                    m_uiSinisterStrikeHits = 0;
                }
            }
        }
        else
        {
            m_uiSinisterStrike_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        GoFrenzy();
        DoEvasion();
        DoSinisterStrike(uiDiff);
        DoGauge(uiDiff);
        DoBlind(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_interrogator(Creature* pCreature)
{
    return new npc_citadel_interrogator_AI(pCreature);
}


class npc_chaplain_and_sister_AI : public ScriptedAI
{
public:
    explicit npc_chaplain_and_sister_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        npc_chaplain_and_sister_AI::Reset();
    }

private:

    bool m_bEventStarted{};

    uint32 m_uiCHeckPulse_Timer{};

    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {
        m_bEventStarted = false;

        m_uiCHeckPulse_Timer = nsChaplainAndSister::TIMER_CHECK_PULSE;
    }

    void AreaTriggerActivated(const uint32& uiDiff)
    {
        /*
        if (m_pInstance->GetData(ScarletCitadelEncounter::TYPE_ERIC_VESPER) != DONE) // TODO: Remove comment after testing
            return;
        */

        if (m_uiCHeckPulse_Timer < uiDiff)
        {
            Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
            for (const auto& itr : PlayerList)
            {
                if (!itr.getSource()->IsGameMaster() && itr.getSource()->IsAlive())
                {
                    if (itr.getSource()->IsInRange3d(
                        nsChaplainAndSister::vfAreaTrigger[0][0],
                        nsChaplainAndSister::vfAreaTrigger[0][1],
                        nsChaplainAndSister::vfAreaTrigger[0][2],
                        nsChaplainAndSister::vfAreaTrigger[0][3],
                        nsChaplainAndSister::vfAreaTrigger[0][4]))
                    {
                        if (!m_bEventStarted)
                        {
                            StartEvent();
                            m_bEventStarted = true;
                        }
                    }
                }
            }

            m_uiCHeckPulse_Timer = nsChaplainAndSister::TIMER_CHECK_PULSE;
        }
        else
        {
            m_uiCHeckPulse_Timer -= uiDiff;
        }
    }

    void StartEvent()
    {
        Creature* pScarletChaplain{ m_pInstance->GetSingleCreatureFromStorage(NPC_SCARLET_CHAPLAIN) };
        if (!pScarletChaplain)
            return;

        Creature* pScarletSister{ m_pInstance->GetSingleCreatureFromStorage(NPC_SCARLET_SISTER) };
        if (!pScarletSister)
            return;

        static const uint32 uiRndEvent{ urand(0, 1) };
        DoAfterTime(pScarletChaplain, (2 * IN_MILLISECONDS), [chaplain = pScarletChaplain]()
        {
            if (chaplain)
            {
                chaplain->MonsterSay(nsChaplainAndSister::strConversation[uiRndEvent ? 0 : 7], LANG_UNIVERSAL);
            }
        });
        DoAfterTime(pScarletSister, (10 * IN_MILLISECONDS), [sister = pScarletSister]()
        {
            if (sister)
            {
                sister->MonsterSay(nsChaplainAndSister::strConversation[uiRndEvent ? 1 : 8], LANG_UNIVERSAL);
            }
        });
        DoAfterTime(pScarletChaplain, (18 * IN_MILLISECONDS), [chaplain = pScarletChaplain]()
        {
            if (chaplain)
            {
                chaplain->MonsterSay(nsChaplainAndSister::strConversation[uiRndEvent ? 2 : 9], LANG_UNIVERSAL);
            }
        });
        DoAfterTime(pScarletSister, (26 * IN_MILLISECONDS), [sister = pScarletSister]()
        {
            if (sister)
            {
                sister->MonsterSay(nsChaplainAndSister::strConversation[uiRndEvent ? 3 : 10], LANG_UNIVERSAL);
            }
        });
        DoAfterTime(pScarletChaplain, (34 * IN_MILLISECONDS), [chaplain = pScarletChaplain]()
        {
            if (chaplain)
            {
                chaplain->MonsterSay(nsChaplainAndSister::strConversation[uiRndEvent ? 4 : 11], LANG_UNIVERSAL);
            }
        });
        DoAfterTime(pScarletSister, (42 * IN_MILLISECONDS), [sister = pScarletSister]()
        {
            if (sister)
            {
                sister->MonsterSay(nsChaplainAndSister::strConversation[uiRndEvent ? 5 : 12], LANG_UNIVERSAL);
            }
        });
        DoAfterTime(pScarletChaplain, (50 * IN_MILLISECONDS), [chaplain = pScarletChaplain]()
        {
            if (chaplain)
            {
                chaplain->MonsterSay(nsChaplainAndSister::strConversation[uiRndEvent ? 6 : 13], LANG_UNIVERSAL);
            }
        });
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        AreaTriggerActivated(uiDiff);
    }
};

CreatureAI* GetAI_npc_chaplain_and_sister(Creature* pCreature)
{
    return new npc_chaplain_and_sister_AI(pCreature);
}

//////////////////////////////////////////
// Shadow Wing
//////////////////////////////////////////




//////////////////////////////////////////
// MISC
//////////////////////////////////////////

class npc_citadel_anti_exploit_AI : public ScriptedAI
{
public:
    explicit npc_citadel_anti_exploit_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_anti_exploit_AI::Reset();
    }

private:

    uint32 m_uiCheckPulse{};

public:
    void Reset() override
    {
        m_uiCheckPulse = nsAntiExploit::PULSE_TIMER;

        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_PLAYER | UNIT_FLAG_IMMUNE_TO_NPC);
        m_creature->SetVisibility(VISIBILITY_OFF);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiCheckPulse < uiDiff)
        {
            Map::PlayerList const& list{ m_creature->GetMap()->GetPlayers() };
            for (const auto& player : list)
            {
                if (Player* pPlayer{ player.getSource() })
                {
                    if (!pPlayer->IsGameMaster() && pPlayer->IsInRange3d(
                        m_creature->GetPositionX(),
                        m_creature->GetPositionY(),
                        m_creature->GetPositionZ(),
                        0.0f, nsAntiExploit::PERMITTED_AREA))
                    {
                        pPlayer->AddAura(nsAntiExploit::SPELL_STUN);

                        DoAfterTime(pPlayer, (3 * IN_MILLISECONDS), [player = pPlayer]()
                        {
                            if (player)
                            {
                                static_cast<Unit*>(player)->NearTeleportTo
                                (
                                    nsAntiExploit::vfTeleportDestinations[0][0],
                                    nsAntiExploit::vfTeleportDestinations[0][1],
                                    nsAntiExploit::vfTeleportDestinations[0][2],
                                    nsAntiExploit::vfTeleportDestinations[0][3]
                                );
                            }
                        });

                        DoAfterTime(pPlayer, (5 * IN_MILLISECONDS), [player = pPlayer]()
                        {
                            if (player)
                            {
                                ChatHandler(player).SendSysMessage(nsAntiExploit::WARNING_MESSAGE);
                            }
                        });
                    }
                }
            }

            m_uiCheckPulse = nsAntiExploit::PULSE_TIMER;
        }
        else
        {
            m_uiCheckPulse -= uiDiff;
        }
    }
};

CreatureAI* GetAI_npc_citadel_anti_exploit(Creature* pCreature)
{
    return new npc_citadel_anti_exploit_AI(pCreature);
}


void AddSC_trash_mobs_scarlet_citadel()
{
    Script* pNewscript;

    // Caster's Nightmare Wing
    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_inquisitor";
    pNewscript->GetAI = &GetAI_npc_citadel_inquisitor;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_valiant";
    pNewscript->GetAI = &GetAI_npc_citadel_valiant;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_footman";
    pNewscript->GetAI = &GetAI_npc_citadel_footman;
    pNewscript->RegisterSelf();

    // Ambush Park
    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_interrogator";
    pNewscript->GetAI = &GetAI_npc_citadel_interrogator;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_chaplain_and_sister";
    pNewscript->GetAI = &GetAI_npc_chaplain_and_sister;
    pNewscript->RegisterSelf();

    // Shadow Wing


    // Misc
    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_anti_exploit";
    pNewscript->GetAI = &GetAI_npc_citadel_anti_exploit;
    pNewscript->RegisterSelf();
}
