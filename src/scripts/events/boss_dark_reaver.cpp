// Dark Reaver of Karazhan
// Author: Henhouse
#include "scriptPCH.h"

enum
{
    // Dark Reaver spells
    SPELL_MOUNT = 46224,
    SPELL_CLEAVE = 20684,
    SPELL_STRIKE = 26613,
    SPELL_FURIOUS_ANGER = 16791,
    SPELL_NIMBLE_REFLEXES = 6264,
    SPELL_PIERCE_ARMOR = 6016,
    SPELL_DETERRENCE = 19263,

    SPELL_GHOST_VISUAL = 22650,
    SPELL_TWISTING_NETHER = 23700,

    MOB_FORLORN_SPIRIT = 80937,
    MOB_LURKING_SHADOW = 81266,

    DEADWIND_PASS_ZONE = 41
};

enum EventStates
{
    STATE_ENRAGED = 1
};

// I can't do math so this will suffice.
const int8 quikmafs[4][2] = { {5,0},{-5,0},{0,5},{0,-5} };

constexpr auto AGGRO_TEXT_1 = "Mortals shall not defile these lands!";
constexpr auto AGGRO_TEXT_2 = "You desecrate the Master's lands with your filthy footsteps!";

constexpr auto SUMMON_TEXT_1 = "Rise, spirits. Defend the Master's lands!";
constexpr auto SUMMON_TEXT_2 = "Spirits, rise, and drive back this rabble!";

constexpr auto DEATH_TEXT_1 = "Master, I am sorry... I have failed...";
constexpr auto DEATH_TEXT_2 = "The Master... is not... well...";

constexpr auto LEASH_TEXT_1 = "Cowards! I will hunt you if you ever return!";
constexpr auto LEASH_TEXT_2 = "Leave and never again enter these lands!";


struct boss_dark_reaverAI : public ScriptedAI
{
    boss_dark_reaverAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 Cleave_Timer;
    uint32 Summon_Announce_Timer;
    uint32 Reflex_Timer;
    uint32 SummonLurkingShadow_Timer;

    time_t Last_Pierce_Time;
    uint32 SkeletonSummonTime;

    uint8 Event_State;
    uint8 LastHealthPercentage;
    uint32 Biggest_Hit;

    void SetDefaults()
    {
        me->RemoveAurasDueToSpell(SPELL_FURIOUS_ANGER);
        me->RemoveAurasDueToSpell(SPELL_DETERRENCE);

        DoCast(me, SPELL_MOUNT, true);

        Cleave_Timer = 10000;
        SummonLurkingShadow_Timer = 25000;
        Reflex_Timer = 26500;
        Last_Pierce_Time = 0;
        SkeletonSummonTime = 22000;
        Summon_Announce_Timer = 20000;

        Event_State = 0;
        LastHealthPercentage = 100;
    }

    void Aggro(Unit *who) override
    {
        m_creature->MonsterYell(urand(0, 1) ? AGGRO_TEXT_1 : AGGRO_TEXT_2);

        me->RemoveAurasDueToSpell(SPELL_MOUNT);
    }

    void DespawnAdds()
    {
        // Despawn Lurking Shadow and Forlorn Spirit NPCs
        std::list<Creature *> lCreature;
        m_creature->GetCreatureListWithEntryInGrid(lCreature, MOB_LURKING_SHADOW, 200.0f);
        m_creature->GetCreatureListWithEntryInGrid(lCreature, MOB_FORLORN_SPIRIT, 200.0f);
        for (std::list<Creature *>::iterator itr = lCreature.begin(); itr != lCreature.end(); ++itr)
            (*itr)->ForcedDespawn();
    }

    void Reset() override
    {
        SetDefaults();
        DespawnAdds();
    }

    void JustRespawned() override
    {
        SetDefaults();
    }

    void JustReachedHome() override
    {
        if (!m_creature->IsInCombat())
            DoCast(me, SPELL_MOUNT);
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->GetTypeId() != TYPEID_PLAYER)
            return;

