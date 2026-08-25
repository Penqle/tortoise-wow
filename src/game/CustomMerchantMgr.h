#ifndef CUSTOM_MERCHANT_MGR_H
#define CUSTOM_MERCHANT_MGR_H

#include "Common.h"

#include <array>
#include <unordered_map>
#include <vector>

class Creature;
class Player;
class WorldSession;

struct CustomMerchantItemCost
{
    uint32 item = 0;
    uint32 count = 0;
};

struct CustomMerchantItem
{
    uint32 id = 0;
    uint32 entry = 0;
    uint32 item = 0;
    uint32 count = 1;
    uint32 extendedCost = 0;
    uint32 conditionId = 0;
    uint32 honorCost = 0;
    uint32 conquestCost = 0;
    std::array<CustomMerchantItemCost, 5> itemCosts;
};

class CustomMerchantMgr
{
    public:
        void Load();
        bool HandleAddonMessage(WorldSession* session, Player* player, uint32 type, std::string const& msg);

    private:
        typedef std::vector<CustomMerchantItem> CustomMerchantItemList;

        void SendItemList(Player* player, Creature* creature) const;
        void SendCurrencyUpdate(Player* player, char const* command) const;
        void ScheduleItemCacheUpdates(Player* player, std::vector<uint32> const& itemIds) const;
        bool BuyItem(Player* player, Creature* creature, uint32 id) const;
        bool IsItemVisible(Player* player, CustomMerchantItem const& merchantItem) const;
        bool CanUseItem(Player* player, Creature* creature, CustomMerchantItem const& merchantItem) const;
        CustomMerchantItem const* GetItem(uint32 id) const;
        CustomMerchantItemList const* GetItems(uint32 entry) const;

        std::unordered_map<uint32, CustomMerchantItemList> m_itemsByEntry;
        std::unordered_map<uint32, CustomMerchantItem const*> m_itemsById;
};

extern CustomMerchantMgr sCustomMerchantMgr;

#endif
