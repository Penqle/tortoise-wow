// Auction item hand-off safety, isolated from the database/network.
//
// Regression guard for a use-after-free that repeatedly crashed the world
// server inside BuildListAuctionItems (SIGSEGV / Object.h:459 assertion).
//
// THE BUG
// An auction's Item lives in AuctionHouseMgr::mAitems and is handed out as a
// raw pointer by GetAItem(). MailDraft::SendMailTo() takes ownership and may
// destroy that Item -- and it does NOT take the auction item lock. A listing
// running concurrently holds that lock and has already obtained the raw
// pointer, so if the Item is destroyed while still registered, the listing
// walks freed memory.
//
// THE INVARIANT
// An Item must never be destroyed while it is still reachable through
// GetAItem(). Equivalently: RemoveAItem() must run BEFORE ownership passes to
// the mail system. RemoveAItem takes the item lock, so it blocks until any
// in-flight listing finishes, after which no reader can obtain the pointer.
//
// HOW THIS TEST CHECKS IT
// Rather than asserting a call transcript, the registry below stands in for
// mAitems and GetAItem() consults it. The Item destructor then asserts it is
// no longer registered. That models the crash condition directly: if a test
// fails here, a real listing thread could have been holding that pointer.
//
// The three production sites that hand an Item to mail are all covered:
//   AuctionHouseMgr::SendAuctionWonMail
//   AuctionHouseMgr::SendAuctionExpiredMail
//   WorldSession::HandleAuctionRemoveItem   (player cancels an auction)
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <set>
#include <sstream>
#include <string>
#include <vector>

using uint32 = uint32_t;
using int32 = int32_t;

#define CHECK(x) do{if(!(x)){std::cerr<<__LINE__<<": " #x "\n";std::exit(1);}}while(0)

std::vector<std::string> calls;

// Stands in for AuctionHouseMgr::mAitems. An entry means "GetAItem() will
// hand this address to any caller", i.e. a listing thread could be using it.
std::set<uint32> registered;

const char* scenario = "";

static void fail(const std::string& why)
{
    std::cerr << "\nFAILED [" << scenario << "]: " << why << "\n";
    for (const auto& c : calls)
        std::cerr << "  " << c << "\n";
    std::exit(1);
}

static int at(const std::string& name)
{
    for (size_t i = 0; i < calls.size(); ++i)
        if (calls[i] == name)
            return int(i);
    return -1;
}

constexpr uint32 HIGHGUID_PLAYER = 0, MAIL_CHECK_MASK_COPIED = 0;
constexpr uint32 AUCTION_WON = 0, AUCTION_EXPIRED = 0, AUCTION_CANCELED = 0;
constexpr uint32 SEC_PLAYER = 0, LANG_UNKNOWN = 0, LOG_MAIL_AH = 0;
constexpr uint32 CONFIG_BOOL_GM_LOG_TRADE = 0;
constexpr uint32 UNIT_STAT_FEIGN_DEATH = 0, SPELL_AURA_FEIGN_DEATH = 0;
constexpr uint32 AUCTION_REMOVED = 0, AUCTION_OK = 0;
constexpr uint32 AUCTION_ERR_INVENTORY = 0, AUCTION_ERR_DATABASE = 0;
constexpr uint32 EQUIP_ERR_ITEM_NOT_FOUND = 0;

#define DEBUG_LOG(...) do{}while(0)

struct ObjectGuid
{
    uint32 id = 0;
    ObjectGuid() {}
    ObjectGuid(uint32, uint32 n) : id(n) {}
};

struct AuctionEntry
{
    uint32 Id = 1, itemGuidLow = 555, itemTemplate = 1;
    uint32 owner = 7, ownerAccount = 20, bidder = 0, bid = 0, buyout = 100;
    uint32 GetAuctionCut() const { return 5; }
    void DeleteFromDB() const { calls.push_back("delete auction row"); }
};

struct ItemPrototype { std::string Name1 = "item"; };

struct Item
{
    uint32 guid = 555;
    ItemPrototype proto;

    ~Item()
    {
        // The heart of this test. Destroying an Item that is still in the
        // registry is precisely the crash: GetAItem() would keep handing this
        // address out to listings after the memory is gone.
        if (registered.count(guid))
            fail("Item destroyed while still registered in the auction item "
                 "index -- a concurrent listing could hold this pointer");
        calls.push_back("delete item");
    }

    uint32 GetGUIDLow() const { return guid; }
    ItemPrototype const* GetProto() const { return &proto; }
    uint32 GetEntry() const { return 1; }
    uint32 GetCount() const { return 1; }
};

Item* g_item = nullptr;
bool g_itemDestroyed = false;

