#include "scriptPCH.h"

enum
{
    SPELL_ICE_LOCK = 22856,
    SPELL_FROST_REFLECTOR = 23131,
    SPELL_MASS_FROSTBOLT = 28479,
    SPELL_FROST_BREATH = 22479,
    SPELL_SUMMON_ICE_BLOCK = 28535, // Using actual gobject summoning now
    SPELL_FROST_NOVA = 865,
    SPELL_FROST_BERSERK = 28498,
    SPELL_CROWD_PUMMEL = 10887,
    SPELL_KNOCK_SNOWBALL = 25677,
    SPELL_BLIZZARD = 26607,
    SPELL_FROST_NOVA_DMG = 30094,

    SOUND_FROST_WARD_TARGET = 3075,

    GAMEOBJECT_ICE_BLOCK = 181247
};

struct boss_xmas_wolfAI : public ScriptedAI
{
    boss_xmas_wolfAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 IceBlock_Timer;
    uint32 Heal_Timer;
    uint32 Frost_Breath_Timer;
    uint32 Block_Event_Timer;
    uint32 Kick_Timer;
    uint32 Knock_Snowball_Timer;
    uint32 Blizzard_Timer;

    int requiredFireHits;
    int currentFireHits;
    int requiredFrostBerserkHits;
    int currentFrostBerserkHits;
    bool isFrozen;
    int castersNearAnnouncedTimes;

    void SetDefaults()
    {
        IceBlock_Timer = 15000;
        Heal_Timer = 1000;
        Frost_Breath_Timer = 3000;
        Block_Event_Timer = 22000;
        Kick_Timer = 3000;
        Knock_Snowball_Timer = 2000;
        Blizzard_Timer = 4000;
        requiredFireHits = 6;
        currentFireHits = 0;
        requiredFrostBerserkHits = 30;
        currentFrostBerserkHits = 0;
        castersNearAnnouncedTimes = 0;
        isFrozen = false;
    }

    void Aggro(Unit *who) override
    {
    }

    void Reset() override
    {
        SetDefaults();
        RemoveIceLock();
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
        uint32 m_respawn_delay_Timer = urand(5*HOUR, 6*HOUR);

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

        //m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void RemoveIceLock()
    {
        m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_0);
        m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_1);
        m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_2);

        isFrozen = false;
    }

    void SpellHit(WorldObject* pCaster, const SpellEntry* pSpell) override
    {
        if (isFrozen && pSpell->School == SPELL_SCHOOL_FIRE)
        {
            currentFireHits++;
            if (currentFireHits >= requiredFireHits)
            {
                RemoveIceLock();
                requiredFireHits = urand(6, 18);

                DoCast(m_creature, SPELL_FROST_REFLECTOR);
            }
        }

        if (pSpell->School == SPELL_SCHOOL_FROST && !m_creature->HasAura(SPELL_FROST_BERSERK) && pCaster != m_creature)
        {
            currentFrostBerserkHits++;
            if (currentFrostBerserkHits >= requiredFrostBerserkHits)
            {
                m_creature->MonsterTextEmote("Snowball doesn't like others throwing ice at him.", nullptr);
                currentFrostBerserkHits = 0;
                m_creature->AddAura(SPELL_FROST_BERSERK);
            }
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        if (isFrozen)
        {
            if (Heal_Timer < diff)
            {
                if (m_creature->GetHealthPercent() <= 99.0f)
                    m_creature->SetHealthPercent(m_creature->GetHealthPercent() + 1.0f);
                else
                {
                    RemoveIceLock();
                    DoCast(m_creature, SPELL_MASS_FROSTBOLT);
                }

                Heal_Timer = 1000;
            }
            else
            {
                Heal_Timer -= diff;
            }

            return;
        }

        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!isFrozen)
        {
            if (IceBlock_Timer < diff)
            {
                currentFireHits = 0;
                DoCast(m_creature, SPELL_ICE_LOCK);
                IceBlock_Timer = urand(20000, 35000);
                isFrozen = true;

                m_creature->MonsterTextEmote("Snowball starts to rest in his cozy ice block.", nullptr);
            }
            else
            {
                IceBlock_Timer -= diff;
            }
        }

        if (Knock_Snowball_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (pTarget->IsCaster())
                {
                    DoCastSpellIfCan(pTarget, SPELL_KNOCK_SNOWBALL);
                    Knock_Snowball_Timer = 1500;
                }
                else
                {
                    Knock_Snowball_Timer = 200;
                }
            }
        }
        else
        {
            Knock_Snowball_Timer -= diff;
        }

        if (Frost_Breath_Timer < diff)
        {
            DoCast(m_creature->GetVictim(), SPELL_FROST_BREATH);
            Frost_Breath_Timer = urand(6000, 16000);
        }
        else
        {
            Frost_Breath_Timer -= diff;
        }

        if (Kick_Timer < diff)
        {
            if (m_creature->GetHostileCasterInRange(0, 8))
            {
                if (castersNearAnnouncedTimes >= 1)
                {
                    DoCastAOE(SPELL_CROWD_PUMMEL);
                    m_creature->MonsterTextEmote("Snowball senses magicians reek of mana.", nullptr);
                }
                else
                {
                    castersNearAnnouncedTimes++;
                    m_creature->MonsterTextEmote("Snowball becomes irritated with mana.", nullptr);
                }
            }

            Kick_Timer = 3000;
        }
        else
        {
            Kick_Timer -= diff;
        }

        if (Blizzard_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (pTarget->IsCaster())
                {
                    DoCast(pTarget, SPELL_BLIZZARD);
                    Blizzard_Timer = 8000;
                }
                else
                {
                    Blizzard_Timer = 150;
                }
            }
        }
        else
        {
            Blizzard_Timer -= diff;
        }

        if (Block_Event_Timer < diff)
        {
            DoCastAOE(SPELL_FROST_NOVA_DMG);

            std::list<Player*> players;
            GetPlayersWithinRange(players, 50);

            Block_Event_Timer = urand(24000, 42000);

            for (auto &player : players)
            {
                if (player && player->IsAlive() && player != m_creature->GetVictim() && !player->IsGameMaster() && player->GetDistance2d(m_creature) > 6) {
                    player->AddAura(SPELL_FROST_NOVA);

                    // Spawning an ice block facing to the boss
                    float dis{ 4.0f };
                    float x, y, z;
                    player->GetSafePosition(x, y, z);
                    x += dis * cos(player->GetOrientation());
                    y += dis * sin(player->GetOrientation());
                    //m_creature->CastSpell(x, y, z, SPELL_SUMMON_ICE_BLOCK, true);
                    m_creature->PlayDirectSound(SOUND_FROST_WARD_TARGET, player);
                    m_creature->SummonGameObject(GAMEOBJECT_ICE_BLOCK, x, y, z, player->GetOrientation(), 0.0f, 0.0f, 0.0f, 0.0f, Block_Event_Timer / 1000, true);
                }
            }
        }
        else
        {
            Block_Event_Timer -= diff;
        }

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_xmas_wolf(Creature *_Creature)
{
    return new boss_xmas_wolfAI(_Creature);
}

void AddSC_boss_xmas_wolf()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_xmas_wolf";
    newscript->GetAI = &GetAI_boss_xmas_wolf;
    newscript->RegisterSelf();
}
