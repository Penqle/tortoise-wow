#include "scriptPCH.h"
#include <array>
#include "../dungeons/blackwing_lair/blackwing_lair.h"

struct zebrian_the_madAI : public ScriptedAI
{
    zebrian_the_madAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    void Aggro(Unit *who) override
    {
        m_creature->MonsterYell("Don't touch my Zebra! I found it, ME! You will never get your hands on it.");
    }

    void Reset() override
    {
        m_creature->EnableMoveInLosEvent();
    }

    void JustRespawned() override
    {
        // unused
    }

    void KilledUnit(Unit* victim) override
    {
        m_creature->MonsterYell("Loser!");
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        m_creature->MonsterSay("I knew this day would come...");
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer())
        {
            if (Player* player = pWho->ToPlayer())
            {
                if (!player->HasItemCount(18662) && !player->HasAura(8067)) // Heavy Leather Ball and Party Fever
                {
                    player->AddAura(8067);
                    m_creature->CastSpell(player, 23135, true);
                    m_creature->HandleEmoteCommand(EMOTE_ONESHOT_LAUGH);
                    ChatHandler(player).PSendSysMessage("|cffff8040Zebrian the Mad throws you a smelly ball. And laughs at you.|r");
                }
            }
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_zebrian_the_mad(Creature *_Creature)
{
    return new zebrian_the_madAI(_Creature);
}

enum
{
    // target morbent fel
    SPELL_SACRED_CLEANSING              = 8913,
    NPC_MORBENT                         = 1200,
    NPC_WEAKENED_MORBENT                = 24782,

    // target blazerunner
    SPELL_BLAZERUNNER_DISPELL           = 14247,
    NPC_BLAZERUNNER                     = 9376,
    SPELL_BLAZERUNNER_AURA              = 13913
};

bool EffectDummyCreature_spell_dummy_npc(WorldObject* /*pCaster*/, uint32 uiSpellId, SpellEffectIndex uiEffIndex, Creature* pCreatureTarget)
{
    switch (uiSpellId)
    {
        case SPELL_BLAZERUNNER_DISPELL:
        {
            if (uiEffIndex == EFFECT_INDEX_0)
            {
                if (pCreatureTarget->GetEntry() != NPC_BLAZERUNNER)
                    return true;

                pCreatureTarget->RemoveAurasDueToSpell(SPELL_BLAZERUNNER_AURA);
            }
            return true;
        }
        case SPELL_SACRED_CLEANSING:
        {
            if (uiEffIndex == EFFECT_INDEX_1)
            {
                if (pCreatureTarget->GetEntry() != NPC_MORBENT)
                    return true;

                pCreatureTarget->UpdateEntry(NPC_WEAKENED_MORBENT);
                return true;
            }
            return true;
        }
    }

    return false;
}


// Razorgore Phase 2 Script
#define SAY_EGGS_BROKEN1 -1469022
#define SAY_EGGS_BROKEN2 -1469023
#define SAY_EGGS_BROKEN3 -1469024
#define SAY_DEATH -1469025
#define SAY_AGGRO "Intruders have breached the Hatchery! Sound the alarm! Protect the eggs at all costs!"
// Razorgore The Untamed Spells
#define SPELL_CLEAVE 22540
#define SPELL_WARSTOMP 24375
#define SPELL_FIREBALLVOLLEY 22425
#define SPELL_CONFLAGRATION 23023
#define SPELL_PHASE_1 22663
// Grethok The Controller Spells
#define SPELL_GREATER_POLYMORPH 22274
#define SPELL_DOMINATE_MIND 14515
#define SPELL_ARCANE_MISSILES 22273 // Spell Doesn't Work 100%, should be three charges instead of one 
#define SPELL_SLOW 13747
// Creature Spawns
#define BLACKWING_LEGGIONAIRE 12416
#define DEATH_TALON_DRAGONSPAWN 12422
#define BLACKWING_MAGE 12420
// North
#define SPAWN_X1 -7540.8f
#define SPAWN_Y1 -1052.6f
#define SPAWN_Z1 408.490f
// South
#define SPAWN_X2 -7648.8f
#define SPAWN_Y2 -1053.8f
#define SPAWN_Z2 408.490f
// Eeast
#define SPAWN_X3 -7614.1f
#define SPAWN_Y3 -1103.6f
#define SPAWN_Z3 408.490f
// West
#define SPAWN_X4 -7578.1f
#define SPAWN_Y4 -1003.5f
#define SPAWN_Z4 408.490f
// Razorgore Spawn
#define RAZOR_SPAWN_X -7570.6f
#define RAZOR_SPAWN_Y -1090.0f
#define RAZOR_SPAWN_Z 413.559f

struct Zero_boss_razorgoreAI : public ScriptedAI
{
    Zero_boss_razorgoreAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 Cleave_Timer;
    uint32 WarStomp_Timer;
    uint32 FireballVolley_Timer;
    uint32 Conflagration_Timer;
    uint32 SpawnedAdds;
    uint32 AddSpawnTimer;
    uint32 SpawnType1;
    uint32 SpawnType2;
    uint32 SpawnType3;
    uint32 SpawnType4;
    uint32 Despawn_Timer;
    uint32 Razor_Spawn_Delay;
    uint32 Razor_Phase_1;
    uint32 Razor_Phase_2;
    uint32 Razor_Remove_Auras;

    void Reset() override
    {
        Cleave_Timer = 15000;                               //These times are probably wrong
        WarStomp_Timer = 35000;
        FireballVolley_Timer = 7000;
        Conflagration_Timer = 12000;
        SpawnedAdds = 0;
        AddSpawnTimer = 60000;
        Despawn_Timer = 240000;

        Razor_Phase_1 = 1;
        Razor_Phase_2 = 300000;
        Razor_Remove_Auras = 300000;

        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

        //m_creature->MonsterYell(SAY_AGGRO, LANG_UNIVERSAL, nullptr);
        DoPlaySoundToSet(m_creature, 8272);
    }

    void JustDied(Unit* Killer) override
    {
        DoScriptText(SAY_DEATH, m_creature);
        m_pInstance->SetData(TYPE_RAZORGORE, DONE);
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (Razor_Phase_1 == 1)
        {
            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            m_creature->GetMap()->CreatureRelocation(m_creature, -7595, -1053, 408, 0.0f);
            DoCastSpellIfCan(m_creature, 31366);
            Razor_Phase_1 = 0;
        }

        if (Razor_Remove_Auras < diff)
        {

            Unit* target = nullptr;
            target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);
            m_creature->AI()->AttackStart(target);

            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);

            m_creature->RemoveAurasDueToSpell(31366);

            Razor_Remove_Auras = 1000000;
        }
        else
            Razor_Remove_Auras -= diff;

        if (Razor_Phase_2 < diff)
        {

            //Cleave_Timer
            if (Cleave_Timer < diff)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE);
                Cleave_Timer = urand(7000, 10000);
            }
            else
                Cleave_Timer -= diff;

