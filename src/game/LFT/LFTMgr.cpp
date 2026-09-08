#include "LFTMgr.h"

#include "Chat.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "World.h"

LFTManager sLFTMgr;

namespace
{
    static char const* LFT_PREFIX = "TW_LFG";

    std::vector<std::string> SplitPreserveEmpty(std::string const& value, char delimiter)
    {
        std::vector<std::string> parts;
        std::string current;

        for (char c : value)
        {
            if (c == delimiter)
            {
                parts.push_back(current);
                current.clear();
            }
            else
            {
                current += c;
            }
        }

        parts.push_back(current);
        return parts;
    }
}

LFTManager::LFTManager() : m_nextListingId(1), m_nextOfferId(1), m_nextQueueOrder(1), m_listingsLoaded(false)
{
}

bool LFTManager::HandleAddonMessage(Player* player, uint32 type, std::string const& rawMessage)
{
    if (!player)
        return false;

    std::string prefix = std::string(LFT_PREFIX) + "\t";
    if (rawMessage.compare(0, prefix.size(), prefix) != 0)
        return false;

    std::string payload = rawMessage.substr(prefix.size());
    std::vector<std::string> fields = SplitPreserveEmpty(payload, ';');
    if (fields.empty() || fields[0].empty())
        return true;

    EnsureListingsLoaded();

    if (fields[0] == "C2C_ROLECHECK_RESPONSE")
    {
        HandleManualRolecheckResponse(player, fields);
        return false;
    }

    if (type != CHAT_MSG_GUILD)
        return false;

    if (fields[0] == "C2S_GET_GROUPS_STATUS")
        HandleGetGroupsStatus(player);
    else if (fields[0] == "C2S_GET_GROUPS_LIST")
        HandleGetGroupsList(player);
    else if (fields[0] == "C2S_GET_GROUP_DETAILS")
        HandleGetGroupDetails(player, fields);
    else if (fields[0] == "C2S_NEW_GROUP")
        HandleNewGroup(player, fields);
    else if (fields[0] == "C2S_UPDATE_GROUP")
        HandleUpdateGroup(player, fields);
    else if (fields[0] == "C2S_DELETE_GROUP")
        HandleDeleteGroup(player, fields);
    else if (fields[0] == "C2S_SIGNUP")
        HandleSignup(player, fields);
    else if (fields[0] == "C2S_QUEUE_JOIN")
        HandleQueueJoin(player, fields);
    else if (fields[0] == "C2S_QUEUE_LEAVE")
        HandleQueueLeave(player);
    else if (fields[0] == "C2S_GET_QUEUE_STATUS")
        HandleGetQueueStatus(player);
    else if (fields[0] == "C2S_ROLECHECK_RESPONSE")
        HandleRolecheckResponse(player, fields);
    else if (fields[0] == "C2S_OFFER_ACCEPT")
        HandleOfferAccept(player);

    return true;
}

void LFTManager::Update(uint32 diff)
{
    for (QueueMap::iterator itr = m_queue.begin(); itr != m_queue.end();)
    {
        if (!GetPlayer(itr->first))
            itr = m_queue.erase(itr);
        else
            ++itr;
    }

    for (RolecheckMap::iterator itr = m_rolechecks.begin(); itr != m_rolechecks.end();)
    {
        if (itr->second.timer <= diff)
        {
            RolecheckMap::iterator expired = itr++;
            CancelRolecheck(expired);
            continue;
        }

        itr->second.timer -= diff;
        ++itr;
    }

    for (OffersMap::iterator itr = m_offers.begin(); itr != m_offers.end();)
    {
        if (itr->second.timer <= diff)
        {
            uint32 offerId = itr->first;
            ++itr;
            CancelOffer(offerId, true);
            continue;
        }

        itr->second.timer -= diff;
        ++itr;
    }

    TryMakeOffers();
}

uint8 LFTManager::SignedUpRole(ObjectGuid const& guid) const
{
    std::map<ObjectGuid, uint8>::const_iterator it = m_signedUpRole.find(guid);

    return it == m_signedUpRole.end() ? 0 : it->second;
}

void LFTManager::OnPlayerLogout(ObjectGuid const& guid)
{
    m_signedUpRole.erase(guid);

    EnsureListingsLoaded();
    CleanupPlayer(guid);

    bool changedListings = false;
    for (ListingsMap::iterator itr = m_listings.begin(); itr != m_listings.end();)
    {
        if (itr->second.creatorGuid == guid)
        {
            changedListings = true;
            DeleteListingFromDB(itr->second.id);
            itr = m_listings.erase(itr);
        }
        else
        {
            ++itr;
        }
    }

    if (changedListings)
        BroadcastGroupsList();
}

void LFTManager::Send(Player* player, std::string const& message) const
{
    if (player && player->GetSession())
        player->SendAddonMessage(LFT_PREFIX, message);
}

bool LFTManager::CanPlayersGroup(Player const* leader, Player const* member) const
{
    if (!leader || !member)
        return false;

    if (!sWorld.getConfig(CONFIG_BOOL_ALLOW_TWO_SIDE_INTERACTION_GROUP) && leader->GetTeam() != member->GetTeam())
        return false;

    return const_cast<Player*>(leader)->HandleHardcoreInteraction(const_cast<Player*>(member), true) == Player::HardcoreInteractionResult::Allowed;
}

Player* LFTManager::GetPlayer(ObjectGuid const& guid) const
{
    Player* player = sObjectMgr.GetPlayer(guid);
    return player && player->IsInWorld() ? player : nullptr;
}

std::string LFTManager::ClassName(Player const* player) const
{
    if (!player)
        return "UNKNOWN";

    switch (player->GetClass())
    {
        case CLASS_WARRIOR: return "WARRIOR";
        case CLASS_PALADIN: return "PALADIN";
        case CLASS_HUNTER:  return "HUNTER";
        case CLASS_ROGUE:   return "ROGUE";
        case CLASS_PRIEST:  return "PRIEST";
        case CLASS_SHAMAN:  return "SHAMAN";
        case CLASS_MAGE:    return "MAGE";
        case CLASS_WARLOCK: return "WARLOCK";
        case CLASS_DRUID:   return "DRUID";
        default:            return "UNKNOWN";
    }
}
