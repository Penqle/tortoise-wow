/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://elysium-project.org>
 *
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

#include "HeadlessSessionMgr.h"

#include "Database/DatabaseEnv.h"
#include "AccountMgr.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "MapNodes/MasterPlayer.h"
#include "PlayerLoginQueryHolder.h"
#include "World.h"
#include "WorldSession.h"

HeadlessSessionMgr::~HeadlessSessionMgr()
{
    Shutdown();
}

HeadlessSessionStartResult HeadlessSessionMgr::ValidateStart(uint32 accountId, ObjectGuid characterGuid) const
{
    if (!characterGuid.IsPlayer())
        return HeadlessSessionStartResult::InvalidCharacter;

    if (!accountId)
        return HeadlessSessionStartResult::InvalidAccount;

    std::string accountName;
    if (!sAccountMgr.GetName(accountId, accountName))
        return HeadlessSessionStartResult::InvalidAccount;

    if (sAccountMgr.IsAccountBanned(accountId))
        return HeadlessSessionStartResult::AccountBanned;

    if (m_world.IsCharacterLocked(characterGuid.GetCounter()))
        return HeadlessSessionStartResult::CharacterLocked;

    PlayerCacheData* character = sObjectMgr.GetPlayerDataByGUID(characterGuid.GetCounter());
    if (!character)
        return HeadlessSessionStartResult::InvalidCharacter;

    if (character->uiAccount != accountId)
        return HeadlessSessionStartResult::CharacterNotOwned;

    if (m_sessions.find(characterGuid) != m_sessions.end() ||
        m_pendingSessions.find(characterGuid) != m_pendingSessions.end())
        return HeadlessSessionStartResult::Duplicate;

    for (auto const& entry : m_world.GetAllSessions())
    {
        WorldSession* session = entry.second;
        if (session && session->GetTransport() == SessionTransport::Network &&
            session->m_playerLoading && session->m_loginRequestGuid == characterGuid)
            return HeadlessSessionStartResult::ConflictingPlayer;
    }

    if (sObjectAccessor.FindPlayerNotInWorld(characterGuid))
        return HeadlessSessionStartResult::ConflictingPlayer;

    return HeadlessSessionStartResult::Started;
}

uint64 HeadlessSessionMgr::NextRequestToken()
{
    ++m_nextRequestToken;
    if (!m_nextRequestToken)
        ++m_nextRequestToken;
    return m_nextRequestToken;
}

HeadlessSessionStartResult HeadlessSessionMgr::Start(uint32 accountId, ObjectGuid characterGuid,
    LocaleConstant locale, std::string const& tag)
{
    HeadlessSessionStartResult result = ValidateStart(accountId, characterGuid);
    if (result != HeadlessSessionStartResult::Started)
        return result;

    WorldSession* session = new WorldSession(accountId, nullptr, sAccountMgr.GetSecurity(accountId),
        time_t(0), locale, std::string(), 0, SessionTransport::Headless);
    session->InitHeadlessSession();
    session->SetUsername(tag.empty() ? "Headless" : tag);

    SessionEntry entry;
    entry.session = session;
    entry.accountId = accountId;
    entry.characterGuid = characterGuid;
    entry.requestToken = NextRequestToken();

    auto inserted = m_pendingSessions.emplace(characterGuid, entry);
    if (!inserted.second)
    {
        delete session;
        return HeadlessSessionStartResult::Duplicate;
    }

    if (!session->LoginPlayer(characterGuid, entry.requestToken))
    {
        auto pending = m_pendingSessions.find(characterGuid);
        if (pending != m_pendingSessions.end() && pending->second.session == session)
        {
            SessionEntry failed = pending->second;
            m_pendingSessions.erase(pending);
            DestroySession(failed, false, false);
        }
        return HeadlessSessionStartResult::QueryDispatchFailed;
    }

    return HeadlessSessionStartResult::Started;
}

void HeadlessSessionMgr::DestroySession(SessionEntry& entry, bool save, bool clearCharacterOnline)
{
    WorldSession* session = entry.session;
    entry.session = nullptr;
    if (!session)
        return;

    bool hadPlayer = session->GetPlayer() != nullptr;
    if (hadPlayer || session->GetMasterPlayer())
        session->LogoutPlayer(save);

    if (clearCharacterOnline)
        CharacterDatabase.PExecute("UPDATE characters SET online = 0 WHERE guid = '%u'",
            entry.characterGuid.GetCounter());

    delete session;
}

bool HeadlessSessionMgr::Stop(ObjectGuid characterGuid, bool save)
{
    auto active = m_sessions.find(characterGuid);
    if (active != m_sessions.end())
    {
        SessionEntry entry = active->second;
        m_sessions.erase(active);
        DestroySession(entry, save, true);
        return true;
    }

    auto pending = m_pendingSessions.find(characterGuid);
    if (pending == m_pendingSessions.end())
        return false;

    SessionEntry entry = pending->second;
    m_pendingSessions.erase(pending);
    DestroySession(entry, false, false);
    return true;
}

void HeadlessSessionMgr::StopForAccount(uint32 accountId, bool save)
{
    for (auto pending = m_pendingSessions.begin(); pending != m_pendingSessions.end(); )
    {
        if (pending->second.accountId != accountId)
        {
            ++pending;
            continue;
        }

        SessionEntry entry = pending->second;
        pending = m_pendingSessions.erase(pending);
        DestroySession(entry, false, false);
    }

    for (auto active = m_sessions.begin(); active != m_sessions.end(); )
    {
        if (active->second.accountId != accountId)
        {
            ++active;
            continue;
        }

        SessionEntry entry = active->second;
        active = m_sessions.erase(active);
        DestroySession(entry, save, true);
    }
}