            //WarStomp_Timer
            if (WarStomp_Timer < diff)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_WARSTOMP);
                WarStomp_Timer = urand(15000, 25000);
            }
            else
                WarStomp_Timer -= diff;

            //FireballVolley_Timer
            if (FireballVolley_Timer < diff)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FIREBALLVOLLEY);
                FireballVolley_Timer = urand(12000, 15000);
            }
            else
                FireballVolley_Timer -= diff;

            //Conflagration_Timer
            if (Conflagration_Timer < diff)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CONFLAGRATION);

                Conflagration_Timer = 12000;
            }
            else
                Conflagration_Timer -= diff;

            // Aura Check. If the gamer is affected by confliguration we attack a random gamer.
            if (m_creature->GetVictim()->HasAura(SPELL_CONFLAGRATION, EFFECT_INDEX_0))
            {
                Unit* target = nullptr;
                target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1);
                if (target)
                    m_creature->TauntApply(target);
            }

            Razor_Phase_2 = 0;
        }
        else
            Razor_Phase_2 -= diff;


        if (SpawnedAdds < 42)
        {
            // spawn add
            if (AddSpawnTimer < diff)
            {
                // Spawn North (40% Blackwing_Mage, 40% Blackwing_Leggionaire 20% Death_Talon_Dragonspawn)
                switch (urand(0, 4))
                {
                    case 0 :
                        SpawnType1 = BLACKWING_MAGE;
                        break;
                    case 1:
                        SpawnType1 = BLACKWING_MAGE;
                        break;
                    case 2 :
                        SpawnType1 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 3:
                        SpawnType1 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 4:
                        SpawnType1 = DEATH_TALON_DRAGONSPAWN;
                        break;
                }
                // Spawn South (40% Blackwing_Mage, 40% Blackwing_Leggionaire 20% Death_Talon_Dragonspawn)
                switch (urand(0, 4))
                {
                    case 0 :
                        SpawnType2 = BLACKWING_MAGE;
                        break;
                    case 1:
                        SpawnType2 = BLACKWING_MAGE;
                        break;
                    case 2 :
                        SpawnType2 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 3:
                        SpawnType2 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 4:
                        SpawnType2 = DEATH_TALON_DRAGONSPAWN;
                        break;
                }
                // Spawn East (40% Blackwing_Mage, 40% Blackwing_Leggionaire 20% Death_Talon_Dragonspawn)
                switch (urand(0, 4))
                {
                    case 0 :
                        SpawnType3 = BLACKWING_MAGE;
                        break;
                    case 1:
                        SpawnType3 = BLACKWING_MAGE;
                        break;
                    case 2 :
                        SpawnType3 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 3:
                        SpawnType3 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 4:
                        SpawnType3 = DEATH_TALON_DRAGONSPAWN;
                        break;
                }
                // Spawn West (40% Blackwing_Mage, 40% Blackwing_Leggionaire 20% Death_Talon_Dragonspawn)
                switch (urand(0, 4))
                {
                    case 0 :
                        SpawnType4 = BLACKWING_MAGE;
                        break;
                    case 1:
                        SpawnType4 = BLACKWING_MAGE;
                        break;
                    case 2 :
                        SpawnType4 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 3:
                        SpawnType4 = BLACKWING_LEGGIONAIRE;
                        break;
                    case 4:
                        SpawnType4 = DEATH_TALON_DRAGONSPAWN;
                        break;
                }

                Creature* Spawned = nullptr;
                Unit* target = nullptr;

                ++SpawnedAdds;

                //Spawn creature and force it to start attacking a random target

                Spawned = m_creature->SummonCreature(SpawnType1, SPAWN_X1, SPAWN_Y1, SPAWN_Z1, 5.000, TEMPSUMMON_TIMED_DESPAWN, Despawn_Timer);
                target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

                if (target && Spawned)
                {
                    Spawned->AI()->AttackStart(target);
                    Spawned->SetFactionTemplateId(103);
                }

                ++SpawnedAdds;

                //Spawn creature and force it to start attacking a random target
                target = nullptr;
                Spawned = nullptr;
                Spawned = m_creature->SummonCreature(SpawnType2, SPAWN_X2, SPAWN_Y2, SPAWN_Z2, 5.000, TEMPSUMMON_TIMED_DESPAWN, Despawn_Timer);
                target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

                if (target && Spawned)
                {
                    Spawned->AI()->AttackStart(target);
                    Spawned->SetFactionTemplateId(103);
                }

                ++SpawnedAdds;

                //Spawn creature and force it to start attacking a random target
                target = nullptr;
                Spawned = nullptr;
                Spawned = m_creature->SummonCreature(SpawnType3, SPAWN_X3, SPAWN_Y3, SPAWN_Z3, 5.000, TEMPSUMMON_TIMED_DESPAWN, Despawn_Timer);
                target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

                if (target && Spawned)
                {
                    Spawned->AI()->AttackStart(target);
                    Spawned->SetFactionTemplateId(103);

                }

                ++SpawnedAdds;

                //Spawn creature and force it to start attacking a random target
                target = nullptr;
                Spawned = nullptr;
                Spawned = m_creature->SummonCreature(SpawnType4, SPAWN_X4, SPAWN_Y4, SPAWN_Z4, 5.000, TEMPSUMMON_TIMED_DESPAWN, Despawn_Timer);
                target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

                if (target && Spawned)
                {
                    Spawned->AI()->AttackStart(target);
                    Spawned->SetFactionTemplateId(103);
                }

                Despawn_Timer = Despawn_Timer - 15000;
                AddSpawnTimer = 15000;
            }
            else
                AddSpawnTimer -= diff;
        }

        DoMeleeAttackIfReady();
    }
};