struct Session
{
    uint32 GetAccountId() { return 20; }
    uint32 GetSecurity() { return SEC_PLAYER; }
    void SendAuctionBidderNotification(AuctionEntry*, bool) { calls.push_back("notify bidder"); }
    void SendAuctionOwnerNotification(AuctionEntry*, bool) { calls.push_back("notify owner"); }
};

struct Player
{
    Session session;
    bool hardcore = false;
    uint32 money = 1000;
    Session* GetSession() { return &session; }
    std::string GetName() const { return "Tester"; }
    std::string GetShortDescription() const { return "Tester"; }
    bool IsHardcore() const { return hardcore; }
    uint32 GetGUIDLow() const { return 7; }
    uint32 GetMoney() const { return money; }
    void ModifyMoney(int32 d) { money += d; calls.push_back("modify money"); }
    void SaveInventoryAndGoldToDB() { calls.push_back("save inventory"); }
    bool HasUnitState(uint32) const { return false; }
    void RemoveSpellsCausingAura(uint32) {}
};

struct ObjectMgrStub
{
    Player* online = nullptr;
    uint32 account = 20;
    Player* GetPlayer(ObjectGuid) { return online; }
    uint32 GetPlayerAccountIdByGUID(ObjectGuid) { return account; }
    bool GetPlayerNameByGUID(ObjectGuid, std::string& n) { n = "Tester"; return true; }
    std::string GetMangosStringForDBCLocale(uint32) { return "unknown"; }
} sObjectMgr;

struct AccountMgrStub { uint32 GetSecurity(uint32) { return SEC_PLAYER; } } sAccountMgr;

// GM trade logging off: keeps the audit branch out of the fragments.
struct WorldStub { bool getConfig(uint32) { return false; } } sWorld;

struct LogStub
{
    template <class... A> void outError(const char*, A...) { calls.push_back("log error"); }
    template <class... A> void outCommand(uint32, const char*, A...) {}
    template <class... A> void out(uint32, const char*, A...) {}
} sLog;

struct DbStub
{
    void BeginTransaction(uint32 = 0) {}
    void CommitTransaction() {}
    template <class... A> void PExecute(const char*, A...) { calls.push_back("db exec"); }
} CharacterDatabase;

bool offlineHardcore = false;
bool IsPlayerHardcore(uint32) { return offlineHardcore; }

struct MailReceiver { MailReceiver(Player*, ObjectGuid) {} };

// Models the production contract documented at every call site: "item will
// deleted or added to received mail list". This stub always takes the delete
// branch, because that is the branch that can expose a dangling pointer.
struct MailDraft
{
    Item* attached = nullptr;
    MailDraft(std::string) {}
    MailDraft(std::string, std::string) {}
    MailDraft& AddItem(Item* i) { attached = i; return *this; }
    void deliver()
    {
        calls.push_back("mail item");
        if (attached)
        {
            g_itemDestroyed = true;
            delete attached;
        }
    }
    void SendMailTo(MailReceiver, AuctionEntry*, uint32) { deliver(); }
    void SendMailTo(Player*, AuctionEntry*, uint32) { deliver(); }
};

struct AuctionHouseEntry { uint32 houseId = 1; } g_houseEntry;

struct AuctionHouseObject
{
    AuctionEntry* held = nullptr;
    AuctionEntry* GetAuction(uint32) { return held; }
    void RemoveAuction(AuctionEntry*) { calls.push_back("remove auction indexes"); }
};

AuctionHouseObject g_house;

struct AuctionHouseMgr
{
    // GetAItem consults the registry, exactly as the real one consults
    // mAitems. Unregistered means callers cannot reach the Item at all.
    Item* GetAItem(uint32 guid) { return registered.count(guid) ? g_item : nullptr; }
    void RemoveAItem(uint32 guid)
    {
        registered.erase(guid);
        calls.push_back("remove item index");
    }
    AuctionHouseObject* GetAuctionsMap(AuctionHouseEntry const*) { return &g_house; }
    void SendAuctionWonMail(AuctionEntry* auction);
    void SendAuctionExpiredMail(AuctionEntry* auction);
} sAuctionMgr;

struct WorldPacket
{
    ObjectGuid guid;
    uint32 auctionId = 1;
    WorldPacket& operator>>(ObjectGuid& o) { o = guid; return *this; }
    WorldPacket& operator>>(uint32& v) { v = auctionId; return *this; }
};

