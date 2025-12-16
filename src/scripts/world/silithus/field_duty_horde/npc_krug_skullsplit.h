#pragma once
#include <AI/AbilityTimer.h>

#include "defines.h"
#include "scriptPCH.h"

typedef enum
{
    EVENT_NOT_STARTED,
    EVENT_STARTED,
    EVENT_COMPLETE
} FieldDutyPaperEventStatus;

struct npc_krug_skullsplit : public ScriptedAI
{
private:
    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    AbilityTimer m_mortalStrikeTimer = AbilityTimer(16856, 5000, 8000);
    AbilityTimer m_thunderClapTimer = AbilityTimer(15548, 10000, 15000);

    static constexpr int SAY_LINE_1 = -1780131;
    static constexpr int SAY_LINE_2 = -1780132;
    static constexpr int SAY_LINE_3 = -1780133;
    static constexpr int SAY_LINE_4 = -1780134;
    static constexpr int SAY_LINE_5 = -1780135;
    static constexpr int SAY_LINE_6 = -1780136;
    static constexpr int SAY_LINE_7 = -1780137;
    static constexpr int SAY_LINE_8 = -1780138;
    static constexpr int SAY_LINE_9 = -1780139;

    static constexpr const char* GOSSIP_ITEM_KRUG_SKULLSPLIT_1 = "Continue.";
    static constexpr const char* GOSSIP_ITEM_KRUG_SKULLSPLIT_2 = "Very well, let's go!";
public:
    npc_krug_skullsplit(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_krug_skullsplit::Reset();
        ResetEvent();
    }

    FieldDutyPaperEventStatus eEventStatus;
    uint32 m_uiEventResetTimer;
    uint32 m_uiSpeechNum;
    uint32 m_uiMoveTimer;
    uint32 InitTimer;
    uint32 m_uiSpeechTimer;
    bool m_bAlreadyMoved;
    bool m_bIsDoingSpeech;
    ObjectGuid m_uiShaiGUID;
    ObjectGuid m_uiMerokGUID;
    ObjectGuid m_uiHunterKillerGUID;

    void Reset() override
    {
        m_gcdTimer.SetCooldown(0u);
        m_mortalStrikeTimer.Reset();
        m_thunderClapTimer.Reset();
    }

    FieldDutyPaperEventStatus GetEventStatus()
    {
        return eEventStatus;
    }

    void ResetEvent()
    {
        eEventStatus = EVENT_NOT_STARTED;
        if (Creature* pHunterKiller = m_creature->GetMap()->GetCreature(m_uiHunterKillerGUID))
        {
            pHunterKiller->ForcedDespawn();
            pHunterKiller->AddObjectToRemoveList();
        }
        m_uiSpeechTimer = 0;
        m_uiSpeechNum = 0;
        m_uiHunterKillerGUID.Clear();
        m_uiEventResetTimer = 120000;
        m_bAlreadyMoved = true;
        m_bIsDoingSpeech = false;
        m_uiMoveTimer = 10000;
        ResetOtherNPCsPosition();
        InitTimer = 2000;

        //m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
    }

    void StartEvent()
    {
        if (eEventStatus == EVENT_NOT_STARTED)
        {
            DoScriptText(SAY_LINE_1, m_creature);

            m_uiSpeechTimer = 10000;
            m_uiSpeechNum = 0;
            m_bIsDoingSpeech = true;

            Creature* pHunterKiller = m_creature->SummonCreature(
                Silithus::CreatureEntries::HIVEREGAL_HUNTERKILLER,
                Silithus::Locations::HUNTERKILLER_SPAWN.x,
                Silithus::Locations::HUNTERKILLER_SPAWN.y,
                Silithus::Locations::HUNTERKILLER_SPAWN.z,
                Silithus::Locations::HUNTERKILLER_SPAWN.orientation,
                TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,
                450000,
                true);
            if (pHunterKiller)
            {
                pHunterKiller->SetRespawnDelay(460);
                eEventStatus = EVENT_STARTED;
                m_bAlreadyMoved = false;
                m_uiHunterKillerGUID = pHunterKiller->GetObjectGuid();
                InitOtherNPCsGuids();
                pHunterKiller->SetFactionTemplateId(35);
            }

            m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
        }
    }