HeadlessSessionState HeadlessSessionMgr::GetState(ObjectGuid characterGuid) const
{
    if (m_pendingSessions.find(characterGuid) != m_pendingSessions.end())
        return HeadlessSessionState::Pending;

    auto active = m_sessions.find(characterGuid);
    if (active == m_sessions.end())
        return HeadlessSessionState::NotFound;

    WorldSession* session = active->second.session;
    if (session && session->GetPlayer() && !session->PlayerLoading())
        return HeadlessSessionState::Active;
    return HeadlessSessionState::Loading;
}

HeadlessSessionMgr::SessionEntry* HeadlessSessionMgr::FindEntry(ObjectGuid characterGuid,
    uint32 accountId, SessionTransport transport, uint64 requestToken)
{
    auto matches = [&](SessionEntry& entry)
    {
        return entry.session && entry.accountId == accountId &&
            entry.characterGuid == characterGuid &&
            entry.requestToken == requestToken &&
            entry.session->GetTransport() == transport;
    };

    auto active = m_sessions.find(characterGuid);
    if (active != m_sessions.end() && matches(active->second))
        return &active->second;

    auto pending = m_pendingSessions.find(characterGuid);
    if (pending != m_pendingSessions.end() && matches(pending->second))
        return &pending->second;

    return nullptr;
}


void HeadlessSessionMgr::HandleLoginCallback(LoginQueryHolder* holder)
{
    if (!holder)
        return;

    if (holder->GetTransport() != SessionTransport::Headless)
    {
        delete holder;
        return;
    }

    SessionEntry* entry = FindEntry(holder->GetGuid(), holder->GetAccountId(),
        holder->GetTransport(), holder->GetRequestToken());
    if (!entry)
    {
        delete holder;
        return;
    }

    if (sAccountMgr.IsAccountBanned(holder->GetAccountId()))
    {
        StopForAccount(holder->GetAccountId(), true);
        delete holder;
        return;
    }

    ObjectGuid characterGuid = holder->GetGuid();
    PlayerCacheData* character = sObjectMgr.GetPlayerDataByGUID(characterGuid.GetCounter());
    Player* livePlayer = sObjectAccessor.FindPlayerNotInWorld(characterGuid);
    if (m_world.IsCharacterLocked(characterGuid.GetCounter()) ||
        !character || character->uiAccount != holder->GetAccountId())
    {
        Stop(characterGuid, false);
        delete holder;
        return;
    }

    if (livePlayer)
    {
        if (entry->session->GetPlayer() != livePlayer)
            Stop(characterGuid, false);
        delete holder;
        return;
    }

    if (m_pendingSessions.find(characterGuid) != m_pendingSessions.end())
    {
        SessionEntry promoted = *entry;
        m_pendingSessions.erase(characterGuid);
        auto active = m_sessions.emplace(characterGuid, promoted);
        if (!active.second)
        {
            DestroySession(promoted, false, false);
            delete holder;
            return;
        }
        entry = &active.first->second;
    }

    entry->session->HandlePlayerLogin(holder);
}

bool HeadlessSessionMgr::ReclaimForNetwork(ObjectGuid characterGuid, WorldSession* session,
    WorldSession* replacement, uint32 accountId)
{
    auto active = m_sessions.find(characterGuid);
    if (active == m_sessions.end())
        return false;

    SessionEntry entry = active->second;
    Player* player = session ? session->GetPlayer() : nullptr;
    if (!session || !replacement || replacement == session || entry.session != session ||
        entry.accountId != accountId || session->GetTransport() != SessionTransport::Headless ||
        !player)
        return false;

    if (MasterPlayer* master = session->GetMasterPlayer())
    {
        master->SetSession(nullptr);
        session->SetMasterPlayer(nullptr);
    }

    // Reattach the Player before deleting its manager-owned old session. This
    // keeps Player::GetSession() valid throughout the reclaim transition.
    player->SetSession(replacement);
    session->SetPlayer(nullptr);
    m_sessions.erase(active);
    delete session;
    return true;
}

void HeadlessSessionMgr::PromotePending()
{
    for (auto pending = m_pendingSessions.begin(); pending != m_pendingSessions.end(); )
    {
        ObjectGuid characterGuid = pending->first;
        if (m_sessions.find(characterGuid) != m_sessions.end() ||
            sObjectAccessor.FindPlayerNotInWorld(characterGuid))
        {
            SessionEntry rejected = pending->second;
            pending = m_pendingSessions.erase(pending);
            DestroySession(rejected, false, false);
            continue;
        }

        SessionEntry entry = pending->second;
        pending = m_pendingSessions.erase(pending);
        if (!m_sessions.emplace(characterGuid, entry).second)
            DestroySession(entry, false, false);
    }
}

void HeadlessSessionMgr::Update(uint32 diff)
{
    for (auto active = m_sessions.begin(); active != m_sessions.end(); )
    {
        WorldSession* session = active->second.session;
        WorldSessionFilter updater(session);

        session->AddActiveTime(diff);
        bool missingPlayer = !session->GetPlayer() && !session->PlayerLoading();
        if (missingPlayer || !session->Update(updater))
        {
            SessionEntry expired = active->second;
            active = m_sessions.erase(active);
            DestroySession(expired, true, true);
        }
        else
            ++active;
    }
}

void HeadlessSessionMgr::Shutdown()
{
    while (!m_pendingSessions.empty())
    {
        auto pending = m_pendingSessions.begin();
        SessionEntry entry = pending->second;
        m_pendingSessions.erase(pending);
        DestroySession(entry, false, false);
    }

    while (!m_sessions.empty())
    {
        auto active = m_sessions.begin();
        SessionEntry entry = active->second;
        m_sessions.erase(active);
        DestroySession(entry, true, true);
    }
}