#define SPELL_BUFF_GLEBE 8178
#define SPELL_BUFF_GLEBE_PASSIVE 8179

struct TotemGlebeAI : public TotemAI
{
    TotemGlebeAI(Creature* pCreature) : TotemAI(pCreature) {}

    void SpellHit(WorldObject* /*u*/, const SpellEntry* pSpell) override
    {
        if (pSpell->Id != SPELL_BUFF_GLEBE_PASSIVE && pSpell->Id != SPELL_BUFF_GLEBE)
        {
            m_creature->RemoveAurasDueToSpell(pSpell->Id);
            m_creature->RemoveAurasDueToSpell(SPELL_BUFF_GLEBE);
        }
    }
};

CreatureAI* GetAI_TotemGlebe(Creature* pCreature)
{
    return new TotemGlebeAI(pCreature);
}

enum
{
    POINT_LAST_POINT = 0xFFFFFF
};

struct npc_escort_genericAI : public npc_escortAI
{
    npc_escort_genericAI(Creature* pCreature, CreatureEscortData const* data) : npc_escortAI(pCreature)
    {
        Reset();
        m_pEscortData = data;
        if (!m_pEscortData)
            sLog.outError("npc_escort : La creature %u n'a pas de donnees dans la table `script_escort_data` ! Le PNJ sera inactif.");
    }

    CreatureEscortData const* m_pEscortData;

