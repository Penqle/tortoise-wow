#ifndef DEF_TRANSMOGRIFICATION_H
#define DEF_TRANSMOGRIFICATION_H


enum
{
    GOSSIP_ID_HEAD = INVTYPE_HEAD,
    GOSSIP_ID_SHOULDERS = INVTYPE_SHOULDERS,
    GOSSIP_ID_CHEST = INVTYPE_CHEST,
    GOSSIP_ID_WAIST = INVTYPE_WAIST,
    GOSSIP_ID_LEGS = INVTYPE_LEGS,
    GOSSIP_ID_CLOAK = INVTYPE_CLOAK,
    GOSSIP_ID_WRISTS = INVTYPE_WRISTS,
    GOSSIP_ID_HANDS = INVTYPE_HANDS,
    GOSSIP_ID_FEET = INVTYPE_FEET,
    GOSSIP_ID_WEAPONTWOHANDED = INVTYPE_2HWEAPON,
    GOSSIP_ID_WEAPONMAINHAND = INVTYPE_WEAPONMAINHAND,
    GOSSIP_ID_WEAPONOFFHAND = INVTYPE_WEAPONOFFHAND,
    GOSSIP_ID_RANGED = INVTYPE_RANGED,
    GOSSIP_ID_THROWN = INVTYPE_THROWN,
    GOSSIP_ID_SHIELD = INVTYPE_SHIELD,
    GOSSIP_ID_ONEHAND_MAIN = 999,
    GOSSIP_ID_ONEHAND_OFF = 998,
    GOSSIP_INDEX_MAINHAND = 100000,
    GOSSIP_INDEX_OFFHAND = 200000,
    GOSSIP_SENDER_TRANSMOGRIFY = 51,

    GOSSIP_TEXT_HEAD = 70000,
    GOSSIP_TEXT_SHOULDERS = 70001,
    GOSSIP_TEXT_CLOAK = 70002,
    GOSSIP_TEXT_CHEST = 70003,
    GOSSIP_TEXT_WRISTS = 70004,
    GOSSIP_TEXT_HANDS = 70005,
    GOSSIP_TEXT_WAIST = 70006,
    GOSSIP_TEXT_LEGS = 70007,
    GOSSIP_TEXT_FEET = 70008,
    GOSSIP_TEXT_MAINHAND = 70009,
    GOSSIP_TEXT_OFFHAND = 70010,
    GOSSIP_TEXT_RANGED = 70011,
    GOSSIP_TEXT_COST = 70012,
    GOSSIP_TEXT_RESET = 70013,
    GOSSIP_TEXT_COST_G = 70014,
    GOSSIP_TEXT_COST_S = 70015,
    GOSSIP_TEXT_COST_C = 70016,
    GOSSIP_TEXT_1 = 60000,
    GOSSIP_TEXT_2 = 60001
};

class transmog
{
public:
    typedef std::unordered_map<uint32, const ItemPrototype*> FakeItemProtoMap;

    typedef std::unordered_map<uint32, uint32> FakeItemInstance;

    void DeleteTransmogItemFromDB(uint32 GuidLow);
    void UpdateTransmogItem(Player* player, Item* item);
    void GetTransmogItems(Player* player, Creature* creature, uint32 InventoryType, uint32 SlotType, Item* confirmItem = nullptr);
    bool DoTransmog(Player* player, Item* pItemToTransmog, Item* pItemTransmog);
    void LoadTransmog(Player* player, bool logout = false);
    void AddFakeItemProto(uint32 fakeentry, const ItemPrototype* proto);
    void CreateFakeItemPrototype(uint32 newFakeID, const ItemPrototype* itemProto1, const ItemPrototype* itemProto2);

    const ItemPrototype* GetFakeItemProto(uint32 fakeentry);
    const ItemPrototype* GetOrCreateFakeItemProto(uint32 fakeEntry, const ItemPrototype* itemToTransmog, const ItemPrototype* itemTransmog);

    std::string GetTransmogItemColor(uint32 quality);
    std::string GetTransmogCostStr(Player* player, uint32 copper);

    uint8 GetEquipmentSlot(uint32 InventoryType);
    uint32 GenerateFakeItemEntry(const ItemPrototype* itemToTransmogProto, const ItemPrototype* itemTransmogProto);
    uint32 GetRealItemEntry(uint32 fakeEntry);

    bool CanTransmogrifyItemWithItem(Player* player, Item* pItemToTransmog, Item* pItemTransmog);
    bool IsShield(uint32 Class, uint32 InventoryType);
    bool IsFistWeapon(uint32 Class, uint32 SubClass);
    bool IsTwoHandedWeapon(uint32 Class, uint32 InventoryType);
    bool IsRangedWeapon(uint32 Class, uint32 SubClass);
    bool IsWand(uint32 Class, uint32 InventoryType);
    bool IsHoldable(uint32 Class, uint32 InventoryType);
    bool HasItemsForTransmog(Player* player, uint32 SlotType);
    bool CanBuy(Player* player, uint32 buyPrice);
    bool IsFakeItem(uint32 entry);

private:
    FakeItemProtoMap m_fakeitemproto;
};

extern transmog sTransmog;

#endif
