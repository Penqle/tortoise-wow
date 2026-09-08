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

#pragma once

#include "Common.h"
#include "ObjectGuid.h"
#include "SharedDefines.h"
#include <string>

// Input bundle for synchronous character creation. Mirrors the data parsed from
// CMSG_CHAR_CREATE (except packet framing). All validation is reused from the
// real packet path.
// remoteAddress is optional: packet path should pass GetRemoteAddress(),
// module default is generic safe dummy (keeps module calls generic while
// preserving original packet IP in LOG_CHAR).
struct CharacterCreateInfo
{
    std::string name;
    uint8 race = 0;
    uint8 class_ = 0;
    uint8 gender = 0;
    uint8 skin = 0;
    uint8 face = 0;
    uint8 hairStyle = 0;
    uint8 hairColor = 0;
    uint8 facialHair = 0;
    uint8 outfitId = 0;
    uint32 challengeMask = 0;
    std::string remoteAddress = "127.0.0.1";

    // Packet callers should provide their current-realm character-list count
    // so the extracted path preserves the normal session semantics. Module
    // callers may leave this false; the core obtains a count synchronously.
    uint32 currentRealmCharacterCount = 0;
    bool currentRealmCharacterCountProvided = false;
};

// Exact cause used by the packet adapter to preserve legacy anticheat logging.
enum class CharacterCreateFailureReason : uint8
{
    None,
    InvalidClassOrRace,
    NonPlayableRace,
    InvalidName,
};

// Outcome of CreateCharacter. `result` uses the same values as SharedDefines
// ResponseCodes (CHAR_CREATE_*/CHAR_NAME_*). `guid` is valid only on
// CHAR_CREATE_SUCCESS. `newCharactersCount` is the current-realm count after
// creation, carried to let a packet caller update its character-list cache
// without an asynchronous recount.
struct CharacterCreateOutcome
{
    uint8 result = 0;
    ObjectGuid guid;
    uint32 newCharactersCount = 0;
    CharacterCreateFailureReason failureReason = CharacterCreateFailureReason::None;
};

namespace CharacterCreation
{
    // Synchronous, world-thread only. Reuses Player::Create / SaveToDB and the
    // exact validation path of HandleCharCreateOpcode. Must not be called from
    // a DB worker and must not use a fake registered WorldSession.
    // The per-realm count is either supplied by a packet caller or queried
    // synchronously for a module caller. Database failure is fail-closed.
    // Transient-session OnCreate limitation: Player passed to
    // PlayerScript::OnCreate is not yet in world and the session is a
    // transient helper not registered in World nor tied to a network socket;
    // hooks must not assume FindSession/online/world presence and must handle
    // that the Player is valid only during the synchronous call.
    CharacterCreateOutcome CreateCharacter(uint32 accountId, CharacterCreateInfo const& info);
}

// Compile-time contract: outcome result values must be the packet values.
static_assert(uint8(CHAR_CREATE_SUCCESS) != uint8(CHAR_CREATE_ERROR), "ResponseCodes distinct");
static_assert(uint8(CHAR_NAME_SUCCESS) != uint8(CHAR_NAME_NO_NAME), "name codes distinct");
