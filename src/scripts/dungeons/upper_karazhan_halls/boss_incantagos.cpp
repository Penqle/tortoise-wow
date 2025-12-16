#include "scriptPCH.h"

enum
{
    NPC_LEY_SEEKER             = 59989,
    NPC_CRYSTAL_AFFINITY       = 59987,
    NPC_RED_AFFINITY           = 59986,
    NPC_GREEN_AFFINITY         = 59985,
    NPC_BLUE_AFFINITY          = 59984,
    NPC_BLACK_AFFINITY         = 59983,
    NPC_MANA_AFFINITY          = 59982,

    SPELL_DRACONIC_LEY_CHARGE  = 51176,
    SPELL_SUMMON_LEY_SEEKER    = 51178,
    SPELL_SUMMON_WHELPS        = 51179,
    SPELL_BLIZZARD             = 51180,
    SPELL_GAZE_OF_INCANTAGOS   = 51181,
    SPELL_GUIDED_LEY_BEAM      = 51182,
    SPELL_ARCANE_MISSILES      = 51184,
    SPELL_LEY_LINE_DISTURBANCE = 51185,
    SPELL_CURSE_OF_MANASCALE   = 51186,
    SPELL_ARCANE_CHANNELING    = 51187,

    SAY_SIPHON_AFFINITY        = 52133,
    SAY_PHASE_1                = 52134,
    SAY_AGGRO                  = 52135,
    SAY_PHASE_2                = 52136,
};