    void Reset() override
    {
        if (Player* pPlayer = GetPlayerForEscort())
        {
            if (pPlayer->GetQuestStatus(m_pEscortData->uiQuestEntry) == QUEST_STATUS_INCOMPLETE)
            {
                m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PVP);
            }
            else if (pPlayer->GetQuestStatus(m_pEscortData->uiQuestEntry) == QUEST_STATUS_FAILED)
            {
                m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PVP);
                m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
            }
        }
    }

    void EnterEvadeMode() override
    {
        m_creature->DeleteThreatList();
        m_creature->CombatStop(true);
        m_creature->SetLootRecipient(nullptr);

        if (HasEscortState(STATE_ESCORT_ESCORTING))
        {
            sLog.outDebug("EscortAI has left combat and is now returning to CombatStartPosition.");

            if (HasEscortState(STATE_ESCORT_PAUSED))
            {
                float fPosX, fPosY, fPosZ;
                m_creature->GetCombatStartPosition(fPosX, fPosY, fPosZ);
                m_creature->GetMotionMaster()->MovePoint(POINT_LAST_POINT, fPosX, fPosY, fPosZ);
            }
        }
        else
        {
            m_creature->GetMotionMaster()->MoveTargetedHome();
            sLog.outDebug("EscortAI has left combat and MoveTargetedHome()");
        }

        Reset();
    }

    void WaypointReached(uint32 uiPointId) override
    {
        if (!m_pEscortData)
            return;

        // Escorte finie.
        if (uiPointId == m_pEscortData->uiLastWaypointEntry)
        {
            if (Player* pPlayer = GetPlayerForEscort())
                pPlayer->GroupEventHappens(m_pEscortData->uiQuestEntry, m_creature);
        }
    }

    void JustDied(Unit* pKiller) override
    {
        if (!m_pEscortData)
            return;

        if (Player* pPlayer = GetPlayerForEscort())
        {
            if (pPlayer->GetQuestStatus(m_pEscortData->uiQuestEntry) == QUEST_STATUS_INCOMPLETE)
                pPlayer->FailQuest(m_pEscortData->uiQuestEntry);
        }
    }

    void JustStartedEscort() override
    {
        if (!m_pEscortData)
            return;

        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PVP);
        m_creature->SetFactionTemplateId(m_pEscortData->uiEscortFaction);
    }

    void OnQuestAccept(Player* pPlayer, const Quest* pQuest)
    {
        if (!m_pEscortData)
            return;

        if (pQuest->GetQuestId() == m_pEscortData->uiQuestEntry)
        {
            Start(false, pPlayer->GetGUID(), pQuest);
            m_creature->MonsterTextEmote("quest accepted", nullptr);
        }
    }

    void UpdateEscortAI(const uint32 uiDiff) override
    {
        if (!m_pEscortData)
            return;

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
        {
            if (HasEscortState(STATE_ESCORT_PAUSED))
                SetEscortPaused(false);
            return;
        }

        if (!HasEscortState(STATE_ESCORT_PAUSED))
            SetEscortPaused(true);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_escort_genericAI(Creature* pCreature)
{
    CreatureEscortData const* data = sScriptMgr.GetEscortData(pCreature->GetEntry());
    npc_escort_genericAI* pTempAI = nullptr;
    pTempAI = new npc_escort_genericAI(pCreature, data);
    return (CreatureAI*)pTempAI;
}

bool QuestAccept_npc_escort_genericAI(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (npc_escort_genericAI* pEscortAI = dynamic_cast<npc_escort_genericAI*>(pCreature->AI()))
        pEscortAI->OnQuestAccept(pPlayer, pQuest);
    return true;
}


#include "scriptPCH.h"
#include "../dungeons/blackwing_lair/blackwing_lair.h"

/* ScriptData
SDName: Boss_Razorgore
SD%Complete: 70%
SDComment:
Lack of support for Orb of Command
implemented that Razorgore is unattackable during phase 1 instead of the use of Orb of Command, more playable then before now.
SDCategory: Blackwing Lair
EndScriptData */

// Razorgore Phase 2 Script
#define SAY_EGGS_BROKEN1 -1469022
#define SAY_EGGS_BROKEN2 -1469023
#define SAY_EGGS_BROKEN3 -1469024
#define SAY_DEATH -1469025
#define SAY_AGGRO "Intruders have breached the Hatchery! Sound the alarm! Protect the eggs at all costs!"
// Razorgore The Untamed Spells
#define SPELL_CLEAVE 22540
#define SPELL_WARSTOMP 24375
#define SPELL_FIREBALLVOLLEY 22425
#define SPELL_CONFLAGRATION 23023
#define SPELL_PHASE_1 22663
// Grethok The Controller Spells
#define SPELL_GREATER_POLYMORPH 22274
#define SPELL_DOMINATE_MIND 14515
#define SPELL_ARCANE_MISSILES 22273 // Spell Doesn't Work 100%, should be three charges instead of one 
#define SPELL_SLOW 13747
// Creature Spawns
#define BLACKWING_LEGGIONAIRE 12416
#define DEATH_TALON_DRAGONSPAWN 12422
#define BLACKWING_MAGE 12420
// North
#define SPAWN_X1 -7540.8f
#define SPAWN_Y1 -1052.6f
#define SPAWN_Z1 408.490f
// South
#define SPAWN_X2 -7648.8f
#define SPAWN_Y2 -1053.8f
#define SPAWN_Z2 408.490f
// Eeast
#define SPAWN_X3 -7614.1f
#define SPAWN_Y3 -1103.6f
#define SPAWN_Z3 408.490f
// West
#define SPAWN_X4 -7578.1f
#define SPAWN_Y4 -1003.5f
#define SPAWN_Z4 408.490f
// Razorgore Spawn
#define RAZOR_SPAWN_X -7570.6f
#define RAZOR_SPAWN_Y -1090.0f
#define RAZOR_SPAWN_Z 413.559f


// Grethok The Controller Script
struct grethok_the_controllerAI : public ScriptedAI
{
    grethok_the_controllerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 Greater_Polymorph_Timer;
    uint32 Dominate_Mind_Timer;
    uint32 Arcane_Missiles_Timer;
    uint32 Slow_Timer;
    uint32 Razorgore_Spawn;

    void Reset() override
    {
        Greater_Polymorph_Timer = 3000;
        Dominate_Mind_Timer = 1000;
        Arcane_Missiles_Timer = 5000;
        Slow_Timer = 7000;
        Razorgore_Spawn = 1;
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->SetInCombatWithZone();

    }

    void UpdateAI(const uint32 diff) override
    {

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Greater Polymorph
        if (Greater_Polymorph_Timer < diff)
        {
            DoCastSpellIfCan(m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), SPELL_GREATER_POLYMORPH);
            Greater_Polymorph_Timer = 10000;
        }
        else Greater_Polymorph_Timer -= diff;

        // Dominate Mind
        if (Dominate_Mind_Timer < diff)
        {
            DoCastSpellIfCan(m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), SPELL_DOMINATE_MIND);
            Dominate_Mind_Timer = 15000;
        }
        else Dominate_Mind_Timer -= diff;

        // Arcane Missiles
        if (Arcane_Missiles_Timer < diff)
        {
            DoCastSpellIfCan(m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), SPELL_ARCANE_MISSILES);
            Arcane_Missiles_Timer = 3000;
        }
        else Arcane_Missiles_Timer -= diff;

        // Slow
        if (Slow_Timer < diff)
        {
            DoCastSpellIfCan(m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), SPELL_SLOW);
            Slow_Timer = 8000;
        }
        else Slow_Timer -= diff;


        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetZeroAI_boss_razorgore(Creature* pCreature)
{
    return new Zero_boss_razorgoreAI(pCreature);
}

