/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "scriptPCH.h"
#include "naxxramas.h"

enum
{
    SAY_SUMMON_MINIONS                  = -1533105,         //start of phase 1

    EMOTE_PHASE2                        = -1533135,         // %s strikes!, cant find use of it in vanilla
    SAY_AGGRO1                          = -1533094,         // pray for mercy
    SAY_AGGRO2                          = -1533095,         // Scream your dying breath!
    SAY_AGGRO3                          = -1533096,         // The end is upon you!

    SAY_SLAY1                           = -1533097,
    SAY_SLAY2                           = -1533098,

    SAY_DEATH                           = -1533099,

    SAY_CHAIN1                          = -1533100,         // Your soul, is bound to me now!
    SAY_CHAIN2                          = -1533101,         // there will be  no escape
    SAY_FROST_BLAST                     = -1533102,         // I will freeze the blood in your veins!

    SAY_REQUEST_AID                     = -1533103,         // Master! I require aid! 
    SAY_ANSWER_REQUEST                  = -1533104,         // Very well... warriors of the frozen wastes, rise up! I command you to fight, kill, and die for your master. Let none survive...

    SAY_SPECIAL1_MANA_DET               = -1533106,         // Your petty magics are no challenge to the might of the Scourge! 
    SAY_SPECIAL3_MANA_DET               = -1533107,         // Enough! I grow tired of these distractions! 
    SAY_SPECIAL2_DISPELL                = -1533108,         // Fools, you have spread your powers too thin. Be free, my minions!
        
    EMOTE_GUARDIAN                      = -1533134,         // at each guardian summon, cant see that it's used in vanilla

    SPELL_VISUAL_CHANNEL                = 29423,            // channeled throughout phase one

    //spells to be casted
    SPELL_FROST_BOLT                    = 28478,
    SPELL_FROST_BOLT_NOVA               = 28479,

    SPELL_CHAINS_OF_KELTHUZAD           = 28408,           
    SPELL_CHAINS_OF_KELTHUZAD_SCALE     = 28409,
    SPELL_CHAINS_OF_KELTHUZAD_EFFECTS   = 28410,

    SPELL_MANA_DETONATION               = 27819,
    SPELL_SHADOW_FISSURE                = 27810,
    SPELL_VOID_BLAST                    = 27812,
    SPELL_FROST_BLAST                   = 27808,
    SPELL_BERSERK                       = 28498,

    SPELL_DISPELL_SHACKLES              = 28471,            // not used, doing it "manually"

    SPELL_SUMMON_PLAYER                 = 25104,
};

enum AddSpells
{
    // guardian of icecrown
    SPELL_BLOOD_TAP = 28470, 

    // Soul Weaver
    SPELL_WAIL_SOULS_AUR = 28460,

    // Warrior
    SPELL_DARK_BLAST_AUR  = 28458,
    SPELL_DARK_BLAST_TRIG = 28457,

    // Abomination
    // SPELL_MORTAL_WOUND = 28467, // does 6k damage on plate due to abom damage being really high
    // deals 55 damage (+-25) on all classic videos
    // https://youtu.be/pV-56SakQnA?t=302
    SPELL_MORTAL_WOUND = 25646,
};

enum Events
{
    // phase one
    EVENT_SKELETON = 1,
    EVENT_SOUL_WEAVER,
    EVENT_ABOMINATION,
    EVENT_PHASE_TWO_INTRO,
    EVENT_PHASE_TWO_START,
    EVENT_DESPAWN_PORTAL,
    EVENT_PUT_IN_COMBAT,

    // phase two
    EVENT_FROSTBOLT_VOLLEY,
    EVENT_FROST_BLAST,
    EVENT_FROSTBOLT,
    EVENT_SHADOW_FISSURE,
    EVENT_DETONATE_MANA,
    EVENT_CHAINS,

    // phase three
    EVENT_REQUEST_REPLY,
    EVENT_SUMMON_GUARDIAN,
};

// the shiny thing in center that despawns after pull
static constexpr float pullPortal[3] = { 3716.379883f, -5106.779785f, 132.9f };
static constexpr float ROOM_RADIUS = 82.0f;
static constexpr float ROOM_FLOOR_Z = 142.0f;

// Center position of each alcove
static constexpr uint32 NUM_ALCOVES = 7;
static constexpr float alcoves[7][2] = 
{
    { 3768.40f, -5072.00f},
    { 3729.30f, -5044.10f},
    { 3683.00f, -5054.05f},
    { 3654.15f, -5093.48f},
    { 3664.55f, -5140.50f},
    { 3704.00f, -5170.00f},
    { 3751.95f, -5158.90f} 
};

// z-coordinate in the alcoves
static constexpr float alcoveZ = 143.5f; 

// number of soulweavers total, one in each alcove
static constexpr uint32 NUM_SOULWEAVER = 7;
// each soulweaver position
static constexpr float soulweaverPos[NUM_SOULWEAVER][2] =
{
    {3754.95f, -5164.93f},
    {3701.89f, -5176.95f},
    {3656.83f, -5145.56f},
    {3647.53f, -5093.56f},
    {3678.48f, -5050.46f},
    {3730.87f, -5035.93f},
    {3774.78f, -5067.68f},
};
// number of abominations, 3 in each alcove
static constexpr uint32 NUM_ABOM = 21;
// each abomination position
static constexpr float abomPos[NUM_ABOM][2] =
{
    {3740.70f, -5160.89f},
    {3756.42f, -5151.09f},
    {3748.99f, -5155.72f},

    {3694.11f, -5163.96f},
    {3713.90f, -5168.14f},
    {3704.76f, -5166.21f},

    {3661.65f, -5132.06f},
    {3672.37f, -5147.84f},
    {3666.83f, -5139.67f},

    {3658.81f, -5086.46f},
    {3654.80f, -5104.04f},
    {3656.76f, -5095.47f},

    {3691.83f, -5052.45f},
    {3675.15f, -5062.94f},
    {3683.48f, -5057.71f},

    {3738.15f, -5050.12f},
    {3717.76f, -5046.03f},
    {3728.48f, -5047.99f},

    {3772.53f, -5083.21f},
    {3760.03f, -5064.65f},
    {3765.85f, -5073.22f}
};

// total number of soulweaver and abomination waves 
static constexpr uint32 NUM_UNDEAD_SPAWNS = 14;

