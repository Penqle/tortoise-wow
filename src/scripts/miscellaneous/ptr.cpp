#include "scriptPCH.h"
#include "Chat.h"
#include "ptr.hpp"
#include "ItemPrototype.h"

struct ptr_npc_keklordAI : public ScriptedAI
{
    explicit ptr_npc_keklordAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        ptr_npc_keklordAI::Reset();
    }

    void Reset() override
    {
        if (sWorld.getConfig(CONFIG_BOOL_PTR))
        {
            m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
        }

        m_creature->AddUnitState(UNIT_STAT_ROOT);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!sWorld.getConfig(CONFIG_BOOL_PTR) && m_creature->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
        {
            m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
        }
    }
};

struct ptr_npc_vendorAI : public ScriptedAI
{
    explicit ptr_npc_vendorAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        ptr_npc_vendorAI::Reset();
    }

    void Reset() override
    {
        if (sWorld.getConfig(CONFIG_BOOL_PTR))
        {
            m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_VENDOR);
        }

        m_creature->AddUnitState(UNIT_STAT_ROOT);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!sWorld.getConfig(CONFIG_BOOL_PTR) && m_creature->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_VENDOR))
        {
            m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_VENDOR);
        }
    }
};

void LearnEverythingKEKW(Player* pPlayer, ClassesAndRoles const classesAndRoles)
{
    if (!pPlayer)
        return;
    
    if (pPlayer->GetLevel() < 60)
    {
        pPlayer->SetLevel(60);
        pPlayer->InitTalentForLevel();
        pPlayer->SetUInt32Value(PLAYER_XP, 0);
    }

    if (pPlayer->GetMoney() < MONEY_AMOUNT) // Prevent overflow
        pPlayer->ModifyMoney(MONEY_AMOUNT); // 1K Gold
        
    for (auto bags{ (pPlayer->GetItemCount(ITEM_BAG) + (pPlayer->GetClass() == CLASS_HUNTER ? 1 : 0))}; bags < 4; ++bags) // If player hunter -> Free up a quiver slot
    {
        pPlayer->StoreNewItemInBestSlots(ITEM_BAG, 1);
    }

    for (const auto& BisItemsAndSpells : m_vBisItemsAndSpells)
    {
        if (std::get<0>(BisItemsAndSpells) == classesAndRoles)
        {
            for (const auto& spell : std::get<2>(BisItemsAndSpells))
            {
                if (!pPlayer->HasSpell(spell))
                {
                    pPlayer->LearnSpell(spell, false);
                }
            }

            for (int i{ EQUIPMENT_SLOT_START }; i < EQUIPMENT_SLOT_END; ++i)
            {
                pPlayer->AutoUnequipItemFromSlot(i);
            }

            for (const auto& item : std::get<1>(BisItemsAndSpells))
            {
                if (!pPlayer->GetItemCount(item))
                {
                    ItemPrototype const* pItem{ sObjectMgr.GetItemPrototype(item) };

                    pPlayer->SatisfyItemRequirements(pItem);
                    pPlayer->StoreNewItemInBestSlots(item, 1);
                }
            }

            break;
        }
    }

    if (ChrClassesEntry const* clsEntry{ sChrClassesStore.LookupEntry(pPlayer->GetClass()) })
    {
        const uint32 family{ clsEntry->spellfamily };

        for (auto i{ 0 }; i < sObjectMgr.GetMaxSkillLineAbilityId(); ++i)
        {
            SkillLineAbilityEntry const* entry{ sObjectMgr.GetSkillLineAbility(i) };
            if (!entry)
                continue;

            SpellEntry const* spellInfo{ sSpellMgr.GetSpellEntry(entry->spellId) };
            if (!spellInfo)
                continue;

            // Skip server-side/triggered spells
            if (spellInfo->spellLevel == 0)
                continue;

            // Skip wrong class/race skills
            if (!pPlayer->IsSpellFitByClassAndRace(spellInfo->Id))
                continue;

            // Skip other spell families
            if (spellInfo->SpellFamilyName != family)
                continue;

            // Skip spells with first rank learned as talent (and all talents then also)
            const uint32 first_rank{ sSpellMgr.GetFirstSpellInChain(spellInfo->Id) };
            if (GetTalentSpellCost(first_rank) > 0)
                continue;

            // Skip broken spells
            if (!SpellMgr::IsSpellValid(spellInfo, pPlayer, false))
                continue;

            pPlayer->LearnSpell(spellInfo->Id, false);
            pPlayer->UpdateSkillsToMaxSkillsForLevel();
        }
    }

    pPlayer->SetHealthPercent(100.f);

    pPlayer->SendSpellGo(pPlayer, SPELL_VISUAL);
    pPlayer->HandleEmoteCommand(EMOTE_ONESHOT_ROAR);
}