CreatureAI* GetZeroAI_grethok_the_controller(Creature* pCreature)
{
    return new grethok_the_controllerAI(pCreature);
}

#ifndef DEF_NPC_J_EEVEE_AI
#define DEF_NPC_J_EEVEE_AI
#include "scriptPCH.h"

struct npc_j_eevee_dreadsteedAI : public ScriptedAI
{
    npc_j_eevee_dreadsteedAI(Creature* pCreature);
    void Reset() override;
    uint64 guidPlayer;
    uint32 waitTimer;
    uint8 currentPoint;
    bool waypointReached;

    void MovementInform(uint32 uiType, uint32 uiPointId) override;
    void UpdateAI(const uint32 uiDiff) override;

    void SetPlayerGuid(uint64 playerGuid);
    void ShoutFreedom();
};

struct npc_j_eevee_scholomanceAI : public ScriptedAI
{
    npc_j_eevee_scholomanceAI(Creature* pCreature);
    void Reset() override;

    uint64 guidPlayer;
    uint32 waitTimer;
    uint32 attackRepeatTimer;
    uint8 currentPoint;
    bool waypointReached;
    bool finished;

    void MovementInform(uint32 uiType, uint32 uiPointId) override;
    void UpdateAI(const uint32 uiDiff) override;
};

#endif


struct EventLocations
{
    float m_fX, m_fY, m_fZ, m_fO;
    int m_wait;
};

static EventLocations aJeeveeDreadsteedLocations[] =
{
    { -38.939999f, 812.849976f, -29.530002f, 4.890318f, 3500 }, //Jeevee spawn
    { -27.768442f, 812.457703f, -29.535814f, 6.258483f, 4000 }, //Jeevee first point
    { -45.293509f, 822.046747f, -29.535671f, 2.211563f, 3000 }, //Jeevee second point
    { -44.074763f, 802.921135f, -29.535734f, 4.357706f, 3000 }, //Jeevee third point
    { -38.939999f, 812.849976f, -29.530002f, 4.890318f, 4000 } //Jeevee last point
};
enum
{
    SPELL_J_EEVEE_SUMMONS_OBJECT    = 23140,
    SPELL_J_EEVEE_TELEPORT          = 7791,

    SHOUT_J_EEVEE_FREEDOM           = -1780196,
    SAY_J_EEVEE_DREADSTEED_1        = -1780197,
    SAY_J_EEVEE_DREADSTEED_2        = -1780198,
    SAY_J_EEVEE_DREADSTEED_3        = -1780199,
    SAY_J_EEVEE_DREADSTEED_4        = -1780200,

    SAY_J_EEVEE_SCHOLOMANCE_1       = -1900048,
    SAY_J_EEVEE_SCHOLOMANCE_2       = -1900049,
    SAY_J_EEVEE_SCHOLOMANCE_3       = -1900050,
    SAY_J_EEVEE_SCHOLOMANCE_4       = -1900051,