        if (urand(0, 1)) // Don't spam on wipe.
            m_creature->MonsterYell("Join those below...");
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        m_creature->MonsterYell(urand(0, 1) ? DEATH_TEXT_1 : DEATH_TEXT_2);

        uint32 m_respawn_delay_Timer = urand(48 * HOUR, 64 * HOUR);
        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();

        DespawnAdds();
    }

    void DamageTaken(Unit* /*done_by*/, uint32& damage) override
    {
        if (damage < 300 || damage < Biggest_Hit)
            return;

        // Don't allow to repeat within a 10 second period.
        if (difftime(time(nullptr), Last_Pierce_Time) >= 10)
        {
            DoCast(me->GetVictim(), SPELL_PIERCE_ARMOR, true);
            Last_Pierce_Time = time(nullptr);
            Biggest_Hit = damage;
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Anti-leash protection
        if (m_creature->GetZoneId() != DEADWIND_PASS_ZONE)
        {
            m_creature->MonsterYell(urand(0, 1) ? LEASH_TEXT_1 : LEASH_TEXT_2);
            EnterEvadeMode();
        }

        // Cleave
        if (Cleave_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
                Cleave_Timer = urand(10000, 16000);
        }
        else
            Cleave_Timer -= diff;

        // Nimble Reflexes
        if (Reflex_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_NIMBLE_REFLEXES) == CAST_OK)
                Reflex_Timer = urand(26500, 30000);
        }
        else
            Reflex_Timer -= diff;

        // Strike every 10% HP loss.
        if (LastHealthPercentage - me->GetHealthPercent() >= 10)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_STRIKE) == CAST_OK)
                LastHealthPercentage = me->GetHealthPercent();
        }

        // Announce incoming summon
        if (Summon_Announce_Timer < diff)
        {
            me->MonsterYell(urand(0, 1) ? SUMMON_TEXT_1 : SUMMON_TEXT_2);
            Summon_Announce_Timer = 20000;
        }
        else
            Summon_Announce_Timer -= diff;

        // Summon Forlorn Spirit add (skeleton)
        if (SkeletonSummonTime < diff)
        {
            // Pick a random, non-tank target within 25yds. If none, default to tank.
            Unit* randomTarget = GetRandomNearbyEnemyPlayer(me);
            if (!randomTarget)
                randomTarget = me->GetVictim();

            // Random 50/50 the summons will be on boss or a random player;
            float x, y, z, o;
            if (urand(0, 1)) // boss
            {
                x = me->GetPositionX();
                y = me->GetPositionY();
                z = me->GetPositionZ();
                o = me->GetOrientation();
            }
            else // player
            {
                x = randomTarget->GetPositionX();
                y = randomTarget->GetPositionY();
                z = randomTarget->GetPositionZ();
                o = randomTarget->GetOrientation();
            }

            for (uint8 i = 0; i < 4; ++i)
            {
                if (Creature* spawn = me->SummonCreature(MOB_FORLORN_SPIRIT,
                    x + quikmafs[i][0],
                    y + quikmafs[i][1],
                    z,
                    o,
                    TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,
                    5000 // OOC Despawn time
                ))
                {

                    spawn->AddAura(SPELL_GHOST_VISUAL);
                    spawn->CastSpell(spawn, SPELL_TWISTING_NETHER, true); // for visual

                    // Pass boss threat list, but tiny amount to simply know all targets.
                    for (auto t : me->GetThreatManager().getThreatList())
                    {
                        if (!t || !t->isOnline())
                            continue;

                        float threatAmount = t->getSourceUnit() == randomTarget ? 5.0f : 0.01f;
                        spawn->GetThreatManager().addThreatDirectly(t->getTarget(), threatAmount);
                    }

                    // Set it combat with random target.
                    spawn->SetInCombatWith(randomTarget);
                    spawn->AI()->AttackStart(randomTarget);
                }
            }

            SkeletonSummonTime = 22000;
        }
        else
            SkeletonSummonTime -= diff;

        // Summon Lurking Shadow
        if (SummonLurkingShadow_Timer < diff)
        {
            // Pick a random, non-tank target within 25yds. If none, default to tank.
            Unit* randomTarget = GetRandomNearbyEnemyPlayer(me);
            if (!randomTarget)
                randomTarget = me->GetVictim();

            if (Creature* lurkingShadow = me->SummonCreature(MOB_LURKING_SHADOW,
                                     randomTarget->GetPositionX(),
                                     randomTarget->GetPositionY(),
                                     randomTarget->GetPositionZ(),
                                     randomTarget->GetAngle(randomTarget->GetPositionX(), randomTarget->GetPositionY()),
                                     TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,
                                     5000 // OOC Despawn time
            ))
            {
                lurkingShadow->GetThreatManager().addThreatDirectly(randomTarget, 10000.0f);
                lurkingShadow->SetInCombatWith(randomTarget);
                lurkingShadow->AI()->AttackStart(randomTarget);
            }

            SummonLurkingShadow_Timer = urand(SkeletonSummonTime + 2000, SkeletonSummonTime + 10000);
        }
        else
            SummonLurkingShadow_Timer -= diff;

        // Furious Anger (baby enrage) at 15%.
        if (me->GetHealthPercent() < 15 && !(Event_State & STATE_ENRAGED))
        {
            me->MonsterTextEmote("$n becomes angered!", me, true);

            DoCast(me, SPELL_FURIOUS_ANGER, true);
            DoCast(me, SPELL_DETERRENCE, true);
            Event_State |= STATE_ENRAGED;
        }

        DoMeleeAttackIfReady();
    }

    // Attempts to find nearby enemy player that is not the current aggro of the boss.
    Unit* GetRandomNearbyEnemyPlayer(Unit* self, uint8 attempt = 0)
    {
        attempt++;
        if (attempt > 5)
            return nullptr;

        Unit* random = self->SelectRandomUnfriendlyTarget(me->GetVictim(), 35.0f);
        if (!random)
            return nullptr;

        // Recurse until we select a player (missing MaNGOS func to do this...)
        if (!random->IsPlayer() || !self->CanAttack(random))
            return GetRandomNearbyEnemyPlayer(self, attempt);

        return random;
    }
};

