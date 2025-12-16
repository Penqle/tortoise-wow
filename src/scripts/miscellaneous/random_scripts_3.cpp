#include "scriptPCH.h"
#include "Utilities/EventProcessor.h"
#include "GuardAI.h"
#include "PetAI.h"
#include "Language.h"
#include "MountManager.hpp"
#include "CompanionManager.hpp"
#include "ToyManager.hpp"
#include "Shop/ShopMgr.h"

template <typename Functor>
void DoAfterTime(Player* player, const uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

template <typename Functor>
void DoAfterTime(Creature* creature, const uint32 p_time, Functor&& function)
{
    creature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), creature->m_Events.CalculateTime(p_time));
}

void insomniDialogue(Player* pPlayer, Creature* pQuestGiver);

class DemorphAfterTime : public BasicEvent
{
public:
    explicit DemorphAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player)
            player->DeMorph();
        return false;
    }

private:
    uint64 player_guid;
};

class DismountAfterTime : public BasicEvent
{
public:
    explicit DismountAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player)
            player->Unmount(false);
        return false;
    }

private:
    uint64 player_guid;
};

bool GOHello_runed_thalassian_tablet(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(80290) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(91808, 20.0F)) // The Lost Tablets
        pGo->SummonCreature(91808, pPlayer->GetPositionX() + 2.0F, pPlayer->GetPositionY() + 2.0F, pPlayer->GetPositionZ() + 1.0F, 0.0F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15 * IN_MILLISECONDS);
    return true;
}

struct highborne_wraithAI : public ScriptedAI
{
    highborne_wraithAI(Creature* c) : ScriptedAI(c) { Reset(); }

    bool transformed;
    bool fightBegun;

    void Reset()
    {
        transformed = false;
        fightBegun = false;
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!fightBegun)
        {
            fightBegun = true;
            m_creature->MonsterYell(66425);
        }

        DoMeleeAttackIfReady();
    }
    void EnterCombat() {}
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_highborne_wraith(Creature* _Creature) { return new highborne_wraithAI(_Creature); }

bool GOHello_skeleton_thalo(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(80291) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(70891, 20.0F)) // The Shadow Well
    {
        pGo->SummonCreature(70891, pPlayer->GetPositionX() + 2.0F, pPlayer->GetPositionY() + 2.0F, pPlayer->GetPositionZ() + 1.0F, 0.0F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15 * IN_MILLISECONDS);
        ChatHandler(pPlayer).SendSysMessage("|cffF58CBAWhisper: He sees all. Indulge yourself in his voice, for there is no point in defying the inevitable. The day of reckoning is approaching...|r");
    }
    return true;
}

CreatureAI* GetAI_skeleton_thalo(Creature* _Creature) { return new highborne_wraithAI(_Creature); }

bool GossipHello_analyzor_53(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40044) == QUEST_STATUS_INCOMPLETE) // The Analyzation Chip
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66636, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(91775, pCreature->GetGUID());
    return true;
}

bool GossipSelect_analyzor_53(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer(66820, pPlayer);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_the_cow_king(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66637, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(91799, pCreature->GetGUID());
    return true;
}

bool GossipSelect_the_cow_king(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, creature = pCreature]() {
            creature->MonsterSayToPlayer(66638, player);
            creature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
            creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            creature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

enum cow_king_spells
{
    SPELL_FIREBALL = 20678,
    SPELL_SHADOWBOLT_VOLLEY = 25586,
    SPELL_THUNDERCLAP = 23931,
    SPELL_FROSTBOLT = 28479,
    SPELL_CHARGE = 22911,
    SPELL_WARSTOMP = 16727,
};

struct the_cow_kingAI : public ScriptedAI
{
public:
    the_cow_kingAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    void Reset() override
    {
        m_uiCleaveTimer = 10000;
        m_uiMortalStrikeTimer = 15000;
        m_uiUppercutTimer = 5000;
        m_uiChargeTimer = 20000;
        m_uiWarstompTimer = 0;
    }

    void SpellHitTarget(Unit* /*pTarget*/, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_CHARGE)
            m_uiWarstompTimer = 500;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiCleaveTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FIREBALL) == CAST_OK)
                m_uiCleaveTimer = 10000;
        }
        else
            m_uiCleaveTimer -= uiDiff;

        if (m_uiMortalStrikeTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOWBOLT_VOLLEY) == CAST_OK)
                m_uiMortalStrikeTimer = 15000;
        }
        else
            m_uiMortalStrikeTimer -= uiDiff;

        if (m_uiUppercutTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FROSTBOLT) == CAST_OK)
                m_uiUppercutTimer = 20000;
        }
        else
            m_uiUppercutTimer -= uiDiff;

        if (m_uiChargeTimer <= uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_CHARGE) == CAST_OK)
                    m_uiChargeTimer = urand(15000, 25000);
            }
        }
        else
            m_uiChargeTimer -= uiDiff;

        if (m_uiWarstompTimer)
        {
            if (m_uiWarstompTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_WARSTOMP) == CAST_OK)
                    m_uiWarstompTimer = 0;
            }
            else
                m_uiWarstompTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
        EnterEvadeIfOutOfCombatArea(uiDiff);
    }

private:
    uint32 m_uiCleaveTimer;
    uint32 m_uiMortalStrikeTimer;
    uint32 m_uiUppercutTimer;
    uint32 m_uiChargeTimer;
    uint32 m_uiWarstompTimer;
};

CreatureAI* GetAI_the_cow_king(Creature* pCreature) { return new the_cow_kingAI(pCreature); }

bool GossipHello_npc_bessy(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(40056))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66639, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(91798, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_bessy(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_CowLevel(801, 16649.712F, 16817.148F, 67.328f, 6.27F);
        pPlayer->TeleportTo(m_CowLevel);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_wendo_wobblefizz(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40068) //Wobblefree Fizz-gear
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_STATE_WORK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66821, player);
            });
        DoAfterTime(pPlayer, 9 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66822, player);
            });
        DoAfterTime(pPlayer, 13 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->HandleEmote(EMOTE_STATE_NONE);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60319))
                player->KilledMonster(cInfo, ObjectGuid());
            });
    }
    return false;
}

bool GOHello_go_grain_sacks(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40099) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(40099)->m_creatureOrGOcount[2] != 5)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66654, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(2010824, pGo->GetGUID());
    return true;
}

bool GOSelect_go_grain_sacks(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->HasItemCount(5438, 1))
        {
            pPlayer->GetSession()->SendNotification("Requires Grelda\'s Poison Vial.");
        }
        else
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60323))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
            pGo->Deactivate(150);
            // Purple smoke effect: 
            pPlayer->SummonGameObject(2000560, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 150, true);
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_torble_and_kex(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40132) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(40133) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60441 || pCreature->GetEntry() == 60443)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66640, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66641, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(4654, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_torble_and_kex(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        switch (pCreature->GetEntry())
        {
            case 60441: // Torble Sparksprocket
                DoAfterTime(pCreature, 1 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66372);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->SetVisibility(VISIBILITY_ON);
                    }
                });
                DoAfterTime(pCreature, 5 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66373);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 7 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66374);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 9 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66374);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 11 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66375);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 15 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66376);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 20 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66377);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 25 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66378);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 30 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66379);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 35 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66380);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 40 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66381);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 45 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66382);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 50 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66383);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 55 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x51 = npc->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66384);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pPlayer, 60 * IN_MILLISECONDS, [player = pPlayer, npcGuid = pCreature->GetObjectGuid()]()
                {
                    if (Creature* npc = player->GetMap()->GetCreature(npcGuid))
                    {
                        npc->MonsterSayToPlayer(67026, player);
                        npc->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pPlayer, 65 * IN_MILLISECONDS, [player = pPlayer]()
                {
                    if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                    {
                        analyzer_x51->MonsterSay(66386);
                        analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60324))
                            player->KilledMonster(cInfo, ObjectGuid());
                    }
                });
                break;

            case 60443: // Kex Blowmaster
                DoAfterTime(pCreature, 1 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66387);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->SetVisibility(VISIBILITY_ON);
                    }
                });
                DoAfterTime(pCreature, 5 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66373);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 10 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66374);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 15 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66374);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 15 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66388);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 20 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66389);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 25 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66390);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 30 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66391);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 35 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66392);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 40 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66393);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 45 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66394);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 50 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66395);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 55 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66396);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pCreature, 60 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    if (Creature* analyzer_x48 = npc->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66397);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                });
                DoAfterTime(pCreature, 65 * IN_MILLISECONDS, [npc = pCreature]()
                {
                    npc->MonsterSay(66398);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
                DoAfterTime(pPlayer, 70 * IN_MILLISECONDS, [player = pPlayer]()
                {
                    if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                    {
                        analyzer_x48->MonsterSay(66399);
                        analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60324))
                            player->KilledMonster(cInfo, ObjectGuid());
                    }
                });
                break;
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (pCreature->GetEntry() == 60441 || pCreature->GetEntry() == 60443)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_carlos_matos(Player* pPlayer, Creature* pCreature)
{
    if (!pPlayer->IsHardcore())
    {
        std::string buyStr = "Buy for " + MoneyToString(sObjectMgr.GetShellCoinBuyPrice());
        std::string sellStr = "Sell for " + MoneyToString(sObjectMgr.GetShellCoinSellPrice());
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, buyStr.c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, sellStr.c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pCreature->GetEntry() == 51243 ? 47024 : 60903, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_carlos_matos(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        int32 price = sObjectMgr.GetShellCoinBuyPrice();
        if (pPlayer->GetMoney() >= price)
        {
            if (pPlayer->AddItem(ITEM_SHELL_COIN))
            {
                sObjectMgr.IncreaseShellCoinCount();
                pPlayer->ModifyMoney(-price);
                sWorld.AddShellCoinOwner(pPlayer->GetObjectGuid());
            }
            else
                pPlayer->GetSession()->SendNotification("You are overburdened.");
        }
        else
            pPlayer->GetSession()->SendNotification("You can't afford that.");
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (pPlayer->HasItemCount(ITEM_SHELL_COIN, 1, false))
        {
            pPlayer->DestroyItemCount(ITEM_SHELL_COIN, 1, true);
            
            int32 price = sObjectMgr.GetShellCoinSellPrice();
            sObjectMgr.DecreaseShellCoinCount();
            pPlayer->ModifyMoney(price);
        }
        else
            pPlayer->GetSession()->SendNotification("You don't have any shell coins.");
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    GossipHello_npc_carlos_matos(pPlayer, pCreature); // reopen window
    return true;
}

bool QuestAccept_npc_arnold_boran(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40141) // The Boran Family
    {
        if (pPlayer->AddItem(60204)) first_item_added = true;
        if (pPlayer->AddItem(60205)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40141);
            pPlayer->SetQuestStatus(40141, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool GossipHello_npc_samuel_boran(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40141) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60205, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66642, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(92936, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_samuel_boran(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        if (pPlayer->HasItemCount(60205, 1, false))
        {
            pPlayer->DestroyItemCount(60205, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66643, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66644, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            player->AddItem(60203, 1);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60326))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_karl_boran(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40141) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60204, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66642, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(1042, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_karl_boran(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        if (pPlayer->HasItemCount(60204, 1, false))
        {
            pPlayer->DestroyItemCount(60204, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66645, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66646, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            player->AddItem(60202, 1);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60325))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_chef_jenkel(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pCreature->IsVendor())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ACTION_TRADE, 66647, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, 66648, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);

    if (pPlayer->GetQuestStatus(40142) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 91950 && !pPlayer->HasItemCount(60207, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66649, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(91950, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_chef_jenkel(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->GetSession()->SendListInventory(pCreature->GetGUID());

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->AddItem(60207);
        if (pPlayer->HasItemCount(60207, 1, false))
        {
            pCreature->MonsterSayToPlayer(66650, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->GetSession()->SendTrainerList(pCreature->GetGUID());
        return true;
    }

    return true;
}

bool GossipHello_npc_marty_moonshine(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsVendor())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ACTION_TRADE, 66651, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40148) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 92137 && !pPlayer->HasItemCount(60217, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66652, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(92137, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_marty_moonshine(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->GetSession()->SendListInventory(pCreature->GetGUID());

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->AddItem(60217);
        if (pPlayer->HasItemCount(60217, 1, false))
        {
            pCreature->MonsterSayToPlayer(66653, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

struct npc_captain_saltbeardAI : public ScriptedAI
{
    npc_captain_saltbeardAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66400);
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_captain_saltbeard(Creature* _Creature) { return new npc_captain_saltbeardAI(_Creature); }

struct npc_captain_blackeyeAI : public ScriptedAI
{
    npc_captain_blackeyeAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66401);
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_captain_blackeye(Creature* _Creature) { return new npc_captain_blackeyeAI(_Creature); }

struct npc_captain_ironhoofAI : public ScriptedAI
{
    npc_captain_ironhoofAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66402);
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_captain_ironhoof(Creature* _Creature) { return new npc_captain_ironhoofAI(_Creature); }

bool GOHello_go_blast_powder_keg(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40174) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60373, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66655, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(2010834, pGo->GetGUID());
    }

    if (pPlayer->GetQuestStatus(40186) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60257, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66656, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(2010834, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_blast_powder_keg(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);
        pGo->Deactivate(150);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60328))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pGo->SummonGameObject(2000838, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ() + 0.6f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true); /*burning effect*/
        pPlayer->DestroyItemCount(60257, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60330))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_keg_of_rum(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40178) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60252, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66657, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_keg_of_rum(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010836)
        {
            pPlayer->DestroyItemCount(60252, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
            pPlayer->CastedCreatureOrGO(pGo->GetEntry(), pGo->GetObjectGuid(), 0);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_morgan_the_storm(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40179) == QUEST_STATUS_INCOMPLETE) // Exterminate the Rat
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66658, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_morgan_the_storm(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        //pCreature->MonsterSay(66403);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_garfield_sparkblast(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40172) == QUEST_STATUS_INCOMPLETE) // Red Flag over the Sea
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66659, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40187) == QUEST_STATUS_INCOMPLETE) // Captain of the Bloodsail Buccaneers
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66660, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (pPlayer->GetQuestStatus(40354) == QUEST_STATUS_INCOMPLETE) // Naming the Vessel
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66661, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60496, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_garfield_sparkblast(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        auto faction1 = sObjectMgr.GetFactionEntry(87); // Bloodsail Buccaneers
        if (faction1)
        {
            pPlayer->GetReputationMgr().SetReputation(faction1, 0);
            pCreature->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60332))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66662, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66663, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 8 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterYell(66426);
            npc->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterYell(66427);
            npc->HandleEmote(EMOTE_ONESHOT_CHEER);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60331))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        pCreature->MonsterSay(66404);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60354))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_thirael(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40184) == QUEST_STATUS_INCOMPLETE) // No Hope for Tomorrow
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66664, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_thirael(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_thiraelAI : public ScriptedAI
{
    npc_thiraelAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() { }
    void JustDied(Unit*) override
    {
        if(!m_creature->FindNearestCreature(60464, 5.0F))
        m_creature->SummonCreature(60464, m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), m_creature->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 115 * IN_MILLISECONDS);
    }
};

CreatureAI* GetAI_npc_thirael(Creature* _Creature) { return new npc_thiraelAI(_Creature); }

bool QuestRewarded_npc_thirael_ghost(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40184) // No Hope for Tomorrow
    {
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->ForcedDespawn();
            });
    }

    return false;
}

bool QuestRewarded_npc_blazno(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40190) // The Blazno Touch
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66665, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66666, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    return false;
}

bool QuestRewarded_npc_daela_evermoon(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40197) // Old Greypaw
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CRY);
    }

    return false;
}

bool GossipHello_npc_old_greypaw(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40197) == QUEST_STATUS_INCOMPLETE) // Old Greypaw
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66667, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(60470, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_old_greypaw(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66668, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66669, player);
            npc->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            npc->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_old_greypawAI : public ScriptedAI
{
    npc_old_greypawAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() { }
    void JustDied(Unit*) override
    {
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        m_creature->SetFactionTemporary(15, TEMPFACTION_RESTORE_COMBAT_STOP);
    }
};

CreatureAI* GetAI_npc_old_greypaw(Creature* _Creature) { return new npc_old_greypawAI(_Creature); }

bool GossipHello_npc_insomni(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40210) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66670, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40214) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66671, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    pPlayer->SEND_GOSSIP_MENU(60446, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_insomni(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{

    auto playerGuid = pPlayer->GetObjectGuid();
    switch (uiAction)
    {
    case GOSSIP_ACTION_INFO_DEF + 1:
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        DoAfterTime(pCreature, 1 * IN_MILLISECONDS, [npc = pCreature]() {
            npc->MonsterSay(66405);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pCreature, 21 * IN_MILLISECONDS, [npc = pCreature]() {
            npc->MonsterSay(66406);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pCreature, 41 * IN_MILLISECONDS, [ npc = pCreature]() {
            npc->MonsterSay(66407);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pCreature, 56 * IN_MILLISECONDS, [playerGuid, npc = pCreature]() {
            auto player = sObjectAccessor.FindPlayer(playerGuid);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60334); cInfo && player)
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            });
        break;
    }
    case GOSSIP_ACTION_INFO_DEF + 2:
    {
        insomniDialogue(pPlayer, pCreature);
        break;
    }

    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_insomni(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    auto playerGuid = pPlayer->GetObjectGuid();

    if (pQuest->GetQuestId() == 40171) // The Tower of Lapidis IX
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pQuestGiver, 18 * IN_MILLISECONDS, [npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            });
        DoAfterTime(pQuestGiver, 20 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            auto player = sObjectAccessor.FindPlayer(playerGuid);
            if (player)
            {
                player->AddItem(60244);
                if (player->HasItemCount(60244, 1, false))
                {
                    npc->MonsterSayToPlayer(66672, player);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                    npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                    return true;
                }
                else
                    player->RemoveQuest(40171);
                player->SetQuestStatus(40171, QUEST_STATUS_NONE);
                player->GetSession()->SendNotification("Your bags are full!");
            }
            return false;
            });
    }

    if (pQuest->GetQuestId() == 40271) // The Maul'ogg Crisis VIII --
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pQuestGiver, 18 * IN_MILLISECONDS, [npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            });
        DoAfterTime(pQuestGiver, 20 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            auto player = sObjectAccessor.FindPlayer(playerGuid);
            if (player)
            {
                player->AddItem(60345);
                if (player->HasItemCount(60345, 1, false))
                {
                    npc->MonsterSayToPlayer(66673, player);
                    npc->HandleEmote(EMOTE_ONESHOT_TALK);
                    return true;
                }
                else
                    player->RemoveQuest(40271);
                player->SetQuestStatus(40271, QUEST_STATUS_NONE);
                player->GetSession()->SendNotification("Your bags are full!");
            }
            return false;
            });
    }

    if (pQuest->GetQuestId() == 40214) // Uncovering Evil
        insomniDialogue(pPlayer, pQuestGiver);

    return false;
}