struct boss_incantagosAI : public ScriptedAI
{
    boss_incantagosAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
        SummonLeyWatchers();
    }

    ObjectGuidSet m_leyWatchers;
    uint32 m_summonLeySeekerTimer;
    uint32 m_summonWhelpsTimer;
    uint32 m_arcaneMissilesTimer;
    uint32 m_gazeOfIncantagosTimer;
    uint32 m_blizzardTimer;
    uint32 m_leyLineDisturbanceTimer;
    uint32 m_curseOfManascaleTimer;
    uint32 m_phase;

    void Reset() override
    {
        m_summonLeySeekerTimer = urand(45000, 55000);
        m_summonWhelpsTimer = urand(30000, 35000);
        m_arcaneMissilesTimer = urand(8000, 12000);
        m_gazeOfIncantagosTimer = 7000;
        m_blizzardTimer = urand(14000, 17000);
        m_leyLineDisturbanceTimer = 30000;
        m_curseOfManascaleTimer = 13000;
        m_phase = 0;
        m_creature->RemoveGuardians();
    }

    void EnterCombat(Unit* pVictim) override
    {
        DoScriptText(SAY_AGGRO, m_creature, pVictim);
    }

    void JustReachedHome() override
    {
        UnsummonLeyWatchers();
        SummonLeyWatchers();
    }

    void UpdateDraconicLeyChargeStacks()
    {
        m_creature->RemoveAurasDueToSpell(SPELL_DRACONIC_LEY_CHARGE);

        if (m_leyWatchers.empty())
        {
            DoScriptText(SAY_PHASE_1, m_creature);
            m_phase = 1;
            return;
        }

        m_phase = 0;
        if (SpellAuraHolder* pAura = m_creature->AddAura(SPELL_DRACONIC_LEY_CHARGE))
            pAura->SetStackAmount(m_leyWatchers.size());
    }

    void UnsummonLeyWatchers()
    {
        for (auto const& guid : m_leyWatchers)
        {
            if (Creature* pSummon = m_creature->GetMap()->GetCreature(guid))
                pSummon->DespawnOrUnsummon();
        }
        m_leyWatchers.clear();
    }

    void SummonLeyWatchers()
    {
        float x, y, z;
        m_creature->GetPosition(x, y, z);

        if (Creature* pSummon = m_creature->SummonCreature(NPC_LEY_SEEKER, x - 20, y, z, m_creature->GetAngle(x - 20, y), TEMPSUMMON_MANUAL_DESPAWN, HOUR * IN_MILLISECONDS))
        {
            pSummon->SetFacingToObject(m_creature);
            pSummon->CastSpell(m_creature, SPELL_ARCANE_CHANNELING, false);
            m_leyWatchers.insert(pSummon->GetObjectGuid());
        }

        if (Creature* pSummon = m_creature->SummonCreature(NPC_LEY_SEEKER, x + 20, y, z, m_creature->GetAngle(x + 20, y), TEMPSUMMON_MANUAL_DESPAWN, HOUR * IN_MILLISECONDS))
        {
            pSummon->SetFacingToObject(m_creature);
            pSummon->CastSpell(m_creature, SPELL_ARCANE_CHANNELING, false);
            m_leyWatchers.insert(pSummon->GetObjectGuid());
        }

        if (Creature* pSummon = m_creature->SummonCreature(NPC_LEY_SEEKER, x, y + 20, z, m_creature->GetAngle(x, y + 20), TEMPSUMMON_MANUAL_DESPAWN, HOUR * IN_MILLISECONDS))
        {
            pSummon->SetFacingToObject(m_creature);
            pSummon->CastSpell(m_creature, SPELL_ARCANE_CHANNELING, false);
            m_leyWatchers.insert(pSummon->GetObjectGuid());
        }

        if (Creature* pSummon = m_creature->SummonCreature(NPC_LEY_SEEKER, x, y - 20, z, m_creature->GetAngle(x, y - 20), TEMPSUMMON_MANUAL_DESPAWN, HOUR * IN_MILLISECONDS))
        {
            pSummon->SetFacingToObject(m_creature);
            pSummon->CastSpell(m_creature, SPELL_ARCANE_CHANNELING, false);
            m_leyWatchers.insert(pSummon->GetObjectGuid());
        }

        UpdateDraconicLeyChargeStacks();
    }

    void SummonedCreatureJustDied(Creature* pSummon) override
    {
        if (pSummon->GetEntry() == NPC_LEY_SEEKER)
        {
            if (m_leyWatchers.find(pSummon->GetObjectGuid()) != m_leyWatchers.end())
            {
                m_leyWatchers.erase(pSummon->GetObjectGuid());
                pSummon->DespawnOrUnsummon(10000);
                UpdateDraconicLeyChargeStacks();
            }
        }
    }

    void JustDied(Unit* pKiller) override
    {
        UnsummonLeyWatchers();
    }

    void JustSummoned(Creature* pSummon) override
    {
        switch (pSummon->GetEntry())
        {
            case NPC_CRYSTAL_AFFINITY:
            case NPC_RED_AFFINITY:
            case NPC_GREEN_AFFINITY:
            case NPC_BLUE_AFFINITY:
            case NPC_BLACK_AFFINITY:
            case NPC_MANA_AFFINITY:
            {
                DoScriptText(SAY_SIPHON_AFFINITY, m_creature, pSummon);
                m_creature->CastSpell(pSummon, SPELL_ARCANE_CHANNELING, true);
                break;
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_phase < 2 && m_creature->GetHealthPercent() < 40.0f)
        {
            DoScriptText(SAY_PHASE_2, m_creature);
            m_phase = 2;
            return;
        }

        if (m_phase >= 1)
        {
            if (m_summonLeySeekerTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SUMMON_LEY_SEEKER) == CAST_OK)
                {
                    m_summonLeySeekerTimer = urand(45000, 55000);
                    return;
                }
            }
            else
                m_summonLeySeekerTimer -= uiDiff;

            if (m_summonWhelpsTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SUMMON_WHELPS) == CAST_OK)
                {
                    m_summonWhelpsTimer = urand(30000, 35000);
                    return;
                }
            }
            else
                m_summonWhelpsTimer -= uiDiff;

            if (m_leyLineDisturbanceTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_LEY_LINE_DISTURBANCE) == CAST_OK)
                {
                    m_leyLineDisturbanceTimer = 30000;
                    return;
                }
            }
            else
                m_leyLineDisturbanceTimer -= uiDiff;

            if (m_blizzardTimer <= uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_BLIZZARD))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_BLIZZARD) == CAST_OK)
                    {
                        m_blizzardTimer = urand(14000, 17000);
                        return;
                    }
                }
            }
            else
                m_blizzardTimer -= uiDiff;
        }

        if (m_phase >= 2)
        {
            if (m_curseOfManascaleTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_CURSE_OF_MANASCALE) == CAST_OK)
                {
                    m_curseOfManascaleTimer = 13000;
                    return;
                }
            }
            else
                m_curseOfManascaleTimer -= uiDiff;
        }

        if (m_gazeOfIncantagosTimer <= uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_GAZE_OF_INCANTAGOS))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_GAZE_OF_INCANTAGOS) == CAST_OK)
                {
                    m_gazeOfIncantagosTimer = urand(30000, 35000);
                    return;
                }
            }
        }
        else
            m_gazeOfIncantagosTimer -= uiDiff;

        if (m_arcaneMissilesTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), (urand(0,3) ? SPELL_ARCANE_MISSILES : SPELL_GUIDED_LEY_BEAM)) == CAST_OK)
            {
                m_arcaneMissilesTimer = urand(8000, 12000);
                return;
            }
        }
        else
            m_arcaneMissilesTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_incantagos(Creature* pCreature)
{
    return new boss_incantagosAI(pCreature);
}

void AddSC_boss_incantagos()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "boss_incantagos";
    newscript->GetAI = &GetAI_boss_incantagos;
    newscript->RegisterSelf();
}
