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

/** \file
    \ingroup realmd
*/

#include "Common.h"
#include "RealmList.h"
#include "AuthCodes.h"
#include "Util.h"                                           // for Tokens typedef
#include "Policies/SingletonImp.h"
#include "Database/DatabaseEnv.h"
#include "Config/Config.h"

RealmList sRealmList;

// list sorted from high to low build and first build used as low bound for accepted by default range (any > it will accepted by realmd at least)
static RealmBuildInfo ExpectedRealmdClientBuilds[] =
{
	{7199,  1, 17, 2, ' ', {{}}, {{}}}, 
    {0,     0, 0, 0,  ' ', {{}}, {{}}} // terminator
};

RealmBuildInfo const* FindBuildInfo(uint16 _build)
{
    // first build is low bound of always accepted range
    if (_build >= ExpectedRealmdClientBuilds[0].build)
        return &ExpectedRealmdClientBuilds[0];

    // continue from 1 with explicit equal check
    for(int i = 1; ExpectedRealmdClientBuilds[i].build; ++i)
        if(_build == ExpectedRealmdClientBuilds[i].build)
            return &ExpectedRealmdClientBuilds[i];

    // none appropriate build
    return nullptr;
}

RealmList::RealmList( ) : m_UpdateInterval(0), m_NextUpdateTime(time(nullptr))
{
}

/// Load the realm list from the database
void RealmList::Initialize(uint32 updateInterval)
{
    m_UpdateInterval = updateInterval;

    ///- Get the content of the realmlist table in the database
    UpdateRealms(true);
}

void RealmList::UpdateRealm( uint32 ID, const std::string& name, const std::string& address, uint32 port, uint8 icon, RealmFlags realmflags, uint8 timezone, AccountTypes allowedSecurityLevel, float popu)
{
    ///- Create new if not exist or update existed
    Realm& realm = m_realms[name];

    realm.m_ID       = ID;
    realm.icon       = icon;
    realm.realmflags = realmflags;
    realm.timezone   = timezone;
    realm.allowedSecurityLevel = allowedSecurityLevel;
    realm.populationLevel      = popu;

    realm.realmBuildInfo.build = ExpectedRealmdClientBuilds[0].build;
    realm.realmBuildInfo.major_version = 0;
    realm.realmBuildInfo.minor_version = 0;
    realm.realmBuildInfo.bugfix_version = 0;
    realm.realmBuildInfo.hotfix_version = ' ';
    realm.realmBuildInfo = ExpectedRealmdClientBuilds[0];

    ///- Append port to IP address.
    std::ostringstream ss;
    ss << address << ":" << port;
    realm.address   = ss.str();
}

void RealmList::UpdateIfNeed()
{
    // maybe disabled or updated recently
    if(!m_UpdateInterval || m_NextUpdateTime > time(nullptr))
        return;

    m_NextUpdateTime = time(nullptr) + m_UpdateInterval;

    // Clears Realm list
    m_realms.clear();

    // Get the content of the realmlist table in the database
    UpdateRealms(false);
}

void RealmList::UpdateRealms(bool init)
{
    DETAIL_LOG("Updating Realm List...");

    QueryResult *result = LoginDatabase.Query(
        //      0   1       2       3       4   5           6
        "SELECT id, name, address, port, icon, realmflags, timezone, "
        // 7                    8        
        "allowedSecurityLevel, population FROM realmlist "
        "WHERE (realmflags & 1) = 0 ORDER BY name");

    // Auth config can't be reloaded. Make sure you use a valid address.
    static const std::string overrideAddrStr = sConfig.GetStringDefault("HostAddressOverride", "0.0.0.0");
    static bool overrideAddr = (overrideAddrStr.compare("0.0.0.0") != 0);

    ///- Circle through results and add them to the realm map
    if(result)
    {
        do
        {
            Field *fields = result->Fetch();
            uint8 allowedSecurityLevel = fields[7].GetUInt8();
            uint8 realmflags = fields[5].GetUInt8();
            std::string realmAddress = overrideAddr ? overrideAddrStr : fields[2].GetCppString();

            if (realmflags & ~(REALM_FLAG_OFFLINE|REALM_FLAG_NEW_PLAYERS|REALM_FLAG_RECOMMENDED|REALM_FLAG_SPECIFYBUILD))
            {
                sLog.outError("Realm allowed have only OFFLINE Mask 0x2), or NEWPLAYERS (mask 0x20), or RECOMENDED (mask 0x40), or SPECIFICBUILD (mask 0x04) flags in DB");
                realmflags &= (REALM_FLAG_OFFLINE|REALM_FLAG_NEW_PLAYERS|REALM_FLAG_RECOMMENDED|REALM_FLAG_SPECIFYBUILD);
            }

            UpdateRealm(
                fields[0].GetUInt32(), fields[1].GetCppString(), realmAddress, fields[3].GetUInt32(),
                fields[4].GetUInt8(), RealmFlags(realmflags), fields[6].GetUInt8(),
                (allowedSecurityLevel <= SEC_SIGMACHAD ? AccountTypes(allowedSecurityLevel) : SEC_SIGMACHAD),
                fields[8].GetFloat());

            if(init)
                sLog.outString("Welcome to Turtle WoW!");
                sLog.outString("Login server is up and running.");
        } while( result->NextRow() );
        delete result;
    }
}