    QUEST_IMP_DELIVERY              = 7629
};


npc_j_eevee_dreadsteedAI::npc_j_eevee_dreadsteedAI(Creature* pCreature) : ScriptedAI(pCreature)
{
    m_creature->SetWalk(true);
    Reset();
}

void npc_j_eevee_dreadsteedAI::Reset()
{
    waitTimer = 3500;
    currentPoint = 0;
    waypointReached = true;
}

void npc_j_eevee_dreadsteedAI::MovementInform(uint32 uiType, uint32 uiPointId)
{
    if (uiType != POINT_MOTION_TYPE)
        return;
    switch (uiPointId)
    {
        case 1:
        case 2:
        case 3:
            m_creature->SetFacingTo(aJeeveeDreadsteedLocations[currentPoint].m_fO);
            waypointReached = true;
            m_creature->CastSpell(m_creature, SPELL_J_EEVEE_SUMMONS_OBJECT, false);
            break;
        case 4:
            m_creature->SetFacingTo(aJeeveeDreadsteedLocations[currentPoint].m_fO);
            waypointReached = true;
            if (Player* player = m_creature->GetMap()->GetPlayer(guidPlayer))
                DoScriptText(SAY_J_EEVEE_DREADSTEED_4, m_creature, player);

            DoCastSpellIfCan(m_creature, SPELL_J_EEVEE_TELEPORT, CF_TRIGGERED);
            break;
    }
}
void npc_j_eevee_dreadsteedAI::UpdateAI(const uint32 uiDiff)
{
    if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
    {
        if (waypointReached)
        {
            if (waitTimer < uiDiff)
            {
                if (currentPoint < 4)
                {
                    switch (currentPoint)
                    {
                        case 0:
                            DoScriptText(SAY_J_EEVEE_DREADSTEED_1, m_creature);
                            break;
                        case 1:
                            DoScriptText(SAY_J_EEVEE_DREADSTEED_2, m_creature);
                            break;
                        case 2:
                            DoScriptText(SAY_J_EEVEE_DREADSTEED_3, m_creature);
                            break;
                    }
                    currentPoint++;
                    m_creature->GetMotionMaster()->MovePoint(currentPoint, aJeeveeDreadsteedLocations[currentPoint].m_fX, aJeeveeDreadsteedLocations[currentPoint].m_fY, aJeeveeDreadsteedLocations[currentPoint].m_fZ, true);
                    waitTimer = aJeeveeDreadsteedLocations[currentPoint].m_wait;
                }
                else
                    m_creature->DisappearAndDie();
                waypointReached = false;
            }
            else
                waitTimer -= uiDiff;
        }
        return;
    }
    DoMeleeAttackIfReady();
}
void npc_j_eevee_dreadsteedAI::SetPlayerGuid(uint64 playerGuid)
{
    guidPlayer = playerGuid;
}
void npc_j_eevee_dreadsteedAI::ShoutFreedom()
{
    DoScriptText(SHOUT_J_EEVEE_FREEDOM, m_creature);
}

static EventLocations aJeeveeScholomanceLocations[] =
{
    { 38.706051f, 156.989319f, 83.545631f, 1.585528f, 2000 },       // 1. spawn, Text 1
    { 38.123325f, 159.745956f, 83.545631f, 1.587492f, 300 },        // 2. Move
    { 36.478260f, 160.530975f, 83.545631f, 3.179874f, 4000 },       // 3. Move, EMOTE_ONESHOT_ATTACK once point reached
    { 38.123325f, 159.745956f, 83.545631f, 5.250862f, 100 },        // 4. Move, text 2 at start of movement
    { 41.213757f, 155.202774f, 83.545631f, 0.098650f, 50 },         // 5. Move
    { 45.890804f, 155.115601f, 83.545631f, 0.018146f, 50 },         // 6. Move
    { 46.639896f, 160.362015f, 83.545631f, 2.549089f, 50 },         // 7. Move
    { 44.227440f, 160.631088f, 83.545631f, 2.549089f, 4000 },       // 8. Move, EMOTE_ONESHOT_ATTACK once point reached (attack twice?)
    { 46.639896f, 160.362015f, 83.545631f, 5.250862f, 300 },        // 9. Move, run. text 3 at start of movement
    { 46.425823f, 154.547577f, 83.645631f, 3.108989f, 50 },         // 10. Move
    { 34.415833f, 154.561859f, 83.645631f, 3.140403f, 50 },         // 11. Move, run
    { 28.838001f, 160.411469f, 83.645631f, 2.378568f, 100 },        // 12. Move, run
    { 33.201927f, 160.234833f, 83.645624f, 6.242730f, 4000 },       // 13. Move WALK again, emote attack
    { 33.201927f, 160.234833f, 83.645624f, 6.242730f, 2000 },       // 14. Finished, speak Text 4
};

