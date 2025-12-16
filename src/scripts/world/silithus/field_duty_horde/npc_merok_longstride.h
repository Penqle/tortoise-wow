#pragma once
#include <AI/AbilityTimer.h>

#include "defines.h"
#include "scriptPCH.h"

struct npc_merok_longstride : public ScriptedAI
{
private:
    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    // These cooldown values are arbitrary and not based on any specific data. Feel free to adjust.
    AbilityTimer m_flameShockTimer = AbilityTimer(15616, 12000, 15000, 3000);
    AbilityTimer m_healingWaveTimer = AbilityTimer(15982, 2000, 6000);
    AbilityTimer m_lightningShieldTimer = AbilityTimer(15507, 4000, 8000);
public:
    npc_merok_longstride(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_merok_longstride::Reset();
    }

    void Reset() override
    {
        m_gcdTimer.Reset();
        m_healingWaveTimer.Reset();
        m_lightningShieldTimer.Reset();
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        auto myTarget = m_creature->GetVictim();
        if (!myTarget)
        {
            // We're not targeting anything

            // Assist Krug Skullsplit if he's in combat
            if (const auto krugSkullsplit = m_creature->FindNearestCreature(Silithus::CreatureEntries::KRUG_SKULLSPLIT, 60.f))
            {
                if (krugSkullsplit->IsInCombat())
                {
                    const auto krugsTarget = krugSkullsplit->GetVictim();
                    if (myTarget != krugsTarget)
                    {
                        m_creature->EnterCombatWithTarget(krugsTarget);
                    }
                }
            }

            // Assist Shai if she's in combat
            if (const auto shadowPriestessShai = m_creature->FindNearestCreature(Silithus::CreatureEntries::SHADOW_PRIESTESS_SHAI, 60.f))
            {
                if (shadowPriestessShai->IsInCombat())
                {
                    const auto shaisTarget = shadowPriestessShai->GetVictim();
                    if (myTarget != shaisTarget)
                    {
                        m_creature->EnterCombatWithTarget(shaisTarget);
                    }
                }
            }

            // Target the Hive-Killer if it's alive and fightable
            if (const auto hiveRegalHunterKiller = m_creature->FindNearestCreature(Silithus::CreatureEntries::HIVEREGAL_HUNTERKILLER, 60.f))
            {
                if (hiveRegalHunterKiller->IsAlive() && m_creature->IsValidAttackTarget(hiveRegalHunterKiller))
                {
                    m_creature->EnterCombatWithTarget(hiveRegalHunterKiller);
                }
            }
        }

        myTarget = m_creature->GetVictim();

        // We still don't have a target so stop updating
        if (!m_creature->SelectHostileTarget() || !myTarget)
        {
            return;
        }

        // Don't cast spells if we're already casting a non-melee spell
        if (m_creature->IsNonMeleeSpellCasted(false))
        {
            return;
        }

        m_gcdTimer.Update(uiDiff);
        m_flameShockTimer.Update(uiDiff);
        m_healingWaveTimer.Update(uiDiff);

        // Only tick Lightning Shield timer if the aura is not present
        const auto lightningShieldAura = m_creature->GetAura(m_lightningShieldTimer.SpellID(), EFFECT_INDEX_0);
        if (!lightningShieldAura)
        {
            m_lightningShieldTimer.Update(uiDiff);
        }

        // Heal ourselves if required
        if (m_creature->GetHealthPercent() < 80)
        {
            if (m_healingWaveTimer.IsReady() && m_gcdTimer.IsReady())
            {
                if (DoCastSpellIfCan(m_creature, m_healingWaveTimer.SpellID()) == CAST_OK)
                {
                    m_gcdTimer.Reset();
                    m_healingWaveTimer.Reset();
                    m_creature->ResetAttackTimer();
                }
            }
        }

        // Then prioritize healing Krug Skullsplit
        if (const auto krugSkullsplit = m_creature->FindNearestCreature(Silithus::CreatureEntries::KRUG_SKULLSPLIT, 35.f))
        {
            if (krugSkullsplit->GetHealthPercent() < 80)
            {
                if (m_healingWaveTimer.IsReady() && m_gcdTimer.IsReady())
                {
                    if (DoCastSpellIfCan(krugSkullsplit, m_healingWaveTimer.SpellID()) == CAST_OK)
                    {
                        m_gcdTimer.Reset();
                        m_healingWaveTimer.Reset();
                        m_creature->ResetAttackTimer();
                    }
                }
            }
        }

        // Next, check if Shai needs healing
        if (const auto shadowPriestessShai = m_creature->FindNearestCreature(Silithus::CreatureEntries::SHADOW_PRIESTESS_SHAI, 35.f))
        {
            if (shadowPriestessShai->GetHealthPercent() < 80)
            {
                if (m_healingWaveTimer.IsReady() && m_gcdTimer.IsReady())
                {
                    if (DoCastSpellIfCan(shadowPriestessShai, m_healingWaveTimer.SpellID()) == CAST_OK)
                    {
                        m_gcdTimer.Reset();
                        m_healingWaveTimer.Reset();
                        m_creature->ResetAttackTimer();
                    }
                }
            }
        }

        // Rebuff Lightning Shield if it's not present
        if (m_lightningShieldTimer.IsReady() && m_gcdTimer.IsReady())
        {
            if (DoCastSpellIfCan(m_creature, m_lightningShieldTimer.SpellID()) == CAST_OK)
            {
                m_lightningShieldTimer.Reset();
                m_gcdTimer.Reset();
                m_creature->ResetAttackTimer();
            }
        }

        // Flame Shock if it's ready
        if (m_flameShockTimer.IsReady() && m_gcdTimer.IsReady())
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), m_flameShockTimer.SpellID()) == CAST_OK)
            {
                m_flameShockTimer.Reset();
                m_gcdTimer.Reset();
                m_creature->ResetAttackTimer();
            }
        }

        // Finally, heal any other units that might need it
        if (const auto damagedUnit = m_creature->FindLowestHpFriendlyUnit(60.f, 1))
        {
            if (damagedUnit->GetHealthPercent() < 80)
            {
                if (m_healingWaveTimer.IsReady() && m_gcdTimer.IsReady())
                {
                    if (DoCastSpellIfCan(damagedUnit, m_healingWaveTimer.SpellID()) == CAST_OK)
                    {
                        m_gcdTimer.Reset();
                        m_healingWaveTimer.Reset();
                        m_creature->ResetAttackTimer();
                    }
                }
            }
        }

        DoMeleeAttackIfReady();
    }

    static CreatureAI* GetAI(Creature* pCreature)
    {
        return new npc_merok_longstride(pCreature);
    }

    static void register_script()
    {
        const auto script = new Script();
        script->Name = "npc_merok_longstride";
        script->GetAI = &npc_merok_longstride::GetAI;
        script->RegisterSelf();
    }
};