void insomniDialogue(Player* pPlayer, Creature* pQuestGiver)
{
    pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

    auto pGuid = pPlayer->GetObjectGuid();

    DoAfterTime(pQuestGiver, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->SetWalk(true);
            npc->GetMotionMaster()->MovePoint(0, -12864.27F, 2809.63F, -6.85F, 0, 3.0F);
            npc->PMonsterSay(66408, player->GetName());
        }
        });
    DoAfterTime(pQuestGiver, 39 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->MonsterSay(66409);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
        }
        });
    DoAfterTime(pQuestGiver, 42 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12865.99F, 2821.96F, -0.82F, 0, 3.0F);
        }
        });
    DoAfterTime(pQuestGiver, 47 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->MonsterSay(66410);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
        }
        });
    DoAfterTime(pQuestGiver, 48 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12864.54F, 2908.59F, 10.24F, 0, 3.0F);
        }
        });
    DoAfterTime(pQuestGiver, 61 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12865.12F, 2873.97F, 1.67F, 0, 3.0F);
        }
        });
    DoAfterTime(pQuestGiver, 65 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12864.54F, 2908.59F, 10.24F, 0, 3.0F, 0.62F);
        }
        });
    DoAfterTime(pQuestGiver, 78 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->MonsterSay(66411);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
        }
        });
    DoAfterTime(pQuestGiver, 82 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->CastSpell(npc, 13236, false);
            GameObject* riftSpell = npc->SummonGameObject(7000035, -12853.94f, 2915.04f, 10.81f, 0);
        }
        });

    DoAfterTime(pQuestGiver, 92 * IN_MILLISECONDS, [pGuid, npc = pQuestGiver]() {
        npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        WorldObject* obj = nullptr;
        Player* pPlayer = ObjectAccessor::FindPlayer(pGuid);
        if (!pPlayer)
            obj = npc;
        else
            obj = pPlayer;

        if (GameObject* riftSpell = obj->FindNearestGameObject(7000035, 50.0f))
            riftSpell->AddObjectToRemoveList();
        npc->SummonCreature(60499, -12853.94f, 2915.04f, 10.81f, 3.83F, TEMPSUMMON_CORPSE_DESPAWN);
        });
}

struct npc_fearothAI : public ScriptedAI
{
    npc_fearothAI(Creature* c) : ScriptedAI(c) { Reset(); }

    bool transformed;
    bool fightBegun;

    void Reset() 
    {
        transformed = false;
        fightBegun = false;
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!fightBegun)
        {
            fightBegun = true;
            m_creature->MonsterSay(66412);
        }

        if (!transformed && m_creature->GetHealthPercent() < 25.0f)
        {
            if (Creature* insomni = m_creature->FindNearestCreature(60446, 100.0F))
            {
                Creature* insomnius = m_creature->SummonCreature(60498, insomni->GetPositionX(), insomni->GetPositionY(), insomni->GetPositionZ(), insomni->GetOrientation(), TEMPSUMMON_MANUAL_DESPAWN);

                transformed = true;

                insomni->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                insomni->DespawnOrUnsummon();
            }
        }

        DoMeleeAttackIfReady();
    }

    void JustDied(Unit*) 
    {
        Creature* insomnius = m_creature->FindNearestCreature(60498, 40.0F);

        if (insomnius)
        {
            insomnius->MonsterSay(66413);
            insomnius->DespawnOrUnsummon();
        }
    }

    void EnterEvadeMode() 
    {
        if (Creature* insomni = m_creature->FindNearestCreature(60446, 100.0F))
            insomni->DespawnOrUnsummon();

        if (Creature* insomnius = m_creature->FindNearestCreature(60498, 100.0F))
            insomnius->DespawnOrUnsummon();

        m_creature->DespawnOrUnsummon();
    }
};

CreatureAI* GetAI_npc_fearoth(Creature* _Creature) { return new npc_fearothAI(_Creature); }

struct npc_lapidisAI : public ScriptedAI
{
    npc_lapidisAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66414);
    }
    void JustDied(Unit*) override
    {
        m_creature->MonsterSay(66415);
    }
    void EnterCombat() {}
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_lapidis(Creature* _Creature) { return new npc_lapidisAI(_Creature); }

bool GossipHello_npc_lorthiras(Player* pPlayer, Creature* pCreature)
{
    //if (pPlayer->GetQuestStatus(00000) == QUEST_STATUS_INCOMPLETE)
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66674, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60503, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_lorthiras(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFactionTemporary(554, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_lorthiras(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40239) // The Will of Lorthiras
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        pQuestGiver->CastSpell(pQuestGiver, 698, false); // Ritual of Summoning

        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66675, player);
            npc->CastSpell(npc, 1456, false); // Life Tap
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });

        DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    return false;
}

#define LAPIDIS_TOWER_KEY 60302
#define MAGICALLY_SEALED_DOOR_RESET 1

bool GOHello_magically_sealed_door(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(LAPIDIS_TOWER_KEY, 1))
    {
        pGo->UseDoorOrButton(10);
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        if (GameObjectAI* gAI = pGo->AI())
            gAI->SetData(MAGICALLY_SEALED_DOOR_RESET, 1);
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Lapidis Tower Key.");

    return true;
}

struct magically_sealed_door : public GameObjectAI
{
    explicit magically_sealed_door(GameObject* pGo) : GameObjectAI(pGo) {}
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
        if (id == MAGICALLY_SEALED_DOOR_RESET)
            BackTimer = 25 * IN_MILLISECONDS;
        GameObjectAI::SetData(id, value);
    }
};

GameObjectAI* GetAI_magically_sealed_door(GameObject* Obj) { return new magically_sealed_door(Obj); }

bool GossipHello_npc_iselus(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40285) == QUEST_STATUS_INCOMPLETE)
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66676, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(91722, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_iselus(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66677, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60340))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_way_stone(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer->HasItemCount(60372, 1, false))
    {
        pPlayer->GetSession()->SendNotification("Require The Staff of Eldara");
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    else 
    {
        switch (pGo->GetEntry())
        {
        case 2010849:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66678, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
            return true;
            break;

        case 2010850:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66679, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
            return true;
            break;
        }
    }
    return true;
}

bool GOSelect_go_way_stone(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_eldarath(1, 3814.92F, -5526.18F, 131.00f, 3.70F);
        pPlayer->TeleportTo(m_eldarath);
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2)
    {
        static const WorldLocation m_dorath(1, 4011.45F, -7131.67F, 24.81f, 3.70F);
        pPlayer->TeleportTo(m_dorath);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GOHello_go_ashan_stone(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40253) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66680, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    pPlayer->SEND_GOSSIP_MENU(100400, pGo->GetGUID());
    return true;
}

bool GOSelect_go_ashan_stone(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        GameObject* ashan_stone = pPlayer->FindNearestGameObject(2010851, 10.0F); // Ashan Stone
        if (pGo->GetEntry() == 2010851)
        {
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60336))
                pPlayer->KilledMonster(dummy_bunny, ObjectGuid());

            pPlayer->SummonGameObject(2010804, ashan_stone->GetPositionX(), ashan_stone->GetPositionY(), ashan_stone->GetPositionZ() - 4.00F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 4, true);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_lord_crukzogg(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40264) == QUEST_STATUS_INCOMPLETE) // The Maul'ogg Crisis I
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66681, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40272) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60345, 1, false)) // The Maul'ogg Crisis IX
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66682, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    pPlayer->SEND_GOSSIP_MENU(92180, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_lord_crukzogg(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66683, player);
            npc->HandleEmote(EMOTE_ONESHOT_LAUGH);
            });
        DoAfterTime(pPlayer, 4 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(67027, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60337))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
            player->DestroyItemCount(60345, 1, true);
            player->SaveInventoryAndGoldToDB();
            });
        DoAfterTime(pPlayer, 4 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66385, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66475, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60339))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_seer_bolukk(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40266) == QUEST_STATUS_INCOMPLETE) // The Maul'ogg Crisis III
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66684, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(91854, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_seer_bolukk(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66685, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66686, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 33 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60338))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_duke_nargelas(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40280) // Ways of Magic
    {
        if (pPlayer->AddItem(60189)) first_item_added = true;
        if (pPlayer->AddItem(60190)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40280);
            pPlayer->SetQuestStatus(40280, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool QuestAccept_npc_pierce_shackleton(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40282) // Darlthos Legacy
    {
        if (pPlayer->AddItem(60189)) first_item_added = true;
        if (pPlayer->AddItem(60391)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40282);
            pPlayer->SetQuestStatus(40282, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool GossipHello_npc_katokar_bladewind(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40289) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66687, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(92196, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_katokar_bladewind(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66688, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60341))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_yhargosh(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40293) // Ritual of the Farseer
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->SetWalk(true);
                pQuestGiver->GetMotionMaster()->MovePoint(0, 4993.68F, -6042.01F, 89.09F, 0, 3.0F, 2.05F);
            }, 1000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->GetMotionMaster()->MovePoint(0, 4985.88F, -6026.60F, 88.69F, 0, 3.0F, 0.61F);
            }, 2300);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->GetMotionMaster()->MovePoint(0, 4993.11F, -6020.67F, 89.27F, 0, 3.0F, 0.14F);
            }, 7000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->GetMotionMaster()->MovePoint(0, 5009.55F, -6018.99F, 86.59F, 0, 3.0F, 0.11F);
            }, 11000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterYell(66428);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_SHOUT);
            }, 19000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->SummonGameObject(2000745, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 36, true);
            }, 23000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66416);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 27000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66417);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 35000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66418);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 43000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66419);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 51000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66420);
                pQuestGiver->HandleEmote(EMOTE_STATE_KNEEL);
            }, 59000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->GetMotionMaster()->MovePoint(0, 4993.11F, -6020.67F, 89.27F, 0, 3.0F, 3.28F);
            }, 67000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->GetMotionMaster()->MovePoint(0, 4985.88F, -6026.60F, 88.69F, 0, 3.0F, 3.75F);
            }, 71700);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->GetMotionMaster()->MovePoint(0, 4994.63F, -6041.35F, 89.09F, 0, 3.0F, 4.20F);
            }, 75700);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            }, 79500);

        DoAfterTime(pPlayer, 80 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 4992.68F, -6045.22F, 89.02F, 0, 3.0F, 2.46F);
                if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60342))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
            }
            });
    }
    return false;
}

bool QuestRewarded_npc_colonel_hardinus(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40303) // The Tower of Lapidis X
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
        DoAfterTime(pPlayer, 1.75 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(67028, player);
            npc->HandleEmote(EMOTE_ONESHOT_SHOUT);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });

        Creature* NPC_cheer1 = pPlayer->FindNearestCreature(92004, 100.0F);
        Creature* NPC_cheer2 = pPlayer->FindNearestCreature(91882, 100.0F);
        Creature* NPC_cheer3 = pPlayer->FindNearestCreature(91889, 100.0F);
        Creature* NPC_cheer4 = pPlayer->FindNearestCreature(92025, 100.0F);

        if (NPC_cheer1)
        {
            DoAfterTime(pPlayer, 2.3 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            DoAfterTime(pPlayer, 2.5 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer2]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            DoAfterTime(pPlayer, 2.7 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer3]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            DoAfterTime(pPlayer, 2.9 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer4]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            return true;
        }
    }

    return false;
}

bool QuestAccept_npc_korgan(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40309) // The Depths of Karazhan VI
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 1449, false);
            });
        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSayToPlayer(66689, player);
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60344))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                return true;
            }
            });
    }

    return false;
}

bool QuestAccept_npc_magus_ariden_dusktower(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40316) // The Mystery of Karazhan VI
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 1449, false);
            });
        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSayToPlayer(66690, player);
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60345))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                return true;
            }
            });
    }

    return false;
}

bool GossipHello_npc_inunquaq(Player* pPlayer, Creature* pCreature)
{
    switch (pCreature->GetEntry())
    {
    case 81046: // Inunquaq in Darkshore
        if (!pPlayer->GetQuestStatus(40321) == QUEST_STATUS_NONE)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66691, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        if (pCreature->IsQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        pPlayer->SEND_GOSSIP_MENU(81046, pCreature->GetGUID());
        break;

    case 60611: // Inunquaq in The Northeast Passage
        if (pPlayer->GetQuestRewardStatus(40321) || pPlayer->GetQuestStatus(40321) == QUEST_STATUS_COMPLETE)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66692, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
        if (pCreature->IsQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        pPlayer->SEND_GOSSIP_MENU(60611, pCreature->GetGUID());
        break;
    }

    return true;
}

bool GossipSelect_npc_inunquaq(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_the_northeast_passage(1, 13654.652344F, -6585.791504F, 0.609558F, 0);
        pPlayer->TeleportTo(1, 13654.652344F, -6585.791504F, 0.609558F, 0);

        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(91195))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        static const WorldLocation m_darkshore(1, 7831.624630F, -776.579773F, 1.205446F, 0);
        pPlayer->TeleportTo(m_darkshore);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_moo_rune(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010799)
    {
         pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66693, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
         pPlayer->SEND_GOSSIP_MENU(2010799, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_moo_rune(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010799)
        {
            static const WorldLocation m_bessy(0, -9128.736328F, -1050.399170F, 70.611626f, 0.030956f);
            pPlayer->TeleportTo(m_bessy);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_tholdan_mountainheart(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40338) == QUEST_STATUS_INCOMPLETE) // The Azurestone
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66694, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(60629, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_tholdan_mountainheart(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66695, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 21 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66696, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 41 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer(66697, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 48 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60347))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_sage_palerunner(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40346) // The Way of Spiritwalking III
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66698, player);
            });
        DoAfterTime(pPlayer, 13 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66699, player);
            });
        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            });
        DoAfterTime(pPlayer, 26 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
                npc->MonsterSayToPlayer(66700, player);
                if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60348))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->InterruptNonMeleeSpells(true);
                return true;
            });
    }

    return false;
}

bool GossipHello_npc_ancestor_of_wisdom(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40348) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66701, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60863, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ancestor_of_wisdom(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30012, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60349))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool QuestRewarded_npc_ancestor_of_wisdom(Player* pPlayer, Creature* pCreature, Quest const* pQuest)
{
    enum spells
    {
        QUEST_WAY_OF_SPIRITWALKING_5 = 40348,
        SPELL_SPIRITWALKING = 47262
    };

    Quest const* quest = sObjectMgr.GetQuestTemplate(QUEST_WAY_OF_SPIRITWALKING_5);

    if (pQuest == quest)
        pPlayer->LearnSpell(SPELL_SPIRITWALKING, false);

    return true;
}

bool GossipHello_npc_ancestor_of_virtue(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40348) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66701, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60864, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ancestor_of_virtue(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30013, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60350))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool GossipHello_npc_ancestor_of_humility(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40348) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66701, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60865, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ancestor_of_humility(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30014, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60351))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool QuestAccept_npc_bombay(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40351) // The Way Of The Witch Doctor III
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            npc->MonsterSayToPlayer(66702, player);
            player->CompleteQuest(40351);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            return true;
            });
    }

    return false;
}

bool GossipHello_npc_nribbi(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40352) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60509, 1, false))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66703, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60631, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_nribbi(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60353))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        if (pPlayer->HasItemCount(60509, 1, false))
        {
            pPlayer->DestroyItemCount(60509, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
    }
    return true;
}

bool QuestRewarded_npc_nribbi(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40353) // The Way Of The Witch Doctor V
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        pPlayer->LearnSpell(45504, false);

        DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });

        DoAfterTime(pPlayer, 30 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveAurasAtReset();
            });

        Creature* NPC_cheer1 = pPlayer->FindNearestCreature(60866, 40.0F);
        Creature* NPC_cheer2 = pPlayer->FindNearestCreature(60867, 40.0F);
        Creature* NPC_cheer3 = pPlayer->FindNearestCreature(60868, 40.0F);

        if (NPC_cheer1 && NPC_cheer2 && NPC_cheer3)
        {
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                if (npc)
                    npc->MonsterSay(66704);
                });
            DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer2]() {
                if (npc)
                    npc->MonsterSay(66705);
                });
            DoAfterTime(pPlayer, 4 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer3]() {
                if (npc)
                    npc->MonsterSay(66706);
                });
            DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                if (npc)
                    npc->MonsterSay(66707);
                });
            DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer2]() {
                if (npc)
                    npc->MonsterSay(66708);
                });
            return true;
        }
    }

    return false;
}

bool GossipHello_npc_ironpatch(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40355) == QUEST_STATUS_INCOMPLETE) // Sark's Grudge
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66709, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(2547, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ironpatch(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer(66710, pPlayer);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_vildo_onetusk(Player* pPlayer, Creature* pCreature)
{
    if (!pPlayer->GetQuestStatus(40358) == QUEST_STATUS_NONE)  // Golden Elves of Feralas
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66711, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60459, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_vildo_onetusk(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66712, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30015, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GossipHello_npc_fazgel_mechaflame(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40360) == QUEST_STATUS_INCOMPLETE) // Highly Unexpected Event
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66713, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60643, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_fazgel_mechaflame(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer(66714, pPlayer);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_sovatir(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40362) == QUEST_STATUS_INCOMPLETE)  // A Historian Finds You
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66715, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60644, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_sovatir(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30016, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60355))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

enum BloodsailQuestItems
{
    ITEM_Highborne_Golden_Statue = 60510,
    ITEM_Arcanist_Sovatirs_Torn_Notes = 60512,
};

bool QuestAcceptGO_lyvdia_dawnbird(Player* player, GameObject* pGo, const Quest* pQuest)
{
    if (!player)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40361) // Taking the Booty Home
    {
        if (!player->HasItemCount(ITEM_Highborne_Golden_Statue, 1))
        {
            if (player->AddItem(ITEM_Highborne_Golden_Statue))
                first_item_added = true;
        }
        else
            first_item_added = true;

        if (!player->HasItemCount(ITEM_Arcanist_Sovatirs_Torn_Notes, 1))
        {
            if (player->AddItem(ITEM_Arcanist_Sovatirs_Torn_Notes))
                second_item_added = true;
        }
        else
            second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            player->RemoveQuest(40361);
            player->SetQuestStatus(40361, QUEST_STATUS_NONE);
            player->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool GOHello_mournful_apparition_atack(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010878)
    {
        if (pPlayer->GetQuestStatus(40370) == QUEST_STATUS_INCOMPLETE && !pPlayer->HasItemCount(60517, 1, 1))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66716, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30017, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_mournful_apparition_atack(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->FindNearestCreature(60658, 40.0F))
        {
            pGo->SummonCreature(60658, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ() + 2, pPlayer->GetOrientation() + 3.14, TEMPSUMMON_TIMED_DESPAWN, 2 * MINUTE * IN_MILLISECONDS);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestRewarded_npc_captain_grayson(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40396 && !pQuestGiver->FindNearestCreature(60709, 30.0F)) // Captain Grayson's Revenge
    {
        pQuestGiver->SummonCreature(60709, -11410.70F, 1966.56F, 10.60F, 6.12F, TEMPSUMMON_TIMED_DESPAWN, 0.125 * MINUTE * IN_MILLISECONDS);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                Creature* npc_cookie = pQuestGiver->FindNearestCreature(60709, 30.0F);
                if (!npc_cookie)
                    return;

                npc_cookie->PMonsterEmote(66421);
                npc_cookie->MonsterSay(66422);
            }, 5000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                if (!pQuestGiver)
                    return;

                pQuestGiver->MonsterSay(66423);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_WAVE);
            }, 9000);
    }

    return false;
}

bool GossipHello_npc_captain_grayson(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(40396))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66717, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(392, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_captain_grayson(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30019, pCreature->GetGUID());
    }

    return true;
}

bool QuestRewarded_npc_niremius(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40399) // By Any Means Necessary III
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66424);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
    }

    return false;
}

bool QuestAccept_npc_niremius(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40401) // By Any Means Necessary V
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 17447, false);

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66718, player);
            });

        DoAfterTime(pPlayer, 25 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_BOW);
            npc->MonsterSayToPlayer(66719, player);
            player->CompleteQuest(40401);
            });

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            }, 26000);
        return true;
    }

    return false;
}

