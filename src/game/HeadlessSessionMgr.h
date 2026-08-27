/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
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

#pragma once

#include "Common.h"
#include "ObjectGuid.h"

#include <map>

class World;
class WorldSession;

class HeadlessSessionMgr
{
public:
    explicit HeadlessSessionMgr(World& world) : m_world(world) { }

    bool AddSession(WorldSession* session, ObjectGuid characterGuid);
    WorldSession* FindSession(ObjectGuid characterGuid) const;
    bool HasOtherSessionForAccount(uint32 accountId, WorldSession const* excluded = nullptr) const;
    bool HasPendingSession(ObjectGuid characterGuid) const;
    bool CancelPendingSession(ObjectGuid characterGuid);
    bool RemoveSession(ObjectGuid characterGuid, bool save = true);
    bool ForgetSession(WorldSession* session);

    void PromotePending();
    void Update(uint32 diff);
    void Shutdown();

private:
    World& m_world;
    std::map<ObjectGuid, WorldSession*> m_sessions;
    std::map<ObjectGuid, WorldSession*> m_pendingSessions;
};