// milliseconds since pull for each abomination spawn
static constexpr uint32 abominationSpawnMs[NUM_UNDEAD_SPAWNS] =
{
    44000,
    72000,
    100000,
    130000,
    153000,
    176000,
    193000,
    212000,
    232000,
    252000,
    268000,
    285000,
    300000,
    318000,
};

// milliseconds since pull for each soulweaver spawn
static constexpr uint32 soulweaverSpawnMs[NUM_UNDEAD_SPAWNS] =
{
    14000,
    44000,
    68000,
    97000,
    130000,
    155000,
    170000,
    190000,
    213000,
    235000,
    256000,
    271000,
    285000,
    300000,
};

static constexpr uint32 NUM_WINDOW_PORTALS = 4;
static constexpr float windowPortals[NUM_WINDOW_PORTALS][2] =
{
    {3760.57f, -5173.93f},
    {3700.14f, -5185.68f},
    {3732.62f, -5027.67f},
    {3783.36f, -5062.35f}
};

//todo: no idea what the pull range should be
static constexpr float ALCOVE_ADD_PULL_RADIUS = 30.0f;

struct kt_p1AddAI : public ScriptedAI
{
    kt_p1AddAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetNoSearchAssistance(true);
        hasAggroed = false;
    }
    bool hasAggroed;
    void Reset() override = 0;
    void ActualAttack(Unit* target)
    {
        m_creature->AddThreat(target, 300.0f);
        ScriptedAI::AttackStart(target);
        hasAggroed = true;
    }
    void Aggro(Unit* pWho) override
    {
        // want to prevent the creature from aggroing unless we explicitly do it through base class
    }
    void AttackStart(Unit* pWho) override
    {
        if (hasAggroed)
            ScriptedAI::AttackStart(pWho);
        // want to prevent the creature from aggroing unless we explicitly do it through this class
        else if(m_creature->GetDistance2d(pWho) < ALCOVE_ADD_PULL_RADIUS)
        {
            ActualAttack(pWho);
        }
    }
    void MoveInLineOfSight(Unit* pWho) override
    {
        if (hasAggroed)
        {
            ScriptedAI::MoveInLineOfSight(pWho);
        }
        else if (pWho->GetTypeId() == TYPEID_PLAYER
            && !m_creature->IsInCombat()
            && m_creature->IsWithinDistInMap(pWho, ALCOVE_ADD_PULL_RADIUS)
            && m_creature->IsWithinLOSInMap(pWho)
            && !pWho->HasAuraType(SPELL_AURA_FEIGN_DEATH)
            && !pWho->HasAuraType(SPELL_AURA_MOD_UNATTACKABLE))
        {
            ScriptedAI::MoveInLineOfSight(pWho);
        }
    }

    void SpellHit(WorldObject* pCaster, const SpellEntry*) override
    {
        Unit* pUnitCaster = ToUnit(pCaster);
        if (!pUnitCaster)
            return;

        if(!hasAggroed)
            ActualAttack(pUnitCaster);
    }
};