bool GossipHello_npc_jabbey(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pCreature->IsVendor())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ACTION_TRADE, 66720, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40411) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 8139 && !pPlayer->HasItemCount(60597, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66721, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
    }

    if (pPlayer->GetQuestStatus(40466) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 8139 && !pPlayer->HasItemCount(60670, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66722, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(8139, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_jabbey(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->GetSession()->SendListInventory(pCreature->GetGUID());

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->AddItem(60597);
        if (pPlayer->HasItemCount(60597, 1, false))
        {
            pCreature->MonsterSayToPlayer(66723, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->AddItem(60670);
        if (pPlayer->HasItemCount(60670, 1, false))
        {
            pCreature->MonsterSayToPlayer(66724, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool GossipHello_npc_captain_wallace_cross(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40415) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60729 && !pPlayer->HasItemCount(60602, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66725, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(60729, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_captain_wallace_cross(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(60602);
        if (pPlayer->HasItemCount(60602, 1, false))
        {
            pCreature->MonsterSayToPlayer(66726, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool GossipHello_npc_captain_harker(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40415) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60730 && !pPlayer->HasItemCount(60603, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66725, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(60730, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_captain_harker(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(60603);
        if (pPlayer->HasItemCount(60603, 1, false))
        {
            pCreature->MonsterSayToPlayer(66727, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool QuestRewarded_npc_koli_steamheart(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40426) // Recovering Vault Shackles
    {
        pQuestGiver->MonsterSayToPlayer(66728, pPlayer);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool GossipHello_npc_sergeant_burnside(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40433) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60792 && !pPlayer->HasItemCount(60635, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66729, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(60792, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_sergeant_burnside(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(60635);
        if (pPlayer->HasItemCount(60635, 1, false))
        {
            pCreature->MonsterSayToPlayer(66730, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool GossipHello_npc_engineer_wigglestip(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40438) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60794 && !pPlayer->HasItemCount(60640, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66731, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(60794, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_engineer_wigglestip(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(60640);
        if (pPlayer->HasItemCount(60640, 1, false))
        {
            pCreature->MonsterSayToPlayer(66732, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool QuestRewarded_npc_watcher_mahar_ba(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40440) // Fel Energy Irregularities III
    {
        pQuestGiver->MonsterSayToPlayer(66733, pPlayer);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    if (pQuest->GetQuestId() == 40441) // Fel Energy Irregularities IV
    {
        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(66734, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });

        Creature* NPC_riftwatcher_say = pQuestGiver->FindNearestCreature(6002, 40.0F);

        if (NPC_riftwatcher_say)
        {
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_riftwatcher_say]() {
                npc->MonsterSayToPlayer(66735, player);
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            return true;
        }
    }

    if (pQuest->GetQuestId() == 40444) // Fel Energy Irregularities VII
    {
        pQuestGiver->MonsterSayToPlayer(66736, pPlayer);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_BOW);
    }

    return false;
}

bool QuestRewarded_npc_chaser(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40450) // Repowering Chaser
    {
        pQuestGiver->MonsterSayToPlayer(66737, pPlayer);
    }

    return false;
}

bool GossipHello_npc_orvak_sternrock(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40460) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(10, 30.0F))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66738, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60833, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_orvak_sternrock(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 50 * IN_MILLISECONDS);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66429);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66430);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 15000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66431);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 30000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66432);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 50000);

            DoAfterTime(pPlayer, 58 * IN_MILLISECONDS, [player = pPlayer]() {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60375))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_orvak_sternrock(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40463) // The True High Foreman
    {
        pQuestGiver->MonsterSay(66433);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_SALUTE);
    }

    return false;
}

bool QuestRewarded_npc_maltimor_gartside(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40474) // The Harvest Golem Mystery V
    {
        pQuestGiver->MonsterTextEmote(66739);
        pQuestGiver->MonsterSay(66434);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66435);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66436);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_CHEER);
            });
    }

    return false;
}

bool QuestAccept_npc_maltimor_gartside(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40476) // The Harvest Golem Mystery VII
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->HandleEmote(EMOTE_STATE_WORK);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->HandleEmote(EMOTE_STATE_NONE);
                pQuestGiver->SummonCreature(60871, -10279.18F, 1920.43F, 34.23F, 3.99F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 30 * IN_MILLISECONDS);
            }, 5000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66437);
                pQuestGiver->HandleEmote(EMOTE_STATE_NONE);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 9000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->CastSpell(pQuestGiver, 13540, false); // Green Channeling
                Creature* harvest_reaper = pQuestGiver->FindNearestCreature(60871, 30.0F);
                if (harvest_reaper)
                {
                    harvest_reaper->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
                    harvest_reaper->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                    harvest_reaper->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
                }
            }, 10000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->CastSpell(pQuestGiver, 24171, false);
                if (Creature* harvest_reaper = pQuestGiver->FindNearestCreature(60871, 30.0F))
                {
                    harvest_reaper->SetFactionTemporary(35, TEMPFACTION_RESTORE_COMBAT_STOP);
                    harvest_reaper->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                }

            }, 30000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                if (Creature* harvest_reaper = pQuestGiver->FindNearestCreature(60871, 30.0F))
                {
                    pQuestGiver->MonsterSay(66438);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

            }, 31000);

        DoAfterTime(pPlayer, 31 * IN_MILLISECONDS, [player = pPlayer]() {
            if (Creature* harvest_reaper = player->FindNearestCreature(60871, 30.0F))
            {
                if (player->IsAlive())
                {
                    if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60375))
                        player->KilledMonster(cInfo, ObjectGuid());
                }
                else
                {
                    player->SetQuestStatus(40476, QUEST_STATUS_FAILED);
                }
            }
            });

    }
    return false;
}

bool GossipHello_npc_maltimor_gartside(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer)
        pCreature->SetFacingToObject(pPlayer);

    if (pPlayer->GetQuestStatus(40529) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60767, 1, 1))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66740, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60858, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_maltimor_gartside(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66741, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30066, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66741, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30067, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66741, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30068, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->DestroyItemCount(60767, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();

        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60381))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30069, pCreature->GetGUID());
    }

    return true;
}

bool QuestRewarded_npc_franklin_hamar(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40482) // The Harvest Golem Mystery XIII
    {
        pQuestGiver->MonsterTextEmote(66742, pPlayer);
        pQuestGiver->MonsterSay(66439);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 8 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66440);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66441);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 24 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66442);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 32 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66443);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
    }
    
    return false;
}

bool GossipHello_npc_farad_wrightsow(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40485) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(10, 30.0F))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66743, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60854, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_farad_wrightsow(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66744, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30024, pCreature->GetGUID());
        }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66745, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30025, pCreature->GetGUID());
        }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->CLOSE_GOSSIP_MENU();

        Creature* gazzirik = pPlayer->FindNearestCreature(60859, 75.0F);
        if (gazzirik)
        {
            gazzirik->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
            gazzirik->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            gazzirik->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
        }

        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }

    return true;
}

bool QuestRewarded_npc_darkseer_geshtol(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40492) // Fueling the Blood Fury
    {
        pQuestGiver->MonsterSay(66444);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    if (pQuest->GetQuestId() == 40493) // Fueling the Blood Fury
    {
        pQuestGiver->CastSpell(pQuestGiver, 24318, false); // Enrage
        pQuestGiver->MonsterSay(66445);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        npc->HandleEmote(EMOTE_ONESHOT_LAUGH);
            });
    }

    return false;
}

bool GossipHello_npc_young_blackrock_worg(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40497) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60873 && pPlayer->HasItemCount(60720, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66746, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(60873, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_young_blackrock_worg(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(60731);
        if (pPlayer->HasItemCount(60720, 1, false))
        {
            pPlayer->DestroyItemCount(60720, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
            pCreature->DespawnOrUnsummon();
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool QuestRewarded_npc_karfang(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40508) // Take No Chances
    {
        pQuestGiver->MonsterSay(66446);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 2 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_SALUTE);

            Creature* molk = npc->FindNearestCreature(60769, 15.0F);
            molk->HandleEmote(EMOTE_ONESHOT_SALUTE);
            Creature* councilor_vargek = npc->FindNearestCreature(60772, 15.0F);
            councilor_vargek->HandleEmote(EMOTE_ONESHOT_SALUTE);
            });
    }


    if (pQuest->GetQuestId() == 40509) // The Final Crack
    {
        pQuestGiver->MonsterSay(66447);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66448);
            });

        DoAfterTime(pPlayer, 8 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_BOW);
            });
    }

    return false;
}

bool QuestRewarded_npc_lashog(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40513) // Polymorph Enslavement!
    {
        pQuestGiver->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
        pQuestGiver->SetDisplayId(1653); // Orc
    }

    pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
        {
            pQuestGiver->MonsterSay(66449);
            pQuestGiver->HandleEmote(EMOTE_ONESHOT_ROAR);
        }, 1000);

    pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
        {
            pQuestGiver->MonsterSay(66450);
            pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
        }, 8000);

    pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
        {
            pQuestGiver->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
            pQuestGiver->SetDisplayId(856); // Sheep
            pQuestGiver->CastSpell(pQuestGiver, 24085, false); // Transform Visual
            return true;
        }, 60000);

    return false;
}

bool QuestRewarded_npc_seer_mazek(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40521) // Desert Voodoo
    {
        pQuestGiver->MonsterSay(66451);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66452);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
            }, 5000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66453);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
            }, 10000);
    }

    return false;
}

bool GossipHello_npc_voljin(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40524) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66747, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(10540, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_voljin(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66748, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30028, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66749, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30029, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60377))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30030, pCreature->GetGUID());
    }

    return true;
}

bool QuestRewarded_npc_ekka(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40528) // Meat for Viceclaw!
    {
        pQuestGiver->MonsterSay(66454);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                if (Creature* viceclaw = pQuestGiver->FindNearestCreature(60755, 15.0F))
                    viceclaw->MonsterTextEmote(66750);
            }, 3000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66455);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 5000);
    }

    return false;
}

bool GossipHello_npc_ancient_spirit_wolf(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40532) == QUEST_STATUS_INCOMPLETE) // The Way Of The Spiritwolf III
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66751, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pPlayer->GetQuestStatus(40533) == QUEST_STATUS_INCOMPLETE) // The Way Of The Spiritwolf IV
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66752, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    if (pPlayer->GetQuestStatus(40534) == QUEST_STATUS_INCOMPLETE) // The Way Of The Spiritwolf V
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66753, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    }

    pPlayer->SEND_GOSSIP_MENU(66004, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_ancient_spirit_wolf(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60378))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
            {
                pCreature->MonsterSay(66456);
            }, 3000);

        pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
            {
                pCreature->MonsterSay(66457);
            }, 18000);

        DoAfterTime(pPlayer, 28 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60379))
                player->KilledMonster(cInfo, ObjectGuid());
            });
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_ancient_spirit_wolfAI : public ScriptedAI
{
    npc_ancient_spirit_wolfAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() { }
    void UpdateAI(const uint32 diff)
    {
        if (m_creature->GetHealthPercent() < 10)
        {
            m_creature->CombatStop(true);
            m_creature->ClearInCombat();
            m_creature->SetFactionTemplateId(35);
        }
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim()) return;
        DoMeleeAttackIfReady();
    }
    void JustDied(Unit*) override { }
    void EnterCombat() { }

    void OnCombatStop()
    {
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);

        ThreatList const& tList = m_creature->GetThreatManager().getThreatList();
        for (ThreatList::const_iterator i = tList.begin(); i != tList.end(); ++i)
        {
            Unit* pUnit = m_creature->GetMap()->GetUnit((*i)->getUnitGuid());
            if (pUnit && (pUnit->GetTypeId() == TYPEID_PLAYER))
            {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60380))
                    pUnit->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
            }
        }
    }

    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_ancient_spirit_wolf(Creature* _Creature) { return new npc_ancient_spirit_wolfAI(_Creature); }

bool GossipHello_npc_sunchaser(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40536) == QUEST_STATUS_INCOMPLETE) // Bond Through Battle
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66754, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60821, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_sunchaser(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_sunchaserAI : public ScriptedAI
{
    npc_sunchaserAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() { }
    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->GetHealthPercent() < 50)
        {
            GiveQuestCredit();
            m_creature->SetFactionTemplateId(104);
            EnterEvadeMode();
            return;
        }
        
        DoMeleeAttackIfReady();
    }
    void JustDied(Unit*) override { }
    void EnterCombat() { }

    void GiveQuestCredit()
    {
        ThreatList const& tList = m_creature->GetThreatManager().getThreatList();
        for (ThreatList::const_iterator i = tList.begin(); i != tList.end(); ++i)
        {
            Unit* pUnit = m_creature->GetMap()->GetUnit((*i)->getUnitGuid());
            if (pUnit && (pUnit->GetTypeId() == TYPEID_PLAYER))
            {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60382))
                    pUnit->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
            }
        }
    }

    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_sunchaser(Creature* _Creature) { return new npc_sunchaserAI(_Creature); }

struct npc_sellick_vossAI : public ScriptedAI
{
    npc_sellick_vossAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66458);
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_sellick_voss(Creature* _Creature) { return new npc_sellick_vossAI(_Creature); }

bool GOHello_go_abandoned_murloc(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40541) == QUEST_STATUS_INCOMPLETE)
    {
        if (pGo->GetEntry() == 2010918)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66755, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30033, pGo->GetGUID());
        }

        if (pGo->GetEntry() == 2010919)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66756, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            pPlayer->SEND_GOSSIP_MENU(30034, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_abandoned_murloc(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60383))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60384))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_private_q_shields_owner(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40554) == QUEST_STATUS_INCOMPLETE) // The Shield's Owner
    {
        Creature* talmand = pPlayer->FindNearestCreature(60949, 10.0F);
        Creature* sleightor = pPlayer->FindNearestCreature(60950, 10.0F);
        Creature* valnor = pPlayer->FindNearestCreature(60951, 10.0F);
        if (talmand)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66757, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(60821, pCreature->GetGUID());
        }
        if (sleightor)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66757, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            pPlayer->SEND_GOSSIP_MENU(60821, pCreature->GetGUID());
        }
        if (valnor)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66757, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            pPlayer->SEND_GOSSIP_MENU(60821, pCreature->GetGUID());
        }
    }

    return true;
}

bool GossipSelect_npc_private_q_shields_owner(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay(66459);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60385))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->MonsterSay(66460);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60386))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pCreature->MonsterSay(66461);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60387))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_bert_mano(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40567) == QUEST_STATUS_INCOMPLETE) // Sleepwalking at Day
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66758, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pPlayer->GetQuestStatus(40571) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(10, 40.0F) && !pPlayer->FindNearestCreature(60954, 40.0F)) // Strange Bedfellows
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66759, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    pPlayer->SEND_GOSSIP_MENU(52017, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_bert_mano(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30035, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60391))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (pPlayer->FindNearestCreature(52017, 40.0F))
        {
            pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 0.06 * MINUTE * IN_MILLISECONDS);

            pCreature->MonsterSay(66462);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->SummonCreature(60954, pCreature->GetPositionX() + 2, pCreature->GetPositionY() + 2, pCreature->GetPositionZ() + 2, pCreature->GetOrientation() + 3.14, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 0.5 * MINUTE * IN_MILLISECONDS);
                }, 3000);

        }
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GossipHello_npc_broter_neals(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40597) == QUEST_STATUS_INCOMPLETE) // The Old Church of Westfall V
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66760, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(952, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_broter_neals(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66761, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30062, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66761, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30063, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66761, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30064, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60392))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30065, pCreature->GetGUID());
    }

    return true;
}

bool QuestRewarded_npc_broter_neals(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40603) // The Old Church of Westfall XI
    {
        pQuestGiver->MonsterSay(66463);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool QuestAccept_npc_gryan_stoutmantle(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40603) // The Old Church of Westfall XI
    {
        if (!pPlayer->HasItemCount(60842, 1))
        {
            if (pPlayer->AddItem(60842))
                first_item_added = true;
        }
        else
            first_item_added = true;

        if (!pPlayer->HasItemCount(60846, 1))
        {
            if (pPlayer->AddItem(60846))
                second_item_added = true;
        }
        else
            second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40603);
            pPlayer->SetQuestStatus(40603, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }

    return false;
}

bool QuestRewarded_npc_segwar_ironback(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40608) // Salvaging the Crops
    {
        pQuestGiver->MonsterSay(66464);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool GossipHello_npc_khan_jehn(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40616) == QUEST_STATUS_INCOMPLETE) // One of Us
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66762, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(560101, pCreature->GetGUID());
        return true;
    }

    else
    {
        pPlayer->SEND_GOSSIP_MENU(5601, pCreature->GetGUID());
        return true;
    }
}

bool GossipSelect_npc_khan_jehn(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66764, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66763, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(560102, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60393))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool QuestRewarded_npc_khan_jehn(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40616) // One of Us
    {
        pQuestGiver->MonsterYell(66624);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_SHOUT);
    }

    return false;
}

bool GossipHello_npc_khan_shaka(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40629) == QUEST_STATUS_INCOMPLETE) // An Honorary Gelkis
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66765, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(5602, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_khan_shaka(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66766, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66767, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(560201, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60394))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool QuestRewarded_npc_khan_shaka(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40629) // An Honorary Gelkis
    {
        pQuestGiver->MonsterSay(66465);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool QuestRewarded_npc_nazz_firecracker(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40642) // Lighting the Oilmaster
    {
        pQuestGiver->MonsterSay(66466);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_WAVE);
    }

    return false;
}

bool GossipHello_npc_q_controlling_sailors(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40660) == QUEST_STATUS_INCOMPLETE) // Controlling Sailors
    {
        Creature* sailor_hylreth = pPlayer->FindNearestCreature(61013, 10.0F);
        Creature* sailor_brewen = pPlayer->FindNearestCreature(61015, 10.0F);
        if (sailor_hylreth)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66768, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(61013, pCreature->GetGUID());
        }
        if (sailor_brewen)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66768, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            pPlayer->SEND_GOSSIP_MENU(61015, pCreature->GetGUID());
        }
    }

    return true;
}

bool GossipSelect_npc_q_controlling_sailors(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay(66467);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60395))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->MonsterSay(66468);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60396))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_mally_o_flor(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40670) == QUEST_STATUS_INCOMPLETE) // Information for Thrall
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66769, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61052, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_mally_o_flor(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 48 * IN_MILLISECONDS);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66469);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66470);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 10000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66471);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 24000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66472);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 40000);

            DoAfterTime(pPlayer, 48 * IN_MILLISECONDS, [player = pPlayer]() {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60398))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_war_crier_darnakk(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40673) // Cutting Ranks
    {
        pQuestGiver->MonsterSay(66473);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    if (pQuest->GetQuestId() == 40674) // Lieutenant Alverold
    {
        pQuestGiver->MonsterSay(66474);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer(67029, player);
            npc->HandleEmote(EMOTE_ONESHOT_BOW);
            });
    }

    return false;
}

bool QuestRewarded_npc_gowlfang(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40681) // Cursed Sagepaw!
    {
        pQuestGiver->MonsterSay(66476);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        Creature* NPC_cheer1 = pPlayer->FindNearestCreature(60972, 40.0F);
        Creature* NPC_cheer2 = pPlayer->FindNearestCreature(60973, 70.0F);
        Creature* NPC_cheer3 = pPlayer->FindNearestCreature(60974, 40.0F);
        Creature* NPC_cheer4 = pPlayer->FindNearestCreature(60975, 70.0F);

        if (NPC_cheer1)
        {
            DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                npc->MonsterSayToPlayer(66770, player);
                });
            DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                npc->MonsterSayToPlayer(66771, player);
                });
        }
        if (NPC_cheer2)
        {
            DoAfterTime(pPlayer, 14.2 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer2]() {
                npc->MonsterSayToPlayer(66771, player);
                });
        }
        if (NPC_cheer3)
        {
            DoAfterTime(pPlayer, 14.4 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer3]() {
                npc->MonsterSayToPlayer(66771, player);
                });
        }
        if (NPC_cheer4)
        {
            DoAfterTime(pPlayer, 14.6 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer4]() {
                npc->MonsterSayToPlayer(66771, player);
                });
        }
        return true;
    }

    return false;
}