CreatureAI* GetAI_boss_dark_reaver(Creature *creature)
{
    return new boss_dark_reaverAI(creature);
}

struct lurking_shadowAI : public ScriptedAI
{
    lurking_shadowAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    int8 currentClass;

    void Reset() override
    {
        currentClass = -1;
    }

    void SetClassIfNeeded(Unit* pWho)
    {
        if (currentClass != -1 || !pWho->IsPlayer())
            return;

        m_creature->MonsterTextEmote("A $c shadow appears next to $N...", pWho);
        // Make the creature use the same weapons as the aggroer.
        if (Item* mainHand = pWho->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND))
            m_creature->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, mainHand->GetEntry());
        if (Item* offHand = pWho->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND))
            m_creature->SetVirtualItem(VIRTUAL_ITEM_SLOT_1, offHand->GetEntry());

        currentClass = pWho->ToPlayer()->GetClass();
    }

    void Aggro(Unit* pWho) override
    {
        SetClassIfNeeded(pWho);
    }

    void DamageTaken(Unit* source, uint32& damage) override
    {
        // Only allow damage from players being the same class as the one who aggroed the mob.
        if (!source->IsPlayer() || source->ToPlayer()->GetClass() != currentClass && currentClass != -1)
            damage = 0;
    }

    void DamageDeal(Unit* source, uint32& damage) override
    {
        // Just in case class is not set on Aggro
        SetClassIfNeeded(source);
    }

    void UpdateAI(const uint32 diff) override
    {
        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_lurking_shadow(Creature *creature)
{
    return new lurking_shadowAI(creature);
}

void AddSC_boss_dark_reaver()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "boss_dark_reaver";
    newscript->GetAI = &GetAI_boss_dark_reaver;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "lurking_shadow";
    newscript->GetAI = &GetAI_lurking_shadow;
    newscript->RegisterSelf();
}
