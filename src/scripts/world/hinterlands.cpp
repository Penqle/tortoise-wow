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

/* ScriptData
SDName: Hinterlands
SD%Complete: 100
SDComment: Quest support: 863, 2742, 7840
SDCategory: The Hinterlands
EndScriptData */

/* ContentData
npc_rinji
go_lards_picnic_basket
EndContentData */

#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Creature* creature, const uint32 p_time, Functor&& function)
{
    creature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), creature->m_Events.CalculateTime(p_time));
}

/*######
## npc_rinji
######*/

enum RinjiData
{
    SAY_RIN_FREE            = 3787,
    SAY_RIN_BY_OUTRUNNER    = 3827,
    SAY_RIN_HELP_1          = 3862,
    SAY_RIN_HELP_2          = 3861,
    SAY_RIN_COMPLETE        = 3790,
    SAY_RIN_PROGRESS_1      = 3817,
    SAY_RIN_PROGRESS_2      = 3818,

    QUEST_RINJI_TRAPPED     = 2742,
    NPC_RANGER              = 2694,
    NPC_OUTRUNNER           = 2691,
    GO_RINJI_CAGE           = 142036,
    FACTION_ESCORTEE        = 33,
};

struct Location
{
    float m_fX, m_fY, m_fZ;
};

Location m_afAmbushSpawn[] =
{
    {191.29620f, -2839.329346f, 107.388f},
    {70.972466f, -2848.674805f, 109.459f}
};

Location m_afAmbushMoveTo[] =
{
    {166.63038f, -2824.780273f, 108.153f},
    {70.886589f,  -2874.335449f, 116.675f}
};

struct npc_rinjiAI : public npc_escortAI
{
    npc_rinjiAI(Creature* pCreature) : npc_escortAI(pCreature)
    {
        m_bIsByOutrunner = false;
        m_iSpawnId = 0;
        Reset();
    }

    bool m_bIsByOutrunner;
    uint32 m_uiPostEventCount;
    uint32 m_uiPostEventTimer;
    int m_iSpawnId;

    void Reset() override
    {
        m_uiPostEventCount = 0;
        m_uiPostEventTimer = 3000;
    }

    void JustRespawned() override
    {
        m_bIsByOutrunner = false;
        m_iSpawnId = 0;
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
        npc_escortAI::JustRespawned();
    }

    void Aggro(Unit* pWho) override
    {
        if (HasEscortState(STATE_ESCORT_ESCORTING))
        {
            if (pWho->GetEntry() == NPC_OUTRUNNER && !m_bIsByOutrunner)
            {
                DoScriptText(SAY_RIN_BY_OUTRUNNER, pWho);
                m_bIsByOutrunner = true;
            }

            if (urand(0, 3))
                return;

            //only if attacked and escorter is not in combat?
            DoScriptText(urand(0, 1) ? SAY_RIN_HELP_1 : SAY_RIN_HELP_2, m_creature);
        }
    }