struct boss_kelthuzadAI : public ScriptedAI
{
    boss_kelthuzadAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (instance_naxxramas*)pCreature->GetInstanceData();
        Reset();
        pCreature->SetCreatureSummonLimit(240);
    }

    instance_naxxramas* m_pInstance;

    std::vector<std::pair<ObjectGuid,int>> guardians;
    std::vector<ObjectGuid> p1_adds;
    
    int p1Timer;
    bool hasPutInCombat;
    bool p3Started;
    EventMap events;
    ObjectGuid pullPortalGuid;
    uint32 numSummonedGuardians;
    uint32 nextBanshee, nextAbom;
    uint32 numSkeletons, numAboms, numBanshees;
    uint32 enrageTimer;
    uint32 timeSinceLastFrostBlast;
    uint32 timeSinceLastShadowFissure;
    uint32 timeSinceLastAEFrostBolt;
    uint32 killSayTimer;

    void Reset() override
    {
        m_creature->SetHealth(m_creature->GetMaxHealth());
        events.Reset();
        // no info on enragetimer in vanilla, but wotlk has a 19min enrage and uses a spell from 1.11 dbc
        enrageTimer = 1000 * 60 * 19; 
        numSkeletons = 0;
        numAboms = 0;
        numBanshees = 0;
        nextBanshee = 30000;
        nextAbom = 30000;
        p3Started = false;
        numSummonedGuardians = 0;
        timeSinceLastFrostBlast = 0;
        timeSinceLastShadowFissure = 0;
        timeSinceLastAEFrostBolt = 0;
        killSayTimer = 0;
        hasPutInCombat = false;

        m_creature->RemoveAurasDueToSpell(SPELL_VISUAL_CHANNEL);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER | UNIT_FLAG_NOT_SELECTABLE);

        EvadeAllGuardians();

        if (!pullPortalGuid)
        {
            if (GameObject* pGO = m_creature->SummonGameObject(GO_HUB_PORTAL, pullPortal[0], pullPortal[1], pullPortal[2], 0))
            {
                pGO->SetObjectScale(2);
                pullPortalGuid = pGO->GetObjectGuid();
                // the add remove seems to be needed to  make the gobj update scale
                if (m_pInstance)
                {
                    m_pInstance->GetMap()->Remove(pGO, false);
                    m_pInstance->GetMap()->Add(pGO);
                }
            }
        }
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (!killSayTimer)
        {
            DoScriptText(urand(0, 1) ? SAY_SLAY1 : SAY_SLAY2, m_creature);
            killSayTimer = 5000;
        }

        // Add a stack of blood tap to guardians whenever a player dies.
        // current blood tap does 200% weapon damage, resulting in damage from 2500 and up
        // on classic the tap does minimal damage
        // https://vanilla.warcraftlogs.com/reports/cJ8XpmBW4MzxK6Aj#fight=52&type=damage&hostility=1&target=208.2&view=events
        // replacing cast spell with add aura, so they still get the 15% increase in damage and size
        std::list<Creature*> guardians;
        GetCreatureListWithEntryInGrid(guardians, m_creature, NPC_GUARDIAN, 130.0f);
        for (Creature* pC : guardians)
            pC->AddAura(SPELL_BLOOD_TAP);
    }

    void JustDied(Unit* pKiller) override
    {
        DoScriptText(SAY_DEATH, m_creature);
        if (m_pInstance)
            m_pInstance->SetData(TYPE_KELTHUZAD, DONE);
        
        EvadeAllGuardians();

        std::list<GameObject*> targets;
        m_creature->GetGameObjectListWithEntryInGrid(targets, 180322, 100.0f);
        for (auto const& pGo : targets)
            pGo->AddObjectToRemoveList();
    }

    void MoveInLineOfSight(Unit* /*pWho*/) override {}

    void AttackStart(Unit* who) override
    {
        if (m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER))
            return;

        ScriptedAI::AttackStart(who);
    }

    void Aggro(Unit* pWho) override
    {
        if (m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER))
            return;

        m_creature->SetInCombatWithZone();
    }

    bool CheckForEnemyPlayers()
    {
        std::list<Player*> players;
        me->GetAlivePlayerListInRange(me, players, 75.0f);
        auto iterator = std::remove_if(players.begin(), players.end(),
            [](Player* player)
            { return player->IsGameMaster(); });
        players.erase(iterator, players.end());

        for (auto const& itr : players)
        {
            m_creature->AddThreat(itr);
            m_creature->SetInCombatWith(itr);
            itr->SetInCombatWith(m_creature);
        }

        return !players.empty();
    }

    void JustReachedHome() override
    {
        if (m_pInstance)
        {
            m_pInstance->SetData(TYPE_KELTHUZAD, NOT_STARTED);
            m_pInstance->ToggleKelThuzadWindows(false);
            m_pInstance->ToggleKelThuzadWindows(false);
        }
        DespawnAllIntroCreatures();
        EvadeAllGuardians();
    }

    void EvadeAllGuardians()
    {
        for (const auto& guardian : guardians)
        {
            if (Creature* pCreature = m_pInstance->GetCreature(guardian.first))
            {
                pCreature->AI()->EnterEvadeMode();
            }
        }
    }

    void DespawnAllIntroCreatures()
    {
        for (const auto& guid : p1_adds)
        {
            if (Creature* pSoldier = m_pInstance->instance->GetCreature(guid))
                ((TemporarySummon*)pSoldier)->UnSummon();
        }
        p1_adds.clear();
    }
  
    void StartEncounter()
    {
        m_pInstance->ToggleKelThuzadWindows(false);
        m_creature->SetHealth(m_creature->GetMaxHealth());
        // on pull there are in each alcove:
        // 3 aboms
        // 1 banshee
        // around 10 skeletons?

        // during p1, 14 aboms, 14 banshees and 120 skeletons should attack, gradually faster
        m_pInstance->SetData(TYPE_KELTHUZAD, IN_PROGRESS);
        DoScriptText(SAY_SUMMON_MINIONS, m_creature);
        DoCastAOE(SPELL_VISUAL_CHANNEL);


        events.ScheduleEvent(EVENT_DESPAWN_PORTAL,  Seconds(7));
        events.ScheduleEvent(EVENT_PUT_IN_COMBAT,   Seconds(20));
        events.ScheduleEvent(EVENT_PHASE_TWO_INTRO, Minutes(5) + Seconds(20));

        p1Timer = 320000;
        events.ScheduleEvent(EVENT_SKELETON, Seconds(20));
        //events.ScheduleEvent(EVENT_SOUL_WEAVER, Seconds(35));
        //events.ScheduleEvent(EVENT_ABOMINATION, Seconds(43));
        for (uint32 i : abominationSpawnMs)
            events.ScheduleEvent(EVENT_ABOMINATION, i);
        for (uint32 i : soulweaverSpawnMs)
            events.ScheduleEvent(EVENT_SOUL_WEAVER, i);

        auto const& pList = m_creature->GetMap()->GetPlayers();
        for (auto const& itr : pList)
        {
            if (Player* pPlayer = itr.getSource())
            {
                if (pPlayer->IsAlive() && !pPlayer->IsGameMaster() &&
                    pPlayer->GetDistance3dToCenter(pullPortal[0], pullPortal[1], ROOM_FLOOR_Z) > ROOM_RADIUS)
                {
                    pPlayer->NearTeleportTo(pullPortal[0], pullPortal[1], ROOM_FLOOR_Z, pPlayer->GetOrientation());
                }
            }
        }

        m_pInstance->DoUseDoorOrButton(pullPortalGuid);

        for (const auto& alcove : alcoves)
        {
            for (int j = 0; j < 10; j++)
            {
                double angle = rand_norm() * 2.0 * M_PI;
                double relDistance = rand_norm() + rand_norm();
                if (relDistance > 1)
                    relDistance = 1 - relDistance;
                float const x = alcove[0];
                float const y = alcove[1];
                const float radius = 14.0f;
                float thisX = x + std::sin(angle)*relDistance*radius;
                float thisY = y + std::cos(angle)*relDistance*radius;
                if (Creature* pCreature = m_creature->SummonCreature(NPC_SOLDIER_FROZEN, thisX, thisY, alcoveZ, frand(0, M_PI_F * 2),
                    TEMPSUMMON_MANUAL_DESPAWN))
                {
                    p1_adds.push_back(pCreature->GetObjectGuid());
                    pCreature->SetHomePosition(x, y, alcoveZ, m_creature->GetOrientation());
                    pCreature->SetWanderDistance(radius);
                }
            }
        }
        for (const auto& position : abomPos)
        {
            if (Creature* pCreature = m_creature->SummonCreature(NPC_UNSTOPPABLE_ABOM, position[0], position[1], alcoveZ, frand(0, M_PI_F * 2),
                TEMPSUMMON_MANUAL_DESPAWN))
            {
                p1_adds.push_back(pCreature->GetObjectGuid());
                pCreature->SetWanderDistance(5.0f);
            }

        }
        for (const auto& position : soulweaverPos)
        {
            if (Creature* pCreature = m_creature->SummonCreature(NPC_SOUL_WEAVER, position[0], position[1], alcoveZ, frand(0, M_PI_F * 2),
                TEMPSUMMON_MANUAL_DESPAWN))
            {
                p1_adds.push_back(pCreature->GetObjectGuid());
                pCreature->SetWanderDistance(5.0f);
            }
        }
    }

    bool SpawnAndSendP1Creature(uint32 type)
    {
        const float* spawnLoc = alcoves[urand(0, NUM_ALCOVES - 1)];
        if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
        {
            float spawnAng = 3.14f + pTarget->GetAngle(spawnLoc[0], spawnLoc[1]);
            if (Creature* pAdd = m_creature->SummonCreature(type, spawnLoc[0], spawnLoc[1], alcoveZ, spawnAng, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 1000))
            {
                pAdd->SetInCombatWithZone();
                ((kt_p1AddAI*)pAdd->AI())->ActualAttack(pTarget);
                return true;
            }
        }
        return false;
    }

    void UpdateP1(uint32 diff)
    {
        if (m_pInstance->GetData(TYPE_KELTHUZAD) != IN_PROGRESS)
            return;
        
        p1Timer -= diff;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_DESPAWN_PORTAL:
                if (GameObject* pGO = m_pInstance->GetGameObject(pullPortalGuid))
                {
                    pullPortalGuid = 0;
                    pGO->Delete();
                }
                break;
            case EVENT_PUT_IN_COMBAT:
                m_creature->SetInCombatState();
                m_creature->SetInCombatWithZone();
                hasPutInCombat = true;
                break;
            case EVENT_SKELETON:
            {
                if (numSkeletons < 120)
                {
                    if (SpawnAndSendP1Creature(NPC_SOLDIER_FROZEN))
                    {
                        uint32 repeat_next = std::max(uint32(3750 - 25 * numSkeletons), uint32(2000));
                        events.Repeat(repeat_next);
                        ++numSkeletons;
                        //sLog.outBasic("[%d] Spawn SKEL #%d, next in %dms", p1Timer, numSkeletons, repeat_next);
                    }
                    else
                        events.Repeat(100);
                }
                break;
            }
            case EVENT_ABOMINATION:
            {
                SpawnAndSendP1Creature(NPC_UNSTOPPABLE_ABOM);
                ++numAboms;
                //sLog.outBasic("[%d] Spawn ABOM #%d", p1Timer, numAboms);
                break;
            }
            case EVENT_SOUL_WEAVER:
            {
                SpawnAndSendP1Creature(NPC_SOUL_WEAVER);
                ++numBanshees;
                //sLog.outBasic("[%d] Spawn SOUL #%d", p1Timer, numBanshees);
                break;
            }
            case EVENT_PHASE_TWO_INTRO:
            {
                // ToDo: slightly hard to figure the exact delay between this event (the yell and despawn of adds)
                // until he engages. Most vanilla timers say 20 seconds, but he always engages earlier than that.
                // Seen it at around 10 seconds in a german video (https://www.youtube.com/watch?v=QafmVXupeHc),
                // and as late as ~17-18 sec in another one (https://www.youtube.com/watch?v=6RpqjIFbQYw https://www.youtube.com/watch?v=wSQtlvVebm0)
                events.Reset();
                events.ScheduleEvent(EVENT_PHASE_TWO_START, Seconds(15));
                if (numBanshees < 14)
                {
                    SpawnAndSendP1Creature(NPC_SOUL_WEAVER);
                    sLog.outBasic("(post)[%d] Spawn bansh #%d, next in %dms", p1Timer, ++numBanshees, nextBanshee);
                }
                if (numAboms < 14)
                {
                    SpawnAndSendP1Creature(NPC_UNSTOPPABLE_ABOM);
                    sLog.outBasic("(post)[%d] Spawn abom #%d, next in %dms", p1Timer, ++numAboms, nextBanshee);
                }
                if (numSkeletons < 120)
                {
                    SpawnAndSendP1Creature(NPC_SOLDIER_FROZEN);
                    sLog.outBasic("(post)[%d] Spawn skele #%d, next in %dms", p1Timer, ++numSkeletons, nextBanshee);
                }

                DoScriptText(urand(SAY_AGGRO3, SAY_AGGRO1), m_creature);
                m_creature->RemoveAurasDueToSpell(SPELL_VISUAL_CHANNEL);
                DespawnAllIntroCreatures();
                break;
            }
            case EVENT_PHASE_TWO_START:
                // engage!
                events.Reset();
                events.ScheduleEvent(EVENT_FROSTBOLT,        Seconds(10));
                events.ScheduleEvent(EVENT_SHADOW_FISSURE,   Seconds(14));
                events.ScheduleEvent(EVENT_DETONATE_MANA,    Seconds(20));
                events.ScheduleEvent(EVENT_FROSTBOLT_VOLLEY, Seconds(30));
                events.ScheduleEvent(EVENT_FROST_BLAST,      Seconds(50));
                events.ScheduleEvent(EVENT_CHAINS,           Seconds(60));
                m_creature->RemoveAurasDueToSpell(SPELL_VISUAL_CHANNEL);
                m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER | UNIT_FLAG_NOT_SELECTABLE);
                m_creature->InterruptNonMeleeSpells(true);
                
                DoResetThreat();
                m_creature->SetInCombatWithZone();
                if (Unit* pUnit = m_creature->SelectAttackingTarget(ATTACKING_TARGET_NEAREST, 0))
                    AttackStart(pUnit);

                break;
            }
        }
    }

    void DoChains()
    {
        if (DoCastSpellIfCan(m_creature, SPELL_CHAINS_OF_KELTHUZAD) != CAST_OK)
        {
            events.Repeat(Seconds(2));
            return;
        }
        DoResetThreat();
        DoScriptText(urand(0, 1) ? SAY_CHAIN1 : SAY_CHAIN2, m_creature);
        // Wowwiki the useless has this on 60sec cd,
        // but sampling a random vanilla video, the shortest cd was 60sec, with one as high as 142sec.

        //1608240612219	1608240612.2190	Thu Dec 17 23:30:12 UTC 2020	Kel'Thuzad	Chains of Kel'Thuzad 0
        //1608240687469	1608240687.4690	Thu Dec 17 23:31:27 UTC 2020	Kel'Thuzad	Chains of Kel'Thuzad 75
        //1608240766469	1608240766.4690	Thu Dec 17 23:32:46 UTC 2020	Kel'Thuzad	Chains of Kel'Thuzad 79

        events.Repeat(Seconds(urand(60, 90)));
    }
    void UpdateP2P3(uint32 diff)
    {
        timeSinceLastFrostBlast += diff;
        timeSinceLastShadowFissure += diff;
        timeSinceLastAEFrostBolt += diff;

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->GetHealthPercent() < 40.0f && !p3Started)
        {
            DoScriptText(SAY_REQUEST_AID, m_creature);
            events.ScheduleEvent(EVENT_REQUEST_REPLY, Seconds(3));
            m_pInstance->ToggleKelThuzadWindows(true);
            events.ScheduleEvent(EVENT_SUMMON_GUARDIAN, Seconds(5));
            p3Started = true;
        }

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_REQUEST_REPLY:
                m_pInstance->DoOrSimulateScriptTextForThisInstance(SAY_ANSWER_REQUEST, NPC_LICH_KING);
                break;
            case EVENT_SUMMON_GUARDIAN:
            {
                // Can be seen in videos they spawn with some delay between eachother.
                // Not found a clear pattern, but a good guess is one spawn every 5 sec until all 5 has spawned.
                if (numSummonedGuardians < 5)
                {
                    // we can re-use the soulweave positions for where to spawn the guardians
                    // todo: is it completely random, or do we avoid re-using the same alcove twize?
                    int portalIndex = urand(0, NUM_WINDOW_PORTALS - 1);
                    const float* pos = windowPortals[portalIndex];

                    if (Creature* pCreature = m_creature->SummonCreature(NPC_GUARDIAN, pos[0], pos[1], alcoveZ, 0.0f, TEMPSUMMON_MANUAL_DESPAWN))
                    {
                        guardians.push_back(std::make_pair(pCreature->GetObjectGuid(), portalIndex));
                        ++numSummonedGuardians;
                        events.Repeat(Seconds(7));
                        pCreature->SetInCombatWithZone();
                        if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                        {
                            pCreature->AI()->AttackStart(pTarget);
                        }
                    }
                    else
                        events.Repeat(100);
                }
                break;
            }
            case EVENT_FROSTBOLT_VOLLEY:
            {
                if (timeSinceLastFrostBlast < 5000)
                {
                    events.Repeat(5000 - timeSinceLastFrostBlast);
                    break;
                }
                else if (timeSinceLastShadowFissure < 5000)
                {
                    events.Repeat(5000 - timeSinceLastShadowFissure);
                    break;
                }
                if (DoCastSpellIfCan(m_creature, SPELL_FROST_BOLT_NOVA) == CAST_OK)
                {

                    /*1608240584328    1608240584.3280    Thu Dec 17 23:29 : 44 UTC 2020    Kel'Thuzad    Frostbolt 0
                    1608240615875    1608240615.8750    Thu Dec 17 23 : 30 : 16 UTC 2020    Kel'Thuzad    Frostbolt 32
                    1608240631641    1608240631.6410    Thu Dec 17 23 : 30 : 32 UTC 2020    Kel'Thuzad    Frostbolt 16
                    1608240647406    1608240647.4060    Thu Dec 17 23 : 30 : 47 UTC 2020    Kel'Thuzad    Frostbolt 15
                    1608240663203    1608240663.2030    Thu Dec 17 23 : 31 : 03 UTC 2020    Kel'Thuzad    Frostbolt 16
                    1608240679000    1608240679.0000    Thu Dec 17 23 : 31 : 19 UTC 2020    Kel'Thuzad    Frostbolt 16
                    1608240694781    1608240694.7810    Thu Dec 17 23 : 31 : 35 UTC 2020    Kel'Thuzad    Frostbolt 16
                    1608240742172    1608240742.1720    Thu Dec 17 23 : 32 : 22 UTC 2020    Kel'Thuzad    Frostbolt 47
                    1608240757985    1608240757.9850    Thu Dec 17 23 : 32 : 38 UTC 2020    Kel'Thuzad    Frostbolt 16*/

                    events.Repeat(Seconds(urand(15, 45))); // from naxx sniffs
                    timeSinceLastAEFrostBolt = 0;
                }
                else
                    events.Repeat(Seconds(1));
                break;
            }
            case EVENT_FROST_BLAST:
            {
                if (timeSinceLastShadowFissure < 5000)
                {
                    events.Repeat(5000 - timeSinceLastShadowFissure);
                    break;
                }
                else if (timeSinceLastAEFrostBolt < 8000)
                {
                    events.Repeat(8000 - timeSinceLastAEFrostBolt);
                    break;
                }
                if (m_creature->IsNonMeleeSpellCasted())
                {
                    events.Repeat(Seconds(1));
                    break;
                }
                if (Unit* pUnit = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
                {
                    if (DoCastSpellIfCan(pUnit, SPELL_FROST_BLAST) == CAST_OK)
                    {
                        events.Repeat(Seconds(urand(30, 60)));
                        timeSinceLastFrostBlast = 0;
                        if (urand(0, 1))
                            DoScriptText(SAY_FROST_BLAST, m_creature);
                        break;
                    }
                    else
                        events.Repeat(Seconds(1));
                }
                else
                    events.Repeat(Seconds(1));
                break;
            }
            case EVENT_FROSTBOLT:
            {
                // from naxx sniff
                /*1608240561281	1608240561.2810	Thu Dec 17 23:29 : 21 UTC 2020	Kel'Thuzad	Frostbolt 0 
                1608240572219	1608240572.2190	Thu Dec 17 23 : 29 : 32 UTC 2020	Kel'Thuzad	Frostbolt 11
                1608240587985	1608240587.9850	Thu Dec 17 23 : 29 : 48 UTC 2020	Kel'Thuzad	Frostbolt 16
                1608240602531	1608240602.5310	Thu Dec 17 23 : 30 : 03 UTC 2020	Kel'Thuzad	Frostbolt 15
                1608240612235	1608240612.2350	Thu Dec 17 23 : 30 : 12 UTC 2020	Kel'Thuzad	Frostbolt 9
                1608240621906	1608240621.9060	Thu Dec 17 23 : 30 : 22 UTC 2020	Kel'Thuzad	Frostbolt 10
                1608240630406	1608240630.4060	Thu Dec 17 23 : 30 : 30 UTC 2020	Kel'Thuzad	Frostbolt 8
                1608240636500	1608240636.5000	Thu Dec 17 23 : 30 : 37 UTC 2020	Kel'Thuzad	Frostbolt 7
                1608240643781	1608240643.7810	Thu Dec 17 23 : 30 : 44 UTC 2020	Kel'Thuzad	Frostbolt 7
                1608240653485	1608240653.4850	Thu Dec 17 23 : 30 : 53 UTC 2020	Kel'Thuzad	Frostbolt 9
                1608240660781	1608240660.7810	Thu Dec 17 23 : 31 : 01 UTC 2020	Kel'Thuzad	Frostbolt 8
                1608240670500	1608240670.5000	Thu Dec 17 23 : 31 : 11 UTC 2020	Kel'Thuzad	Frostbolt 10
                1608240677750	1608240677.7500	Thu Dec 17 23 : 31 : 18 UTC 2020	Kel'Thuzad	Frostbolt 7
                1608240685047	1608240685.0470	Thu Dec 17 23 : 31 : 25 UTC 2020	Kel'Thuzad	Frostbolt 7
                1608240691125	1608240691.1250	Thu Dec 17 23 : 31 : 31 UTC 2020	Kel'Thuzad	Frostbolt 6
                1608240710578	1608240710.5780	Thu Dec 17 23 : 31 : 51 UTC 2020	Kel'Thuzad	Frostbolt 20
                1608240722688	1608240722.6880	Thu Dec 17 23 : 32 : 03 UTC 2020	Kel'Thuzad	Frostbolt 12
                1608240732438	1608240732.4380	Thu Dec 17 23 : 32 : 12 UTC 2020	Kel'Thuzad	Frostbolt 9
                1608240739735	1608240739.7350	Thu Dec 17 23 : 32 : 20 UTC 2020	Kel'Thuzad	Frostbolt 8
                1608240760422	1608240760.4220	Thu Dec 17 23 : 32 : 40 UTC 2020	Kel'Thuzad	Frostbolt 10
                1608240766485	1608240766.4850	Thu Dec 17 23 : 32 : 46 UTC 2020	Kel'Thuzad	Frostbolt 6
                1608240773766	1608240773.7660	Thu Dec 17 23 : 32 : 54 UTC 2020	Kel'Thuzad	Frostbolt 8
                1608240781031	1608240781.0310	Thu Dec 17 23 : 33 : 01 UTC 2020	Kel'Thuzad	Frostbolt 7
                1608240790750	1608240790.7500	Thu Dec 17 23 : 33 : 11 UTC 2020	Kel'Thuzad	Frostbolt 10
                1608240811391	1608240811.3910	Thu Dec 17 23 : 33 : 31 UTC 2020	Kel'Thuzad	Frostbolt 20
                1608240818672	1608240818.6720	Thu Dec 17 23 : 33 : 39 UTC 2020	Kel'Thuzad	Frostbolt 8*/

                events.Repeat(Seconds(urand(5, 20))); 
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FROST_BOLT);
                break;
            }
            case EVENT_SHADOW_FISSURE:
            {
                if (timeSinceLastFrostBlast < 5000)
                {
                    events.Repeat(5000 - timeSinceLastFrostBlast);
                    break;
                }
                else if (timeSinceLastAEFrostBolt < 8000)
                {
                    events.Repeat(8000 - timeSinceLastAEFrostBolt);
                    break;
                }
                if (m_creature->IsNonMeleeSpellCasted())
                {
                    events.Repeat(Seconds(2));
                    break;
                }
                if (Unit* pUnit = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
                {
                    if (DoCastSpellIfCan(pUnit, SPELL_SHADOW_FISSURE) == CAST_OK)
                    {
                        // from naxx sniffs
                        /*1608240563735    1608240563.7350    Thu Dec 17 23:29 : 24 UTC 2020    Kel'Thuzad    Shadow Fissure 0
                        1608240575844    1608240575.8440    Thu Dec 17 23 : 29 : 36 UTC 2020    Kel'Thuzad    Shadow Fissure 12
                        1608240598891    1608240598.8910    Thu Dec 17 23 : 29 : 59 UTC 2020    Kel'Thuzad    Shadow Fissure 25
                        1608240625563    1608240625.5630    Thu Dec 17 23 : 30 : 26 UTC 2020    Kel'Thuzad    Shadow Fissure 27
                        1608240657141    1608240657.1410    Thu Dec 17 23 : 30 : 57 UTC 2020    Kel'Thuzad    Shadow Fissure 31
                        1608240672906    1608240672.9060    Thu Dec 17 23 : 31 : 13 UTC 2020    Kel'Thuzad    Shadow Fissure 16
                        1608240706938    1608240706.9380    Thu Dec 17 23 : 31 : 47 UTC 2020    Kel'Thuzad    Shadow Fissure 34
                        1608240717860    1608240717.8600    Thu Dec 17 23 : 31 : 58 UTC 2020    Kel'Thuzad    Shadow Fissure 11
                        1608240730000    1608240730.0000    Thu Dec 17 23 : 32 : 10 UTC 2020    Kel'Thuzad    Shadow Fissure 12
                        1608240750688    1608240750.6880    Thu Dec 17 23 : 32 : 31 UTC 2020    Kel'Thuzad    Shadow Fissure 21
                        1608240774985    1608240774.9850    Thu Dec 17 23 : 32 : 55 UTC 2020    Kel'Thuzad    Shadow Fissure 34
                        1608240788344    1608240788.3440    Thu Dec 17 23 : 33 : 08 UTC 2020    Kel'Thuzad    Shadow Fissure 13
                        1608240802891    1608240802.8910    Thu Dec 17 23:33 : 23 UTC 2020    Kel'Thuzad    Shadow Fissure 15
                        1608240815031    1608240815.0310    Thu Dec 17 23 : 33 : 35 UTC 2020    Kel'Thuzad    Shadow Fissure 12*/

                        events.Repeat(Seconds(urand(10, 30)));
                        timeSinceLastShadowFissure = 0;
                    }
                    else
                        events.Repeat(Seconds(1));
                }
                else
                    events.Repeat(Seconds(1));
                break;
            }
            case EVENT_DETONATE_MANA:
            {
                if (m_creature->IsNonMeleeSpellCasted())
                {
                    events.Repeat(Seconds(2));
                    break;
                }

                // from naxx sniffs
                /*1608240580703    1608240580.7030    Thu Dec 17 23:29 : 41 UTC 2020    Kel'Thuzad    Detonate Mana 0
                1608240603735    1608240603.7350    Thu Dec 17 23 : 30 : 04 UTC 2020    Kel'Thuzad    Detonate Mana 25
                1608240634047    1608240634.0470    Thu Dec 17 23 : 30 : 34 UTC 2020    Kel'Thuzad    Detonate Mana 30
                1608240655922    1608240655.9220    Thu Dec 17 23 : 30 : 56 UTC 2020    Kel'Thuzad    Detonate Mana 22
                1608240676547    1608240676.5470    Thu Dec 17 23 : 31 : 17 UTC 2020    Kel'Thuzad    Detonate Mana 21
                1608240697188    1608240697.1880    Thu Dec 17 23 : 31 : 37 UTC 2020    Kel'Thuzad    Detonate Mana 20
                1608240725125    1608240725.1250    Thu Dec 17 23 : 32 : 05 UTC 2020    Kel'Thuzad    Detonate Mana 28
                1608240754344    1608240754.3440    Thu Dec 17 23 : 32 : 34 UTC 2020    Kel'Thuzad    Detonate Mana 29
                1608240774985    1608240774.9850    Thu Dec 17 23 : 32 : 55 UTC 2020    Kel'Thuzad    Detonate Mana 21
                1608240806531    1608240806.5310    Thu Dec 17 23 : 33 : 27 UTC 2020    Kel'Thuzad    Detonate Mana 32*/

                events.Repeat(Seconds(urand(20,30)));
                if(Unit* pUnit = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_MANA_DETONATION, SELECT_FLAG_POWER_MANA|SELECT_FLAG_PLAYER))
                {
                    if (DoCastSpellIfCan(pUnit, SPELL_MANA_DETONATION) == CAST_OK)
                    {
                        if (urand(0, 1))
                            DoScriptText(SAY_SPECIAL1_MANA_DET, m_creature);
                        break;
                    }
                }
                break;
            }
            case EVENT_CHAINS:
                DoChains();
                break;
            }
        }

        DoMeleeAttackIfReady();
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_pInstance)
            return;

        if (hasPutInCombat)
        {
            // won't have a victim if we are in p1, even if selectHostileTarget returns true, so check that before return
            if (!m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER) || !CheckForEnemyPlayers())
            {
                if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
                    return;
            }
        }
        
        if (m_pInstance->GetData(TYPE_KELTHUZAD) != IN_PROGRESS)
            return;
        
        killSayTimer -= std::min(killSayTimer, diff);

        if (enrageTimer < diff)
        {
            m_creature->CastSpell(m_creature, SPELL_BERSERK, true);
            enrageTimer = 300000;
        }
        else
            enrageTimer -= diff;

        events.Update(diff);

        if (m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER))
            UpdateP1(diff);
        else
        {

            if (!m_pInstance->HandleEvadeOutOfHome(m_creature))
                return;
            UpdateP2P3(diff);
        }
    }

};

