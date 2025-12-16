/*
* Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
* Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
* Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
* Copyright (C) 2016-2018 Elysium Project <https://github.com/elysium-project>
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

//Giperion April 2018
//[EUREKA] 3.6

#pragma once
#include "Common.h"
#include "ObjectGuid.h"

#include <mutex>

class Player;
class Unit;
class MovementInfo;


namespace SuspiciousType
{
    enum Value
    {
        NONE = 0,
        KILL_ELITE = 1,
        FISHING_TOO_LONG = 2,
        BOOSTING = 3,
        MOVING_TOO_FAST = 4,
    };

    const char* ToString(Value value);
}

struct FishingTracker
{
    uint32 StartTimestamp;
    uint32 LastAttemptTimestamp;

    FishingTracker()
        : StartTimestamp(0), LastAttemptTimestamp(0)
    {}

    FishingTracker(uint32 InStartTimestamp, uint32 InLastAttemptTimestamp)
        : StartTimestamp(InStartTimestamp), LastAttemptTimestamp(InLastAttemptTimestamp)
    {}

    FishingTracker(const FishingTracker& other)
        : StartTimestamp(other.StartTimestamp), LastAttemptTimestamp(other.LastAttemptTimestamp)
    {}
};

// Killer is red, I swear!
class SuspiciousStatisticMgr
{
public:

    void Initialize();

    void OnNpcKilledInDungeon(Player* player, Unit* NPC);
    void OnNpcKilledInWorld(Player* player, Unit* NPC);

    void OnFishingAttempt(Player* player);
    void OnMovement(Player* player, MovementInfo& newInfo);

    void SetEnable(bool bInEnable)
    {
        bEnable = bInEnable;
    }

    const bool IsEnabled() const
    {
        return bEnable;
    }

    void SetMovementEnable(bool bInEnable)
    {
        bMovementEnable = bInEnable;
    }

    const bool IsMovementEnabled() const
    {
        return bMovementEnable;
    }

    void SetFishingEnable(bool bInEnable)
    {
        bFishingEnable = bInEnable;
    }

    const bool IsFishingEnabled() const
    {
        return bFishingEnable;
    }

    void SetNpcKilledEnable(bool bInEnable)
    {
        bNpcKilledEnable = bInEnable;
    }

    const bool IsNpcKilledEnabled() const
    {
        return bNpcKilledEnable;
    }

    void SetMovementDetectValue(float InDetectValue)
    {
        MovementDetectValue = InDetectValue;
    }

    const float GetMovementDetectValue() const
    {
        return MovementDetectValue;
    }

    void PrintAllActiveFishers(Player* receiver);

	// Whitelisted
	std::set<ObjectGuid> WhitelistedPlayers;

protected:

    void RecordSuspiciousActivity(SuspiciousType::Value type, Player* player, uint32 Param1, uint32 Param2, const char* OptDescMessage = nullptr);
    bool IsPlayerInDungeonWithoutParty(Player* player);
    void ClearFishingTracker();

    bool bEnable = true;
    bool bMovementEnable = true;
    bool bFishingEnable = true;
    bool bNpcKilledEnable = true;

    float MovementDetectValue = 100.0f;

    //Store time when player fishing. Key - player low guid, Value - MS timestamp
    turtle_unordered_map<uint32, FishingTracker, Category_SuspiciousStat> FishingTimeCounterMap;

    std::mutex FishingTimeCounterMapGuard;

    //Players that already reported by stat system. Have protection by FishingTimeCounterMapGuard
    turtle_vector<uint32, Category_SuspiciousStat> FishingReportedPlayers;

    uint32 FishingClearMaintanceTimer = 0;
};

extern SuspiciousStatisticMgr sSuspiciousStatisticMgr;
