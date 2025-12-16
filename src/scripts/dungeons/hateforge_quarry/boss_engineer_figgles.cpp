
#include "scriptPCH.h"


static constexpr int32 VOICE_SCRIPT_AGGRO{ -1999955 };
static constexpr int32 VOICE_SCRIPT_DEAD{ -1999956 };
static constexpr uint32 SPELL_CORROSIVE_POISON{ 24111 };

class boss_engineer_figglesAI : public ScriptedAI
{
public:
    explicit boss_engineer_figglesAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_engineer_figglesAI::Reset();
    }

    bool m_bCorrosivePoisonCastedOnce{};
    uint32 m_uiCorrosivePoison_Timer{};

    void Reset() override
    {
        m_bCorrosivePoisonCastedOnce = false;
        m_uiCorrosivePoison_Timer = 10000;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoScriptText(VOICE_SCRIPT_AGGRO, m_creature);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DoScriptText(VOICE_SCRIPT_DEAD, m_creature);
    }

    void CastCorrosivePoison(const uint32& uiDiff)
    {
        if (m_uiCorrosivePoison_Timer < uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CORROSIVE_POISON);
            m_bCorrosivePoisonCastedOnce = true;
        }
        else
        {
            m_uiCorrosivePoison_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bCorrosivePoisonCastedOnce)
        {
            CastCorrosivePoison(uiDiff);
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_engineer_figglesAI(Creature* pCreature)
{
    return new boss_engineer_figglesAI(pCreature);
}


void AddSC_boss_engineer_figgles()
{
    Script* pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "boss_engineer_figgles";
    pNewscript->GetAI = &GetAI_boss_engineer_figglesAI;
    pNewscript->RegisterSelf();
}