struct WorldSession
{
    Player* player = nullptr;
    Player* GetPlayer() { return player; }
    AuctionHouseEntry const* GetCheckedAuctionHouseForAuctioneer(ObjectGuid) { return &g_houseEntry; }
    void SendAuctionCommandResult(AuctionEntry*, uint32, uint32, uint32 = 0) { calls.push_back("cmd result"); }
    void SendAuctionCancelledToBidderMail(AuctionEntry*) { calls.push_back("cancel mail to bidder"); }
    void HandleAuctionRemoveItem(WorldPacket& recv_data);
};

#include "NativeAuctionWonMail.inc"
#include "NativeAuctionExpiredMail.inc"
#include "NativeAuctionCancel.inc"

// Fresh heap Item, registered as the real code registers it on load.
static void begin(const char* name, Player* online, bool hardcoreOffline)
{
    scenario = name;
    calls.clear();
    registered.clear();
    g_item = new Item();
    g_itemDestroyed = false;
    registered.insert(g_item->guid);
    sObjectMgr.online = online;
    sObjectMgr.account = 20;
    offlineHardcore = hardcoreOffline;
}

static void end()
{
    if (!g_itemDestroyed && at("delete item") < 0)
        delete g_item;
    g_item = nullptr;
    registered.clear();
}

int main()
{
    // --- SendAuctionWonMail -------------------------------------------------
    AuctionEntry won;
    won.bidder = 9;
    won.bid = 100;

    Player winner;
    begin("won / winner online", &winner, false);
    sAuctionMgr.SendAuctionWonMail(&won);
    CHECK(at("mail item") >= 0);
    CHECK(at("notify bidder") >= 0);
    end();

    begin("won / winner offline", nullptr, false);
    sAuctionMgr.SendAuctionWonMail(&won);
    CHECK(at("mail item") >= 0);
    end();

    begin("won / no receiver", nullptr, true);
    sAuctionMgr.SendAuctionWonMail(&won);
    CHECK(at("delete item") >= 0);      // destroyed outright, must be safe
    CHECK(at("mail item") < 0);
    end();

    // --- SendAuctionExpiredMail ---------------------------------------------
    AuctionEntry expired;

    Player owner;
    begin("expired / owner online", &owner, false);
    sAuctionMgr.SendAuctionExpiredMail(&expired);
    CHECK(at("mail item") >= 0);
    CHECK(at("notify owner") >= 0);
    end();

    begin("expired / owner offline", nullptr, false);
    sAuctionMgr.SendAuctionExpiredMail(&expired);
    CHECK(at("mail item") >= 0);
    end();

    begin("expired / no receiver", nullptr, true);
    sAuctionMgr.SendAuctionExpiredMail(&expired);
    CHECK(at("delete item") >= 0);
    end();

    // --- HandleAuctionRemoveItem (player cancels) ---------------------------
    // The site that crashed the live server: the item went to mail and stayed
    // registered across an entire database transaction.
    WorldSession session;
    Player canceller;
    session.player = &canceller;
    WorldPacket packet;

    // Heap-allocated: the production handler ends with `delete auction`.
    auto* cancelNoBid = new AuctionEntry();
    cancelNoBid->owner = canceller.GetGUIDLow();
    g_house.held = cancelNoBid;

    begin("cancel / no bidder", &canceller, false);
    session.HandleAuctionRemoveItem(packet);
    CHECK(at("mail item") >= 0);
    CHECK(at("remove auction indexes") >= 0);
    end();

    // With a bidder the handler also refunds, which lengthens the window
    // between the mail hand-off and the eventual RemoveAItem.
    auto* cancelBid = new AuctionEntry();
    cancelBid->owner = canceller.GetGUIDLow();
    cancelBid->bidder = 9;
    cancelBid->bid = 50;
    g_house.held = cancelBid;

    begin("cancel / with bidder", &canceller, false);
    session.HandleAuctionRemoveItem(packet);
    CHECK(at("mail item") >= 0);
    CHECK(at("cancel mail to bidder") >= 0);
    end();

    // --- A missing Item must be reported, not mailed, and not crash ---------
    scenario = "missing item";
    calls.clear();
    registered.clear();
    g_item = nullptr;
    sObjectMgr.online = nullptr;

    AuctionEntry orphan;
    sAuctionMgr.SendAuctionWonMail(&orphan);
    CHECK(at("mail item") < 0);
    calls.clear();
    sAuctionMgr.SendAuctionExpiredMail(&orphan);
    CHECK(at("mail item") < 0);

    calls.clear();
    auto* orphanCancel = new AuctionEntry();
    orphanCancel->owner = canceller.GetGUIDLow();
    g_house.held = orphanCancel;
    session.HandleAuctionRemoveItem(packet);
    CHECK(at("mail item") < 0);
    // The handler bails out before `delete auction` on the missing-item path.
    delete orphanCancel;

    std::cout << "Native auction item hand-off safety tests passed\n";
}