bool GOHello_go_resonation_crystal(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010933)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66772, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(2010933, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_resonation_crystal(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010933)
        {
            static const WorldLocation resonation_crystal_tele(0, -6598.6328F, -3910.7919F, 354.9179f, 4.6873f);
            pPlayer->TeleportTo(resonation_crystal_tele);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GOHello_go_harmonization_crystal(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010934)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66773, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(2010934, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_harmonization_crystal(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010934)
        {
            static const WorldLocation harmonization_crystal_tele(0, -6881.5537F, -3767.8178F, 316.7491f, 3.3884f);
            pPlayer->TeleportTo(harmonization_crystal_tele);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestRewarded_npc_colonel_breen(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40687) // Daelin's Brigade
    {
        pQuestGiver->MonsterSay(66477);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_SALUTE);
    }

    return false;
}

bool GossipHello_npc_falgran_hastil(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40558) == QUEST_STATUS_INCOMPLETE) // The Meeting with the Enemy.
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66774, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pPlayer->GetQuestStatus(40564) == QUEST_STATUS_INCOMPLETE) // The Second Meeting
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66774, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    pPlayer->SEND_GOSSIP_MENU(50880, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_falgran_hastil(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    auto playerGuid = pPlayer->GetObjectGuid();

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 187 * IN_MILLISECONDS);
            Creature* NPC_KAGORO = pCreature->FindNearestCreature(61056, 30.0F);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66478);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 5000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66479);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 13000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66480);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 21000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66481);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 29000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->PMonsterEmote(66482);
                }, 32000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66483);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 37000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66484);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 47000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66485);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 55000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66486);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 63000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66487);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 68000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66488);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 73000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66489);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 78000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66490);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 81000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->PMonsterEmote(66491);
                }, 85000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66492);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 88000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66493);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 100000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66494);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 110000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66495);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 122000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66496);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 136000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66497);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 144000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66498);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 156000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66499);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 164000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66500);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 174000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66501);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 182000);
            DoAfterTime(pCreature, 187 * IN_MILLISECONDS, [playerGuid, npc = pCreature]() {
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60388); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 105 * IN_MILLISECONDS);
            Creature* NPC_KAGORO = pCreature->FindNearestCreature(61056, 30.0F);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66502);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 5000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66503);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 8000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66504);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 10000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66505);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 20000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66506);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 27000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66507);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 35000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66508);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 41000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66509);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 54000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66510);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 57000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66511);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 65000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66512);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 72000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66513);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 80000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66514);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 88000);
            pCreature->m_Events.AddLambdaEventAtOffset([NPC_KAGORO]()
                {
                    NPC_KAGORO->MonsterSay(66515);
                    NPC_KAGORO->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 98000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66516);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 104000);
            DoAfterTime(pCreature, 105 * IN_MILLISECONDS, [playerGuid, npc = pCreature]() {
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60390); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_falgran_hastil(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40723) // Honoring Treaties
    {
        pQuestGiver->MonsterSay(66165);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool GossipHello_npc_grumnir_battlebeard(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40691) == QUEST_STATUS_INCOMPLETE) // A Journey for Vengeance
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66775, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60993, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_grumnir_battlebeard(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 48 * IN_MILLISECONDS);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66517);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66518);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 13000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66519);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 25000);
            DoAfterTime(pPlayer, 33 * IN_MILLISECONDS, [player = pPlayer]() {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60399))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_harlek_vaultshield(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40696) // The Fixed Sputtervalve Conductor
    {
        pQuestGiver->MonsterSay(66520);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
    }

    return false;
}

bool GossipHello_npc_faldan_moonshatter(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40698) == QUEST_STATUS_INCOMPLETE) // Conflicting Questions
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66776, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60471, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_faldan_moonshatter(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 48 * IN_MILLISECONDS);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66521);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66522);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 13000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66523);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 27000);
            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66524);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 35000);
            DoAfterTime(pPlayer, 39 * IN_MILLISECONDS, [player = pPlayer]() {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60008))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_maloran_oakbranch(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40698) // Conflicting Questions
    {
        pQuestGiver->MonsterSay(66525);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool GOHello_go_gong_of_corthan(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010946)
    {
        if (pPlayer->GetQuestStatus(40713) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(20, 40.0F))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66777, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30051, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_gong_of_corthan(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010946 && !pPlayer->HasItemCount(60944, 1, false))
        {
            pPlayer->GetSession()->SendNotification("Need to Mallet of Zeth.");
        }

        if (pGo->GetEntry() == 2010946 && pPlayer->HasItemCount(60944, 1, false))
        {
            pGo->SummonCreature(20, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), pPlayer->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 0.4 * MINUTE * IN_MILLISECONDS);

            Creature* echo_of_corthan = pGo->SummonCreature(61066, -6381.10F, -3024.88F, 403.54F, 1.60F, TEMPSUMMON_TIMED_DESPAWN, 22 * IN_MILLISECONDS);
            Creature* echo_of_forgotten_warlord = pGo->SummonCreature(61068, -6379.24F, -3021.03F, 403.46F, 4.36F, TEMPSUMMON_TIMED_DESPAWN, 22 * IN_MILLISECONDS);
            Creature* echo_of_forgotten_chieftain = pGo->SummonCreature(61067, -6383.77F, -3020.89F, 403.37F, 5.03F, TEMPSUMMON_TIMED_DESPAWN, 22 * IN_MILLISECONDS);

            pGo->m_Events.AddLambdaEventAtOffset([echo_of_forgotten_warlord, echo_of_forgotten_chieftain]()
                {
                    if (echo_of_forgotten_warlord && echo_of_forgotten_chieftain)
                    {
                        echo_of_forgotten_warlord->HandleEmote(EMOTE_STATE_KNEEL);
                        echo_of_forgotten_chieftain->HandleEmote(EMOTE_STATE_KNEEL);
                    }
                }, 1000);
            pGo->m_Events.AddLambdaEventAtOffset([echo_of_corthan]()
                {
                    if (echo_of_corthan)
                    {
                        echo_of_corthan->MonsterSay(66526);
                        echo_of_corthan->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                }, 4000);
            pGo->m_Events.AddLambdaEventAtOffset([echo_of_forgotten_warlord, echo_of_forgotten_chieftain]()
                {
                    if (echo_of_forgotten_warlord)
                    {
                        echo_of_forgotten_warlord->MonsterSay(66527);
                        echo_of_forgotten_warlord->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                }, 11000);
            pGo->m_Events.AddLambdaEventAtOffset([echo_of_forgotten_warlord, echo_of_forgotten_chieftain]()
                {
                    if (echo_of_forgotten_chieftain)
                    {
                        echo_of_forgotten_chieftain->MonsterSay(66528);
                        echo_of_forgotten_chieftain->HandleEmote(EMOTE_ONESHOT_TALK);
                    }
                }, 12000);
            DoAfterTime(pPlayer, 22 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60009))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_forgotten_keeper(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40714) == QUEST_STATUS_INCOMPLETE) // The Curse of Zetharia
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66778, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60916, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_forgotten_keeper(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66779, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30102, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66779, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30103, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66779, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30104, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66779, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30105, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66779, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        pPlayer->SEND_GOSSIP_MENU(30106, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->SEND_GOSSIP_MENU(30107, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60010); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

bool QuestAccept_npc_kagoro(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    auto playerGuid = pPlayer->GetObjectGuid();

    if (pQuest->GetQuestId() == 40718) // Next Course of Action
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 175 * IN_MILLISECONDS);
            Creature* NPC_FALGRAN = pQuestGiver->FindNearestCreature(5088, 30.0F);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66529);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66530);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 10000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66531);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 18000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->PMonsterEmote(66532);
                }, 21000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66533);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 26000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66534);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 36000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66535);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 44000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66536);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 52000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66537);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 60000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66538);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 65000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66539);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 70000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66540);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 73000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->PMonsterEmote(66491);
                }, 77000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66541);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 80000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66542);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 92000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66543);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 102000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66544);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 114000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66545);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 128000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66546);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 136000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66547);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 144000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66548);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 152000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66549);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 162000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver, playerGuid]()
                {
                    auto player = sObjectAccessor.FindPlayer(playerGuid);
                    pQuestGiver->MonsterSayToPlayer(67030, player);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 170000);

            DoAfterTime(pQuestGiver, 175 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60011); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    if (pQuest->GetQuestId() == 40721) // Conclusive Evidence
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 130 * IN_MILLISECONDS);
            Creature* NPC_FALGRAN = pQuestGiver->FindNearestCreature(5088, 30.0F);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66550);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66551);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 14000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66552);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 24000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66553);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 34000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66554);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 42000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66555);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 57000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66556);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 62000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66557);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 72000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66558);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 82000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66559);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 92000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66560);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 100000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66561);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 113000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([NPC_FALGRAN]()
                {
                    NPC_FALGRAN->MonsterSay(66562);
                    NPC_FALGRAN->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 116000);
            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66563);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 128000);

            DoAfterTime(pQuestGiver, 130 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60012); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    return false;
}

bool QuestRewarded_npc_gizzix_grimegurgle(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40719) // Exquisite Goblin Engineering
    {
        pQuestGiver->MonsterSay(66564);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->PMonsterEmote(66565);
            }, 4000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66566);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 7000);
    }

    return false;
}

bool QuestRewarded_npc_pumpworker_zalwan(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40726) // The Backup Seal-Valve
    {
        pQuestGiver->MonsterSay(66567);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool QuestRewarded_npc_wazlon_headiron(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40727) // Derelict Supplies
    {
        pQuestGiver->MonsterSay(66568);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool QuestAccept_npc_tazzo_gearfire(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40737) //  The Final Test
    {
        pQuestGiver->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66569);
            }, 3000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->PMonsterEmote(66570);
            }, 10000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66571);
            }, 13000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->PMonsterEmote(66572);
            }, 18000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->CastSpell(pQuestGiver, 1449, false);
            }, 21000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66573);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
                pQuestGiver->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
            }, 23000);

        return true;
    }

    return false;
}

bool QuestRewarded_npc_tazzo_gearfire(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40729) // Collecting Specimens
    {
        pQuestGiver->MonsterSay(66574);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    if (pQuest->GetQuestId() == 40730) // Early Testing
    {
        pQuestGiver->PMonsterEmote(66575);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->PMonsterEmote(66576);
            }, 5000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66577);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 9000);
    }

    if (pQuest->GetQuestId() == 40734) // A Must Have Discovery
    {
        pQuestGiver->MonsterSay(66578);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool GossipHello_npc_leeza_fraxtoggle(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40733) == QUEST_STATUS_INCOMPLETE) // Gargantuan Information!
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66780, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61116, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_leeza_fraxtoggle(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    auto playerGuid = pPlayer->GetObjectGuid();

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 33 * IN_MILLISECONDS);

            pCreature->MonsterSay(66579);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66580);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 13000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(66581);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 28000);

            DoAfterTime(pCreature, 33 * IN_MILLISECONDS, [playerGuid, npc = pCreature]() {
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60013); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_magus_halister(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    auto playerGuid = pPlayer->GetObjectGuid();

    if (pQuest->GetQuestId() == 40562) // Ritual of Divination
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 79 * IN_MILLISECONDS);

            pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->PMonsterEmote(66619);
                }, 3000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->SummonCreature(60953, -3750.76f, -4438.47f, 30.57f, 3.08F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 61 * IN_MILLISECONDS);

                    pQuestGiver->CastSpell(pQuestGiver, 1449, false);
                }, 8000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_PAVAL_REETHE = pQuestGiver->FindNearestCreature(60953, 40.0F);

                    if (!NPC_PAVAL_REETHE)
                        return;

                    NPC_PAVAL_REETHE->MonsterSay(66582);
                    NPC_PAVAL_REETHE->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 11000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66583);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 19000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_PAVAL_REETHE = pQuestGiver->FindNearestCreature(60953, 40.0F);

                    if (!NPC_PAVAL_REETHE)
                        return;

                    NPC_PAVAL_REETHE->MonsterSay(66584);
                    NPC_PAVAL_REETHE->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 29000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66585);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 39000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_PAVAL_REETHE = pQuestGiver->FindNearestCreature(60953, 40.0F);

                    if (!NPC_PAVAL_REETHE)
                        return;

                    NPC_PAVAL_REETHE->MonsterSay(66586);
                    NPC_PAVAL_REETHE->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 45000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66587);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 61000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_PAVAL_REETHE = pQuestGiver->FindNearestCreature(60953, 40.0F);

                    if (!NPC_PAVAL_REETHE)
                        return;

                    NPC_PAVAL_REETHE->PMonsterEmote(66588);
                    NPC_PAVAL_REETHE->HandleEmote(EMOTE_ONESHOT_LAUGH);
                }, 66000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_PAVAL_REETHE = pQuestGiver->FindNearestCreature(60953, 40.0F);

                    if (!NPC_PAVAL_REETHE)
                        return;

                    NPC_PAVAL_REETHE->MonsterSay(66589);
                    NPC_PAVAL_REETHE->HandleEmote(EMOTE_ONESHOT_TALK);
                    NPC_PAVAL_REETHE->PMonsterEmote(66590);

                }, 68000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterYell(66591);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 70000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->PMonsterEmote(66592);
                }, 76000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66593);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 78000);

            DoAfterTime(pQuestGiver, 79 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60389); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    return false;
}

bool GOHello_go_bounty_board(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010972)
    {
        pPlayer->PrepareQuestMenu(pGo->GetObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30053, pGo->GetGUID());
    }
    return true;
}

bool QuestRewarded_npc_bixxle_screwfuse(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40760) // Operation Final Repairs
    {
        pQuestGiver->MonsterSay(66594);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    if (pQuest->GetQuestId() == 40761) // Secrets of the Dark Iron Desecrator
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_LAUGH);
    }

    if (pQuest->GetQuestId() == 40762) // The Dark Iron Desecrator
    {
        pQuestGiver->MonsterSay(66595);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool GossipHello_npc_gelweg_darkbrow(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40761) == QUEST_STATUS_INCOMPLETE && !pPlayer->HasItemCount(60998, 1, false)) // Secrets of the Dark Iron Desecrator
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66781, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(60955, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_gelweg_darkbrow(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(60998);
        if (pPlayer->HasItemCount(60998, 1, false))
        {
            pCreature->MonsterSay(66164);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }
    return true;
}

bool GossipHello_npc_nibu(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40771) == QUEST_STATUS_INCOMPLETE) // The Missing Friend!
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66782, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61157, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_nibu(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60014); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool GossipHello_npc_winter_veil_storytailer(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    switch (pCreature->GetEntry())
    {
    case 61182: // Tylekinah Lunalumina
        if (pPlayer->GetQuestStatus(40780) == QUEST_STATUS_INCOMPLETE)  // Inquiring About Legend
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66783, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(61182, pCreature->GetGUID());
        break;
    case 61184: // Bulor Wheathoof
        if (pPlayer->GetQuestStatus(40780) == QUEST_STATUS_INCOMPLETE)  // Inquiring About Legend
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66784, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
        pPlayer->SEND_GOSSIP_MENU(61184, pCreature->GetGUID());
        break;
    case 61187: // Brum Bamse
        if (pPlayer->GetQuestStatus(40780) == QUEST_STATUS_INCOMPLETE)  // Inquiring About Legend
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66785, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        }
        pPlayer->SEND_GOSSIP_MENU(61187, pCreature->GetGUID());
        break;
    case 61177: // Raz'umdaj Frostnose
        if (pPlayer->GetQuestStatus(40781) == QUEST_STATUS_INCOMPLETE)  // Further Inquiries About Legend
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66786, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        }
        pPlayer->SEND_GOSSIP_MENU(61177, pCreature->GetGUID());
        break;
    case 61179: // Henning Silverbeard
        if (pPlayer->GetQuestStatus(40781) == QUEST_STATUS_INCOMPLETE)  // Further Inquiries About Legend
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66787, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        }
        pPlayer->SEND_GOSSIP_MENU(61179, pCreature->GetGUID());
        break;
    case 61186: // Tikor Goldspin
        if (pPlayer->GetQuestStatus(40781) == QUEST_STATUS_INCOMPLETE)  // Further Inquiries About Legend
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66788, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        }
        pPlayer->SEND_GOSSIP_MENU(61186, pCreature->GetGUID());
        break;

    case 61172: // Winter Patriarch
        if (pPlayer->GetQuestStatus(40782) == QUEST_STATUS_INCOMPLETE)  // The Legend Comes To Life!
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60021); cInfo && pPlayer)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
        pPlayer->SEND_GOSSIP_MENU(61172, pCreature->GetGUID());
        break;
    case 61169: // Winter Patriarch
        if (pPlayer->GetQuestStatus(40782) == QUEST_STATUS_INCOMPLETE)  // The Legend Comes To Life!
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60022); cInfo && pPlayer)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
        pPlayer->SEND_GOSSIP_MENU(61169, pCreature->GetGUID());
        break;
    case 61170: // Winter Patriarch
        if (pPlayer->GetQuestStatus(40782) == QUEST_STATUS_INCOMPLETE)  // The Legend Comes To Life!
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60023); cInfo && pPlayer)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
        pPlayer->SEND_GOSSIP_MENU(61170, pCreature->GetGUID());
        break;

    case 61168: // Great Spirit of Winter
        if (pPlayer->GetQuestStatus(40783) == QUEST_STATUS_INCOMPLETE)  // Life Comes To The Legend!
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60024); cInfo && pPlayer)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
        pPlayer->SEND_GOSSIP_MENU(61168, pCreature->GetGUID());
        break;
    case 61171: // Greatfather Winter
        if (pPlayer->GetQuestStatus(40783) == QUEST_STATUS_INCOMPLETE)  // Life Comes To The Legend!
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60025); cInfo && pPlayer)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
        pPlayer->SEND_GOSSIP_MENU(61171, pCreature->GetGUID());
        break;
    case 61173: // Great-father Winter
        if (pPlayer->GetQuestStatus(40783) == QUEST_STATUS_INCOMPLETE)  // Life Comes To The Legend!
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60026); cInfo && pPlayer)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
        pPlayer->SEND_GOSSIP_MENU(61173, pCreature->GetGUID());
        break;
    }

    return true;
}

bool GossipSelect_npc_winter_veil_storytailer(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30056, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60015); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->SEND_GOSSIP_MENU(30057, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60016); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->SEND_GOSSIP_MENU(30058, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60017); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->SEND_GOSSIP_MENU(30059, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60018); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->SEND_GOSSIP_MENU(30060, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60019); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->SEND_GOSSIP_MENU(30061, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60020); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

bool QuestRewarded_npc_baron_telraz(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40785) // King Morogo Thunderfoot!
    {
        pQuestGiver->MonsterSay(66596);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool QuestRewarded_npc_aneka_konko(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    Creature* quest_controller = pQuestGiver->FindNearestCreature(20, 40.0F);
    if (!pQuestGiver || !pPlayer || quest_controller) return false;

    if (pQuest->GetQuestId() == 40751 && !quest_controller) // To Heal a Soul
    {
        pQuestGiver->SummonCreature(20, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 0.35 * MINUTE * IN_MILLISECONDS);
        pQuestGiver->SummonCreature(61120, -924.16F, -3710.23F, 8.89F, 4.05F, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 20 * IN_MILLISECONDS);
        Creature* shade_of_senshi = pQuestGiver->FindNearestCreature(61120, 40.0F);
        if (shade_of_senshi)
        {
            shade_of_senshi->MonsterSay(66597);
            shade_of_senshi->HandleEmote(EMOTE_ONESHOT_TALK);
        }
    }

    return false;
}

bool QuestRewarded_npc_deckmaster_darkhollow(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40791) // Kul Tiran Provisions: Special Goods
    {
        pQuestGiver->MonsterSay(66598);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_SALUTE);
    }

    return false;
}

struct npc_horde_defenderAI : public GuardAI
{
    npc_horde_defenderAI(Creature* c) : GuardAI(c) { }

    uint32 m_uiDespawnTimer = 0;

    void MoveInLineOfSight(Unit* pWho) override
    {
        // do not attack players
        if (pWho->IsPlayer())
            return;

        GuardAI::MoveInLineOfSight(pWho);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        GuardAI::UpdateAI(uiDiff);

        if (ToPlayer(m_creature->GetVictim()))
            EnterEvadeMode();
        
        if (m_creature->IsAlive())
        {
            m_uiDespawnTimer += uiDiff;
            if (m_uiDespawnTimer > 65000)
                m_creature->DoKillUnit();
        }
    }
};

