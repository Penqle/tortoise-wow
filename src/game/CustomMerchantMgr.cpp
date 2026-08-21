#include "CustomMerchantMgr.h"

#include "Chat.h"
#include "Conditions.h"
#include "Creature.h"
#include "Database/DatabaseEnv.h"
#include "HonorMgr.h"
#include "Item.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "World.h"
#include "WorldSession.h"

#include "rapidjson/document.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/writer.h"

#include <algorithm>
#include <memory>
#include <string>
#include <unordered_set>

CustomMerchantMgr sCustomMerchantMgr;

namespace
{
    char const* CustomMerchantPrefix = "TW_Merchant";
    char const* CustomMerchantMessagePrefix = "TW_Merchant\t";
    size_t const CustomMerchantMessagePrefixLength = std::char_traits<char>::length(CustomMerchantMessagePrefix);
    uint32 const CostTypeItem = 1;
    uint32 const CostTypeHonor = 2;
    uint32 const CostTypeConquest = 3;
    size_t const ItemsPerBatch = 8;
    size_t const ItemCacheUpdatesPerTick = 10;
    uint32 const ItemCacheUpdateInitialDelayMs = 100;
    uint32 const ItemCacheUpdateIntervalMs = 50;
}

void CustomMerchantMgr::Load()
{
    m_itemsByEntry.clear();
    m_itemsById.clear();
    std::unordered_set<uint32> itemIds;

    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT cm.`id`, cm.`entry`, cm.`item`, cm.`count`, cm.`extendedcost`, cm.`condition_id`, "
        "IFNULL(iec.`costHonour`, 0), IFNULL(iec.`costArena`, 0), "
        "IFNULL(iec.`requiredItem1`, 0), IFNULL(iec.`requiredItem2`, 0), IFNULL(iec.`requiredItem3`, 0), IFNULL(iec.`requiredItem4`, 0), IFNULL(iec.`requiredItem5`, 0), "
        "IFNULL(iec.`requiredItemCount1`, 0), IFNULL(iec.`requiredItemCount2`, 0), IFNULL(iec.`requiredItemCount3`, 0), IFNULL(iec.`requiredItemCount4`, 0), IFNULL(iec.`requiredItemCount5`, 0) "
        "FROM `custom_merchant` cm "
        "LEFT JOIN `itemextendedcost` iec ON iec.`id` = cm.`extendedcost` "
        "ORDER BY cm.`entry`, cm.`slot`, cm.`id`"));

    if (!result)
    {
        sLog.outString(">> Loaded 0 custom merchant items");
        return;
    }

    uint32 count = 0;
    do
    {
        Field* fields = result->Fetch();

        CustomMerchantItem merchantItem;
        merchantItem.id = fields[0].GetUInt32();
        merchantItem.entry = fields[1].GetUInt32();
        merchantItem.item = fields[2].GetUInt32();
        merchantItem.count = fields[3].GetUInt32();
        merchantItem.extendedCost = fields[4].GetUInt32();
        merchantItem.conditionId = fields[5].GetUInt32();
        merchantItem.honorCost = fields[6].GetUInt32();
        merchantItem.conquestCost = fields[7].GetUInt32();

        for (uint32 i = 0; i < merchantItem.itemCosts.size(); ++i)
        {
            merchantItem.itemCosts[i].item = fields[8 + i].GetUInt32();
            merchantItem.itemCosts[i].count = fields[13 + i].GetUInt32();
        }

        if (!merchantItem.id)
        {
            sLog.outErrorDb("Table `custom_merchant` has item with id 0, ignoring.");
            continue;
        }

        if (!merchantItem.entry)
        {
            sLog.outErrorDb("Table `custom_merchant` has item %u with entry 0, ignoring.", merchantItem.id);
            continue;
        }

        if (!sObjectMgr.GetCreatureTemplate(merchantItem.entry))
        {
            sLog.outErrorDb("Table `custom_merchant` has item %u for nonexistent creature entry %u, ignoring.", merchantItem.id, merchantItem.entry);
            continue;
        }

        if (ItemPrototype const* proto = sObjectMgr.GetItemPrototype(merchantItem.item))
            const_cast<ItemPrototype*>(proto)->Discovered = true;
        else
        {
            sLog.outErrorDb("Table `custom_merchant` has item %u with nonexistent item %u, ignoring.", merchantItem.id, merchantItem.item);
            continue;
        }

        if (!merchantItem.count)
        {
            sLog.outErrorDb("Table `custom_merchant` has item %u with count 0, ignoring.", merchantItem.id);
            continue;
        }

        if (itemIds.find(merchantItem.id) != itemIds.end())
        {
            sLog.outErrorDb("Table `custom_merchant` has duplicate id %u, ignoring.", merchantItem.id);
            continue;
        }

        for (CustomMerchantItemCost const& itemCost : merchantItem.itemCosts)
        {
            if (!itemCost.item)
                continue;

            if (ItemPrototype const* proto = sObjectMgr.GetItemPrototype(itemCost.item))
                const_cast<ItemPrototype*>(proto)->Discovered = true;
            else
                sLog.outErrorDb("Table `custom_merchant` item %u references nonexistent required item %u.", merchantItem.id, itemCost.item);
        }

        itemIds.insert(merchantItem.id);
        CustomMerchantItemList& items = m_itemsByEntry[merchantItem.entry];
        items.push_back(merchantItem);
        ++count;
    }
    while (result->NextRow());

    for (auto& entryItems : m_itemsByEntry)
    {
        for (CustomMerchantItem const& item : entryItems.second)
            m_itemsById[item.id] = &item;
    }

    sLog.outString(">> Loaded %u custom merchant items", count);
}

