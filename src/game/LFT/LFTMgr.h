#ifndef MANGOSSERVER_LFTMGR_H
#define MANGOSSERVER_LFTMGR_H

#include <array>
#include <ctime>
#include <map>
#include <set>
#include <string>
#include <vector>

#include "Common.h"

class Group;
class Player;

// Role masks shared by the queue's role-check and offer code.
enum LFTRoles
{
    LFT_ROLE_TANK   = 0x01,
    LFT_ROLE_HEALER = 0x02,
    LFT_ROLE_DAMAGE = 0x04
};

class LFTManager
{
    public:
        LFTManager();

        bool HandleAddonMessage(Player* player, uint32 type, std::string const& rawMessage);
        void Update(uint32 diff);
        void OnPlayerLogout(ObjectGuid const& guid);

        // Generic module API: queue a live in-world player through native validation.
        // World-thread only. Validates instances and role (via AllowedRoleMask, i.e. class
        // intersect module GetAllowedRoles) and owns queue/rolecheck/offers/groups.
        // Grouping constraints (team/hardcore/level) are enforced natively at offer
        // formation (TryMakeOffers/CanQueuedPlayersGroup), not at enqueue time.
        // Returns true if the player (and, if grouped and leader, the party) was queued or entered rolecheck.
        bool QueuePlayer(Player* player, std::vector<std::string> const& instances, uint8 roleMask);
        // World-thread only. Single owner of cancellation - removes from
        // rolecheck/offer/queue and restores addon state via S2C_QUEUE_LEFT.
        // Both addon HandleQueueLeave and module calls route through here.
        bool LeaveQueue(Player* player);
        bool LeaveQueue(ObjectGuid const& guid);
        bool IsQueued(ObjectGuid const& guid) const;
        bool IsInOffer(ObjectGuid const& guid) const;
        // World-thread only. Generic offer acceptance for machine-driven participants.
        // Validates that the participant is live (in-world) and belongs to an offer,
        // then reuses native HandleOfferAccept/CompleteOffer semantics (accepted-count,
        // S2C_OFFER_UPDATE_COUNT, timers, cancellation/requeue, packets, private state).
        // Core owns queue/offers/groups; addon behavior unchanged. Intended for
        // module-owned Headless participants that cannot send C2S_OFFER_ACCEPT;
        // callers must not auto-accept all humans or bypass role/group/faction checks
        // (enforced at offer formation via CanQueuedPlayersGroup/AllowedRoleMask).
        bool AcceptOffer(Player* player);
        bool AcceptOffer(ObjectGuid const& guid);
        // Minimal offer diagnostic. 0 if not in offer. Does not expose private maps.
        uint32 GetOfferId(ObjectGuid const& guid) const;
        size_t GetQueueSize() const;

        struct QueuedInfo
        {
            ObjectGuid guid;
            std::string name;
            std::string className;
            uint32 level = 0;
            uint32 team = 0;
            bool isHardcore = false;
            std::vector<std::string> instances;
            uint8 roleMask = 0;
            uint8 assignedRole = 0;
            time_t joinTime = 0;
        };
        // World-thread only. Copy of current queue for module policy decisions.
        std::vector<QueuedInfo> GetQueuedPlayers() const;

    private:
        struct ListingSignup
        {
            std::string name;
            std::string className;
            uint32 level = 0;
            bool confirmed = false;
        };

        struct Listing
        {
            uint32 id = 0;
            ObjectGuid creatorGuid;
            std::string creator;
            std::string className;
            uint32 level = 0;
            uint32 team = 0;
            bool isHardcore = false;
            std::string title;
            std::string description;
            uint8 category = 1;
            std::array<uint8, 3> limit = {{0, 0, 0}};
            std::array<uint8, 3> numConfirmed = {{0, 0, 0}};
            std::array<std::vector<ListingSignup>, 3> signups;
        };

        struct QueuedPlayer
        {
            ObjectGuid guid;
            ObjectGuid queueLeaderGuid;
            std::string name;
            std::string className;
            uint32 level = 0;
            uint32 team = 0;
            bool isHardcore = false;
            time_t joinTime = 0;
            uint64 queueOrder = 0;
            std::vector<std::string> instances;
            uint8 roleMask = 0;
            uint8 assignedRole = 0;
        };

        struct PendingRolecheck
        {
            ObjectGuid leaderGuid;
            std::vector<ObjectGuid> members;
            std::vector<std::string> instances;
            std::map<ObjectGuid, uint8> responses;
            uint32 timer = 0;
        };

        struct Offer
        {
            uint32 id = 0;
            std::string instance;
            std::map<ObjectGuid, uint8> roles;
            std::set<ObjectGuid> accepted;
            uint32 timer = 0;
        };