CreatureAI* GetAI_npc_horde_defender(Creature* creature) { return new npc_horde_defenderAI(creature); }

struct npc_feral_spiritAI : public PetAI
{
    npc_feral_spiritAI(Creature* c) : PetAI(c) { }

    float GetDamageScalingPercent() const
    {
        switch (m_creature->GetEntry())
        {
            case 29000: // Rank 1
                return 0.33f;
            case 29001: // Rank 2
                return 0.66f;
        }

        return 1.0f;
    }

    void UpdateAI(uint32 const diff) override
    {
        // scale with owner's damage in real time
        if (Unit* pOwner = m_creature->GetOwner())
        {
            m_creature->SetFloatValue(UNIT_FIELD_MINDAMAGE, pOwner->GetFloatValue(UNIT_FIELD_MINDAMAGE) * GetDamageScalingPercent());
            m_creature->SetFloatValue(UNIT_FIELD_MAXDAMAGE, pOwner->GetFloatValue(UNIT_FIELD_MAXDAMAGE) * GetDamageScalingPercent());

            // disenage from target if owner is not attacking
            if (m_creature->GetVictim() && pOwner->GetTargetGuid().IsEmpty() && pOwner->IsMoving())
                m_creature->HandlePetCommand(COMMAND_FOLLOW, pOwner);
        }

        PetAI::UpdateAI(diff);
    }

    // override to always attack owner's victim
    // normally defensive pets only attack if you are hit
    void OwnerAttacked(Unit* target) override
    {
        if (!m_creature->IsValidAttackTarget(target))
            return;

        // Pet deactivated (mounted)
        if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
            return;

        // Passive pets don't do anything
        if (m_creature->HasReactState(REACT_PASSIVE))
            return;

        // In crowd control
        if (m_creature->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
            return;

        // Always attack owner's target
        if (m_creature->GetVictim() && m_creature->GetVictim()->IsAlive())
        {
            Unit* pOwner = m_creature->GetOwner();
            if (!pOwner || pOwner->GetTargetGuid() != target->GetObjectGuid())
                return;
        }

        AttackStart(target);
    }
};

CreatureAI* GetAI_npc_feral_spirit(Creature* creature) { return new npc_feral_spiritAI(creature); }

struct npc_compact_harvest_reaperAI : public PetAI
{
    npc_compact_harvest_reaperAI(Creature* c) : PetAI(c) { }

    void UpdateAI(uint32 const diff) override
    {
        if (Unit* pOwner = m_creature->GetOwner())
        {
            // disenage from target if owner is not attacking
            if (m_creature->GetVictim() && pOwner->GetTargetGuid().IsEmpty() && pOwner->IsMoving())
                m_creature->HandlePetCommand(COMMAND_FOLLOW, pOwner);
        }

        PetAI::UpdateAI(diff);
    }

    // override to always attack owner's victim
    // normally defensive pets only attack if you are hit
    void OwnerAttacked(Unit* target) override
    {
        if (!m_creature->IsValidAttackTarget(target))
            return;

        // Pet deactivated (mounted)
        if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
            return;

        // Passive pets don't do anything
        if (m_creature->HasReactState(REACT_PASSIVE))
            return;

        // In crowd control
        if (m_creature->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
            return;

        // Always attack owner's target
        if (m_creature->GetVictim() && m_creature->GetVictim()->IsAlive())
        {
            Unit* pOwner = m_creature->GetOwner();
            if (!pOwner || pOwner->GetTargetGuid() != target->GetObjectGuid())
                return;
        }

        AttackStart(target);
    }
};

CreatureAI* GetAI_npc_compact_harvest_reaper(Creature* creature) { return new npc_compact_harvest_reaperAI(creature); }

bool GossipHello_npc_brolthan_ironglade(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    switch (pCreature->GetEntry())
    {
    case 61143: // 
        if (pPlayer->GetQuestStatus(40801) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(40807) == QUEST_STATUS_INCOMPLETE)  // 
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66789, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        }
        pPlayer->SEND_GOSSIP_MENU(61143, pCreature->GetGUID());
        break;
    case 61147: // 
        if (pPlayer->GetQuestStatus(40801) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(40807) == QUEST_STATUS_INCOMPLETE)  // 
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66790, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(61147, pCreature->GetGUID());
        break;
    }

    return true;
}

bool GossipSelect_npc_brolthan_ironglade(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66791, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30082, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66792, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30083, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66793, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30084, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66794, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30085, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->SEND_GOSSIP_MENU(30086, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60032); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }


    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66795, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        pPlayer->SEND_GOSSIP_MENU(30087, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 7)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66796, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
        pPlayer->SEND_GOSSIP_MENU(30088, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 8)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66797, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
        pPlayer->SEND_GOSSIP_MENU(30089, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 9)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66794, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
        pPlayer->SEND_GOSSIP_MENU(30090, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 10)
    {
        pPlayer->SEND_GOSSIP_MENU(30091, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60033); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

bool QuestRewarded_npc_brolthan_ironglade(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40806) // Kaldorei Relics
    {
        pQuestGiver->MonsterSay(66599);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}

bool GossipHello_npc_commander_starwind(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    switch (pCreature->GetEntry())
    {
    case 61143: // 
        if (pPlayer->GetQuestStatus(40801) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(40807) == QUEST_STATUS_INCOMPLETE)  // 
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66789, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        }
        pPlayer->SEND_GOSSIP_MENU(61143, pCreature->GetGUID());
        break;
    case 61147: // 
        if (pPlayer->GetQuestStatus(40801) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(40807) == QUEST_STATUS_INCOMPLETE)  // 
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66790, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(61147, pCreature->GetGUID());
        break;
    }

    return true;
}

bool GossipSelect_npc_commander_starwind(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66791, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30082, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66792, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30083, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66793, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30084, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66794, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30085, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->SEND_GOSSIP_MENU(30086, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60032); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }


    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66795, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        pPlayer->SEND_GOSSIP_MENU(30087, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 7)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66796, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
        pPlayer->SEND_GOSSIP_MENU(30088, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 8)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66797, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
        pPlayer->SEND_GOSSIP_MENU(30089, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 9)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66794, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
        pPlayer->SEND_GOSSIP_MENU(30090, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 10)
    {
        pPlayer->SEND_GOSSIP_MENU(30091, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60033); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

bool QuestRewarded_npc_commander_starwind(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40812) // Kaldorei Weaponry
    {
        pQuestGiver->MonsterSay(66600);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    return false;
}


bool GOHello_go_mysterious_mailbox(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020028)
    {
        pPlayer->PrepareQuestMenu(pGo->GetObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30116, pGo->GetGUID());
    }
    return true;
}

bool GossipHello_npc_lord_ebonlocke(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40817) == QUEST_STATUS_INCOMPLETE) // The Key to Karazhan I
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66798, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61255, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_lord_ebonlocke(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66799, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30092, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66799, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30093, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66799, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30094, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66799, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30095, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66799, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        pPlayer->SEND_GOSSIP_MENU(30096, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66799, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        pPlayer->SEND_GOSSIP_MENU(30097, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 7)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66799, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
        pPlayer->SEND_GOSSIP_MENU(30098, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 8)
    {
        pPlayer->SEND_GOSSIP_MENU(30099, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60034); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool GossipHello_npc_dolvan_bracewind(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40825) == QUEST_STATUS_INCOMPLETE) // The Key to Karazhan VI
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66800, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61137, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_dolvan_bracewind(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66801, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30100, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->SEND_GOSSIP_MENU(30101, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60035); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool QuestAccept_npc_dolvan_bracewind(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    auto playerGuid = pPlayer->GetObjectGuid();

    if (pQuest->GetQuestId() == 40829) // The Key to Karazhan X
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 35 * IN_MILLISECONDS);

            pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->SummonCreature(61330, -4595.88f, -4706.26f, 57.67f, 3.52F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 27 * IN_MILLISECONDS);
                    pQuestGiver->SummonCreature(61331, -4597.55f, -4709.26f, 57.67f, 2.00F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 27 * IN_MILLISECONDS);
                }, 2000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66601);
                }, 7000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_CONCUIL_SPIRIT_1 = pQuestGiver->FindNearestCreature(61330, 40.0F);

                    if (!NPC_CONCUIL_SPIRIT_1)
                        return;

                    NPC_CONCUIL_SPIRIT_1->CastSpell(NPC_CONCUIL_SPIRIT_1, 23017, false); // Arcane Channeling
                }, 12000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_CONCUIL_SPIRIT_2 = pQuestGiver->FindNearestCreature(61331, 40.0F);

                    if (!NPC_CONCUIL_SPIRIT_2)
                        return;

                    NPC_CONCUIL_SPIRIT_2->CastSpell(NPC_CONCUIL_SPIRIT_2, 23017, false); // Arcane Channeling
                }, 12000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66602);
                }, 17000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66603);
                }, 23000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->CastSpell(pQuestGiver, 1449, false);
                }, 31000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66604);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 33000);

            DoAfterTime(pQuestGiver, 34 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60040); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    return false;
}

bool QuestRewarded_npc_dolvan_bracewind(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 41312) // Restoration
    {
        pQuestGiver->CastSpell(pQuestGiver, 1449, false);
    }

    pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
        {
            pQuestGiver->MonsterSay(30178);
            pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
        }, 2000);

    return false;
}

bool GossipHello_npc_shizuru_yamada(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40837) == QUEST_STATUS_INCOMPLETE) // Rescuing Shizuru
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66802, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_shizuru_yamada(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60041); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
            {
                pCreature->ForcedDespawn();
            }, 3000);
    }
    return true;
}

bool GossipHello_npc_greta_longpike(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40847) == QUEST_STATUS_INCOMPLETE) // Rendezvous with the Infiltrator
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66803, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66804, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66805, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66806, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    }

    pPlayer->SEND_GOSSIP_MENU(61379, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_greta_longpike(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->HasItemCount(61351, 1))
        {
            pPlayer->AddItem(61351, 1);
            if (pPlayer->HasItemCount(61351, 1))
            {
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66806, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
                pPlayer->SEND_GOSSIP_MENU(30109, pCreature->GetGUID());
            }
            else
            {
                pPlayer->GetSession()->SendNotification("Your bags are full!");
                pPlayer->CLOSE_GOSSIP_MENU();
            }
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66806, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30108, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GOHello_go_alpha_channel_valve(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020017)
    {
        if (pPlayer->GetQuestStatus(40856) == QUEST_STATUS_INCOMPLETE) // Backup System Activation
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66807, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30113, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_alpha_channel_valve(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020017)
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60042))
            {
                pPlayer->KilledMonster(cInfo, ObjectGuid());

                if (Group* pGroup = pPlayer->GetGroup())
                {
                    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        if (Player* pMember = itr->getSource())
                        {
                            if (pMember->GetObjectGuid() != pPlayer->GetObjectGuid())
                                pMember->KilledMonster(cInfo, ObjectGuid());
                        }
                    }
                }
            }
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GOHello_go_reserve_pump_lever(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020018)
    {
        if (pPlayer->GetQuestStatus(40856) == QUEST_STATUS_INCOMPLETE) // Backup System Activation
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66808, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30114, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_reserve_pump_lever(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020018)
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60043))
            {
                pPlayer->KilledMonster(cInfo, ObjectGuid());

                if (Group* pGroup = pPlayer->GetGroup())
                {
                    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        if (Player* pMember = itr->getSource())
                        {
                            if (pMember->GetObjectGuid() != pPlayer->GetObjectGuid())
                                pMember->KilledMonster(cInfo, ObjectGuid());
                        }
                    }
                }
            }
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_prospector_gehn(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40868) == QUEST_STATUS_INCOMPLETE) // Mastering the Formula II
    {
        if (pCreature->GetEntry() == 1255 && !pPlayer->HasItemCount(61403, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66809, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(1255, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_prospector_gehn(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(61403);
        if (pPlayer->HasItemCount(61403, 1, false))
        {
            pCreature->MonsterSayToPlayer(66810, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool QuestRewarded_npc_master_chemist_volterwhite(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40868) // Mastering the Formula II
    {
        pQuestGiver->MonsterSay(66605);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
    }

    if (pQuest->GetQuestId() == 40869) // Mastering the Formula III
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_BOW);
    }

    return false;
}

bool GossipHello_npc_loremaster_taerlon(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40876) == QUEST_STATUS_INCOMPLETE) // The Horn of Binding
    {
        if (pCreature->GetEntry() == 61497 && !pPlayer->HasItemCount(61415, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66626, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(61497, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_loremaster_taerlon(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(61415);
        if (pPlayer->HasItemCount(61415, 1, false))
        {
            pCreature->MonsterSayToPlayer(66627, pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

bool QuestRewarded_npc_orvan_darkeye(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40880) // We Take It From The Living
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->HandleEmote(EMOTE_STATE_WORK);
            }, 1000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->HandleEmote(EMOTE_STATE_NONE);
                pQuestGiver->PMonsterEmote(66620);
            }, 6000);
        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                pQuestGiver->MonsterSay(66606);
            }, 9000);
    }
    return false;
}

enum
{
    NPC_WILLOW = 61514,
    NPC_INVISIBLE_CONTROLLER = 10
};

bool GOHello_go_aliattans_campfire(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020026)
    {
        if (pGo->FindNearestCreature(NPC_INVISIBLE_CONTROLLER, 10.0f, false))
            return false;

        if (pPlayer->GetQuestStatus(40908) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(10, 40.0F))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66811, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30115, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_aliattans_campfire(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020026)
        {
            if (pGo->FindNearestCreature(NPC_INVISIBLE_CONTROLLER, 10.0f, false))
                return false;

            pGo->SummonCreature(NPC_INVISIBLE_CONTROLLER, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), pPlayer->GetOrientation(), TEMPSUMMON_TIMED_COMBAT_OR_DEAD_DESPAWN, 2 * MINUTE * IN_MILLISECONDS);

            if (Creature* pWillow = pGo->SummonCreature(NPC_WILLOW, -1717.13F, 1811.13F, 59.90F, 1.02F, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 2 * MINUTE * IN_MILLISECONDS))
            {
                pWillow->MonsterSay(66607);
                if (Player* pPlayer = pWillow->FindNearestHostilePlayer(50.0f))
                    pWillow->AI()->AttackStart(pPlayer);
            }
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestRewarded_npc_lord_darius_ravenwood(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40956) // The Fall and Rise of Greymane
    {
        pQuestGiver->MonsterYell(66625);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_ROAR);
    }

    return false;
}

bool GossipHello_npc_lord_darius_ravenwood(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40972) == QUEST_STATUS_INCOMPLETE) // The Rebellion
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66812, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61259, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_lord_darius_ravenwood(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66813, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30123, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66813, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30124, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66814, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30125, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60046); cInfo && pPlayer)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    return true;
}

bool QuestRewarded_npc_ralathius(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    Creature* NPC_YSERA = pQuestGiver->FindNearestCreature(61545, 40.0F);
    if (!pQuestGiver || !pPlayer || NPC_YSERA) return false;

    if (pQuest->GetQuestId() == 40962) // Into the Dream VI
    {
        pQuestGiver->CastSpell(pQuestGiver, 23017, false);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66608);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 3000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->SummonCreature(61545, 5527.01f, -3700.22f, 1595.52f, 0.28F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 9 * IN_MILLISECONDS);
            }, 5000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                Creature* NPC_YSERA = pQuestGiver->FindNearestCreature(61545, 40.0F);
                if (!NPC_YSERA)
                    return;

                NPC_YSERA->MonsterSay(66609);
            }, 6000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                Creature* NPC_YSERA = pQuestGiver->FindNearestCreature(61545, 40.0F);
                if (!NPC_YSERA)
                    return;

                NPC_YSERA->MonsterSay(66610);
            }, 9000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->CastSpell(pQuestGiver, 24171, false);
            }, 12000);
    }

    return false;
}

bool QuestAccept_npc_itharius(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;
    bool third_item_added = false;
    bool fourth_item_added = false;

    if (pQuest->GetQuestId() == 40960) // Into the Dream IV
    {
        if (pPlayer->AddItem(61557)) first_item_added = true;
        if (pPlayer->AddItem(61558)) second_item_added = true;
        if (pPlayer->AddItem(61559)) third_item_added = true;
        if (pPlayer->AddItem(61560)) fourth_item_added = true;

        if (!first_item_added || !second_item_added || !third_item_added || !fourth_item_added)
        {
            pPlayer->RemoveQuest(40960);
            pPlayer->SetQuestStatus(40960, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool QuestComplete_go_mysterious_mailbox(Player* player, GameObject* obj, Quest const* quest)
{
    if (!obj)
        return false;

    if (!player)
        return false;

    constexpr uint32 RewardInfernoModeQuestId = 40922;

    if (quest->GetQuestId() == RewardInfernoModeQuestId)
    {
        if (player->IsHardcore() && player->GetLevel() < 60)
        {
            player->SetHardcoreStatus(HARDCORE_MODE_STATUS_HC60);
            sLog.out(LOG_HARDCORE_MODE, "Player %s turned on Infernal mode by completing quest at level %u.", player->GetName(), player->GetLevel());
            return true;
        }
    }

    return true;
}

bool GOHello_go_grave_of_franklin_blackheart(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020035)
    {
        if (pPlayer->GetQuestStatus(40982) == QUEST_STATUS_INCOMPLETE) // In Memory of Franklin
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66815, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(30126, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_grave_of_franklin_blackheart(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020035)
        {
            if (pPlayer->HasItemCount(61632, 1, false))
            {
                pPlayer->DestroyItemCount(61632, 1, true);
                pPlayer->SaveInventoryAndGoldToDB();
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60047); cInfo && pPlayer)
                    pPlayer->KilledMonster(cInfo, ObjectGuid());

                Creature* NPC_HARRISON_BLACKHEART = pGo->FindNearestCreature(61287, 40.0F);

                if (!NPC_HARRISON_BLACKHEART)
                    return false;

                NPC_HARRISON_BLACKHEART->MonsterSay(66611);
                NPC_HARRISON_BLACKHEART->HandleEmote(EMOTE_ONESHOT_TALK);
            }
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestAccept_npc_buthok_cloudhorn(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40985) // The Runestone Ritual
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66612);
            }, 3000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_YES);
                pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            }, 9500);

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            if (CreatureInfo const* dummy_bunny = sObjectMgr.GetCreatureTemplate(60048))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->InterruptNonMeleeSpells(true);
            return true;
            });
    }

    return false;
}

bool GOHello_go_runestone_of_nordrassil(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020036)
    {
        if (pPlayer->GetQuestRewardStatus(40990))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66816, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(30127, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_runestone_of_nordrassil(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020036)
        {
            static const WorldLocation m_runestone_of_nordrassil(1, 4474.1542F, -3153.9086F, 1033.9987f, 3.3363f);
            pPlayer->TeleportTo(m_runestone_of_nordrassil);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GOHello_go_runestone_of_cenarius(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020037)
    {
        if (pPlayer->GetQuestRewardStatus(40990))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66816, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(30127, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_runestone_of_cenarius(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020037)
        {
            static const WorldLocation m_runestone_of_cenarius(1, 5372.1660F, -3696.9299F, 1594.3531f, 1.4211f);
            pPlayer->TeleportTo(m_runestone_of_cenarius);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestRewarded_npc_dark_bishop_mordren(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40993) // Through Greater Magic
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->MonsterSay(66613);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->CastSpell(pQuestGiver, 21157, false);
            }, 1000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(66614);
            }, 5000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                pQuestGiver->InterruptNonMeleeSpells(true);
                pQuestGiver->MonsterSay(66615);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 10000);

    }

    return false;
}

bool QuestAccept_npc_parnabus(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    auto playerGuid = pPlayer->GetObjectGuid();

    if (pQuest->GetQuestId() == 41014) // The Upper Binding IV
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 35 * IN_MILLISECONDS);

            pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->PMonsterEmote(66621);
                }, 10000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->CastSpell(pQuestGiver, 1449, false);
                }, 12000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66616);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                    pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                }, 13500);

            DoAfterTime(pQuestGiver, 14 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60049); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    return false;
}