bool CustomMerchantMgr::HandleAddonMessage(WorldSession* session, Player* player, uint32 type, std::string const& msg)
{
    if (!session || !player || type != CHAT_MSG_GUILD || msg.compare(0, CustomMerchantMessagePrefixLength, CustomMerchantMessagePrefix) != 0)
        return false;

    std::string payload = msg.substr(CustomMerchantMessagePrefixLength);

    rapidjson::Document document;
    document.Parse(payload.c_str());
    if (document.HasParseError() || !document.IsObject() || !document.HasMember("command") || !document["command"].IsString())
        return true;

    Creature* creature = player->GetNPCIfCanInteractWith(session->GetCurrentGossipGUID(), UNIT_NPC_FLAG_NONE);
    if (!creature || !GetItems(creature->GetEntry()))
        return true;

    std::string command = document["command"].GetString();
    if (command == "show")
    {
        SendItemList(player, creature);
        SendCurrencyUpdate(player, "show");
    }
    else if (command == "update")
        SendCurrencyUpdate(player, "update");
    else if (command == "buy" && document.HasMember("idx") && document["idx"].IsUint())
        BuyItem(player, creature, document["idx"].GetUint());

    return true;
}

CustomMerchantMgr::CustomMerchantItemList const* CustomMerchantMgr::GetItems(uint32 entry) const
{
    auto itr = m_itemsByEntry.find(entry);
    return itr != m_itemsByEntry.end() ? &itr->second : nullptr;
}

CustomMerchantItem const* CustomMerchantMgr::GetItem(uint32 id) const
{
    auto itr = m_itemsById.find(id);
    return itr != m_itemsById.end() ? itr->second : nullptr;
}

bool CustomMerchantMgr::CanUseItem(Player* player, Creature* creature, CustomMerchantItem const& merchantItem) const
{
    ItemPrototype const* proto = sObjectMgr.GetItemPrototype(merchantItem.item);
    if (!proto)
        return false;

    uint32 reqFaction = proto->RequiredReputationFaction;
    if (!reqFaction && proto->RequiredReputationRank > 0)
        reqFaction = creature->GetFactionId();

    if (uint32(player->GetReputationRank(reqFaction)) < proto->RequiredReputationRank)
        return false;

    if (proto->RequiredHonorRank && (player->GetHonorMgr().GetRank().rank < uint8(proto->RequiredHonorRank) || player->GetLevel() < proto->RequiredLevel))
        return false;

    if (merchantItem.conditionId && !player->IsGameMaster() && !sObjectMgr.IsConditionSatisfied(merchantItem.conditionId, player, creature->GetMap(), creature, CONDITION_FROM_VENDOR))
        return false;

    return true;
}

