
#include "scriptPCH.h"


namespace nsCleric
{
    static constexpr uint32 SPELL_SHADOW_WORD_PAIN{ 10894 };
    static constexpr uint32 SPELL_GREATER_HEAL{ 10965 };
    static constexpr uint32 SPELL_IMMOLATE{ 11668 };
};

class mob_hateforge_clericAI : public ScriptedAI
{
public:
    explicit mob_hateforge_clericAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_hateforge_clericAI::Reset();
    }

private:

    bool m_bShadowWordPainAlreadyCastedOnce{};
    uint32 m_uiHealNearbyAllies_Timer{};

public:
    void Reset() override
    {
        m_bShadowWordPainAlreadyCastedOnce = false;
        m_uiHealNearbyAllies_Timer = 4000;
    }

    void CheckIfNearbyAllyNeedsHealing(const uint32& uiDiff)
    {
        if (m_uiHealNearbyAllies_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->FindLowestHpFriendlyUnit(40.f) })
            {
                if (DoCastSpellIfCan(pFriendlyTarget, nsCleric::SPELL_GREATER_HEAL) == CanCastResult::CAST_OK)
                {
                    m_uiHealNearbyAllies_Timer = urand(8000, 10000);
                }
            }
        }
        else
        {
            m_uiHealNearbyAllies_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bShadowWordPainAlreadyCastedOnce)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsCleric::SPELL_IMMOLATE) == CanCastResult::CAST_OK)
            {
                m_bShadowWordPainAlreadyCastedOnce = true;
            }
        }

        CheckIfNearbyAllyNeedsHealing(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_hateforge_clericAI(Creature* pCreature)
{
    return new mob_hateforge_clericAI(pCreature);
}


namespace nsTaskMaster
{
    static constexpr uint32 SPELL1{ 56522 };
    static constexpr uint32 SPELL2{ 13608 };
};

class mob_hateforge_taskmasterAI : public ScriptedAI
{
public:
    explicit mob_hateforge_taskmasterAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_hateforge_taskmasterAI::Reset();
    }

private:

    bool m_bSpell1_AlreadyCasted{};
    uint32 m_uiSpell1_Timer{};
    uint32 m_uiSpell2_Timer{};

public:
    void Reset() override
    {
        m_bSpell1_AlreadyCasted = false;
        m_uiSpell1_Timer = 5000;
        m_uiSpell2_Timer = 1000;
    }

    void CastSpell1(const uint32& uiDiff)
    {
        if (m_uiSpell1_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->SelectRandomFriendlyTarget(nullptr, 5.f) })
            {
                if (DoCastSpellIfCan(pFriendlyTarget, nsTaskMaster::SPELL1) == CanCastResult::CAST_OK)
                {
                    m_bSpell1_AlreadyCasted = true;
                }
            }
        }
        else
        {
            m_uiSpell1_Timer -= uiDiff;
        }
    }

    void CastSpell2(const uint32& uiDiff)
    {
        if (m_uiSpell2_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsTaskMaster::SPELL2) == CanCastResult::CAST_OK)
            {
                m_uiSpell2_Timer = 35000;
            }
        }
        else
        {
            m_uiSpell2_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bSpell1_AlreadyCasted)
        {
            CastSpell1(uiDiff);
        }

        CastSpell2(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_hateforge_taskmasterAI(Creature* pCreature)
{
    return new mob_hateforge_taskmasterAI(pCreature);
}


namespace nsFireblade
{
    static constexpr uint32 SPELL{ 56524 };
};

class mob_twilight_firebladeAI : public ScriptedAI
{
public:
    explicit mob_twilight_firebladeAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_twilight_firebladeAI::Reset();
    }
    
private:

    bool m_bSpellAlreadyCastedOnce{};
    uint32 m_uiSpell_Timer{};

public:
    void Reset() override
    {
        m_bSpellAlreadyCastedOnce = false;
        m_uiSpell_Timer = 1000;
    }

    void CastSpell(const uint32& uiDiff)
    {
        if (m_uiSpell_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->SelectRandomFriendlyTarget(nullptr, 10.f) })
            {
                if (DoCastSpellIfCan(pFriendlyTarget, nsFireblade::SPELL) == CanCastResult::CAST_OK)
                {
                    m_bSpellAlreadyCastedOnce = true;
                }
            }
        }
        else
        {
            m_uiSpell_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bSpellAlreadyCastedOnce)
        {
            CastSpell(uiDiff);
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_twilight_firebladeAI(Creature* pCreature)
{
    return new mob_twilight_firebladeAI(pCreature);
}


void AddSC_trash_mobs_hateforge_quarry()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "mob_hateforge_cleric";
    pNewscript->GetAI = &GetAI_mob_hateforge_clericAI;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "mob_hateforge_taskmaster";
    pNewscript->GetAI = &GetAI_mob_hateforge_taskmasterAI;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "mob_twilight_fireblade";
    pNewscript->GetAI = &GetAI_mob_twilight_firebladeAI;
    pNewscript->RegisterSelf();
}