    void DoSpawnAmbush(bool bFirst)
    {
        if (!bFirst)
            m_iSpawnId = 1;

        m_creature->SummonCreature(NPC_RANGER,
                                   m_afAmbushSpawn[m_iSpawnId].m_fX, m_afAmbushSpawn[m_iSpawnId].m_fY, m_afAmbushSpawn[m_iSpawnId].m_fZ, 0.0f,
                                   TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000);

        for (int i = 0; i < 2; ++i)
        {
            m_creature->SummonCreature(NPC_OUTRUNNER,
                                       m_afAmbushSpawn[m_iSpawnId].m_fX, m_afAmbushSpawn[m_iSpawnId].m_fY, m_afAmbushSpawn[m_iSpawnId].m_fZ, 0.0f,
                                       TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000);
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        pSummoned->SetWalk(false);
        pSummoned->GetMotionMaster()->MovePoint(0, m_afAmbushMoveTo[m_iSpawnId].m_fX, m_afAmbushMoveTo[m_iSpawnId].m_fY, m_afAmbushMoveTo[m_iSpawnId].m_fZ);
    }

    void WaypointReached(uint32 uiPointId) override
    {
        Player* pPlayer = GetPlayerForEscort();

        if (!pPlayer)
            return;

        switch (uiPointId)
        {
            case 1:
                DoScriptText(SAY_RIN_FREE, m_creature, pPlayer);
                break;
            case 7:
                DoSpawnAmbush(true);
                break;
            case 13:
                DoSpawnAmbush(false);
                break;
            case 17:
                DoScriptText(SAY_RIN_COMPLETE, m_creature, pPlayer);
                pPlayer->GroupEventHappens(QUEST_RINJI_TRAPPED, m_creature);
                SetRun();
                m_uiPostEventCount = 1;
                break;
        }
    }

    void UpdateEscortAI(const uint32 uiDiff) override
    {
        //Check if we have a current target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
        {
            if (HasEscortState(STATE_ESCORT_ESCORTING) && m_uiPostEventCount)
            {
                if (m_uiPostEventTimer < uiDiff)
                {
                    m_uiPostEventTimer = 3000;

                    if (Player* pPlayer = GetPlayerForEscort())
                    {
                        switch (m_uiPostEventCount)
                        {
                            case 1:
                                DoScriptText(SAY_RIN_PROGRESS_1, m_creature, pPlayer);
                                ++m_uiPostEventCount;
                                break;
                            case 2:
                                DoScriptText(SAY_RIN_PROGRESS_2, m_creature, pPlayer);
                                m_uiPostEventCount = 0;
                                break;
                        }
                    }
                    else
                    {
                        m_creature->ForcedDespawn();
                        return;
                    }
                }
                else
                    m_uiPostEventTimer -= uiDiff;
            }

            return;
        }

        DoMeleeAttackIfReady();
    }
};

bool QuestAccept_npc_rinji(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (pQuest->GetQuestId() == QUEST_RINJI_TRAPPED)
    {
        if (GameObject* pGo = GetClosestGameObjectWithEntry(pCreature, GO_RINJI_CAGE, INTERACTION_DISTANCE))
            pGo->UseDoorOrButton();

        pCreature->SetFactionTemporary(FACTION_ESCORTEE, TEMPFACTION_RESTORE_RESPAWN);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);

        if (npc_rinjiAI* pEscortAI = dynamic_cast<npc_rinjiAI*>(pCreature->AI()))
            pEscortAI->Start(false, pPlayer->GetGUID(), pQuest);
    }
    return true;
}

CreatureAI* GetAI_npc_rinji(Creature* pCreature)
{
    return new npc_rinjiAI(pCreature);
}

/*######
## go_lards_picnic_basket
######*/

enum LardsPicnicBasketData
{
    NPC_KIDNAPPEUR_VILEBRANCH = 14748
};

bool GOHello_go_lards_picnic_basket(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(7840) == QUEST_STATUS_INCOMPLETE)
    {
        pGo->UseDoorOrButton();
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        if (GameObjectAI* gAI = pGo->AI())
        {
            gAI->SetData(1, 1);
        }

        pGo->SummonCreature(NPC_KIDNAPPEUR_VILEBRANCH, 408.75F, -4823.33F, 10.92F, 4.70F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15 * IN_MILLISECONDS);
        pGo->SummonCreature(NPC_KIDNAPPEUR_VILEBRANCH, 409.01F, -4830.60F, 10.58F, 1.55F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15 * IN_MILLISECONDS);
        pGo->SummonCreature(NPC_KIDNAPPEUR_VILEBRANCH, 413.80F, -4826.17F, 11.111F, 3.3F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15 * IN_MILLISECONDS);
    }
    return true;
}

struct go_lards_picnic_basket : public GameObjectAI
{
    explicit go_lards_picnic_basket(GameObject* pGo) : GameObjectAI(pGo) {}

    uint32 BackTimer = 0;

