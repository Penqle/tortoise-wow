#pragma once
/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Generic synchronous world-thread character materialization.
 * No RNDBOT / bot concepts, no raw INSERT, no DB-worker use.
 */

#include "Common.h"
#include "ObjectGuid.h"
#include "SharedDefines.h"
#include <string>

// Input bundle for synchronous character creation. Mirrors the data parsed from
// CMSG_CHAR_CREATE (except packet framing). All validation is reused from the
// real packet path.
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
};

// Outcome of CreateCharacter. `result` uses the same values as SharedDefines
// ResponseCodes (CHAR_CREATE_*/CHAR_NAME_*). `guid` is valid only on
// CHAR_CREATE_SUCCESS.
struct CharacterCreateOutcome
{
    uint8 result = 0;
    ObjectGuid guid;
};

namespace CharacterCreation
{
    // Synchronous, world-thread only. Reuses Player::Create / SaveToDB and the
    // exact validation path of HandleCharCreateOpcode. Must not be called from
    // a DB worker and must not use a fake registered WorldSession.
    CharacterCreateOutcome CreateCharacter(uint32 accountId, CharacterCreateInfo const& info);
}

// Compile-time contract: outcome result values must be the packet values.
static_assert(uint8(CHAR_CREATE_SUCCESS) != uint8(CHAR_CREATE_ERROR), "ResponseCodes distinct");
static_assert(uint8(CHAR_NAME_SUCCESS) != uint8(CHAR_NAME_NO_NAME), "name codes distinct");
