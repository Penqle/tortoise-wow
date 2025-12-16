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

#include "Common.h"
#include "CharacterDatabaseCleaner.h"
#include "World.h"
#include "Database/DatabaseEnv.h"
#include "DBCStores.h"
#include "SpellMgr.h"
#include "Util.h"
#include "Player.h"
#include "Util.h"
#include "Guild.h"


void CharacterDatabaseCleaner::CleanDatabase()
{
    return;
    // config to disable
    if (!sWorld.getConfig(CONFIG_BOOL_CLEAN_CHARACTER_DB))
        return;

    sLog.outString("Cleaning character database...");

    // check flags which clean ups are necessary
    QueryResult* result = CharacterDatabase.Query("SELECT cleaning_flags FROM saved_variables");
    if (!result)
        return;
    uint32 flags = (*result)[0].GetUInt32();
    delete result;

    // clean up
    if (flags & CLEANING_FLAG_SKILLS)
        CleanCharacterSkills();
    if (flags & CLEANING_FLAG_SPELLS)
        CleanCharacterSpell();
    CharacterDatabase.Execute("UPDATE saved_variables SET cleaning_flags = 0");
}

void CharacterDatabaseCleaner::CheckUnique(const char* column, const char* table, bool (*check)(uint32))
{

    return;
    QueryResult* result = CharacterDatabase.PQuery("SELECT DISTINCT %s FROM %s", column, table);
    if (!result)
    {
        sLog.outString("Table %s is empty.", table);
        return;
    }

    bool found = false;
    std::ostringstream ss;
    do
    {
        Field *fields = result->Fetch();

        uint32 id = fields[0].GetUInt32();

        if (!check(id))
        {
            if (!found)
            {
                ss << "DELETE FROM " << table << " WHERE " << column << " IN (";
                found = true;
            }
            else
                ss << ",";
            ss << id;
        }
    }
    while (result->NextRow());
    delete result;

    if (found)
    {
        ss << ")";
        CharacterDatabase.Execute(ss.str().c_str());
    }
}

bool CharacterDatabaseCleaner::SkillCheck(uint32 skill)
{
    return sSkillLineStore.LookupEntry(skill);
}

void CharacterDatabaseCleaner::CleanCharacterSkills()
{
    CheckUnique("skill", "character_skills", &SkillCheck);
}

bool CharacterDatabaseCleaner::SpellCheck(uint32 spell_id)
{
    return sSpellMgr.GetSpellEntry(spell_id);
}

void CharacterDatabaseCleaner::CleanCharacterSpell()
{
    CheckUnique("spell", "character_spell", &SpellCheck);
}

void CharacterDatabaseCleaner::FreeInactiveCharacterNames()
{
    return;
    sLog.outInfo("NameCleanup #1: Loading banned accounts...");
    std::set<uint32> bannedAccounts;
    std::unique_ptr<QueryResult> pQuery(LoginDatabase.Query("SELECT `id` FROM `account_banned` WHERE `active` = 1 AND (`unbandate` > UNIX_TIMESTAMP() OR `bandate` = `unbandate`)"));

    if (pQuery)
    {
        do
        {
            Field* fields = pQuery->Fetch();
            uint32 accountId = fields[0].GetUInt32();
            bannedAccounts.insert(accountId);
        } while (pQuery->NextRow());
    }
    else
        sLog.outInfo("No banned accounts found.");

    std::set<uint32> notPlayedHyjalAccounts;

    sLog.outInfo("NameCleanup #2: Loading Hyjal and Gurubashi accounts...");
    pQuery.reset(LoginDatabase.Query("SELECT `id` FROM `account` WHERE `last_login` = '0000-00-00' && ((`username` LIKE '%gw') || (`username` LIKE '%hy'))"));

    if (pQuery)
    {
        do
        {
            Field* fields = pQuery->Fetch();
            uint32 accountId = fields[0].GetUInt32();
            notPlayedHyjalAccounts.insert(accountId);
        } while (pQuery->NextRow());
    }
    else
        sLog.outInfo("No Hyjal or Gurubashi accounts found.");

    std::set<uint32> charsToRename;

    uint32 const now = time(nullptr);
    uint32 const sixMonthsAgo = now - 6 * MONTH;
    uint32 const oneYearAgo = now - 1 * YEAR;
    uint32 const twoYearsAgo = now - 2 * YEAR;

    sLog.outInfo("NameCleanup #3: Loading characters...");
    pQuery.reset(CharacterDatabase.Query("SELECT `guid`, `account`, `name`, `logout_time`, `level` FROM `characters` WHERE `name` != ''"));
    if (!pQuery)
    {
        sLog.outInfo("No characters found. Database is empty.");
        return;
    }

    do
    {
        Field* fields = pQuery->Fetch();
        uint32 guid = fields[0].GetUInt32();
        uint32 accountId = fields[1].GetUInt32();
        std::string name = fields[2].GetCppString();
        uint32 logoutTime = fields[3].GetUInt32();
        uint32 level = fields[4].GetUInt32();

        // already renamed
        if (isNumeric(name[0]))
            continue;

        // skip banned accounts
        if (bannedAccounts.find(accountId) != bannedAccounts.end())
            continue;

        if ((notPlayedHyjalAccounts.find(accountId) != notPlayedHyjalAccounts.end()) ||
            (logoutTime < sixMonthsAgo && level < 10) ||
            (logoutTime < oneYearAgo && level < 20) ||
            (logoutTime < twoYearsAgo && level < 40))
        {
            sLog.outInfo("Character %s (guid %u) will be renamed.", name.c_str(), guid);
            charsToRename.insert(guid);
        }

    } while (pQuery->NextRow());

    if (charsToRename.empty())
    {
        sLog.outInfo("No characters need to be renamed.");
        return;
    }

    sLog.outInfo("NameCleanup #4: Renaming %u characters...", (uint32)charsToRename.size());

    uint32 guidCounter = 0;
    std::string guidsList;
    for (auto const& guid : charsToRename)
    {
        if (!guidsList.empty())
            guidsList += ",";
        guidsList += std::to_string(guid);

        ++guidCounter;
        if (guidCounter >= 1000)
        {
            CharacterDatabase.PExecute("UPDATE `characters` SET `name` = `guid`, `at_login` = (`at_login` | 1) WHERE `guid` IN (%s)", guidsList.c_str());
            guidCounter = 0;
            guidsList.clear();
        }
    }
}