npc_j_eevee_scholomanceAI::npc_j_eevee_scholomanceAI(Creature* pCreature) : ScriptedAI(pCreature)
{
    m_creature->SetWalk(true);

    if (m_creature->IsTemporarySummon())
    {
        guidPlayer = ((TemporarySummon*)m_creature)->GetSummonerGuid();

        if (Player* player = m_creature->GetMap()->GetPlayer(guidPlayer))
            player->HandleEmote(EMOTE_ONESHOT_KNEEL);
    }

    waitTimer = 4000;
    // Repeat attack emotes at some positions
    attackRepeatTimer = 1000;
    currentPoint = 0;
    waypointReached = true;
    finished = false;

    Reset();
}

void npc_j_eevee_scholomanceAI::Reset()
{
    // do nothing, continue from where we left off
}

void npc_j_eevee_scholomanceAI::MovementInform(uint32 uiType, uint32 uiPointId)
{
    if (uiType != POINT_MOTION_TYPE)
        return;

    m_creature->SetFacingTo(aJeeveeScholomanceLocations[currentPoint].m_fO);
    waypointReached = true;
    switch (uiPointId)
    {
        case 2:
            m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED);
            attackRepeatTimer = 1000;
            break;
        case 7:
            m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED);
            attackRepeatTimer = 1000;
            break;
        case 12:
            m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED);
            attackRepeatTimer = 1000;
            break;
        case 13:
            DoCastSpellIfCan(m_creature, SPELL_J_EEVEE_TELEPORT, CF_TRIGGERED);
            finished = true;
            break;
    }
}

void npc_j_eevee_scholomanceAI::UpdateAI(const uint32 uiDiff)
{
    if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
    {
        if (waypointReached || finished)
        {
            if (waitTimer < uiDiff)
            {
                if (currentPoint < 13)
                {
                    switch (currentPoint)
                    {
                        case 0:
                            DoScriptText(SAY_J_EEVEE_SCHOLOMANCE_1, m_creature);
                            break;
                        case 3:
                            DoScriptText(SAY_J_EEVEE_SCHOLOMANCE_2, m_creature);
                            break;
                        case 8:
                            DoScriptText(SAY_J_EEVEE_SCHOLOMANCE_3, m_creature);
                            m_creature->SetWalk(false);
                            break;
                        case 11:
                            m_creature->SetWalk(true);
                            break;
                        case 12:
                            // final script text
                            DoScriptText(SAY_J_EEVEE_SCHOLOMANCE_4, m_creature);

                            if (Player* player = m_creature->GetMap()->GetPlayer(guidPlayer))
                                player->GroupEventHappens(QUEST_IMP_DELIVERY, m_creature);

                            break;
                    }

                    currentPoint++;
                    m_creature->GetMotionMaster()->MovePoint(currentPoint, aJeeveeScholomanceLocations[currentPoint].m_fX, aJeeveeScholomanceLocations[currentPoint].m_fY, aJeeveeScholomanceLocations[currentPoint].m_fZ, true);
                    waitTimer = aJeeveeScholomanceLocations[currentPoint].m_wait;
                }
                else
                {
                    m_creature->DisappearAndDie();
                }

                waypointReached = false;
            }
            else
            {
                waitTimer -= uiDiff;

                if (currentPoint == 2 || currentPoint == 7 || currentPoint == 12)
                {
                    if (attackRepeatTimer < uiDiff)
                    {
                        m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED);

                        attackRepeatTimer = 1000;
                    }
                    else
                        attackRepeatTimer -= uiDiff;
                }
            }
        }
        return;
    }
    DoMeleeAttackIfReady();
}

CreatureAI* GetAI_npc_j_eevee(Creature* pCreature)
{
    if (pCreature->GetMapId() == 429) //Map 429 Zone 2557. Dire Maul.
        return new npc_j_eevee_dreadsteedAI(pCreature);
    else if (pCreature->GetMapId() == 289) // Map 289, Zone 2057. Scholomance
        return new npc_j_eevee_scholomanceAI(pCreature);

    return NULL;
}

struct ItemCountPair
{
    uint32 itemId = 0;
    uint32 count = 0;
};

struct SwappableItemReward
{
    ItemCountPair currentItem;
    ItemCountPair potentialItem;
};

static std::map<uint32 /*player low guid*/, std::vector<SwappableItemReward>> s_questRewardSwapData;

#define GOSSIP_SWAP_QUEST_ITEMS 60939