    void CompleteEvent()
    {
        m_uiEventResetTimer = 1800000;
        eEventStatus = EVENT_COMPLETE;
        m_bIsDoingSpeech = false;

        m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
    }

    void InitOtherNPCsGuids()
    {
        m_uiMerokGUID = 0;
        m_uiShaiGUID = 0;

        if (Creature* pMerok = m_creature->FindNearestCreature(Silithus::CreatureEntries::MEROK_LONGSTRIDE, 100.0f, true))
            m_uiMerokGUID = pMerok->GetObjectGuid();

        if (Creature* pShai = m_creature->FindNearestCreature(Silithus::CreatureEntries::SHADOW_PRIESTESS_SHAI, 100.0f, true))
            m_uiShaiGUID = pShai->GetObjectGuid();
    }

    void ResetOtherNPCsPosition()
    {
        if (Creature* pMerok = m_creature->GetMap()->GetCreature(m_uiMerokGUID))
        {
            pMerok->GetMotionMaster()->MovePoint(0, Silithus::Locations::MEROK_SPAWN);
        }

        if (Creature* pShai = m_creature->GetMap()->GetCreature(m_uiShaiGUID))
        {
            pShai->GetMotionMaster()->MovePoint(0, Silithus::Locations::SHAI_SPAWN);
        }
    }

    void SummonedCreatureJustDied(Creature* pSummoned) override
    {
        if (pSummoned->GetObjectGuid() == m_uiHunterKillerGUID)
        {
            CompleteEvent();
        }
    }

    void SummonedCreatureDespawn(Creature* pSummoned) override
    {
        if (pSummoned->GetObjectGuid() == m_uiHunterKillerGUID && eEventStatus != EVENT_COMPLETE)
        {
            ResetEvent();
        }
    }

    void JustDied(Unit* pKiller) override
    {
        ResetEvent();
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        /**
         * Note: The blizzlike behaviour here is probably to require the Hunter-Killer
         * to be killed much more often than our current timers. It'd be pretty aids
         * killing it every run though or requiring many players to wait each attempt.
         */
        if (eEventStatus == EVENT_COMPLETE)
        {
            if (m_uiEventResetTimer <= uiDiff)
            {
                ResetEvent();
            }
            else
                m_uiEventResetTimer -= uiDiff;
        }

        /* Speech */
        if (m_bIsDoingSpeech)
        {
            if (m_uiSpeechTimer < uiDiff)
            {
                switch (m_uiSpeechNum)
                {
                case 0:
                    // 8 seconds till next line
                    DoScriptText(SAY_LINE_2, m_creature);
                    m_uiSpeechTimer = 10000;
                    ++m_uiSpeechNum;
                    break;
                case 1:
                    // 8 seconds till next line
                    DoScriptText(SAY_LINE_3, m_creature);
                    m_uiSpeechTimer = 10000;
                    ++m_uiSpeechNum;
                    break;
                case 2:
                    // 8 seconds till next line
                    DoScriptText(SAY_LINE_4, m_creature);
                    m_uiSpeechTimer = 10000;
                    ++m_uiSpeechNum;
                    break;
                case 3:
                    // 6,5 seconds till next line
                    DoScriptText(SAY_LINE_5, m_creature);
                    m_uiSpeechTimer = 6500;
                    ++m_uiSpeechNum;
                    break;
                case 4:
                    // 2 seconds till next line
                    DoScriptText(SAY_LINE_6, m_creature);
                    m_uiSpeechTimer = 1000;
                    ++m_uiSpeechNum;
                    break;
                case 5:
                    if (Creature* pMerok = m_creature->GetMap()->GetCreature(m_uiMerokGUID))
                    {
                        pMerok->GetMotionMaster()->MovePoint(0, Silithus::Locations::MEROK_DESTINATION);
                    }

                    if (Creature* pShai = m_creature->GetMap()->GetCreature(m_uiShaiGUID))
                    {
                        pShai->GetMotionMaster()->MovePoint(0, Silithus::Locations::SHAI_DESTINATION);
                    }
                    // 7 seconds till next line
                    DoScriptText(SAY_LINE_7, m_creature);
                    m_uiSpeechTimer = 6000;
                    ++m_uiSpeechNum;
                    break;
                case 6:
                    DoScriptText(SAY_LINE_8, m_creature);
                    ++m_uiSpeechNum;
                    break;
                }
            }
            else
                m_uiSpeechTimer -= uiDiff;
        }

        /* Clean unwanted states */
        if (Creature* pHunterKiller = m_creature->GetMap()->GetCreature(m_uiHunterKillerGUID))
        {
            if (eEventStatus == EVENT_NOT_STARTED)
            {
                pHunterKiller->ForcedDespawn();
                pHunterKiller->AddObjectToRemoveList();
            }
        }
        else
        {
            if (eEventStatus == EVENT_STARTED)
            {
                ResetEvent();
            }
        }

        /* Start of combat script */
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_gcdTimer.Update(uiDiff);
        m_mortalStrikeTimer.Update(uiDiff);
        m_thunderClapTimer.Update(uiDiff);

        if (m_mortalStrikeTimer.IsReady() && m_gcdTimer.IsReady())
        {
            if (DoCastSpellIfCan(m_creature, m_mortalStrikeTimer.SpellID()) == CAST_OK)
            {
                m_gcdTimer.Reset();
                m_mortalStrikeTimer.Reset();
            }
        }

        if (m_thunderClapTimer.IsReady() && m_gcdTimer.IsReady())
        {
            if (DoCastSpellIfCan(m_creature, m_thunderClapTimer.SpellID()) == CAST_OK)
            {
                m_gcdTimer.Reset();
                m_thunderClapTimer.Reset();
            }
        }

        DoMeleeAttackIfReady();
    }