void CharacterDatabaseCleaner::DeleteInactiveCharacters()
{
    return;
    sLog.outInfo("CharCleanup #1: Loading banned accounts...");
    std::set<uint32> bannedAccounts;
    std::unique_ptr<QueryResult> pQuery(LoginDatabase.Query("SELECT `id` FROM `account_banned` WHERE `active` = 1 AND (`unbandate` > UNIX_TIMESTAMP() OR `bandate` = `unbandate`)"));

    if (pQuery)
    {
        do
        {
            Field* fields = pQuery->Fetch();
            uint32 accountId = fields[0].GetUInt32();
            bannedAccounts.insert(accountId);
        } while (pQuery->NextRow());
    }
    else
        sLog.outInfo("No banned accounts found.");

    sLog.outInfo("CharCleanup #2: Loading inactive accounts...");
    std::set<uint32> inactiveAccounts;
    pQuery.reset(LoginDatabase.Query("SELECT `id` FROM `account` WHERE `last_login` < date_sub(now(), interval 2 year)"));

    if (!pQuery)
    {
        sLog.outInfo("No inactive accounts found.");
        return;
    }

    do
    {
        Field* fields = pQuery->Fetch();
        uint32 accountId = fields[0].GetUInt32();
        inactiveAccounts.insert(accountId);
    } while (pQuery->NextRow());

    sLog.outInfo("CharCleanup #3: Loading item count per character...");
    pQuery.reset(CharacterDatabase.Query("SELECT `guid`, COUNT(`item`) FROM `character_inventory` GROUP BY `guid`"));
    std::set<uint32> lessThanTenItemsChars;
    if (pQuery)
    {
        do
        {
            Field* fields = pQuery->Fetch();
            uint32 guid = fields[0].GetUInt32();
            uint32 itemsCount = fields[1].GetUInt32();
            if (itemsCount < 10)
                lessThanTenItemsChars.insert(guid);

        } while (pQuery->NextRow());
    }
    else
        sLog.outInfo("No items found. Database is empty.");

    uint32 const twoYearsAgo = time(nullptr) - 2 * YEAR;
    std::set<std::string> bannedNames;
    std::set<uint32> charsToDelete;

    sLog.outInfo("CharCleanup #4: Loading characters...");
    //                                             0       1          2       3        4
    pQuery.reset(CharacterDatabase.PQuery("SELECT `guid`, `account`, `name`, `level`, `money` FROM `characters` WHERE `name` != '' && `logout_time` < %u", twoYearsAgo));

    if (!pQuery)
    {
        sLog.outInfo("No inactive characters found.");
        return;
    }   

    do
    {
        Field* fields = pQuery->Fetch();
        uint32 guid = fields[0].GetUInt32();
        uint32 accountId = fields[1].GetUInt32();
        std::string name = fields[2].GetCppString();
        uint32 level = fields[3].GetUInt32();
        uint32 money = fields[4].GetUInt32();

        // only if whole account is inactive
        if (inactiveAccounts.find(accountId) == inactiveAccounts.end())
            continue;

        // prevent banned names from being used again
        if (bannedAccounts.find(accountId) != bannedAccounts.end())
        {
            if (!isNumeric(name[0]))
                bannedNames.insert(name);

            charsToDelete.insert(guid);
            sLog.outInfo("Inactive character %s (guid %u) will be deleted because its banned.", name.c_str(), guid);
        }
        else if (money < 5 * GOLD && level < 10 &&
                 lessThanTenItemsChars.find(guid) != lessThanTenItemsChars.end())
        {
            charsToDelete.insert(guid);
            sLog.outInfo("Inactive character %s (guid %u) will be deleted because its low level.", name.c_str(), guid);
        }

    } while (pQuery->NextRow());

    if (charsToDelete.empty())
    {
        sLog.outInfo("No characters need to be deleted.");
        return;
    }

    sLog.outInfo("CharCleanup #5: Deleting %u characters...", (uint32)charsToDelete.size());
    for (auto const& guidLow : charsToDelete)
    {
        ObjectGuid guid(HIGHGUID_PLAYER, guidLow);
        Player::DeleteFromDB(guid, 0, false, true);
    }

    if (!bannedNames.empty())
    {
        sLog.outInfo("CharCleanup #6: Reserving banned names...");
        for (auto name : bannedNames)
        {
            WorldDatabase.escape_string(name);
            WorldDatabase.PExecute("INSERT IGNORE INTO `reserved_name` (`name`) VALUES ('%s')", name.c_str());
        }
    }
}
