#include "scriptPCH.h"

enum
{
    SPELL_WEB_SPRAY = 29484,
    SPELL_POISON_CLOUD = 24840,
    SPELL_VENOM_SPIT = 25053,
    SPELL_CORROSIVE_POISON = 24111,
    SPELL_SHADOW_SHOCK = 20603,
    SPELL_SHADOW_BOLT_VOLLEY = 28407,

    CREATURE_NERUBLING = 51539
};

struct boss_nerubian_overseerAI : public ScriptedAI
{
    boss_nerubian_overseerAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 WebSpray_Timer;
    uint32 WebExplode_Timer;
    uint32 VenomSpit_Timer;
    uint32 CorrosivePoison_Timer;
    uint32 ShadowShock_Timer;

    Unit* webTarget;

    void SetDefaults()
    {
        WebSpray_Timer = 20000;
        WebExplode_Timer = 9000;
        VenomSpit_Timer = 5000;
        CorrosivePoison_Timer = 30000;
        ShadowShock_Timer = 15000;

        webTarget = nullptr;
    }

    void Aggro(Unit *who) override
    {
    }

    void Reset() override
    {
        SetDefaults();
    }

    void JustRespawned() override
    {
        SetDefaults();
    }

    void KilledUnit(Unit* victim) override
    {
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        // A bit of trolling :P
        DoCast(m_creature, SPELL_SHADOW_BOLT_VOLLEY, true);

        uint32 m_respawn_delay_Timer = urand(120 * HOUR, 168 * HOUR);

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

        m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void WebExplosion()
    {
        webTarget->PMonsterEmote("|cffff8040%s explodes.|r", nullptr, true, webTarget->GetName());
        DoCast(webTarget, SPELL_POISON_CLOUD, true);
        float x, y, z;
        webTarget->GetSafePosition(x, y, z);

        m_creature->DoKillUnit(webTarget);

        Unit* nerublingTarget = m_creature->GetNearestVictimInRange(0, 30, false);
        for (int i = 0; i < 4; i++)
        {
            Unit* nerubling = m_creature->SummonCreature(CREATURE_NERUBLING, x, y, z, 0,TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 30000);

            if (nerublingTarget)
            {
                nerubling->SetInCombatWith(nerublingTarget);
                nerubling->Attack(nerublingTarget, true);
            }
        }

        webTarget = nullptr;
    }

    void UpdateAI(const uint32 diff) override
    {
        if (sWorld.GetContentPhase() < CONTENT_PHASE_2)
        {
            m_creature->AddObjectToRemoveList();
            return;
        }

        // Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (WebSpray_Timer < diff)
        {
            webTarget = m_creature->GetFarthestVictimInRange(0, 45, false);
            if (webTarget && !webTarget->IsImmuneToDamage(SPELL_SCHOOL_MASK_NORMAL))
                webTarget->AddAura(SPELL_WEB_SPRAY, 0, m_creature);

            WebSpray_Timer = 24000;
        }
        else
        {
            WebSpray_Timer -= diff;
            if (webTarget)
            {
                if (WebExplode_Timer < diff)
                {
                    WebExplode_Timer = 8000;
                    if (!webTarget->IsAlive())
                        webTarget = nullptr;
                    else if (webTarget->HasAura(SPELL_WEB_SPRAY))
                        WebExplosion();
                }
                else
                {
                    WebExplode_Timer -= diff;
                }
            }
        }

        if (VenomSpit_Timer < diff)
        {
            DoCast(m_creature, SPELL_VENOM_SPIT, true);
            VenomSpit_Timer = 30000;
        }
        else
            VenomSpit_Timer -= diff;

        if (CorrosivePoison_Timer < diff)
        {
            DoCast(m_creature->GetVictim(), SPELL_CORROSIVE_POISON, true);
            CorrosivePoison_Timer = 30000;
        }
        else
            CorrosivePoison_Timer -= diff;

        if (ShadowShock_Timer < diff)
        {
            DoCast(m_creature, SPELL_SHADOW_SHOCK, true);
            ShadowShock_Timer = urand(8000, 12000);
        }
        else
            ShadowShock_Timer -= diff;


        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_nerubian_overseer(Creature *_Creature)
{
    return new boss_nerubian_overseerAI(_Creature);
}

void AddSC_boss_nerubian_overseer()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_nerubian_overseer";
    newscript->GetAI = &GetAI_boss_nerubian_overseer;
    newscript->RegisterSelf();
}