bool GossipHello_ptr_npc_keklord(Player* pPlayer, Creature* pCreature)
{
    if (!pPlayer || !pCreature)
        return false;

    if (!sWorld.getConfig(CONFIG_BOOL_PTR))
        return false;

    switch (pPlayer->GetClass())
    {
        case CLASS_WARLOCK:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Warlock.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::WARLOCK));
            break;
        }
        case CLASS_MAGE:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Mage.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::MAGE));
            break;
        }
        case CLASS_HUNTER:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Hunter.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::HUNTER));
            break;
        }
        case CLASS_PALADIN:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Holy Paladin.",        GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::PALADIN_HOLY));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Retribution Paladin.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::PALADIN_RETRIBUTION));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Protection Paladin.",  GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::PALADIN_PROTECTION));
            break;
        }
        case CLASS_PRIEST:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Holy Priest.",   GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::PRIEST_HOLY));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Shadow Priest.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::PRIEST_SHADOW));
            break;
        }
        case CLASS_ROGUE:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Sword Rogue.",  GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::ROGUE_SWORD));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Dagger Rogue.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::ROGUE_DAGGER));
            break;
        }
        case CLASS_SHAMAN:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Restoration Shaman.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::SHAMAN_RESTORATION));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Elemental Shaman.",   GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::SHAMAN_ELEMENTAL));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Enhancement Shaman.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::SHAMAN_ENCHANCEMENT));
            break;
        }
        case CLASS_DRUID:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Restoration Druid.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::DRUID_RESTORATION));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Tank Druid.",        GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::DRUID_TANK));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Balance Druid.",     GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::DRUID_BALANCE));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Feral Druid.",       GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::DRUID_FERAL));
            break;
        }
        case CLASS_WARRIOR:
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Protection Warrior.", GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::WARRIOR_PROTECTION));
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Fury Warrior.",       GOSSIP_SENDER_MAIN, static_cast<uint32>(ClassesAndRoles::WARRIOR_FURY));
            break;
        }
    }

    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Worldbuff me.", GOSSIP_SENDER_MAIN, (GOSSIP_ACTION_INFO_DEF + 1));

    if (Group const* pGroup{ pPlayer->GetGroup() })
    {
        if (pGroup->isRaidGroup())
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Take me to High Inquisitor Mariella.", GOSSIP_SENDER_MAIN, (GOSSIP_ACTION_INFO_DEF + 2));
        }
    }

    pPlayer->SEND_GOSSIP_MENU(1000100, pCreature->GetGUID());
    return true;
}

bool GossipSelect_ptr_npc_keklord(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (!pPlayer || !pCreature)
        return false;

    pPlayer->CLOSE_GOSSIP_MENU();

    switch (uiAction)
    {
        case static_cast<uint32>(ClassesAndRoles::WARLOCK):
        case static_cast<uint32>(ClassesAndRoles::MAGE):
        case static_cast<uint32>(ClassesAndRoles::HUNTER):
        case static_cast<uint32>(ClassesAndRoles::PALADIN_HOLY):
        case static_cast<uint32>(ClassesAndRoles::PALADIN_RETRIBUTION):
        case static_cast<uint32>(ClassesAndRoles::PALADIN_PROTECTION):
        case static_cast<uint32>(ClassesAndRoles::PRIEST_HOLY):
        case static_cast<uint32>(ClassesAndRoles::PRIEST_SHADOW):
        case static_cast<uint32>(ClassesAndRoles::ROGUE_SWORD):
        case static_cast<uint32>(ClassesAndRoles::ROGUE_DAGGER):
        case static_cast<uint32>(ClassesAndRoles::SHAMAN_RESTORATION):
        case static_cast<uint32>(ClassesAndRoles::SHAMAN_ELEMENTAL):
        case static_cast<uint32>(ClassesAndRoles::SHAMAN_ENCHANCEMENT):
        case static_cast<uint32>(ClassesAndRoles::DRUID_RESTORATION):
        case static_cast<uint32>(ClassesAndRoles::DRUID_TANK):
        case static_cast<uint32>(ClassesAndRoles::DRUID_BALANCE):
        case static_cast<uint32>(ClassesAndRoles::DRUID_FERAL):
        case static_cast<uint32>(ClassesAndRoles::WARRIOR_PROTECTION):
        case static_cast<uint32>(ClassesAndRoles::WARRIOR_FURY):
        {
            LearnEverythingKEKW(pPlayer, static_cast<ClassesAndRoles>(uiAction));
            break;
        }
        case (GOSSIP_ACTION_INFO_DEF + 1):
        {
            for (const auto& buffs : m_lWorldBuffs)
            {
                pCreature->CastSpell(pPlayer, buffs, true);
            }

            break;
        }
        case (GOSSIP_ACTION_INFO_DEF + 2):
        {
            if (Group const* pGroup{ pPlayer->GetGroup() })
            {
                if (pGroup->isRaidGroup())
                {
                    const uint8 currentGroupSize{ static_cast<uint8>(pGroup->GetMembersCount())};
                    if (currentGroupSize == PLAYERS_REQUIRED && pPlayer->IsAlive())
                    {
                        pPlayer->TeleportTo(MAP,
                            bossLocation[0].m_fX,
                            bossLocation[0].m_fY,
                            bossLocation[0].m_fZ,
                            bossLocation[0].m_fO);
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage("Your raidgroup needs %u more player(s).", (PLAYERS_REQUIRED - currentGroupSize));
                    }
                }
            }

            break;
        }
    }

    return true;
}

CreatureAI* GetAI_ptr_npc_keklord(Creature* pCreature)
{
    return new ptr_npc_keklordAI(pCreature);
}

CreatureAI* GetAI_ptr_npc_vendorAI(Creature* pCreature)
{
    return new ptr_npc_vendorAI(pCreature);
}

void AddSC_npc_ptr()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "ptr_npc_keklord";
    pNewscript->GetAI = &GetAI_ptr_npc_keklord;
    pNewscript->pGossipHello = &GossipHello_ptr_npc_keklord;
    pNewscript->pGossipSelect = &GossipSelect_ptr_npc_keklord;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "ptr_npc_vendor";
    pNewscript->GetAI = &GetAI_ptr_npc_vendorAI;
    pNewscript->RegisterSelf();
}
