
#include "scriptPCH.h"


static constexpr int32 VOICE_SCRIPT_AGGRO{ -1999957 };
static constexpr int32 VOICE_SCRIPT_DEAD{ -1999958 };

static constexpr uint32 SPELL_KNOCKBACK{ 28438 };
static constexpr uint32 SPELL_CLEAVE{ 19983 };
static constexpr uint32 SPELL_WAR_STOMP{ 11876 };

class boss_hatereaver_annhilatorAI : public ScriptedAI
{
public:
    explicit boss_hatereaver_annhilatorAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_hatereaver_annhilatorAI::Reset();
    }

    uint32 m_uiKnockback_Timer{};
    uint32 m_uiCleave_Timer{};
    uint32 m_uiWarStomp{};

    void Reset() override
    {
        m_uiKnockback_Timer = 30000;
        m_uiCleave_Timer = 40000;
        m_uiWarStomp = 45000;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoScriptText(VOICE_SCRIPT_AGGRO, m_creature);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DoScriptText(VOICE_SCRIPT_DEAD, m_creature);
    }

    void CastKnockback(const uint32& uiDiff)
    {
        if (m_uiKnockback_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_KNOCKBACK) == CanCastResult::CAST_OK)
            {
                m_uiKnockback_Timer = 30000;
            }
        }
        else
        {
            m_uiKnockback_Timer -= uiDiff;
        }
    }

    void CastCleave(const uint32& uiDiff)
    {
        if (m_uiCleave_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CanCastResult::CAST_OK)
            {
                m_uiCleave_Timer = 40000;
            }
        }
        else
        {
            m_uiCleave_Timer -= uiDiff;
        }
    }

    void CastWarStomp(const uint32& uiDiff)
    {
        if (m_uiWarStomp < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_WAR_STOMP) == CanCastResult::CAST_OK)
            {
                m_uiWarStomp = 45000;
            }
        }
        else
        {
            m_uiWarStomp -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        CastKnockback(uiDiff);
        CastCleave(uiDiff);
        CastWarStomp(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_hatereaver_annhilatorAI(Creature* pCreature)
{
    return new boss_hatereaver_annhilatorAI(pCreature);
}


void AddSC_boss_hatereaver_annhilator()
{
    Script* pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "boss_hatereaver_annhilator";
    pNewscript->GetAI = &GetAI_boss_hatereaver_annhilatorAI;
    pNewscript->RegisterSelf();
}