    static bool GossipHello(Player* pPlayer, Creature* pCreature)
    {
        FieldDutyPaperEventStatus eEventStatus = EVENT_NOT_STARTED;

        if (npc_krug_skullsplit* pKrugSkullSplitAI = dynamic_cast<npc_krug_skullsplit*>(pCreature->AI()))
            eEventStatus = pKrugSkullSplitAI->GetEventStatus();

        if ((pPlayer->GetQuestStatus(Silithus::QuestEntries::FIELD_DUTY) == QUEST_STATUS_INCOMPLETE)
            && (eEventStatus == EVENT_NOT_STARTED))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_KRUG_SKULLSPLIT_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        }
        else if ((pPlayer->GetQuestStatus(Silithus::QuestEntries::FIELD_DUTY) == QUEST_STATUS_INCOMPLETE)
            && (eEventStatus == EVENT_COMPLETE))
        {
            if (pCreature->IsQuestGiver())
                pPlayer->PrepareQuestMenu(pCreature->GetGUID());
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        }
        else
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }

    static bool GossipSelect(Player* pPlayer, Creature* pCreature, uint32_t uiSender, uint32_t uiAction)
    {
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_KRUG_SKULLSPLIT_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        }

        if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        {
            if (npc_krug_skullsplit* pKrugSkullSplitAI = dynamic_cast<npc_krug_skullsplit*>(pCreature->AI()))
                pKrugSkullSplitAI->StartEvent();
            pPlayer->CLOSE_GOSSIP_MENU();
        }
        return true;
    }

    static CreatureAI* GetAI(Creature* creature)
    {
        return new npc_krug_skullsplit(creature);
    }

    static void register_script()
    {
        const auto script = new Script;
        script->Name = "npc_krug_skullsplit";
        script->GetAI = &npc_krug_skullsplit::GetAI;
        script->pGossipHello = &npc_krug_skullsplit::GossipHello;
        script->pGossipSelect = &npc_krug_skullsplit::GossipSelect;
        script->RegisterSelf();
    }
};