struct mob_abomAI : public kt_p1AddAI
{
    mob_abomAI(Creature* pCreature) : kt_p1AddAI(pCreature)
    {
        Reset();
    }

    uint32 mortalWoundTimer;

    void Reset() override
    {
        mortalWoundTimer = 7500;
        m_creature->SetMaxHealth(90000);
        m_creature->SetHealth(90000);
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (Player* pPlayer = m_creature->GetVictim()->ToPlayer())
        {
            if (!m_creature->CanReachWithMeleeAutoAttack(pPlayer) &&
               (pPlayer->GetPositionZ() - m_creature->GetPositionZ() > 5.0f) &&
                !pPlayer->IsBeingTeleported() && !m_creature->IsWithinLOSInMap(pPlayer))
            {
                m_creature->CastSpell(pPlayer, SPELL_SUMMON_PLAYER, true);
            }
        }

        if (mortalWoundTimer < diff)
        {
            if(m_creature->GetVictim() && m_creature->CanReachWithMeleeAutoAttack(m_creature->GetVictim()))
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MORTAL_WOUND) == CAST_OK)
                    mortalWoundTimer = 7500;
        }
        else
            mortalWoundTimer -= diff;

        DoMeleeAttackIfReady();
    }
};

struct mob_soldierAI : public kt_p1AddAI
{
    mob_soldierAI(Creature* pCreature) : kt_p1AddAI(pCreature)
    {
        Reset();
    }