bool CustomMerchantMgr::IsItemVisible(Player* player, CustomMerchantItem const& merchantItem) const
{
    ItemPrototype const* proto = sObjectMgr.GetItemPrototype(merchantItem.item);
    if (!proto)
        return false;

    if (player->IsGameMaster())
        return true;

    if ((proto->AllowableClass & player->GetClassMask()) == 0 && proto->Bonding == BIND_WHEN_PICKED_UP)
        return false;

    if ((proto->AllowableRace & player->GetRaceMask()) == 0)
        return false;

    return true;
}

void CustomMerchantMgr::SendItemList(Player* player, Creature* creature) const
{
    CustomMerchantItemList const* items = GetItems(creature->GetEntry());
    if (!items)
        return;

    std::vector<CustomMerchantItem const*> visibleItems;
    visibleItems.reserve(items->size());

    for (CustomMerchantItem const& item : *items)
    {
        if (!IsItemVisible(player, item))
            continue;

        visibleItems.push_back(&item);
    }

    std::vector<uint32> queryItemList;
    std::unordered_set<uint32> queryItems;

    for (CustomMerchantItem const* item : visibleItems)
    {
        if (queryItems.insert(item->item).second)
            queryItemList.push_back(item->item);
    }

    for (CustomMerchantItem const* item : visibleItems)
    {
        for (CustomMerchantItemCost const& itemCost : item->itemCosts)
        {
            if (itemCost.item && itemCost.count && queryItems.insert(itemCost.item).second)
                queryItemList.push_back(itemCost.item);
        }
    }

    ScheduleItemCacheUpdates(player, queryItemList);

    for (size_t begin = 0; begin < visibleItems.size(); begin += ItemsPerBatch)
    {
        rapidjson::StringBuffer buffer;
        rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

        writer.StartObject();
        writer.Key("command");
        writer.String("itemBatch");
        writer.Key("items");
        writer.StartArray();

        size_t end = std::min(begin + ItemsPerBatch, visibleItems.size());
        for (size_t i = begin; i < end; ++i)
        {
            CustomMerchantItem const& item = *visibleItems[i];
            writer.StartObject();
            writer.Key("id");
            writer.Uint(item.id);
            writer.Key("item_id");
            writer.Uint(item.item);
            writer.Key("cost");
            writer.Uint(0);
            writer.Key("count");
            writer.Uint(item.count);
            writer.Key("ext_cost");
            writer.StartArray();

            uint32 extCostCount = 0;
            if (item.honorCost)
            {
                writer.StartObject();
                writer.Key("type");
                writer.Uint(CostTypeHonor);
                writer.Key("value");
                writer.Uint(item.honorCost);
                writer.EndObject();
                ++extCostCount;
            }

            if (item.conquestCost)
            {
                writer.StartObject();
                writer.Key("type");
                writer.Uint(CostTypeConquest);
                writer.Key("value");
                writer.Uint(item.conquestCost);
                writer.EndObject();
                ++extCostCount;
            }

            for (CustomMerchantItemCost const& itemCost : item.itemCosts)
            {
                if (!itemCost.item || !itemCost.count)
                    continue;

                writer.StartObject();
                writer.Key("type");
                writer.Uint(CostTypeItem);
                writer.Key("value");
                writer.Uint(itemCost.item);
                writer.Key("amount");
                writer.Uint(itemCost.count);
                writer.EndObject();
                ++extCostCount;
            }

            writer.EndArray();
            writer.Key("ext_cost_count");
            writer.Uint(extCostCount);
            writer.Key("can_use");
            writer.Bool(CanUseItem(player, creature, item));
            writer.EndObject();
        }

        writer.EndArray();
        writer.EndObject();

        player->SendAddonMessage(CustomMerchantPrefix, buffer.GetString());
    }
}

