#include "scriptPCH.h"

enum
{
    SPELL_SHADOWVOLLEY = 21341,
    SPELL_VOIDBOLT = 22709,
    SPELL_MANA_BURN = 26049,
    SPELL_SHADOWFORM = 16592,
    SPELL_SHADOW_BOLT = 17483,
    SPELL_SHADOW_SHOCK = 30138,
    SPELL_PERIODIC_SHADOW_STORM = 2148,
    SPELL_PIERCING_SHADOW = 16429,
    SPELL_VEIL_OF_SHADOW = 22687,
    SPELL_BLACKOUT = 15269,
    SPELL_TWIN_TELEPORT_VISUAL = 26638,
    SPELL_DRAIN_LIFE = 29155
};

struct boss_concaviusAI : public ScriptedAI
{
    boss_concaviusAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 VoidBolt_Timer;
    uint32 ManaBurn_Timer;
    uint32 ShadowBolt_Timer;
    uint32 ShadowShock_Timer;
    uint32 PiercingShadow_Timer;
    uint32 Veil_of_Shadow_Timer;
    uint32 Blackout_Timer;
    uint32 DrainLife_Timer;

    bool mana_burn_warning_said;
    bool in_shadow_form;

    void SetDefaults()
    {
        VoidBolt_Timer = 12000;
        ManaBurn_Timer = 30000;
        ShadowBolt_Timer = urand(4000, 6000);
        ShadowShock_Timer = urand(6000, 10000);
        PiercingShadow_Timer = 12000;
        Veil_of_Shadow_Timer = 12000;
        Blackout_Timer = urand(6000, 16000);
        DrainLife_Timer = urand(3000, 6000);

        mana_burn_warning_said = false;
        in_shadow_form = false;
    }

    void Aggro(Unit* who) override
    {
        m_creature->PMonsterYell("Let the void claim you...");
    }

    void Reset() override
    {
        SetDefaults();
    }

    void JustRespawned() override
    {
        m_creature->PMonsterYell("Make your peace mortals, void approaches!");
        SetDefaults();
    }

    void KilledUnit(Unit* victim) override
    {
        Player* affectedPlayer;
        Creature* creature;

        switch (victim->GetTypeId())
        {
        case TYPEID_PLAYER:
        {
            affectedPlayer = victim->GetAffectingPlayer();
            if (!affectedPlayer)
                return;

            if (affectedPlayer->GetLevel() < 50)
                return;

            break;
        }
        case TYPEID_UNIT:
        {
            creature = victim->ToCreature();
            if (!creature->IsPet() && !creature->IsTotem())
                return;

            if (creature->GetLevel() < 50)
                return;

            break;
        }
        default:
            return;
        }
        m_creature->PMonsterYell("Your struggle is futile.");
        DoCastSpellIfCan(m_creature, SPELL_SHADOWVOLLEY);
    }

    void JustDied(Unit* /*pKiller*/) override
    {   
        m_creature->PMonsterSay(66111);

        uint32 m_respawn_delay_Timer = urand(3, 5) * DAY;

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

            m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void UpdateAI(const uint32 diff) override
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Adopting shadowform
        if (m_creature->GetHealthPercent() <= 30 && !in_shadow_form)
        {
            m_creature->PMonsterYell("Bask in the power of the infinite void!");
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, SPELL_SHADOWFORM);
            DoCast(m_creature, SPELL_PERIODIC_SHADOW_STORM);
            in_shadow_form = true;
        }

        if (in_shadow_form)
        {
            // ShadowShock_Timer
            if (ShadowShock_Timer < diff)
            {
                DoCast(m_creature, SPELL_SHADOW_SHOCK);
                ShadowShock_Timer = urand(6000, 10000);
            }
            else
            {
                ShadowShock_Timer -= diff;
            }
        }

        if (in_shadow_form)
        {
            // Veil_of_Shadow_Timer
            if (Veil_of_Shadow_Timer < diff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_VEIL_OF_SHADOW) == CAST_OK)
                    Veil_of_Shadow_Timer = 12000;
            }
            else
            {
                Veil_of_Shadow_Timer -= diff;
            }
        }

        // DrainLife_Timer
        if (DrainLife_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DRAIN_LIFE) == CAST_OK)
                DrainLife_Timer = urand(3000, 6000);
        }
        else
            DrainLife_Timer -= diff;

        // Blackout_Timer
        if (Blackout_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                DoCast(pTarget, SPELL_BLACKOUT);
                Blackout_Timer = urand(6000, 12000);
            }
            else
            {
                Blackout_Timer = 1000;
            }
        }
        else
        {
            Blackout_Timer -= diff;
        }

        // ShadowBolt_Timer
        if (ShadowBolt_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                DoCast(pTarget, SPELL_SHADOW_BOLT);
                if (!in_shadow_form)
                    ShadowBolt_Timer = urand(3000, 6000);
                else
                    ShadowBolt_Timer = urand(1500, 3000);
            }
            else
            {
                ShadowBolt_Timer = 1000;
            }
        }
        else
        {
            ShadowBolt_Timer -= diff;
        }

        // PiercingShadow_Timer
        if (PiercingShadow_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                DoCast(pTarget, SPELL_PIERCING_SHADOW);
                PiercingShadow_Timer = 12000;
            }
            else
            {
                PiercingShadow_Timer = 1000;
            }
        }
        else
        {
            PiercingShadow_Timer -= diff;
        }

        //ManaBurn_Timer
        if ((ManaBurn_Timer - 10000) <= diff && !mana_burn_warning_said)
        {
            std::list<Player*> players;
            GetPlayersWithinRange(players, 75);
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, SPELL_TWIN_TELEPORT_VISUAL);

            for (auto& player : players)
            {
                if (player && player->IsAlive() && player != m_creature->GetVictim())
                    m_creature->CastSpell(player, 21150, true);
            }

            m_creature->PMonsterYell("Embrace the void!");
            mana_burn_warning_said = true;
        }

        if (ManaBurn_Timer < diff)
        {
            m_creature->PMonsterYell("Perish.");
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, SPELL_MANA_BURN);
            ManaBurn_Timer = 30000;
            mana_burn_warning_said = false;
        }
        else
            ManaBurn_Timer -= diff;

        //VoidBolt_Timer
        if (VoidBolt_Timer < diff && !in_shadow_form)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_VOIDBOLT) == CAST_OK)
                VoidBolt_Timer = urand(9000, 12000);
        }
        else
            VoidBolt_Timer -= diff;

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_concavius(Creature* _Creature)
{
    return new boss_concaviusAI(_Creature);
}


struct concavius_summonerAI : public ScriptedAI
{
    concavius_summonerAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->IsInCombat())
        {
            m_creature->CastSpell((Unit*)nullptr, 21157, true);
        }
        DoMeleeAttackIfReady();
    }
    void EnterCombat()
    {
        if (m_creature->GetEntry() == 92212)
            m_creature->MonsterSay(66112);
    }
    void JustRespawned() {}
};

CreatureAI* GetAI_concavius_summoner(Creature* _Creature) { return new concavius_summonerAI(_Creature); }

void AddSC_boss_turtlhu()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "concavius_summoner";
    newscript->GetAI = &GetAI_concavius_summoner;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_concavius";
    newscript->GetAI = &GetAI_boss_concavius;
    newscript->RegisterSelf();
}