    void Reset() override
    {
        m_creature->SetMaxHealth(2000);
        m_creature->SetHealth(2000);
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_creature->HasAura(SPELL_DARK_BLAST_AUR))
            m_creature->CastSpell(m_creature, SPELL_DARK_BLAST_AUR, true);

        // to avoid melees being able to dps while casters hold aggro, this is most likely a logic that's supposed to exist
        if (Unit* pNearest = m_creature->SelectAttackingTarget(ATTACKING_TARGET_NEAREST, 0))
        {
            if (m_creature->GetVictim() != pNearest && m_creature->CanReachWithMeleeAutoAttack(pNearest))
            {
                ScriptedAI::AttackStart(pNearest);
            }
        }

        if (Player* pPlayer = m_creature->GetVictim()->ToPlayer())
        {
            if (!m_creature->CanReachWithMeleeAutoAttack(pPlayer) &&
               (pPlayer->GetPositionZ() - m_creature->GetPositionZ() > 5.0f) &&
                !pPlayer->IsBeingTeleported() && !m_creature->IsWithinLOSInMap(pPlayer))
            {
                m_creature->CastSpell(pPlayer, SPELL_SUMMON_PLAYER, true);
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct mob_soulweaverAI : public kt_p1AddAI
{
    mob_soulweaverAI(Creature* pCreature) : kt_p1AddAI(pCreature)
    {
        Reset();
    }

    bool hasHitSomeone;

    void Reset() override
    {
        hasHitSomeone = false;
        m_creature->SetMaxHealth(70000);
        m_creature->SetHealth(70000);
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_creature->HasAura(SPELL_WAIL_SOULS_AUR))
            m_creature->CastSpell(m_creature, SPELL_WAIL_SOULS_AUR, true);

        // to avoid melees being able to dps while casters hold aggro, this is most likely a logic that's supposed to exist
        if (Unit* pNearest = m_creature->SelectAttackingTarget(ATTACKING_TARGET_NEAREST, 0))
        {
            if (m_creature->GetVictim() != pNearest && m_creature->CanReachWithMeleeAutoAttack(pNearest))
            {
                ScriptedAI::AttackStart(pNearest);
            }
        }

        if (Player* pPlayer = m_creature->GetVictim()->ToPlayer())
        {
            if (!m_creature->CanReachWithMeleeAutoAttack(pPlayer) &&
               (pPlayer->GetPositionZ() - m_creature->GetPositionZ() > 5.0f) &&
                !pPlayer->IsBeingTeleported() && !m_creature->IsWithinLOSInMap(pPlayer))
            {
                m_creature->CastSpell(pPlayer, SPELL_SUMMON_PLAYER, true);
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct mob_guardian_icecrownAI : public ScriptedAI
{
    mob_guardian_icecrownAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (instance_naxxramas*)pCreature->GetInstanceData();
        Reset();
    }
    instance_naxxramas* m_pInstance;
    uint32 bloodTapTimer;
    void Reset() override
    {
        bloodTapTimer = 18000; // from classic logs
        m_creature->AddUnitState(UNIT_STAT_IGNORE_PATHFINDING);
    }
    void JustReachedHome() override
    {
        m_creature->DeleteLater();
        ///m_creature->ForcedDespawn(1);
    }
    
    void DispellShackle(Creature* pC)
    {
        if (pC->HasAura(9484))
            pC->RemoveAurasDueToSpell(9484);
        else if (pC->HasAura(9485))
            pC->RemoveAurasDueToSpell(9485);
        else if (pC->HasAura(10955))
            pC->RemoveAurasDueToSpell(10955);
    }

    void SpellHit(WorldObject*, const SpellEntry* spell) override 
    {
        // if hit by any shackle spell we check how many other guardians are shackled.
        // If more than 3, we release everyone.
        switch (spell->Id)
        {
        case 10955:
        case 9485:
        case 9484:
        {
            std::list<Creature*> guardians;
            GetCreatureListWithEntryInGrid(guardians, m_creature, NPC_GUARDIAN, 130.0f);
            uint32 numShackled = 0;
            for (Creature* pC : guardians)
            {
                if (pC->HasAura(9484) || pC->HasAura(9485) || pC->HasAura(10955))
                    ++numShackled;
            }
                
            if (numShackled > 3)
            {
                if (m_pInstance)
                {
                    if (Creature* pKT = m_pInstance->GetSingleCreatureFromStorage(NPC_KELTHUZAD))
                        DoScriptText(SAY_SPECIAL2_DISPELL, pKT);
                }
                for (Creature* pC : guardians)
                {
                    DispellShackle(pC);
                }
            }
            break;
        }
        }
    }

    void KilledUnit(Unit* pVictim) override
    {
        // Add a stack of blood tap to guardians whenever a player dies.
        // current blood tap does 200% weapon damage, resulting in damage from 2500 and up
        // on classic the tap does minimal damage
        // https://vanilla.warcraftlogs.com/reports/cJ8XpmBW4MzxK6Aj#fight=52&type=damage&hostility=1&target=208.2&view=events
        // replacing cast spell with add aura, so they still get the 15% increase in damage and size
        std::list<Creature*> guardians;
        GetCreatureListWithEntryInGrid(guardians, m_creature, NPC_GUARDIAN, 130.0f);
        for (Creature* pC : guardians)
            pC->AddAura(SPELL_BLOOD_TAP);

    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (bloodTapTimer < diff)
        {
            // current blood tap does 200% weapon damage, resulting in damage from 2500 and up
            // on classic the tap does minimal damage
            // https://vanilla.warcraftlogs.com/reports/cJ8XpmBW4MzxK6Aj#fight=52&type=damage&hostility=1&target=208.2&view=events
            // replacing cast spell with add aura, so they still get the 15% increase in damage and size
            m_creature->AddAura(SPELL_BLOOD_TAP);
            //if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_BLOOD_TAP) == CAST_OK)
            bloodTapTimer = 18000;
        }
        else bloodTapTimer -= diff;

        DoMeleeAttackIfReady();
    }
};

struct mob_shadow_fissureAI : public ScriptedAI
{
    mob_shadow_fissureAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }
    uint32 timer;
    bool haveCasted;
    void Reset() override
    {
        timer = 3000;
        haveCasted = false;
    }

    void Aggro(Unit*) override
    {
    }
    void AttackStart(Unit*) override
    {
    }
    void MoveInLineOfSight(Unit* pWho) override
    {
    }

    void UpdateAI(const uint32 diff) override
    {
        if (haveCasted)
            return;
        if (timer < diff)
        {
            m_creature->CastSpell(m_creature, SPELL_VOID_BLAST, true);
            haveCasted = true;
            m_creature->ForcedDespawn(2250);
        }
        else
            timer -= diff;
    }
};

CreatureAI* GetAI_boss_kelthuzad(Creature* pCreature)
{
    return new boss_kelthuzadAI(pCreature);
}

CreatureAI* GetAI_mob_abom(Creature* pCreature)
{
    return new mob_abomAI(pCreature);
}

CreatureAI* GetAI_mob_soldier(Creature* pCreature)
{
    return new mob_soldierAI(pCreature);
}

CreatureAI* GetAI_mob_soulweaver(Creature* pCreature)
{
    return new mob_soulweaverAI(pCreature);
}

CreatureAI* GetAI_mob_guardian_icecrown(Creature* pCreature)
{
    return new mob_guardian_icecrownAI(pCreature);
}

CreatureAI* GetAI_mob_shadow_fissure(Creature* pCreature)
{
    return new mob_shadow_fissureAI(pCreature);
}

void instance_naxxramas::OnKTAreaTrigger(const AreaTriggerEntry* pAT)
{
    if (GetData(TYPE_KELTHUZAD) != NOT_STARTED)
        return;

    if (Creature* pKT = GetSingleCreatureFromStorage(NPC_KELTHUZAD))
    {
        if (boss_kelthuzadAI* ai = (boss_kelthuzadAI*)pKT->AI())
        {
            ai->StartEncounter();
        }
    }
}

void AddSC_boss_kelthuzad()
{
    Script* NewScript;

    NewScript = new Script;
    NewScript->Name = "boss_kelthuzad";
    NewScript->GetAI = &GetAI_boss_kelthuzad;
    NewScript->RegisterSelf();

    NewScript = new Script;
    NewScript->Name = "unstoppable_abomination_ai";
    NewScript->GetAI = &GetAI_mob_abom;
    NewScript->RegisterSelf();

    NewScript = new Script;
    NewScript->Name = "soldier_frozen_wastes_ai";
    NewScript->GetAI = &GetAI_mob_soldier;
    NewScript->RegisterSelf();

    NewScript = new Script;
    NewScript->Name = "soul_weaver_ai";
    NewScript->GetAI = &GetAI_mob_soulweaver;
    NewScript->RegisterSelf();

    NewScript = new Script;
    NewScript->Name = "mob_guardian_icecrownAI";
    NewScript->GetAI = &GetAI_mob_guardian_icecrown;
    NewScript->RegisterSelf();

    NewScript = new Script;
    NewScript->Name = "mob_shadow_fissure";
    NewScript->GetAI = &GetAI_mob_shadow_fissure;
    NewScript->RegisterSelf();
}