bool GossipHello_QuestRewardSwap(Player* player, Creature* creature)
{
    s_questRewardSwapData.erase(player->GetGUIDLow());

    for (auto const& itrQuest : sObjectMgr.GetQuestTemplates())
    {
        if (!itrQuest.second->HasSpecialFlag(QUEST_SPECIAL_FLAG_CAN_SWAP_REWARDS))
            continue;

        if (!player->GetQuestRewardStatus(itrQuest.first))
            continue;

        ItemCountPair currentItem;
        for (uint32 i = 0; i < QUEST_REWARD_CHOICES_COUNT; ++i)
        {
            if (itrQuest.second->RewChoiceItemId[i] && itrQuest.second->RewChoiceItemCount[i] &&
                player->HasItemCount(itrQuest.second->RewChoiceItemId[i], itrQuest.second->RewChoiceItemCount[i]))
            {
                currentItem.itemId = itrQuest.second->RewChoiceItemId[i];
                currentItem.count = itrQuest.second->RewChoiceItemCount[i];
                break;
            }
        }

        if (!currentItem.itemId || !currentItem.count)
            continue;

        for (uint32 i = 0; i < QUEST_REWARD_CHOICES_COUNT; ++i)
        {
            if (itrQuest.second->RewChoiceItemId[i] != currentItem.itemId &&
                itrQuest.second->RewChoiceItemId[i] && itrQuest.second->RewChoiceItemCount[i])
            {
                SwappableItemReward reward;
                reward.currentItem = currentItem;
                reward.potentialItem.itemId = itrQuest.second->RewChoiceItemId[i];
                reward.potentialItem.count = itrQuest.second->RewChoiceItemCount[i];
                s_questRewardSwapData[player->GetGUIDLow()].push_back(reward);

                std::string txt = sObjectMgr.GetItemPrototype(reward.currentItem.itemId)->Name1 + " to " + sObjectMgr.GetItemPrototype(reward.potentialItem.itemId)->Name1;
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_2, txt.c_str(), GOSSIP_SENDER_MAIN, s_questRewardSwapData[player->GetGUIDLow()].size());
            }
        }
    }

    player->SEND_GOSSIP_MENU(GOSSIP_SWAP_QUEST_ITEMS, creature->GetGUID());
    return true;
}

bool GossipSelect_QuestRewardSwap(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (!uiAction)
        return false;

    std::vector<SwappableItemReward> const& rewards = s_questRewardSwapData[pPlayer->GetGUIDLow()];

    uint32 option = uiAction - 1;
    if (rewards.size() <= option)
        return false;

    if (pPlayer->HasItemCount(rewards[option].currentItem.itemId, rewards[option].currentItem.count))
    {
        if (Item* pItem = pPlayer->StoreNewItemInInventorySlot(rewards[option].potentialItem.itemId, rewards[option].potentialItem.count))
        {
            pPlayer->SendNewItem(pItem, rewards[option].potentialItem.count, true, false);
            pPlayer->DestroyItemCount(rewards[option].currentItem.itemId, rewards[option].currentItem.itemId, true);
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_duke_dreadmooreAI : public ScriptedAI
{
    npc_duke_dreadmooreAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    void Reset() override
    {
        m_creature->SetHealthPercent(20.1f);
    }

    void EnterCombat(Unit* pVictim) override
    {
        DoScriptText(30237, m_creature);
    }

    void JustDied(Unit* pKiller) override
    {
        DoScriptText(30238, m_creature);
    }
};

CreatureAI* GetAI_npc_duke_dreadmoore(Creature* pCreature)
{
    return new npc_duke_dreadmooreAI(pCreature);
}

void AddSC_random_scripts_2()
{
	Script* newscript;	

    newscript = new Script;
    newscript->Name = "npc_duke_dreadmoore";
    newscript->GetAI = &GetAI_npc_duke_dreadmoore;
    newscript->RegisterSelf();
	
    newscript = new Script;
    newscript->Name = "npc_j_eevee";
    newscript->GetAI = &GetAI_npc_j_eevee;
    newscript->RegisterSelf();
	
	newscript = new Script;
    newscript->Name = "zero_boss_razorgore";
    newscript->GetAI = &GetZeroAI_boss_razorgore;
    newscript->RegisterSelf(false);

    newscript = new Script;
    newscript->Name = "grethok_the_controller";
    newscript->GetAI = &GetZeroAI_grethok_the_controller;
    newscript->RegisterSelf(false);
	
	newscript = new Script;
    newscript->Name = "TotemGlebe";
    newscript->GetAI = &GetAI_TotemGlebe;
    newscript->RegisterSelf();
	
    newscript = new Script;
    newscript->Name = "zebrian_the_mad";
    newscript->GetAI = &GetAI_zebrian_the_mad;
    newscript->RegisterSelf();
	
	newscript = new Script;
    newscript->Name = "spell_dummy_npc";
    newscript->pEffectDummyCreature = &EffectDummyCreature_spell_dummy_npc;
    newscript->RegisterSelf();
	
	newscript = new Script;
    newscript->Name = "npc_escort";
    newscript->GetAI = &GetAI_npc_escort_genericAI;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_escort_genericAI;
    newscript->RegisterSelf(false);

    newscript = new Script;
    newscript->Name = "npc_quest_reward_swap";
    newscript->pGossipHello = &GossipHello_QuestRewardSwap;
    newscript->pGossipSelect = &GossipSelect_QuestRewardSwap;
    newscript->RegisterSelf();

}