    virtual void UpdateAI(uint32 const uiDiff) override
    {
        if (BackTimer != 0)
        {
            if (BackTimer < uiDiff)
            {
                BackTimer = 0;
                me->ResetDoorOrButton();
            }
            else
            {
                BackTimer -= uiDiff;
                if (BackTimer == 0)
                {
                    me->ResetDoorOrButton();
                }
            }
        }
    }
    virtual void SetData(uint32 id, uint32 value) override
    {
        if (id == 1)
            BackTimer = 60 * IN_MILLISECONDS;
        GameObjectAI::SetData(id, value);
    }
};

GameObjectAI* GetAI_go_lards_picnic_basket(GameObject* Obj){ return new go_lards_picnic_basket(Obj); }

/*######
## go_corrupted_crystal
######*/

enum
{
    QUEST_AN_INFINITE_HUNT = 80411,

    NPC_KHEYNA = 81041,
    NPC_CHROMIE = 91002,
    NPC_ANTNORMI = 81265,
    NPC_DRAKONID = 91000,

    SAY_KHEYNA_1 = -1780400,
    SAY_KHEYNA_2 = -1780402,
    SAY_KHEYNA_3 = -1780404,
    SAY_KHEYNA_4 = -1780406,

    SAY_CHROMIE_1 = -1780401,
    SAY_CHROMIE_2 = -1780403,
    SAY_CHROMIE_3 = -1780405,
    SAY_CHROMIE_4 = -1780408,

    YELL_ANTNORMI = -1780407,

    SPELL_TELEPORT = 26638,
    SPELL_BRONZE_AFFLICTION = 23170,
    SPELL_WHELP_TRANSFORM = 8357,
    SPELL_FROSTBOLT = 21369,
    SPELL_ARCANE_MISSILES = 15254,

    GOB_CHROMIE_PORTAL = 81048,
    GOB_DRAGON_PORTAL = 91001,
    GOB_FORCEFIELD = 3000511
    
};

struct go_corrupted_crystal : public GameObjectAI
{
    go_corrupted_crystal(GameObject* pGo) : GameObjectAI(pGo)
    {
        Reset();
    }
    uint32 m_uiDialogueTimer;
    uint32 m_uiTick = 0;
    bool state = true;//true = usual, can launch. //false = in use, cannot launch
    ObjectGuid m_player;
    ObjectGuid drakonidOne;
    ObjectGuid drakonidTwo;
    ObjectGuid antnormiGuid;
    ObjectGuid antnormiPortal;
    ObjectGuid chromieGuid;
    ObjectGuid kheynaGuid;
    ObjectGuid chromiePortalGuid;

    bool doOnce = true;
    bool endPortal = false;
    bool positionOnce = false;
    bool chromieTeleported = false;
    bool kheynaEmoted = false;
    bool kheynaTeleported = false;

