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

#include "ObjectAccessor.h"
#include "Player.h"
#include "World.h"
#include "WorldSession.h"

bool HeadlessSessionMgr::AddSession(WorldSession* session, ObjectGuid characterGuid)
{
    // Caller owns 'session' unless true is returned; this manager owns it after.
    if (!session || !session->IsHeadless() || !characterGuid.IsPlayer())
        return false;

    if (Player* player = sObjectAccessor.FindPlayer(characterGuid))
    {
        WorldSession* current = player->GetSession();
        if (!current || !current->IsHeadless())
            return false;
    }

    if (m_sessions.find(characterGuid) != m_sessions.end() ||
        m_pendingSessions.find(characterGuid) != m_pendingSessions.end())
        return false;

    m_pendingSessions.emplace(characterGuid, session);
    return true;
}

WorldSession* HeadlessSessionMgr::FindSession(ObjectGuid characterGuid) const
{
    auto itr = m_sessions.find(characterGuid);
    return itr == m_sessions.end() ? nullptr : itr->second;
}

bool HeadlessSessionMgr::HasOtherSessionForAccount(uint32 accountId, WorldSession const* excluded) const
{
    // Pending registrations are not active sessions; excluding them prevents
    // cancellation before login from leaving account.online set indefinitely.
    for (auto const& entry : m_world.GetAllSessions())
    {
        if (entry.second && entry.second != excluded && entry.second->GetAccountId() == accountId)
            return true;
    }

    for (auto const& entry : m_sessions)
    {
        if (entry.second && entry.second != excluded && entry.second->GetAccountId() == accountId)
            return true;
    }

    return false;
}

bool HeadlessSessionMgr::HasPendingSession(ObjectGuid characterGuid) const
{
    return m_pendingSessions.find(characterGuid) != m_pendingSessions.end();
}

bool HeadlessSessionMgr::CancelPendingSession(ObjectGuid characterGuid)
{
    auto itr = m_pendingSessions.find(characterGuid);
    if (itr == m_pendingSessions.end())
        return false;

    delete itr->second;
    m_pendingSessions.erase(itr);
    return true;
}

bool HeadlessSessionMgr::RemoveSession(ObjectGuid characterGuid, bool save)
{
    auto itr = m_sessions.find(characterGuid);
    if (itr == m_sessions.end())
        return CancelPendingSession(characterGuid);

    WorldSession* session = itr->second;
    m_sessions.erase(itr);

    if (session->GetPlayer())
        session->LogoutPlayer(save);

    delete session;
    return true;
}

bool HeadlessSessionMgr::ForgetSession(WorldSession* session)
{
    if (!session)
        return false;

    for (auto itr = m_sessions.begin(); itr != m_sessions.end(); ++itr)
    {
        if (itr->second == session)
        {
            m_sessions.erase(itr);
            return true;
        }
    }

    return false;
}

void HeadlessSessionMgr::PromotePending()
{
    for (auto itr = m_pendingSessions.begin(); itr != m_pendingSessions.end(); )
    {
        if (m_sessions.find(itr->first) != m_sessions.end() ||
            sObjectAccessor.FindPlayer(itr->first))
        {
            delete itr->second;
            itr = m_pendingSessions.erase(itr);
            continue;
        }

        m_sessions.emplace(itr->first, itr->second);
        itr = m_pendingSessions.erase(itr);
    }
}

void HeadlessSessionMgr::Update(uint32 diff)
{
    for (auto itr = m_sessions.begin(); itr != m_sessions.end(); )
    {
        WorldSession* session = itr->second;
        WorldSessionFilter updater(session);

        session->AddActiveTime(diff);
        if (!session->Update(updater))
        {
            if (session->GetPlayer())
                session->LogoutPlayer(true);
            delete session;
            itr = m_sessions.erase(itr);
        }
        else
            ++itr;
    }
}

void HeadlessSessionMgr::Shutdown()
{
    while (!m_pendingSessions.empty())
    {
        auto itr = m_pendingSessions.begin();
        delete itr->second;
        m_pendingSessions.erase(itr);
    }

    while (!m_sessions.empty())
    {
        auto itr = m_sessions.begin();
        WorldSession* session = itr->second;
        m_sessions.erase(itr);

        if (session->GetPlayer())
            session->LogoutPlayer(true);

        delete session;
    }
}