        typedef std::map<uint32, Listing> ListingsMap;
        typedef std::map<ObjectGuid, QueuedPlayer> QueueMap;
        typedef std::map<ObjectGuid, PendingRolecheck> RolecheckMap;
        typedef std::map<uint32, Offer> OffersMap;

        void HandleGetGroupsStatus(Player* player);
        void HandleGetGroupsList(Player* player);
        void HandleGetGroupDetails(Player* player, std::vector<std::string> const& fields);
        void HandleNewGroup(Player* player, std::vector<std::string> const& fields);
        void HandleUpdateGroup(Player* player, std::vector<std::string> const& fields);
        void HandleDeleteGroup(Player* player, std::vector<std::string> const& fields);
        void HandleSignup(Player* player, std::vector<std::string> const& fields);
        void HandleQueueJoin(Player* player, std::vector<std::string> const& fields);
        void HandleQueueLeave(Player* player);
        void HandleGetQueueStatus(Player* player);
        void HandleRolecheckResponse(Player* player, std::vector<std::string> const& fields);
        void HandleOfferAccept(Player* player);
        void HandleManualRolecheckResponse(Player* player, std::vector<std::string> const& fields);

        void BroadcastGroupsList();
        void SendGroupsList(Player* player) const;
        void SendGroupDetails(Player* player, Listing const& listing) const;
        void SendQueueStatus(Player* player) const;
        void SendQueuedStatus(Player* player, QueuedPlayer const& queued) const;
        void SendQueueJoined(Player* player, QueuedPlayer const& queued) const;
        void SendQueueLeft(ObjectGuid const& guid, std::string const& name);
        void Send(Player* player, std::string const& message) const;

        void StartRolecheck(Player* leader, std::vector<std::string> const& instances);
        void EnqueuePlayer(Player* player, ObjectGuid const& leaderGuid, std::vector<std::string> const& instances, uint8 roleMask);
        void EnqueueRolecheck(PendingRolecheck const& rolecheck);
        void CancelRolecheck(RolecheckMap::iterator itr);
        void CancelOffer(uint32 offerId, bool requeueAccepted, ObjectGuid const& removeGuid = ObjectGuid(), bool requeueOthers = false);
        void TryMakeOffers();
        bool TryBuildOfferForInstance(std::string const& instance);
        bool CompleteOffer(uint32 offerId);
        bool AddPlayerToGroup(Group*& group, ObjectGuid const& leaderGuid, ObjectGuid const& memberGuid);

        void EnsureListingsLoaded();
        void LoadListingsFromDB();
        void SaveListingToDB(Listing const& listing);
        void DeleteListingFromDB(uint32 id);
        Listing* GetListingForGroupMember(Player* player);
        void RemoveListingSignup(Listing& listing, std::string const& name);
        void SetListingSignupRole(Listing& listing, Player* player, uint8 roleIdx);
        void PruneListingSignups(Listing& listing);
        std::string SerializeSignups(std::vector<ListingSignup> const& signups) const;
        std::vector<ListingSignup> DeserializeSignups(std::string const& value) const;
        bool CanPlayerSeeListing(Player const* player, Listing const& listing) const;
        bool CanPlayersGroup(Player const* leader, Player const* member) const;
        bool CanQueuedPlayersGroup(QueuedPlayer const& seed, QueuedPlayer const& candidate) const;

        Listing* GetListing(uint32 id);
        Player* GetPlayer(ObjectGuid const& guid) const;
        std::vector<ObjectGuid> GetPartyMembers(Player* leader) const;
        std::vector<ObjectGuid> GetQueueOrder() const;
        std::vector<std::string> GetSharedInstances(std::vector<std::string> const& requested) const;
        uint8 ParseRoleMask(std::string const& roles) const;
        std::array<uint8, 3> ParseRoleCounts(std::string const& roles) const;
        std::string BuildListingJson(Listing const& listing) const;
        std::string BuildSignupJson(ListingSignup const& signup) const;
        std::string JoinStrings(std::vector<std::string> const& values, char delimiter) const;
        std::string ClassName(Player const* player) const;
        uint8 AllowedRoleMask(Player const* player) const;
        void RecountListing(Listing& listing) const;
        void CleanupPlayer(ObjectGuid const& guid);

        ListingsMap m_listings;
        QueueMap m_queue;
        RolecheckMap m_rolechecks;
        OffersMap m_offers;
        std::map<ObjectGuid, uint32> m_playerOffers;
        uint32 m_nextListingId;
        uint32 m_nextOfferId;
        uint64 m_nextQueueOrder;
        bool m_listingsLoaded;
};

extern LFTManager sLFTMgr;

#endif