    void UpdateAI(const uint32 uiDiff)
    {
        if (m_uiDialogueTimer <= uiDiff && !state)
        {
            switch (m_uiTick)
            {
            case 0:
                if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 100, true))
                {
                    kheynaGuid = kheyna->GetObjectGuid(); // save guid for ObjectGuid access

                    kheyna->MonsterMove(669.26f, -4105.60f, 99.43f);

                    if (kheyna->GetPositionX() == 669.26f)
                        m_uiTick++;
                    //m_uiDialogueTimer = 250;
                }
                else Reset();
                break;
            case 1:
                if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                {
                    Player* pPlayer = me->GetMap()->GetPlayer(m_player);

                    kheyna->MonsterMove(669.70f, -4094.36f, 100.70f);
                    kheyna->PMonsterSay("%s, you're early! What fortune! I believe I've finally tracked-", pPlayer->GetName());
                    me->SummonCreature(GOB_CHROMIE_PORTAL, 667.73f, -4086.49f, 100.71f, 0, TEMPSUMMON_TIMED_DESPAWN, 5000);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 2:
                if (Creature* chromie = me->SummonCreature(NPC_CHROMIE, 667.73f, -4086.49f, 100.71f, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 5 * MINUTE * IN_MILLISECONDS))
                {
                    chromieGuid = chromie->GetObjectGuid(); // save guid for ObjectGuid access

                    chromie->CastSpell(chromie, SPELL_TELEPORT, false);
                    chromie->MonsterSay(SAY_CHROMIE_1); // I've found you villain! There is no escape!
                    chromie->SetFacingTo(4.88f);
                    chromie->MonsterMove(667.99f, -4088.13f, 100.74f);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 3:
            {
                Creature* drakonidOneptr = me->SummonCreature(NPC_DRAKONID, 666.65f, -4095.23f, 100.71f, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
                Creature* drakonidTwoptr = me->SummonCreature(NPC_DRAKONID, 671.32f, -4097.37f, 100.70f, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
                if (drakonidOneptr && drakonidTwoptr)
                {
                    drakonidOne = drakonidOneptr->GetObjectGuid();
                    drakonidTwo = drakonidTwoptr->GetObjectGuid();

                    drakonidOneptr->CastSpell(drakonidOneptr, SPELL_TELEPORT, false);
                    drakonidTwoptr->CastSpell(drakonidTwoptr, SPELL_TELEPORT, false);

                    if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                    {
                        drakonidOneptr->SetFacingToObject(kheyna);
                        drakonidTwoptr->SetFacingToObject(kheyna);
                        GameObject* forceField = drakonidOneptr->SummonGameObject(GOB_FORCEFIELD, kheyna->GetPositionX(), kheyna->GetPositionY(), kheyna->GetPositionZ() + .25, 0);
                    }
                }
                else Reset();
                m_uiDialogueTimer = 2500;
                m_uiTick++;
                break;
            }
            case 4:
                if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                {
                    kheyna->MonsterSay(SAY_KHEYNA_2); // No wait! Listen to me! I am here to hunt a larger threat and she's on the way. I'm not the one you should be after!
                    m_uiDialogueTimer = 7500;
                    m_uiTick++;
                }
                else Reset();
                break;

            case 5:
                if (Creature* antnormi = me->SummonCreature(NPC_ANTNORMI, 704.01f, -4090.40f, 100.71f, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 5 * MINUTE * IN_MILLISECONDS))
                {
                    antnormiGuid = antnormi->GetObjectGuid();

                    Creature* antnormiPortalSummon = antnormi->SummonCreature(GOB_DRAGON_PORTAL, 726.33f, -4089.56f, 101, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);

                    antnormiPortal = antnormiPortalSummon->GetObjectGuid();

                    Creature* drakonidOnePtr = me->GetMap()->GetCreature(drakonidOne);
                    drakonidOnePtr->PMonsterEmote("");

                    antnormi->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                    antnormi->MonsterMove(702.14f, -4090.37f, 100.71f);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                    break;
                }
                else Reset();
            case 6:
            {
                Creature* drakonidOneptr = me->GetMap()->GetCreature(drakonidOne);
                Creature* drakonidTwoptr = me->GetMap()->GetCreature(drakonidTwo);
                if (drakonidOneptr && drakonidTwoptr)
                {
                    if (GameObject* forceField = drakonidOneptr->FindNearestGameObject(GOB_FORCEFIELD, 50))
                        forceField->Despawn();

                    if (Creature* antnormi = me->GetMap()->GetCreature(antnormiGuid))
                        antnormi->SetRooted(true);

                    drakonidOneptr->MonsterMove(700.94f, -4091.69f, 100.71f);
                    drakonidTwoptr->MonsterMove(700.94f, -4091.69f, 100.71f);

                    drakonidOneptr->SetFactionTemplateId(11);
                    drakonidTwoptr->SetFactionTemplateId(11);

                    drakonidOneptr->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                    drakonidTwoptr->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);

                    if (Creature* antnormi = me->GetMap()->GetCreature(antnormiGuid))
                    {
                        drakonidOneptr->GetThreatManager().addThreat(antnormi, 100);
                        drakonidTwoptr->GetThreatManager().addThreat(antnormi, 100);
                    }

                    m_uiDialogueTimer = 1000;
                    m_uiTick++;
                    break;
                }
                else Reset();
                }
            case 7:
                if (Creature* chromie = me->GetMap()->GetCreature(chromieGuid))
                {
                    chromie->MonsterYell(SAY_CHROMIE_2); // What is that behind you?!
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                    break;
                }
                else Reset();
            case 8:
                if (Creature* antnormi = me->GetMap()->GetCreature(antnormiGuid))
                {
                    if (Creature* target = antnormi->FindNearestCreature(NPC_DRAKONID, 30, true))
                        antnormi->CastSpell(target, 27567, true);

                    m_uiDialogueTimer = 1000;
                    m_uiTick++;
                    break;
                }
                else Reset();
            case 9:
                if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                {
                    kheyna->MonsterSay(SAY_KHEYNA_3); // It's her who I've been hunting! Her name is Antnormi. We're not ready yet to face her, but we've got no choice!
                    
                    if (Creature* antnormi = me->GetMap()->GetCreature(antnormiGuid))
                        antnormi->SetFacingToObject(kheyna);
                    
                    m_uiDialogueTimer = 7500;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 10:
                if (Creature* chromie = me->GetMap()->GetCreature(chromieGuid))
                {
                    if (Creature* antnormi = me->GetMap()->GetCreature(antnormiGuid))
                    {
                        chromie->AddThreat(antnormi, 100);
                    }
                    chromie->MonsterSay(SAY_CHROMIE_3); // Adventurer, I'll weaken it, but you must finish her.
                    chromie->SetFactionTemplateId(11);
                    chromie->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                    chromie->MonsterMove(691.41f, -4086.98f, 100.71f);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 11:
                if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                {
                    if (Creature* antnormi = me->GetMap()->GetCreature(antnormiGuid))
                    {
                        antnormi->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                        antnormi->SetRooted(false);

                        kheyna->AddThreat(antnormi, 50);
                        kheyna->MonsterSay(SAY_KHEYNA_4); // I'll help you! Let's KILL!
                        kheyna->SetFactionTemplateId(11);
                        kheyna->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                        kheyna->MonsterMove(681.44f, -4093.86f, 100.71f);
                        kheyna->CastSpell(kheyna, SPELL_WHELP_TRANSFORM, false);

                        if (Creature* chromie = me->GetMap()->GetCreature(chromieGuid))
                            chromie->PMonsterSay(66157);

                        antnormi->AddAura(SPELL_BRONZE_AFFLICTION);
                    }

                    m_uiTick++;
                    m_uiDialogueTimer = 1000;
                }
                else Reset();
                break;
            case 12:
                if (Creature* antnormi = me->GetMap()->GetCreature(antnormiGuid))
                {
                    if (!positionOnce)
                    {
                        positionOnce = true;

                        if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                        {
                            kheyna->PMonsterSay(66156);
                            kheyna->Attack(antnormi, false);
                        }
                    }
                    if (antnormi->GetHealthPercent() <= 90.0f && !endPortal)
                        endPortal = true;

                    if (endPortal)
                    {
                        if (doOnce)
                        {
                            antnormi->MonsterYell(YELL_ANTNORMI); // Enough of this! I have no time for insects like you. The master's plan is almost complete and my diversion was a success!
                            antnormi->PlayDirectMusic(30268);

                            if (antnormi->HasAura(SPELL_BRONZE_AFFLICTION))
                                antnormi->RemoveAurasDueToSpell(SPELL_BRONZE_AFFLICTION);

                            doOnce = false;
                        }
                        Creature* antnormiPortalptr = me->GetMap()->GetCreature(antnormiPortal);

                        if (antnormiPortalptr)
                            antnormi->MonsterMove(antnormiPortalptr->GetPositionX(), antnormiPortalptr->GetPositionY(), 100);

                        antnormi->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                        antnormi->DeleteThreatList();

                        if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                        {
                            kheyna->RestoreFaction();
                            kheyna->MonsterMoveWithSpeed(690.09f, -4086.31f, 100.71f, 0, kheyna->GetSpeed(MOVE_WALK), MOVE_PATHFINDING | MOVE_WALK_MODE | MOVE_FORCE_DESTINATION);

                            if (Creature* chromie = me->GetMap()->GetCreature(chromieGuid))
                            {
                                chromie->MonsterMoveWithSpeed(690.40f, -4087.36f, 100.71f, 0, chromie->GetSpeed(MOVE_WALK), MOVE_PATHFINDING | MOVE_WALK_MODE | MOVE_FORCE_DESTINATION);
                                chromie->RestoreFaction();

                                auto ptrAnt = antnormi;

                                if (antnormiPortalptr)
                                    ptrAnt = antnormiPortalptr->FindNearestCreature(antnormi->GetEntry(), 30, true);

                                if (ptrAnt)
                                {
                                    antnormi->DespawnOrUnsummon();
                                    ptrAnt->DespawnOrUnsummon(2000);
                                    m_uiTick++;
                                }
                            }
                            else
                            {
                                Reset();
                                return;
                            }
                        }
                        else
                        {
                            Reset();
                            return;
                        }
                        m_uiDialogueTimer = 1000;
                    }
                }
                else Reset();

                break;
            case 13:
                m_uiTick++;
                break;
            case 14:
                if (Creature* chromie = me->GetMap()->GetCreature(chromieGuid))
                {
                    if (Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid))
                    {
                        chromie->SetFacingToObject(kheyna);
                        kheyna->SetFacingToObject(chromie);

                        if (kheyna->HasAura(SPELL_WHELP_TRANSFORM))
                            kheyna->RemoveAurasDueToSpell(SPELL_WHELP_TRANSFORM);

                        kheyna->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);

                        chromie->MonsterSay(SAY_CHROMIE_4); // We have much to talk about Kheyna. Adventurer, return to Andorhal and speak to me.

                        if (Creature* portal = chromie->SummonCreature(GOB_CHROMIE_PORTAL, 673.74f, -4090.49f, 100.71f, 0, TEMPSUMMON_TIMED_DESPAWN, 60000))
                            chromiePortalGuid = portal->GetObjectGuid();

                        kheyna->MonsterMove(chromie->GetPositionX() + 1, chromie->GetPositionY() + 1, chromie->GetPositionZ());

                        Player* pPlayer = sObjectMgr.GetPlayer(m_player);

                        if (pPlayer && pPlayer->GetQuestStatus(QUEST_AN_INFINITE_HUNT) == QUEST_STATUS_INCOMPLETE)
                        {
                            CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60373); // dummy
                            if (cInfo != nullptr)
                                pPlayer->KilledMonster(cInfo, ObjectGuid());
                        }

                        m_uiDialogueTimer = 5000;
                        m_uiTick++;
                    }
                    else Reset();
                }
                else Reset();
                break;
            case 15:
            {
                Creature* portal = me->GetMap()->GetCreature(chromiePortalGuid);
                Creature* chromie = me->GetMap()->GetCreature(chromieGuid);
                Creature* kheyna = me->GetMap()->GetCreature(kheynaGuid);
                if (!portal || !chromie || !kheyna)
                {
                    Reset();
                    return;
                }

                chromie->MonsterMoveWithSpeed(portal->GetPositionX(), portal->GetPositionY(), portal->GetPositionZ(), 0, chromie->GetSpeed(MOVE_WALK), MOVE_PATHFINDING | MOVE_WALK_MODE | MOVE_FORCE_DESTINATION);
                kheyna->MonsterMoveWithSpeed(portal->GetPositionX(), portal->GetPositionY(), portal->GetPositionZ(), 0, kheyna->GetSpeed(MOVE_WALK), MOVE_PATHFINDING | MOVE_WALK_MODE | MOVE_FORCE_DESTINATION);
                
                if (!chromieTeleported && portal->IsWithinDist(chromie, 1))
                {
                    chromie->CastSpell(chromie, SPELL_TELEPORT, false);
                    chromie->DespawnOrUnsummon(500);
                    chromieTeleported = true;
                }

                if (!kheynaEmoted && portal->IsWithinDist(kheyna, 3))
                {
                    kheyna->HandleEmote(3);
                    kheynaEmoted = true;
                }

                if (!kheynaTeleported && portal->IsWithinDist(kheyna, 1))
                {
                    kheyna->CastSpell(kheyna, SPELL_TELEPORT, false);
                    kheyna->DespawnOrUnsummon(500);
                    kheynaTeleported = true;
                }

                break;
            }
            default:
            {
                Reset();
                break;
            }
            }
        }
        else
            m_uiDialogueTimer -= uiDiff;
    }