bool GossipHello_npc_arch_druid_dreamwind(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer)
        pCreature->SetFacingToObject(pPlayer);

    if (pPlayer->GetQuestStatus(41383) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30251, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61512, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_arch_druid_dreamwind(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66813, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30252, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66813, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30253, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66813, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30254, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66813, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30255, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60056))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool QuestRewarded_npc_arch_druid_dreamwind(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 41020) // Lord Xanvarak
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSay(66617);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
    }

    return false;
}

bool QuestAccept_npc_great_cat_spirit(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    auto playerGuid = pPlayer->GetObjectGuid();

    if (pQuest->GetQuestId() == 41030) // Saving Loresh
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 35 * IN_MILLISECONDS);

            pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            pQuestGiver->CastSpell(pQuestGiver, 13540, false); // Nature Channeling

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->PMonsterEmote(66622);
                }, 3000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->PMonsterEmote(66623);
                }, 8000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->CastSpell(pQuestGiver, 24171, false);
                }, 9000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(66618);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                    pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                }, 9500);

            DoAfterTime(pQuestGiver, 10 * IN_MILLISECONDS, [playerGuid, npc = pQuestGiver]() {
                auto player = sObjectAccessor.FindPlayer(playerGuid);
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60050); cInfo && player)
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }

    return false;
}

enum
{
    NPC_VELINDE_STARSONG = 3946,
    NPC_DARK_RIDER = 61608,
};

bool GOHello_go_velindes_memory(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020048)
    {
        if (pGo->FindNearestCreature(NPC_INVISIBLE_CONTROLLER, 10.0f, false))
            return false;

        if (pPlayer->GetQuestStatus(41064) == QUEST_STATUS_COMPLETE && !pPlayer->FindNearestCreature(10, 40.0F) && !pPlayer->GetQuestRewardStatus(41066))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66817, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_velindes_memory(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020048)
        {
            if (pGo->FindNearestCreature(NPC_INVISIBLE_CONTROLLER, 10.0f, false))
                return false;

            pGo->SummonCreature(NPC_INVISIBLE_CONTROLLER, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), pPlayer->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 300 * IN_MILLISECONDS);

            Creature* VELINDE_STARSONG = pGo->SummonCreature(NPC_VELINDE_STARSONG, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), pPlayer->GetOrientation()+3.14, TEMPSUMMON_TIMED_DESPAWN, 300 * IN_MILLISECONDS);
            if (!VELINDE_STARSONG)
                VELINDE_STARSONG = pPlayer->FindNearestCreature(NPC_VELINDE_STARSONG, 30.0F);
            if (!VELINDE_STARSONG)
                return false;
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestAccept_npc_velinde_starsong(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    Creature* DARK_RIDER = pPlayer->FindNearestCreature(NPC_DARK_RIDER, 30.0F);

    if (pQuest->GetQuestId() == 41065) // Scythe of the Goddess
    {
        if (!DARK_RIDER)
        {
            Creature* DARK_RIDER = pQuestGiver->SummonCreature(NPC_DARK_RIDER, -11141.1318, -1166.9799, 42.8755, 2.7963, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 300 * IN_MILLISECONDS);
        }

        if (DARK_RIDER)
            return false;
    }
    return false;
}

bool GossipHello_npc_councilman_kyleson(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestRewardStatus(41086)) // Wine for Kyleson
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66818, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61322, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_councilman_kyleson(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30131, pCreature->GetGUID());
    }

    return true;
}

bool GOHello_go_strange_marble_bust(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020051)
    {
        if (pPlayer->GetQuestRewardStatus(41086))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66819, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(30132, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_strange_marble_bust(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020051)
        {
            if (pPlayer->HasItemCount(61771, 1))
            {
                pPlayer->GetSession()->SendNotification("You already have the Obsidian Rod.");
                return false;
            }

            bool item_added = false;

            if (pPlayer->AddItem(61771)) item_added = true;

            if (!item_added)
            {
                pPlayer->GetSession()->SendNotification("Your bags are full!");
                return false;
            }
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GOHello_go_the_orb_of_pyforos(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020052)
    {
        pPlayer->SEND_GOSSIP_MENU(30133, pGo->GetGUID());
    }
    return true;
}

bool QuestAccept_npc_shade_of_senshi(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    Creature* SHADE_OF_SENSHI = pPlayer->FindNearestCreature(61119, 30.0F);

    if (pQuest->GetQuestId() == 41124) // To Save a Soul
    {
        if (!SHADE_OF_SENSHI)
        {
            Creature* SHADE_OF_SENSHI = pQuestGiver->SummonCreature(61119, pPlayer->GetPositionX() + 2.0F, pPlayer->GetPositionY() + 2.0F, pPlayer->GetPositionZ() + 1.0F, pPlayer->GetOrientation() + 3.14, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 300 * IN_MILLISECONDS);
        }

        if (SHADE_OF_SENSHI)
            return false;
    }
    return false;
}

bool GossipHello_npc_frig_thunderforge(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(41143) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(10, 30.0F))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30146, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61758, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_frig_thunderforge(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 42 * IN_MILLISECONDS);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30141);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30142);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 11000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30143);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 21000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30144);
                    pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 31000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    Creature* NPC_BROK_THUNDERFORGE = pCreature->FindNearestCreature(61756, 40.0F);

                    if (!NPC_BROK_THUNDERFORGE)
                        return;

                    NPC_BROK_THUNDERFORGE->MonsterSay(30145);
                    NPC_BROK_THUNDERFORGE->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 41000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    Creature* NPC_SINDRI_THUNDERFORGE = pCreature->FindNearestCreature(61757, 40.0F);

                    if (!NPC_SINDRI_THUNDERFORGE)
                        return;

                    NPC_SINDRI_THUNDERFORGE->MonsterSay(30145);
                    NPC_SINDRI_THUNDERFORGE->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 41000);

            DoAfterTime(pPlayer, 42 * IN_MILLISECONDS, [player = pPlayer]() {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60052))
                {
                    player->KilledMonster(cInfo, ObjectGuid());

                    if (Group* pGroup = player->GetGroup())
                    {
                        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                        {
                            if (Player* pMember = itr->getSource())
                            {
                                if (pMember->GetObjectGuid() != player->GetObjectGuid())
                                    pMember->KilledMonster(cInfo, ObjectGuid());
                            }
                        }
                    }
                }
                });
        }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_gazzik(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(41166) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30147, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61748, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_gazzik(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30148, pCreature->GetGUID());
    }

    return true;
}

bool QuestRewarded_npc_rine(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 41232) // To Find the Heart
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->MonsterSay(30153);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay(30154);
            }, 3000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                pQuestGiver->MonsterSay(30155);
                pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 6000);

    }

    return false;
}

bool QuestAccept_npc_rommath(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    auto playerGuid = pPlayer->GetObjectGuid();

    if (pQuest->GetQuestId() == 41240) // An Audience With the Prince
    {
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60 * IN_MILLISECONDS);

            //pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(30156);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 1000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->SummonCreature(61847, 4313.0f, -3074.0f, 147.0f, 1.7F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 56 * IN_MILLISECONDS);

                    pQuestGiver->CastSpell(pQuestGiver, 1449, false);
                }, 5000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->HandleEmote(EMOTE_STATE_KNEEL);
                }, 8000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_IMAGE_OF_KAELTHAS = pQuestGiver->FindNearestCreature(61847, 40.0F);

                    if (!NPC_IMAGE_OF_KAELTHAS)
                        return;

                    NPC_IMAGE_OF_KAELTHAS->MonsterSay(30157);
                    NPC_IMAGE_OF_KAELTHAS->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 11000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(30158);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 16000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_IMAGE_OF_KAELTHAS = pQuestGiver->FindNearestCreature(61847, 40.0F);

                    if (!NPC_IMAGE_OF_KAELTHAS)
                        return;

                    NPC_IMAGE_OF_KAELTHAS->MonsterSay(30159);
                    NPC_IMAGE_OF_KAELTHAS->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 21000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(30160);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 26000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_IMAGE_OF_KAELTHAS = pQuestGiver->FindNearestCreature(61847, 40.0F);

                    if (!NPC_IMAGE_OF_KAELTHAS)
                        return;

                    NPC_IMAGE_OF_KAELTHAS->MonsterSay(30161);
                    NPC_IMAGE_OF_KAELTHAS->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 31000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(30162);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 36000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_IMAGE_OF_KAELTHAS = pQuestGiver->FindNearestCreature(61847, 40.0F);

                    if (!NPC_IMAGE_OF_KAELTHAS)
                        return;

                    NPC_IMAGE_OF_KAELTHAS->MonsterSay(30163);
                    NPC_IMAGE_OF_KAELTHAS->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 41000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(30164);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 46000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    Creature* NPC_IMAGE_OF_KAELTHAS = pQuestGiver->FindNearestCreature(61847, 40.0F);

                    if (!NPC_IMAGE_OF_KAELTHAS)
                        return;

                    NPC_IMAGE_OF_KAELTHAS->MonsterSay(30165);
                    NPC_IMAGE_OF_KAELTHAS->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 51000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->MonsterSay(30166);
                    pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
                }, 56000);

            pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
                {
                    pQuestGiver->HandleEmote(EMOTE_STATE_STAND);
                }, 59000);

            //pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            //    {
            //        pQuestGiver->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            //    }, 60000);

            DoAfterTime(pPlayer, 60 * IN_MILLISECONDS, [player = pPlayer]()
            {
                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60053))
                {
                    player->KilledMonster(cInfo, ObjectGuid());

                    if (Group* pGroup = player->GetGroup())
                    {
                        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                        {
                            if (Player* pMember = itr->getSource())
                            {
                                if (pMember->GetObjectGuid() != player->GetObjectGuid())
                                    pMember->KilledMonster(cInfo, ObjectGuid());
                            }
                        }
                    }
                }
            });
        }
    }

    return false;
}

bool GOHello_go_magister_translocation_orb(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020086)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 30167, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(2020086, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_magister_translocation_orb(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020086)
        {
            static const WorldLocation m_magister(0, 4314.0F, -3089.0F, 37.0f, 0.0f);
            pPlayer->TeleportTo(m_magister);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GOHello_go_council_translocation_orb(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020087)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 30167, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(2020087, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_council_translocation_orb(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2020087)
        {
            static const WorldLocation m_council(0, 4310.0F, -3046.0F, 148.0f, 0.0f);
            pPlayer->TeleportTo(m_council);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

constexpr std::array<uint32, 2> QuestsCompleted = { 41270, 41273 };

bool GossipHello_Christmas_Entity(Player* player, Creature* creature)
{
    const bool canSeeItems = std::any_of(QuestsCompleted.begin(), QuestsCompleted.end(), [player](uint32 questId)
        {
            return player->GetQuestStatus(questId) == QUEST_STATUS_COMPLETE;
        });

    if (canSeeItems)
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, "Show me the goods.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
    player->SEND_GOSSIP_MENU(907, creature->GetGUID());
    return true;
}

bool GossipSelect_Christmas_Entity(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF)
    {
        const bool canSeeItems = std::any_of(QuestsCompleted.begin(), QuestsCompleted.end(), [player](uint32 questId)
            {
                return player->GetQuestStatus(questId) == QUEST_STATUS_COMPLETE;
            });

        if (canSeeItems)
        {
            player->canSeeVendorList = true;
            player->PlayerTalkClass->CloseGossip();
            player->GetSession()->SendListInventory(creature->GetGUID());
        }
    }
    return true;
}

bool QuestAccept_npc_daily_hk_dk(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    // Forcibly send quest data to player to update player name in cache.
    WorldPacket data(CMSG_QUEST_QUERY, 4);
    data << uint32(pQuest->GetQuestId());
    pPlayer->GetSession()->HandleQuestQueryOpcode(data);
    pQuestGiver->MonsterWhisper(pQuest->GetEndText().c_str(), pPlayer);

    return false;
}

enum
{
    GOSSIP_WHICH_ITEM = 61905,
    GOSSIP_CONFIRM_REFUND = 61906,
};

inline bool CanRefundShopItem(ShopLogEntry* pEntry, Player* player)
{
    if (!pEntry->refunded && pEntry->charGuid == player->GetGUIDLow() &&
        (pEntry->dateUnix + sWorld.getConfig(CONFIG_UINT32_SHOP_REFUND_WINDOW)) > time(nullptr))
    {

        auto shopEntry = sObjectMgr.GetShopEntryInfo(pEntry->itemEntry);
        //no skins illu's or fashion in auto refund.
        if (!shopEntry || (shopEntry->Category == 2 || shopEntry->Category == 7 || shopEntry->Category == 8))
            return false;


        //brainwashing device
        if (shopEntry->Item == 51715)
            return false;

        if (ItemPrototype const* pProto = sObjectMgr.GetItemPrototype(pEntry->itemEntry))
        {
            // Has the item - okay in any case
            if (player->HasItemCount(pEntry->itemEntry))
            {
                return true;
            }
            // Skins - check if skin is applied
            else if (pProto->Spells[0].SpellId == 56053)
            {
                if (CustomCharacterSkinEntry const* pCustomSkin = sObjectMgr.GetCustomCharacterSkin(pEntry->itemEntry))
                {
                    uint8 skinId = player->GetGender() == GENDER_MALE ? pCustomSkin->male_id : pCustomSkin->female_id;
                    return skinId != 0 && player->GetByteValue(PLAYER_BYTES, 0) == skinId;
                }
            }
            // Mounts - check if spell is learned
            else if (pProto->Spells[0].SpellId == 46499)
            {
                if (auto spellIdOpt = sMountMgr.GetMountSpellId(pEntry->itemEntry))
                {
                    return player->HasSpell(spellIdOpt.value());
                }
            }
            // Pets - check if spell is learned
            else if (pProto->Spells[0].SpellId == 46498)
            {
                if (auto spellIdOpt = sCompanionMgr.GetCompanionSpellId(pEntry->itemEntry))
                {
                    return player->HasSpell(spellIdOpt.value());
                }
            }
            // Toys - check if spell is learned
            else if (pProto->Spells[0].SpellId == 46096)
            {
                if (auto spellIdOpt = sToyMgr.GetToySpellId(pEntry->itemEntry))
                {
                    return player->HasSpell(spellIdOpt.value());
                }
            }
        }
    }
    return false;
}

static std::map<uint32 /*low guid*/, uint32 /*shopId*/> g_refundGossipState;

bool GossipHello_ShopRefundNPC(Player* player, Creature* creature)
{
    auto history = sObjectMgr.GetShopLogEntries(player->GetSession()->GetAccountId());

    uint32 count = 0;
    for (auto itr : history)
    {
        if (CanRefundShopItem(itr, player))
        {
            if (ItemPrototype const* pProto = sObjectMgr.GetItemPrototype(itr->itemEntry))
            {
                std::string const* name = &pProto->Name1;
                int loc_idx = player->GetSession()->GetSessionDbLocaleIndex();
                if (loc_idx >= 0)
                {
                    ItemLocale const* il = sObjectMgr.GetItemLocale(pProto->ItemId);
                    if (il)
                    {
                        if (il->Name.size() > size_t(loc_idx) && !il->Name[loc_idx].empty())
                            name = &il->Name[loc_idx];
                    }
                }
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_2, name->c_str(), GOSSIP_SENDER_MAIN, itr->id);

                if (++count >= GOSSIP_MAX_MENU_ITEMS)
                    break;
            }
        }
    }

    player->SEND_GOSSIP_MENU(GOSSIP_WHICH_ITEM, creature->GetGUID());
    return true;
}

// return true if item is consumable, and its effect was removed
// in that case there is no need to remove actual item from inventory
// this fixes case where you've bought same consumable item twice,
// and used it once, and refunding it ends up deleting both
bool RemoveSpecialEffectOnRefund(uint32 itemId, uint32 spellId, Player* pPlayer)
{
    // Skins - unapply skin
    if (spellId == 56053)
    {
        if (CustomCharacterSkinEntry const* pCustomSkin = sObjectMgr.GetCustomCharacterSkin(itemId))
        {
            uint8 skinId = pPlayer->GetGender() == GENDER_MALE ? pCustomSkin->male_id : pCustomSkin->female_id;
            if (skinId != 0 && pPlayer->GetByteValue(PLAYER_BYTES, 0) == skinId)
            {
                uint8 originalSkinId = 0;

                auto originalSkinOpt = pPlayer->GetPlayerVariable(PlayerVariables::OriginalSkinByte);

                if (originalSkinOpt)
                {
                    int32 skin = 0;
                    try {
                        skin = std::stoi(originalSkinOpt.value());
                    }
                    catch (...) {}

                    if (skin > 0)
                        originalSkinId = static_cast<uint8>(skin);
                }

                pPlayer->SetByteValue(PLAYER_BYTES, 0, originalSkinId);
                pPlayer->SetDisplayId(15435);
                pPlayer->m_Events.AddLambdaEventAtOffset([pPlayer]() {pPlayer->DeMorph(); }, 1000);
                return false; // non consumable
            }
        }
    }
    // Mounts - unlearn the spell
    else if (spellId == 46499)
    {
        if (auto spellIdOpt = sMountMgr.GetMountSpellId(itemId))
        {
            if (pPlayer->HasSpell(spellIdOpt.value()))
            {
                pPlayer->RemoveSpell(spellIdOpt.value(), false, false);
                pPlayer->RemoveAurasDueToSpellByCancel(spellIdOpt.value());
                return true; // consumable
            }
        }
    }
    // Pets - unlearn the spells
    else if (spellId == 46498)
    {
        if (auto spellIdOpt = sCompanionMgr.GetCompanionSpellId(itemId))
        {
            if (pPlayer->HasSpell(spellIdOpt.value()))
            {
                pPlayer->RemoveSpell(spellIdOpt.value(), false, false);
                if (Pet* pPet = pPlayer->GetMiniPet())
                    pPet->DoKillUnit();
                return true; // consumable
            }
        }
    }

    // no special handling, make sure item is removed
    return false;
}

bool GossipSelect_ShopRefundNPC(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    uint32& shopId = g_refundGossipState[pPlayer->GetGUIDLow()];
    if (shopId)
    {
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
            if (ShopLogEntry* pEntry = sObjectMgr.GetShopLogEntry(shopId))
            {
                if (CanRefundShopItem(pEntry, pPlayer))
                {
                    ItemPrototype const* pProto = sObjectMgr.GetItemPrototype(pEntry->itemEntry);

                    if (!RemoveSpecialEffectOnRefund(pEntry->itemEntry, pProto->Spells[0].SpellId, pPlayer))
                    {
                        uint32 countBefore = pPlayer->GetItemCount(pEntry->itemEntry);
                        pPlayer->DestroyItemCount(pEntry->itemEntry, 1, true, false);

                        if (pPlayer->GetItemCount(pEntry->itemEntry) == countBefore)
                        {
                            ChatHandler(pPlayer).SendSysMessage(LANG_SHOP_ITEM_CANT_REMOVE);
                            pPlayer->CLOSE_GOSSIP_MENU();
                            return true;
                        }
                    }

                    //Remove existing xmogs that reference refunded item if wearable, remove xmog history.
                    pPlayer->RemoveTransmogsToItem(pEntry->itemEntry);

                    pEntry->refunded = true;
                    LoginDatabase.PExecute("UPDATE `shop_coins` SET `coins` = (`coins`+%u) WHERE `id` = %u", pEntry->itemPrice, pPlayer->GetSession()->GetAccountId());
                    LoginDatabase.PExecute("UPDATE `shop_logs` SET `refunded` = 1 WHERE `id` = %u", shopId);
                    sLog.outString("[SHOP] Player %u refunded shop id %u for %u coins through refund npc.", pPlayer->GetGUIDLow(), shopId, pEntry->itemPrice);
                    ChatHandler(pPlayer).PSendSysMessage(LANG_SHOP_ITEM_REFUNDED, shopId);
                }
                else
                    ChatHandler(pPlayer).SendSysMessage(LANG_SHOP_ITEM_NOT_ELIGIBLE);
            }
            else
                ChatHandler(pPlayer).PSendSysMessage(LANG_SHOP_ITEM_NOT_FOUND, shopId);
        }

        shopId = 0;
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    else
    {
        shopId = uiAction;
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, pPlayer->GetSession()->GetMangosString(LANG_NO), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 0);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, pPlayer->GetSession()->GetMangosString(LANG_YES), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(GOSSIP_CONFIRM_REFUND, pCreature->GetGUID());
    }

    return true;
}

enum
{
    GOSSIP_REFUND_EGG_ITEMS = 64000
};


std::unordered_map<uint32, std::vector<PlayerEggLoot>> playerEggLoot;

uint32 currentEggId = 0;

bool GossipHello_EggRefundNPC(Player* player, Creature* creature)
{
    auto& eggItems = playerEggLoot[player->GetGUIDLow()];

    uint32 count = 0;
    for (const auto& eggLoot : eggItems)
    {
        Item* targetItem = nullptr;
        player->ApplyForAllItems([&targetItem, itemGuid = eggLoot.ItemGuid](Item* item)
            {
                if (targetItem)
                    return;

                if (item->GetGUIDLow() == itemGuid && !item->IsEquipped())
                    targetItem = item;
            });

        if (!eggLoot.Refunded && targetItem)
        {
            if (ItemPrototype const* pProto = sObjectMgr.GetItemPrototype(eggLoot.ItemId))
            {
                std::string const* name = &pProto->Name1;
                int loc_idx = player->GetSession()->GetSessionDbLocaleIndex();
                if (loc_idx >= 0)
                {
                    ItemLocale const* il = sObjectMgr.GetItemLocale(pProto->ItemId);
                    if (il)
                    {
                        if (il->Name.size() > size_t(loc_idx) && !il->Name[loc_idx].empty())
                            name = &il->Name[loc_idx];
                    }
                }
                std::string msg = *name;
                msg += " -> 40 tokens";
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, msg.c_str(), GOSSIP_SENDER_MAIN, eggLoot.Id);

                if (++count >= GOSSIP_MAX_MENU_ITEMS)
                    break;
            }
        }
    }
    player->SEND_GOSSIP_MENU(GOSSIP_REFUND_EGG_ITEMS, creature->GetGUID());

    return true;
}


