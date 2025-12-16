#include "scriptPCH.h"

enum
{
    SPELL_REMORSELESS_STRIKES = 51164,
    SPELL_MARK_OF_THE_HIGHLORD = 51166,
    SPELL_CALL_FROM_THE_TWISTING_NETHER = 51170,
    SPELL_WINGS_OF_OBLIVION = 51172,
    SPELL_VOID_BOLT_VOLLEY = 51174,

    SAY_AGGRO = 50877,
    SAY_ENRAGE = 50878,
};

struct boss_kruulAI : public ScriptedAI
{
    boss_kruulAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    bool m_enraged;
    uint32 m_remorselessStrikesTimer;
    uint32 m_markOfTheHighlordTimer;
    uint32 m_callFromTheTwistingNetherTimer;
    uint32 m_voidBoltVolleyTimer;

    void Reset() override
    {
        m_enraged = false;
        m_remorselessStrikesTimer = 2000;
        m_markOfTheHighlordTimer = 30000;
        m_callFromTheTwistingNetherTimer = 25000;
        m_voidBoltVolleyTimer = 10000;
    }

    void EnterCombat(Unit* pVictim) override
    {
        DoScriptText(SAY_AGGRO, m_creature);
    }

    void CastMarkOfTheHighLord()
    {
        std::vector<Player*> players;

        auto const& threatList = m_creature->GetThreatManager().getThreatList();
        for (auto const& itr : threatList)
        {
            if (Player* pPlayer = ToPlayer(itr->getTarget()))
            {
                if (pPlayer->GetPowerType() != POWER_MANA)
                    continue;

                players.push_back(pPlayer);
            }
        }

        uint32 count = 0;
        while (!players.empty() && count++ < 3)
        {
            uint32 idx = urand(0, players.size() - 1);
            std::vector<Player*>::iterator itr = players.begin();
            std::advance(itr, idx);
            Player* target = (*itr);
            m_creature->CastSpell(target, SPELL_MARK_OF_THE_HIGHLORD, true);
            players.erase(itr);
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_enraged)
        {
            if (m_voidBoltVolleyTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_VOID_BOLT_VOLLEY) == CAST_OK)
                {
                    m_voidBoltVolleyTimer = 10000;
                    return;
                }
            }
            else
                m_voidBoltVolleyTimer -= uiDiff;

            if (m_markOfTheHighlordTimer <= uiDiff)
            {
                CastMarkOfTheHighLord();
                m_markOfTheHighlordTimer = 15000;
            }
            else
                m_markOfTheHighlordTimer -= uiDiff;

            if (m_callFromTheTwistingNetherTimer <= uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_CALL_FROM_THE_TWISTING_NETHER, SELECT_FLAG_IN_LOS | SELECT_FLAG_PLAYER))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_CALL_FROM_THE_TWISTING_NETHER) == CAST_OK)
                        m_callFromTheTwistingNetherTimer = 15000;
                }
            }
            else
                m_callFromTheTwistingNetherTimer -= uiDiff;
        }
        else
        {
            if (m_creature->GetHealthPercent() < 25.0f)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_WINGS_OF_OBLIVION) == CAST_OK)
                {
                    m_enraged = true;
                    DoScriptText(SAY_ENRAGE, m_creature);
                    return;
                }
            }

            if (m_markOfTheHighlordTimer <= uiDiff)
            {
                CastMarkOfTheHighLord();
                m_markOfTheHighlordTimer = 30000;
            }
            else
                m_markOfTheHighlordTimer -= uiDiff;

            if (m_callFromTheTwistingNetherTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CALL_FROM_THE_TWISTING_NETHER) == CAST_OK)
                    m_callFromTheTwistingNetherTimer = 25000;
            }
            else
                m_callFromTheTwistingNetherTimer -= uiDiff;
        }

        if (m_remorselessStrikesTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REMORSELESS_STRIKES) == CAST_OK)
            {
                m_creature->SendAttackStateUpdate(HITINFO_AFFECTS_VICTIM, m_creature->GetVictim(), 0, SPELL_SCHOOL_MASK_NORMAL, 0, 0, 0, VICTIMSTATE_NORMAL, 0);
                m_remorselessStrikesTimer = 4000;
            }
        }
        else
            m_remorselessStrikesTimer -= uiDiff;

        //DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_kruul(Creature* pCreature)
{
    return new boss_kruulAI(pCreature);
}

void AddSC_boss_kruul()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "boss_kruul";
    newscript->GetAI = &GetAI_boss_kruul;
    newscript->RegisterSelf();
}