    bool CheckCanStartEvent()
    {
        return state;
    }

    void SetInUse()
    {
        // me->SetGoState(GO_STATE_ACTIVE);
        // me->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_IN_USE);
        state = false;
        m_uiDialogueTimer = 0;
    }

    void PassPlayer(Player* pPlayer)
    {
        m_player = pPlayer->GetObjectGuid();
    }

    void DespawnGuid(ObjectGuid& g)
    {
        if (Creature* c = me->GetMap()->GetCreature(g))
            c->DespawnOrUnsummon();
        g.Clear();
    }

    void Reset()
    {
        doOnce = true;
        endPortal = false;
        positionOnce = false;
        chromieTeleported = false;
        kheynaEmoted = false;
        kheynaTeleported = false;
        state = true;
        m_uiDialogueTimer = 0;
        m_uiTick = 0;
        me->SetGoState(GO_STATE_READY);
        me->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_IN_USE);

        DespawnGuid(drakonidOne);
        DespawnGuid(drakonidTwo);
        DespawnGuid(antnormiGuid);
        DespawnGuid(antnormiPortal);
        DespawnGuid(chromieGuid);
        DespawnGuid(kheynaGuid);
        DespawnGuid(chromiePortalGuid);
    }
};

GameObjectAI* GetAI_go_corrupted_crystal(GameObject* gameobject)
{
    return new go_corrupted_crystal(gameobject);
}

