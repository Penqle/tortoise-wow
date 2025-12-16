
#include "scriptPCH.h"


static constexpr int32 VOICE_SCRIPT_OOC_0{ -1999950 };
static constexpr int32 VOICE_SCRIPT_OOC_1{ -1999951 };
static constexpr int32 VOICE_SCRIPT_OOC_2{ -1999952 };
static constexpr int32 VOICE_SCRIPT_AGGRO{ -1999953 };
static constexpr int32 VOICE_SCRIPT_DEAD{ -1999954 };

static constexpr uint32 SPELL_STUNNING_STRIKE{ 5703 };
static constexpr uint32 SPELL_MORTAL_STRIKE{ 27580 };
static constexpr uint32 SPELL_DEMORALIZING_SHOUT{ 27579 };

class boss_bargul_blackhammerAI : public ScriptedAI
{
public:
    explicit boss_bargul_blackhammerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_bargul_blackhammerAI::Reset();
    }

    uint32 m_uiStunningStrike_Timer{};
    uint32 m_uiMortalStrike_Timer{};
    uint32 m_uiDemoralizingShout_Timer{};
    uint32 m_uiVoiceScriptOOC_Timer{};

    const std::vector<int32> m_vVoiceScriptsOOC{ VOICE_SCRIPT_OOC_0, VOICE_SCRIPT_OOC_1, VOICE_SCRIPT_OOC_2 };

    void Reset() override
    {
        m_uiStunningStrike_Timer = 25000;
        m_uiMortalStrike_Timer = 35000;
        m_uiDemoralizingShout_Timer = 40000;

        m_uiVoiceScriptOOC_Timer = 60000;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoScriptText(VOICE_SCRIPT_AGGRO, m_creature);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DoScriptText(VOICE_SCRIPT_DEAD, m_creature);
    }

    void CastStunningStrike(const uint32& uiDiff)
    {
        if (m_uiStunningStrike_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_STUNNING_STRIKE) == CanCastResult::CAST_OK)
            {
                m_uiStunningStrike_Timer = 25000;
            }
        }
        else
        {
            m_uiStunningStrike_Timer -= uiDiff;
        }
    }

    void CastMortalStrike(const uint32& uiDiff)
    {
        if (m_uiMortalStrike_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MORTAL_STRIKE) == CanCastResult::CAST_OK)
            {
                m_uiMortalStrike_Timer = 35000;
            }
        }
        else
        {
            m_uiMortalStrike_Timer -= uiDiff;
        }
    }

    void CastDemoralizingShout(const uint32& uiDiff)
    {
        if (m_uiDemoralizingShout_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DEMORALIZING_SHOUT) == CanCastResult::CAST_OK)
            {
                m_uiDemoralizingShout_Timer = 40000;
            }
        }
        else
        {
            m_uiDemoralizingShout_Timer -= uiDiff;
        }
    }

    void PlayVoiceScriptsOOC(const uint32& uiDiff)
    {
        if (m_uiVoiceScriptOOC_Timer < uiDiff)
        {
            DoScriptText(m_vVoiceScriptsOOC[urand(0, 2)], m_creature);
            {
                m_uiVoiceScriptOOC_Timer = 300000; // 5 Minutes
            }
        }
        else
        {
            m_uiVoiceScriptOOC_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_creature->SelectHostileTarget() && m_creature->GetVictim())
        {
            CastStunningStrike(uiDiff);
            CastMortalStrike(uiDiff);
            CastDemoralizingShout(uiDiff);

            DoMeleeAttackIfReady();
        }
        else
        {
            PlayVoiceScriptsOOC(uiDiff); // Shouldn't do if infight
        }
    }
};

CreatureAI* GetAI_boss_bargul_blackhammerAI(Creature* pCreature)
{
    return new boss_bargul_blackhammerAI(pCreature);
}


void AddSC_boss_bargul_blackhammer()
{
    Script* pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "boss_bargul_blackhammer";
    pNewscript->GetAI = &GetAI_boss_bargul_blackhammerAI;
    pNewscript->RegisterSelf();
}