void CustomMerchantMgr::ScheduleItemCacheUpdates(Player* player, std::vector<uint32> const& itemIds) const
{
    if (itemIds.empty())
        return;

    size_t begin = 0;
    size_t end = std::min(ItemCacheUpdatesPerTick, itemIds.size());
    for (size_t i = begin; i < end; ++i)
        sWorld.SendUpdateSingleItem(itemIds[i], player->GetSession());

    uint32 delay = ItemCacheUpdateInitialDelayMs;
    for (begin = end; begin < itemIds.size(); begin += ItemCacheUpdatesPerTick)
    {
        size_t batchEnd = std::min(begin + ItemCacheUpdatesPerTick, itemIds.size());
        std::vector<uint32> batch(itemIds.begin() + begin, itemIds.begin() + batchEnd);

        player->m_Events.AddLambdaEventAtOffset([player, batch]()
        {
            if (!player->IsInWorld() || !player->GetSession())
                return;

            for (uint32 item : batch)
                sWorld.SendUpdateSingleItem(item, player->GetSession());
        }, delay);

        delay += ItemCacheUpdateIntervalMs;
    }
}

void CustomMerchantMgr::SendCurrencyUpdate(Player* player, char const* command) const
{
    rapidjson::StringBuffer buffer;
    rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

    writer.StartObject();
    writer.Key("command");
    writer.String(command);
    writer.Key("totalHonor");
    writer.Uint(player->GetHonorMgr().GetSpendableHonor());
    writer.Key("totalArena");
    writer.Uint(player->GetHonorMgr().GetConquestPoints());
    writer.EndObject();

    player->SendAddonMessage(CustomMerchantPrefix, buffer.GetString());
}

bool CustomMerchantMgr::BuyItem(Player* player, Creature* creature, uint32 id) const
{
    CustomMerchantItem const* merchantItem = GetItem(id);
    if (!merchantItem || merchantItem->entry != creature->GetEntry())
    {
        player->SendBuyError(BUY_ERR_CANT_FIND_ITEM, creature, 0, 0);
        return false;
    }

    ItemPrototype const* proto = sObjectMgr.GetItemPrototype(merchantItem->item);
    if (!proto)
    {
        player->SendBuyError(BUY_ERR_CANT_FIND_ITEM, creature, merchantItem->item, 0);
        return false;
    }

    if (!IsItemVisible(player, *merchantItem))
    {
        player->SendBuyError(BUY_ERR_CANT_FIND_ITEM, creature, merchantItem->item, 0);
        return false;
    }

    if (!CanUseItem(player, creature, *merchantItem))
    {
        player->SendBuyError(BUY_ERR_RANK_REQUIRE, creature, merchantItem->item, 0);
        return false;
    }

    if (merchantItem->honorCost > player->GetHonorMgr().GetSpendableHonor() || merchantItem->conquestCost > player->GetHonorMgr().GetConquestPoints())
    {
        player->SendBuyError(BUY_ERR_NOT_ENOUGHT_MONEY, creature, merchantItem->item, 0);
        return false;
    }

    for (CustomMerchantItemCost const& itemCost : merchantItem->itemCosts)
    {
        if (itemCost.item && itemCost.count && !player->HasItemCount(itemCost.item, itemCost.count))
        {
            player->SendBuyError(BUY_ERR_NOT_ENOUGHT_MONEY, creature, merchantItem->item, 0);
            return false;
        }
    }

    ItemPosCountVec dest;
    InventoryResult msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, merchantItem->item, merchantItem->count);
    if (msg != EQUIP_ERR_OK)
    {
        player->SendEquipError(msg, nullptr, nullptr, merchantItem->item);
        return false;
    }

    if (!player->GetHonorMgr().SpendSpendableHonor(merchantItem->honorCost) || !player->GetHonorMgr().SpendConquestPoints(merchantItem->conquestCost))
    {
        player->SendBuyError(BUY_ERR_NOT_ENOUGHT_MONEY, creature, merchantItem->item, 0);
        return false;
    }

    for (CustomMerchantItemCost const& itemCost : merchantItem->itemCosts)
    {
        if (itemCost.item && itemCost.count)
            player->DestroyItemCount(itemCost.item, itemCost.count, true);
    }

    Item* item = player->StoreNewItem(dest, merchantItem->item, true, Item::GenerateItemRandomPropertyId(merchantItem->item));
    if (!item)
    {
        player->GetHonorMgr().AddSpendableHonor(merchantItem->honorCost);
        player->GetHonorMgr().AddConquestPoints(merchantItem->conquestCost, false);
        return false;
    }

    player->SendNewItem(item, merchantItem->count, true, false, false);
    player->GetHonorMgr().SaveCurrency();
    SendCurrencyUpdate(player, "update");
    return true;
}