bool GOHello_go_corrupted_crystal(Player* pPlayer, GameObject* pGO)
{
    if (pPlayer->IsCurrentQuest(QUEST_AN_INFINITE_HUNT, 1))
    {
        if (go_corrupted_crystal* gobAI = dynamic_cast<go_corrupted_crystal*>(pGO->AI()))
        {
            if (gobAI->CheckCanStartEvent())
            {
                gobAI->SetInUse();
                gobAI->PassPlayer(pPlayer);

                pPlayer->SummonCreature(NPC_KHEYNA, 658.04f, -4105.24f, 99.43f, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
            }
            else
                pPlayer->GetSession()->SendNotification("Event in Progress");
        }
        else
            pPlayer->GetSession()->SendNotification("Internal Error");
    }
    else
        pPlayer->GetSession()->SendNotification("Requires An Infinite Hunt");
    
    return true;
}

void AddSC_hinterlands()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_rinji";
    newscript->GetAI = &GetAI_npc_rinji;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_rinji;
    newscript->RegisterSelf();

    newscript->Name = "go_lards_picnic_basket";
    newscript->pGOHello = &GOHello_go_lards_picnic_basket;
    newscript->GOGetAI = &GetAI_go_lards_picnic_basket;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_corrupted_crystal";
    newscript->pGOHello = &GOHello_go_corrupted_crystal;
    newscript->GOGetAI = &GetAI_go_corrupted_crystal;
    newscript->RegisterSelf();
}