bool GossipSelect_EggRefundNPC(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 action)
{
    auto& eggLoot = playerEggLoot[player->GetGUIDLow()];

    auto itr = std::find_if(eggLoot.begin(), eggLoot.end(), [action](PlayerEggLoot& loot) { return action == loot.Id; });
    if (itr != eggLoot.end())
    {

        Item* targetItem = nullptr;
        player->ApplyForAllItems([&targetItem, itemGuid = itr->ItemGuid](Item* item)
            {
                if (targetItem)
                    return;

                if (item->GetGUIDLow() == itemGuid && !item->IsEquipped())
                    targetItem = item;
            });

        if (!itr->Refunded && targetItem)
        {
            player->DestroyItem(targetItem->GetBagSlot(), targetItem->GetSlot(), true);
            itr->Refunded = true;
            LoginDatabase.PExecute("UPDATE `shop_coins` SET `coins` = (`coins`+%u) WHERE `id` = %u", 40, player->GetSession()->GetAccountId());
            CharacterDatabase.PExecute("UPDATE `character_egg_loot` SET refunded = 1 WHERE `id` = %u", itr->Id);
        }
        player->SaveInventoryAndGoldToDB();
    }

    player->CLOSE_GOSSIP_MENU();

    return true;
}


void LoadPlayerEggLoot()
{
    auto result = std::unique_ptr<QueryResult>(CharacterDatabase.Query("SELECT * FROM character_egg_loot"));

    if (result)
    {
        do {
            auto fields = result->Fetch();
            PlayerEggLoot loot{ fields[0].GetUInt32(), fields[1].GetUInt32(), fields[2].GetUInt32() , fields[3].GetUInt32(), fields[4].GetBool() };
            playerEggLoot[loot.PlayerGuid].push_back(std::move(loot));
        } while (result->NextRow());
    }

    result = std::unique_ptr<QueryResult>(CharacterDatabase.Query("SELECT MAX(id) FROM character_egg_loot"));

    if (result)
        currentEggId = (*result)[0].GetUInt32();
}


bool ItemUseSpell_easter_egg(Player* player, Item* item, const SpellCastTargets&)
{
    static std::map<uint32, uint32> weightedDrops;

    static uint32 currentKey = 0;

    if (!currentKey)
    {
        std::vector<uint32> possibleItemIds =
        {
            12303, 13582, 13584, 18768, 23193, 23705, 50003, 50004, 50005, 50007,
            50009, 50011, 50081, 50399, 50400, 50407, 50602, 51421, 51700, 51715,
            51891, 60982, 69001, 69002, 69004, 69006, 80430, 80449, 81081, 81082,
            81085, 81091, 81102, 81152, 81153, 81155, 81158, 81207, 81231, 81232,
            81234, 81235, 81236, 81258, 83150, 83300, 83301, 83302,
            92011, 92012, 92013, 92014, 92016, 92017, 92018, 92019
        };

        if (sWorld.getConfig(CONFIG_BOOL_SEA_NETWORK))
        {
            //clouds on CN
            possibleItemIds.push_back(81239);
            possibleItemIds.push_back(81240);
        }

        for (uint32 itemId : possibleItemIds)
        {
            if (auto shopInfo = sObjectMgr.GetShopEntryInfo(itemId))
            {
                currentKey += static_cast<uint32>(ceil(10'000 / shopInfo->Price));
                weightedDrops[currentKey] = itemId;
            }
            else
            {
                //Shop-exclusive drops, semi-hardcoded for now.
                uint32 price = 100;

                uint32 normalPets[] = { 13582, 50081, 69001, 69002, 81152, 92016};
                uint32 shirts[] = { 92011, 92012, 92013, 92014, 92019 };


                if (std::find(std::begin(normalPets), std::end(normalPets), itemId) != std::end(normalPets))
                {
                    price = 100;
                }
                else if (itemId == 51700 || itemId == 51891) // special pets
                    price = 150;
                else if (std::find(std::begin(shirts), std::end(shirts), itemId) != std::end(shirts))
                {
                    price = 250;
                }
                else if (itemId == 60982) // socks
                    price = 300;
                else
                {
                    //mounts
                    price = 300;
                }


                currentKey += static_cast<uint32>(ceil(10'000 / price));
                weightedDrops[currentKey] = itemId;
            }
        }

        /*int idx = 0;
        float totalOdds = 0.f;
        uint32 maxKey = weightedDrops.rbegin()->first;
        if (FILE* pFile = fopen("eggodds.txt", "w"))
        {
            for (const auto& [key, val] : weightedDrops)
            {
                float odd = (float)(key - idx) / maxKey * 100;
                idx = key;
                totalOdds += odd;
                auto proto = sObjectMgr.GetItemPrototype(val);
                fprintf(pFile, "Item %s (%u) has odds %.2f.\n", proto->Name1.c_str(), val, odd);
            }
            fprintf(pFile, "Total odds : %.2f", totalOdds);
            fclose(pFile);
        }*/
    }

    uint32 rand = urand(0, currentKey);
    auto itr = weightedDrops.lower_bound(rand);

    if (itr != weightedDrops.end())
    {
        auto lootedItem = player->AddItem(itr->second);
        if (lootedItem)
        {
            uint32 eggId = ++currentEggId;
            item->preventCancel = true;
            player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);
            playerEggLoot[player->GetGUIDLow()].push_back(PlayerEggLoot{ eggId, player->GetGUIDLow(), lootedItem->GetEntry(), lootedItem->GetGUIDLow(), false });
            CharacterDatabase.PExecute("INSERT INTO character_egg_loot VALUES (%u, %u, %u, %u, 0)",
                eggId, player->GetGUIDLow(), lootedItem->GetEntry(), lootedItem->GetGUIDLow());
            player->SaveInventoryAndGoldToDB();
        }
        else
            ChatHandler(player).SendSysMessage("Try again!");
    }

    return true;
}

bool GossipHello_npc_suspicious_goblin(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(41304) == QUEST_STATUS_INCOMPLETE) // A Friend Of A Friend?
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30176, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(61973, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_suspicious_goblin(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer(30177, pPlayer);
        pCreature->SetFactionTemporary(16, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_tharessa(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(41314) == QUEST_STATUS_INCOMPLETE) // A Cause Of Concern
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30179, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(61979, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_tharessa(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer(30180, pPlayer);
        pCreature->SetFactionTemporary(16, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_resonating_pedestal(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020099)
    {
        if (pPlayer->GetQuestStatus(41315) == QUEST_STATUS_INCOMPLETE && !pPlayer->HasItemCount(41377, 1) && !pPlayer->FindNearestCreature(61980, 100.0F) && !pPlayer->FindNearestCreature(61981, 100.0F))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 30182, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30181, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_resonating_pedestal(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {

        if (pGo->GetEntry() == 2020099)
        {
            Creature* amplified_arcane_monstrosity = pGo->SummonCreature(61980, 3925.58F, -4733.38F, 266.56F, 1.60F, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 15 * IN_MILLISECONDS);
            Creature* volatile_arcane_monstrosity = pGo->SummonCreature(61981, 3941.27F, -4719.79F, 266.57F, 4.36F, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 15 * IN_MILLISECONDS);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_dissipating_spectre(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(41339) == QUEST_STATUS_INCOMPLETE) // Shadowed Spectre
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30220, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pPlayer->GetQuestStatus(41342) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(41390, 1, 1)) // The White Stag
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30224, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    }

    pPlayer->SEND_GOSSIP_MENU(61988, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_dissipating_spectre(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30222, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30221, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60054))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30223, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pCreature->MonsterYell(30225);
        pCreature->SetFactionTemporary(16, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool QuestRewarded_go_altar_of_clackora(Player* pPlayer, GameObject* pGo, Quest const* pQuest)
{
    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 41345 && !pGo->FindNearestCreature(59963, 50.0F))
    {
        pGo->SummonCreature(59963, pPlayer->GetPositionX() + 2.0F, pPlayer->GetPositionY() + 2.0F, pPlayer->GetPositionZ() + 1.0F, 0.0F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 600 * IN_MILLISECONDS);
    }

    return false;
}

struct npc_froggerAI : public ScriptedPetAI
{
    npc_froggerAI(Creature* pCreature) : ScriptedPetAI(pCreature) { Reset(); }

    void Reset() { }
    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim()) return;
        DoMeleeAttackIfReady();
    }
    void JustDied(Unit*) override { }
    void EnterCombat() { }

    void ReceiveEmote(Player* pPlayer, uint32 uiEmote)
    {
        if (m_creature && m_creature->IsAlive())
        {
            if (uiEmote == TEXTEMOTE_KISS && !pPlayer->HasAura(25199))
            {
                m_creature->MonsterSay(66707);
                pPlayer->CastSpell(pPlayer, 25199, false);
            }
        }
    }

    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_frogger(Creature* pCreature)
{
    return new npc_froggerAI(pCreature);
}

bool GossipHello_npc_anelace_the_clairvoyant(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(41372) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(10, 30.0F))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30229, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(61996, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_anelace_the_clairvoyant(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        if (!pPlayer->FindNearestCreature(10, 30.0F))
        {
            Creature* controller = pCreature->SummonCreature(10, pCreature->GetPositionX(), pCreature->GetPositionY(), pCreature->GetPositionZ(), pCreature->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 22 * IN_MILLISECONDS);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30230);
                    pCreature->CastSpell(pCreature, 8734, false);
                }, 1000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30231);
                }, 6000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30232);
                }, 11000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30233);
                }, 16000);

            pCreature->m_Events.AddLambdaEventAtOffset([pCreature]()
                {
                    pCreature->MonsterSay(30234);
                    pCreature->CastSpell(pCreature, 1449, false);
                }, 21000);

            DoAfterTime(pPlayer, 22 * IN_MILLISECONDS, [player = pPlayer]()
                {
                    if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60055))
                    {
                        player->KilledMonster(cInfo, ObjectGuid());

                        if (Group* pGroup = player->GetGroup())
                        {
                            for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                            {
                                if (Player* pMember = itr->getSource())
                                {
                                    if (pMember->GetObjectGuid() != player->GetObjectGuid())
                                        pMember->KilledMonster(cInfo, ObjectGuid());
                                }
                            }
                        }
                    }
                });
        }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_beacon_of_power(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2020114)
    {
        if (pPlayer->GetQuestStatus(41386) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(41424, 1) && !pPlayer->FindNearestCreature(62059, 100.0F) && !pPlayer->FindNearestCreature(10, 30.0F))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 30249, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30250, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_beacon_of_power(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {

        if (pGo->GetEntry() == 2020114)
        {
            pGo->SummonCreature(10, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), pPlayer->GetOrientation(), TEMPSUMMON_TIMED_COMBAT_OR_DEAD_DESPAWN, 9 * IN_MILLISECONDS); // invisible multi spawn controller

            pGo->m_Events.AddLambdaEventAtOffset([pGo, pPlayer]()
                {
                    pPlayer->GetSession()->SendNotification("The Beacon of Power begins to react with the Orb of Vorgendor. A foul energy can be felt.");
                }, 3000);

            pGo->m_Events.AddLambdaEventAtOffset([pGo]()
                {
                    if (Creature* NPC_FATHER_LYCAN = pGo->SummonCreature(62059, pGo->GetPositionX() + 2.0F, pGo->GetPositionY() + 2.0F, pGo->GetPositionZ() + 1.0F, 0.0F, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 3 * MINUTE * IN_MILLISECONDS))
                        if (Player* pPlayer = NPC_FATHER_LYCAN->FindNearestHostilePlayer(50.0f))
                            NPC_FATHER_LYCAN->AI()->AttackStart(pPlayer);
                }, 8000);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_mathias_brightheart(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(41388) == QUEST_STATUS_INCOMPLETE) // Wisdom From Failure
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30256, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(62031, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_mathias_brightheart(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30258, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30259, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30260, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30257, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30262, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30263, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30264, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30261, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30266, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30267, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30268, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30265, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60057))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30269, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->SEND_GOSSIP_MENU(30270, pCreature->GetGUID());
    }

    return true;
}

bool GossipHello_npc_sakgoth(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(41388) == QUEST_STATUS_INCOMPLETE) // Wisdom From Failure
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30271, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(62032, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_sakgoth(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60058))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30272, pCreature->GetGUID());
    }

    return true;
}

bool GossipHello_npc_klannoc_macleod(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(41388) == QUEST_STATUS_INCOMPLETE) // Wisdom From Failure
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30271, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(30277, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_klannoc_macleod(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30274, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30273, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60059))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30275, pCreature->GetGUID());
    }

    return true;
}

bool GossipHello_npc_kafai(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(41388) == QUEST_STATUS_INCOMPLETE) // Wisdom From Failure
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 30271, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->SEND_GOSSIP_MENU(62063, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_kafai(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60060))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30276, pCreature->GetGUID());
    }

    return true;
}

void AddSC_random_scripts_3()
{
    Script* newscript;

    Script* pNewScript;

    newscript = new Script;
    newscript->Name = "npc_kafai";
    newscript->pGossipHello = &GossipHello_npc_kafai;
    newscript->pGossipSelect = &GossipSelect_npc_kafai;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_klannoc_macleod";
    newscript->pGossipHello = &GossipHello_npc_klannoc_macleod;
    newscript->pGossipSelect = &GossipSelect_npc_klannoc_macleod;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sakgoth";
    newscript->pGossipHello = &GossipHello_npc_sakgoth;
    newscript->pGossipSelect = &GossipSelect_npc_sakgoth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_mathias_brightheart";
    newscript->pGossipHello = &GossipHello_npc_mathias_brightheart;
    newscript->pGossipSelect = &GossipSelect_npc_mathias_brightheart;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_beacon_of_power";
    newscript->pGOHello = &GOHello_go_beacon_of_power;
    newscript->pGOGossipSelect = &GOSelect_go_beacon_of_power;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_anelace_the_clairvoyant";
    newscript->pGossipHello = &GossipHello_npc_anelace_the_clairvoyant;
    newscript->pGossipSelect = &GossipSelect_npc_anelace_the_clairvoyant;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_frogger";
    newscript->GetAI = &GetAI_npc_frogger;
    newscript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "go_altar_of_clackora";
    pNewScript->pQuestRewardedGO = &QuestRewarded_go_altar_of_clackora;
    pNewScript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_dissipating_spectre";
    newscript->pGossipHello = &GossipHello_npc_dissipating_spectre;
    newscript->pGossipSelect = &GossipSelect_npc_dissipating_spectre;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_resonating_pedestal";
    newscript->pGOHello = &GOHello_go_resonating_pedestal;
    newscript->pGOGossipSelect = &GOSelect_go_resonating_pedestal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tharessa";
    newscript->pGossipHello = &GossipHello_npc_tharessa;
    newscript->pGossipSelect = &GossipSelect_npc_tharessa;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_suspicious_goblin";
    newscript->pGossipHello = &GossipHello_npc_suspicious_goblin;
    newscript->pGossipSelect = &GossipSelect_npc_suspicious_goblin;
    newscript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "npc_snow_vendor";
    pNewScript->pGossipHello = &GossipHello_Christmas_Entity;
    pNewScript->pGossipSelect = &GossipSelect_Christmas_Entity;
    pNewScript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_council_translocation_orb";
    newscript->pGOHello = &GOHello_go_council_translocation_orb;
    newscript->pGOGossipSelect = &GOSelect_go_council_translocation_orb;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_magister_translocation_orb";
    newscript->pGOHello = &GOHello_go_magister_translocation_orb;
    newscript->pGOGossipSelect = &GOSelect_go_magister_translocation_orb;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_rommath";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_rommath;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_rine";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_rine;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_gazzik";
    newscript->pGossipHello = &GossipHello_npc_gazzik;
    newscript->pGossipSelect = &GossipSelect_npc_gazzik;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_frig_thunderforge";
    newscript->pGossipHello = &GossipHello_npc_frig_thunderforge;
    newscript->pGossipSelect = &GossipSelect_npc_frig_thunderforge;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_shade_of_senshi";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_shade_of_senshi;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_the_orb_of_pyforos";
    newscript->pGOHello = &GOHello_go_the_orb_of_pyforos;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_strange_marble_bust";
    newscript->pGOHello = &GOHello_go_strange_marble_bust;
    newscript->pGOGossipSelect = &GOSelect_go_strange_marble_bust;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_councilman_kyleson";
    newscript->pGossipHello = &GossipHello_npc_councilman_kyleson;
    newscript->pGossipSelect = &GossipSelect_npc_councilman_kyleson;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_velinde_starsong";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_velinde_starsong;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_velindes_memory";
    newscript->pGOHello = &GOHello_go_velindes_memory;
    newscript->pGOGossipSelect = &GOSelect_go_velindes_memory;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_great_cat_spirit";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_great_cat_spirit;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_arch_druid_dreamwind";
    newscript->pGossipHello = &GossipHello_npc_arch_druid_dreamwind;
    newscript->pGossipSelect = &GossipSelect_npc_arch_druid_dreamwind;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_arch_druid_dreamwind;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_parnabus";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_parnabus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_dark_bishop_mordren";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_dark_bishop_mordren;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_runestone_of_cenarius";
    newscript->pGOHello = &GOHello_go_runestone_of_cenarius;
    newscript->pGOGossipSelect = &GOSelect_go_runestone_of_cenarius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_runestone_of_nordrassil";
    newscript->pGOHello = &GOHello_go_runestone_of_nordrassil;
    newscript->pGOGossipSelect = &GOSelect_go_runestone_of_nordrassil;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_buthok_cloudhorn";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_buthok_cloudhorn;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_grave_of_franklin_blackheart";
    newscript->pGOHello = &GOHello_go_grave_of_franklin_blackheart;
    newscript->pGOGossipSelect = &GOSelect_go_grave_of_franklin_blackheart;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_itharius";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_itharius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ralathius";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_ralathius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lord_darius_ravenwood";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_lord_darius_ravenwood;
    newscript->pGossipHello = &GossipHello_npc_lord_darius_ravenwood;
    newscript->pGossipSelect = &GossipSelect_npc_lord_darius_ravenwood;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_mysterious_mailbox";
    newscript->pGOHello = &GOHello_go_mysterious_mailbox;
    newscript->pQuestRewardedGO = &QuestComplete_go_mysterious_mailbox;
    newscript->RegisterSelf();
  
    newscript = new Script;
    newscript->Name = "go_aliattans_campfire";
    newscript->pGOHello = &GOHello_go_aliattans_campfire;
    newscript->pGOGossipSelect = &GOSelect_go_aliattans_campfire;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_orvan_darkeye";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_orvan_darkeye;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_loremaster_taerlon";
    newscript->pGossipHello = &GossipHello_npc_loremaster_taerlon;
    newscript->pGossipSelect = &GossipSelect_npc_loremaster_taerlon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_master_chemist_volterwhite";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_master_chemist_volterwhite;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_prospector_gehn";
    newscript->pGossipHello = &GossipHello_npc_prospector_gehn;
    newscript->pGossipSelect = &GossipSelect_npc_prospector_gehn;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_reserve_pump_lever";
    newscript->pGOHello = &GOHello_go_reserve_pump_lever;
    newscript->pGOGossipSelect = &GOSelect_go_reserve_pump_lever;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_alpha_channel_valve";
    newscript->pGOHello = &GOHello_go_alpha_channel_valve;
    newscript->pGOGossipSelect = &GOSelect_go_alpha_channel_valve;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_greta_longpike";
    newscript->pGossipHello = &GossipHello_npc_greta_longpike;
    newscript->pGossipSelect = &GossipSelect_npc_greta_longpike;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_shizuru_yamada";
    newscript->pGossipHello = &GossipHello_npc_shizuru_yamada;
    newscript->pGossipSelect = &GossipSelect_npc_shizuru_yamada;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_dolvan_bracewind";
    newscript->pGossipHello = &GossipHello_npc_dolvan_bracewind;
    newscript->pGossipSelect = &GossipSelect_npc_dolvan_bracewind;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_dolvan_bracewind;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_dolvan_bracewind;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lord_ebonlocke";
    newscript->pGossipHello = &GossipHello_npc_lord_ebonlocke;
    newscript->pGossipSelect = &GossipSelect_npc_lord_ebonlocke;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_commander_starwind";
    newscript->pGossipHello = &GossipHello_npc_commander_starwind;
    newscript->pGossipSelect = &GossipSelect_npc_commander_starwind;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_commander_starwind;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_brolthan_ironglade";
    newscript->pGossipHello = &GossipHello_npc_brolthan_ironglade;
    newscript->pGossipSelect = &GossipSelect_npc_brolthan_ironglade;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_brolthan_ironglade;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_deckmaster_darkhollow";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_deckmaster_darkhollow;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_aneka_konko";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_aneka_konko;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_baron_telraz";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_baron_telraz;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_winter_veil_storytailer";
    newscript->pGossipHello = &GossipHello_npc_winter_veil_storytailer;
    newscript->pGossipSelect = &GossipSelect_npc_winter_veil_storytailer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nibu";
    newscript->pGossipHello = &GossipHello_npc_nibu;
    newscript->pGossipSelect = &GossipSelect_npc_nibu;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_gelweg_darkbrow";
    newscript->pGossipHello = &GossipHello_npc_gelweg_darkbrow;
    newscript->pGossipSelect = &GossipSelect_npc_gelweg_darkbrow;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bixxle_screwfuse";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_bixxle_screwfuse;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_bounty_board";
    newscript->pGOHello = &GOHello_go_bounty_board;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_magus_halister";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_magus_halister;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_leeza_fraxtoggle";
    newscript->pGossipHello = &GossipHello_npc_leeza_fraxtoggle;
    newscript->pGossipSelect = &GossipSelect_npc_leeza_fraxtoggle;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tazzo_gearfire";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_tazzo_gearfire;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_tazzo_gearfire;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_wazlon_headiron";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_wazlon_headiron;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_pumpworker_zalwan";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_pumpworker_zalwan;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_gizzix_grimegurgle";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_gizzix_grimegurgle;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kagoro";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_kagoro;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_forgotten_keeper";
    newscript->pGossipHello = &GossipHello_npc_forgotten_keeper;
    newscript->pGossipSelect = &GossipSelect_npc_forgotten_keeper;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_gong_of_corthan";
    newscript->pGOHello = &GOHello_go_gong_of_corthan;
    newscript->pGOGossipSelect = &GOSelect_go_gong_of_corthan;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_maloran_oakbranch";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_maloran_oakbranch;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_faldan_moonshatter";
    newscript->pGossipHello = &GossipHello_npc_faldan_moonshatter;
    newscript->pGossipSelect = &GossipSelect_npc_faldan_moonshatter;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_harlek_vaultshield";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_harlek_vaultshield;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_grumnir_battlebeard";
    newscript->pGossipHello = &GossipHello_npc_grumnir_battlebeard;
    newscript->pGossipSelect = &GossipSelect_npc_grumnir_battlebeard;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_falgran_hastil";
    newscript->pGossipHello = &GossipHello_npc_falgran_hastil;
    newscript->pGossipSelect = &GossipSelect_npc_falgran_hastil;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_falgran_hastil;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_colonel_breen";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_colonel_breen;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_harmonization_crystal";
    newscript->pGOHello = &GOHello_go_harmonization_crystal;
    newscript->pGOGossipSelect = &GOSelect_go_harmonization_crystal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_resonation_crystal";
    newscript->pGOHello = &GOHello_go_resonation_crystal;
    newscript->pGOGossipSelect = &GOSelect_go_resonation_crystal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_gowlfang";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_gowlfang;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_war_crier_darnakk";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_war_crier_darnakk;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_mally_o_flor";
    newscript->pGossipHello = &GossipHello_npc_mally_o_flor;
    newscript->pGossipSelect = &GossipSelect_npc_mally_o_flor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_q_controlling_sailors";
    newscript->pGossipHello = &GossipHello_npc_q_controlling_sailors;
    newscript->pGossipSelect = &GossipSelect_npc_q_controlling_sailors;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nazz_firecracker";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_nazz_firecracker;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_khan_shaka";
    newscript->pGossipHello = &GossipHello_npc_khan_shaka;
    newscript->pGossipSelect = &GossipSelect_npc_khan_shaka;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_khan_shaka;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_khan_jehn";
    newscript->pGossipHello = &GossipHello_npc_khan_jehn;
    newscript->pGossipSelect = &GossipSelect_npc_khan_jehn;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_khan_jehn;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_segwar_ironback";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_segwar_ironback;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_gryan_stoutmantle";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_gryan_stoutmantle;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_broter_neals";
    newscript->pGossipHello = &GossipHello_npc_broter_neals;
    newscript->pGossipSelect = &GossipSelect_npc_broter_neals;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_broter_neals;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bert_mano";
    newscript->pGossipHello = &GossipHello_npc_bert_mano;
    newscript->pGossipSelect = &GossipSelect_npc_bert_mano;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_private_q_shields_owner";
    newscript->pGossipHello = &GossipHello_npc_private_q_shields_owner;
    newscript->pGossipSelect = &GossipSelect_npc_private_q_shields_owner;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_abandoned_murloc";
    newscript->pGOHello = &GOHello_go_abandoned_murloc;
    newscript->pGOGossipSelect = &GOSelect_go_abandoned_murloc;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sellick_voss";
    newscript->GetAI = &GetAI_npc_sellick_voss;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sunchaser";
    newscript->pGossipHello = &GossipHello_npc_sunchaser;
    newscript->pGossipSelect = &GossipSelect_npc_sunchaser;
    newscript->GetAI = &GetAI_npc_sunchaser;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ancient_spirit_wolf";
    newscript->pGossipHello = &GossipHello_npc_ancient_spirit_wolf;
    newscript->pGossipSelect = &GossipSelect_npc_ancient_spirit_wolf;
    newscript->GetAI = &GetAI_npc_ancient_spirit_wolf;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ekka";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_ekka;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_voljin";
    newscript->pGossipHello = &GossipHello_npc_voljin;
    newscript->pGossipSelect = &GossipSelect_npc_voljin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_seer_mazek";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_seer_mazek;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lashog";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_lashog;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_karfang";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_karfang;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_young_blackrock_worg";
    newscript->pGossipHello = &GossipHello_npc_young_blackrock_worg;
    newscript->pGossipSelect = &GossipSelect_npc_young_blackrock_worg;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_darkseer_geshtol";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_darkseer_geshtol;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_farad_wrightsow";
    newscript->pGossipHello = &GossipHello_npc_farad_wrightsow;
    newscript->pGossipSelect = &GossipSelect_npc_farad_wrightsow;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_franklin_hamar";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_franklin_hamar;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_maltimor_gartside";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_maltimor_gartside;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_maltimor_gartside;
    newscript->pGossipHello = &GossipHello_npc_maltimor_gartside;
    newscript->pGossipSelect = &GossipSelect_npc_maltimor_gartside;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_orvak_sternrock";
    newscript->pGossipHello = &GossipHello_npc_orvak_sternrock;
    newscript->pGossipSelect = &GossipSelect_npc_orvak_sternrock;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_orvak_sternrock;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_chaser";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_chaser;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_watcher_mahar_ba";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_watcher_mahar_ba;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_engineer_wigglestip";
    newscript->pGossipHello = &GossipHello_npc_engineer_wigglestip;
    newscript->pGossipSelect = &GossipSelect_npc_engineer_wigglestip;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sergeant_burnside";
    newscript->pGossipHello = &GossipHello_npc_sergeant_burnside;
    newscript->pGossipSelect = &GossipSelect_npc_sergeant_burnside;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_koli_steamheart";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_koli_steamheart;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_harker";
    newscript->pGossipHello = &GossipHello_npc_captain_harker;
    newscript->pGossipSelect = &GossipSelect_npc_captain_harker;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_wallace_cross";
    newscript->pGossipHello = &GossipHello_npc_captain_wallace_cross;
    newscript->pGossipSelect = &GossipSelect_npc_captain_wallace_cross;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_jabbey";
    newscript->pGossipHello = &GossipHello_npc_jabbey;
    newscript->pGossipSelect = &GossipSelect_npc_jabbey;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_niremius";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_niremius;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_niremius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_grayson";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_captain_grayson;
    newscript->pGossipHello = &GossipHello_npc_captain_grayson;
    newscript->pGossipSelect = &GossipSelect_npc_captain_grayson;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mournful_apparition_atack";
    newscript->pGOHello = &GOHello_mournful_apparition_atack;
    newscript->pGOGossipSelect = &GOSelect_mournful_apparition_atack;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "GO_lyvdia_dawnbird";
    newscript->pGOQuestAccept = &QuestAcceptGO_lyvdia_dawnbird;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sovatir";
    newscript->pGossipHello = &GossipHello_npc_sovatir;
    newscript->pGossipSelect = &GossipSelect_npc_sovatir;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_fazgel_mechaflame";
    newscript->pGossipHello = &GossipHello_npc_fazgel_mechaflame;
    newscript->pGossipSelect = &GossipSelect_npc_fazgel_mechaflame;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_vildo_onetusk";
    newscript->pGossipHello = &GossipHello_npc_vildo_onetusk;
    newscript->pGossipSelect = &GossipSelect_npc_vildo_onetusk;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ironpatch";
    newscript->pGossipHello = &GossipHello_npc_ironpatch;
    newscript->pGossipSelect = &GossipSelect_npc_ironpatch;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nribbi";
    newscript->pGossipHello = &GossipHello_npc_nribbi;
    newscript->pGossipSelect = &GossipSelect_npc_nribbi;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_nribbi;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bombay";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_bombay;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ancestor_of_humility";
    newscript->pGossipHello = &GossipHello_npc_ancestor_of_humility;
    newscript->pGossipSelect = &GossipSelect_npc_ancestor_of_humility;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ancestor_of_virtue";
    newscript->pGossipHello = &GossipHello_npc_ancestor_of_virtue;
    newscript->pGossipSelect = &GossipSelect_npc_ancestor_of_virtue;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ancestor_of_wisdom";
    newscript->pGossipHello = &GossipHello_npc_ancestor_of_wisdom;
    newscript->pGossipSelect = &GossipSelect_npc_ancestor_of_wisdom;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_ancestor_of_wisdom;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sage_palerunner";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_sage_palerunner;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tholdan_mountainheart";
    newscript->pGossipHello = &GossipHello_npc_tholdan_mountainheart;
    newscript->pGossipSelect = &GossipSelect_npc_tholdan_mountainheart;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_moo_rune";
    newscript->pGOHello = &GOHello_go_moo_rune;
    newscript->pGOGossipSelect = &GOSelect_go_moo_rune;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_inunquaq";
    newscript->pGossipHello = &GossipHello_npc_inunquaq;
    newscript->pGossipSelect = &GossipSelect_npc_inunquaq;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_magus_ariden_dusktower";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_magus_ariden_dusktower;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_korgan";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_korgan;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_colonel_hardinus";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_colonel_hardinus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_yhargosh";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_yhargosh;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_katokar_bladewind";
    newscript->pGossipHello = &GossipHello_npc_katokar_bladewind;
    newscript->pGossipSelect = &GossipSelect_npc_katokar_bladewind;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_pierce_shackleton";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_pierce_shackleton;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_duke_nargelas";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_duke_nargelas;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_seer_bolukk";
    newscript->pGossipHello = &GossipHello_npc_seer_bolukk;
    newscript->pGossipSelect = &GossipSelect_npc_seer_bolukk;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lord_crukzogg";
    newscript->pGossipHello = &GossipHello_npc_lord_crukzogg;
    newscript->pGossipSelect = &GossipSelect_npc_lord_crukzogg;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_ashan_stone";
    newscript->pGOHello = &GOHello_go_ashan_stone;
    newscript->pGOGossipSelect = &GOSelect_go_ashan_stone;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_way_stone";
    newscript->pGOHello = &GOHello_go_way_stone;
    newscript->pGOGossipSelect = &GOSelect_go_way_stone;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_iselus";
    newscript->pGossipHello = &GossipHello_npc_iselus;
    newscript->pGossipSelect = &GossipSelect_npc_iselus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "magically_sealed_door";
    newscript->pGOHello = &GOHello_magically_sealed_door;
    newscript->GOGetAI = &GetAI_magically_sealed_door;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lorthiras";
    newscript->pGossipHello = &GossipHello_npc_lorthiras;
    newscript->pGossipSelect = &GossipSelect_npc_lorthiras;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_lorthiras;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lapidis";
    newscript->GetAI = &GetAI_npc_lapidis;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_fearoth";
    newscript->GetAI = &GetAI_npc_fearoth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_insomni";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_insomni;
    newscript->pGossipHello = &GossipHello_npc_insomni;
    newscript->pGossipSelect = &GossipSelect_npc_insomni;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_daela_evermoon";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_daela_evermoon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_old_greypaw";
    newscript->pGossipHello = &GossipHello_npc_old_greypaw;
    newscript->pGossipSelect = &GossipSelect_npc_old_greypaw;
    newscript->GetAI = &GetAI_npc_old_greypaw;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_blazno";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_blazno;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_thirael_ghost";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_thirael_ghost;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_thirael";
    newscript->pGossipHello = &GossipHello_npc_thirael;
    newscript->pGossipSelect = &GossipSelect_npc_thirael;
    newscript->GetAI = &GetAI_npc_thirael;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_garfield_sparkblast";
    newscript->pGossipHello = &GossipHello_npc_garfield_sparkblast;
    newscript->pGossipSelect = &GossipSelect_npc_garfield_sparkblast;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_morgan_the_storm";
    newscript->pGossipHello = &GossipHello_npc_morgan_the_storm;
    newscript->pGossipSelect = &GossipSelect_npc_morgan_the_storm;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_keg_of_rum";
    newscript->pGOHello = &GOHello_go_keg_of_rum;
    newscript->pGOGossipSelect = &GOSelect_go_keg_of_rum;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_blast_powder_keg";
    newscript->pGOHello = &GOHello_go_blast_powder_keg;
    newscript->pGOGossipSelect = &GOSelect_go_blast_powder_keg;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_ironhoof";
    newscript->GetAI = &GetAI_npc_captain_ironhoof;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_blackeye";
    newscript->GetAI = &GetAI_npc_captain_blackeye;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_saltbeard";
    newscript->GetAI = &GetAI_npc_captain_saltbeard;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_marty_moonshine";
    newscript->pGossipHello = &GossipHello_npc_marty_moonshine;
    newscript->pGossipSelect = &GossipSelect_npc_marty_moonshine;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_chef_jenkel";
    newscript->pGossipHello = &GossipHello_npc_chef_jenkel;
    newscript->pGossipSelect = &GossipSelect_npc_chef_jenkel;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_samuel_boran";
    newscript->pGossipHello = &GossipHello_npc_samuel_boran;
    newscript->pGossipSelect = &GossipSelect_npc_samuel_boran;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_karl_boran";
    newscript->pGossipHello = &GossipHello_npc_karl_boran;
    newscript->pGossipSelect = &GossipSelect_npc_karl_boran;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_arnold_boran";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_arnold_boran;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_torble_and_kex";
    newscript->pGossipHello = &GossipHello_npc_torble_and_kex;
    newscript->pGossipSelect = &GossipSelect_npc_torble_and_kex;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_grain_sacks";
    newscript->pGOHello = &GOHello_go_grain_sacks;
    newscript->pGOGossipSelect = &GOSelect_go_grain_sacks;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_wendo_wobblefizz";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_wendo_wobblefizz;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bessy";
    newscript->pGossipHello = &GossipHello_npc_bessy;
    newscript->pGossipSelect = &GossipSelect_npc_bessy;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "the_cow_king";
    newscript->pGossipHello = &GossipHello_the_cow_king;
    newscript->pGossipSelect = &GossipSelect_the_cow_king;
    newscript->GetAI = &GetAI_the_cow_king;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "analyzor_53";
    newscript->pGossipHello = &GossipHello_analyzor_53;
    newscript->pGossipSelect = &GossipSelect_analyzor_53;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "skeleton_thalo";
    newscript->pGOHello = &GOHello_skeleton_thalo;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "highborne_wraith";
    newscript->GetAI = &GetAI_highborne_wraith;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "runed_thalassian_tablet";
    newscript->pGOHello = &GOHello_runed_thalassian_tablet;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_carlos_matos";
    newscript->pGossipHello = &GossipHello_npc_carlos_matos;
    newscript->pGossipSelect = &GossipSelect_npc_carlos_matos;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_horde_defender";
    newscript->GetAI = &GetAI_npc_horde_defender;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_feral_spirit";
    newscript->GetAI = &GetAI_npc_feral_spirit;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_compact_harvest_reaper";
    newscript->GetAI = &GetAI_npc_compact_harvest_reaper;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_daily_hk_dk";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_daily_hk_dk;
    newscript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "npc_shop_refund";
    pNewScript->pGossipHello = &GossipHello_ShopRefundNPC;
    pNewScript->pGossipSelect = &GossipSelect_ShopRefundNPC;
    pNewScript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_easter_egg";
    newscript->pItemUseSpell = &ItemUseSpell_easter_egg;
    newscript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "npc_egg_hunter";
    pNewScript->pGossipHello = &GossipHello_EggRefundNPC;
    pNewScript->pGossipSelect = &GossipSelect_EggRefundNPC;
    pNewScript->RegisterSelf();
}
