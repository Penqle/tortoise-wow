#include "AutoUpdater.hpp"
#include "DatabaseEnv.h"
#include "Config/Config.h"
#include "Auth/Sha1.h"
#include "Util.h"

#include <sstream>
#include <openssl/sha.h>
#include <fstream>
#include <memory>
#include <iterator>
#include <istream>
#include <locale>
#include <iostream>
#include <regex>

using namespace std::filesystem;

DBUpdater::AutoUpdater sAutoUpdater;

namespace DBUpdater
{
    static constexpr const char* UpdateExtension = ".sql";
    static constexpr const char* MigrationTable = "migrations";

    std::unordered_map<std::string, FileMigration> AutoUpdater::LoadFileMigrations(const directory_entry& targetPath) const
    {
        if (!targetPath.exists())
        {
            sLog.outInfo("[DB Auto-Updater] Path doesn\'t contain %s updates, creating..", targetPath.path().filename().string().c_str());
            create_directory(targetPath);
            return {}; //can't contain any updates if it didn't exist so no reason to check.
        }

        std::vector<directory_entry> possibleUpdates;

        for (const auto& fileEntry : directory_iterator{ targetPath })
        {
            if (fileEntry.is_regular_file() && fileEntry.path().extension() == UpdateExtension) // possible update, add.
                possibleUpdates.push_back(fileEntry);
        }

        sLog.outInfo("[DB Auto-Updater] Found %u possible migration%s for %s.", possibleUpdates.size(), possibleUpdates.size() != 1 ? "s" : "",
            targetPath.path().filename().string().c_str());


        std::unordered_map<std::string, FileMigration> fileMigrations;

        for (const auto& update : possibleUpdates)
        {
            FileMigration migration;


            if (CalculateFileHash(update.path().string(), migration.Hash, migration.FileData))
            {
                migration.ModifiedAt = update.last_write_time();
                migration.Name = update.path().stem().string();

                auto hash = migration.Hash;

                fileMigrations.insert({ hash, std::move(migration) });
            }
        }
        return fileMigrations;
    }

    std::unordered_map<std::string, Migration> AutoUpdater::LoadDatabaseMigrations(DatabaseType* targetDatabase) const
    {
        targetDatabase->DirectPExecute("CREATE TABLE IF NOT EXISTS `%s` (\
            `Id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,\
            `Name` VARCHAR(255) NOT NULL DEFAULT \'0\' COLLATE \'utf8_general_ci\',\
            `Hash` VARCHAR(128) NOT NULL DEFAULT \'0\' COLLATE \'utf8_general_ci\',\
            `AppliedAt` DATETIME NOT NULL,\
            PRIMARY KEY(`Id`) USING BTREE\
            )\
            COLLATE = \'utf8_general_ci\'\
            ENGINE = InnoDB\
            ;", MigrationTable);


        std::unordered_map<std::string, Migration> dbMigrations;

        {
            std::unique_ptr<QueryResult> tableResult = std::unique_ptr<QueryResult>{ targetDatabase->PQuery("SELECT `Name`, `Hash` FROM `%s`", MigrationTable) };

            if (!tableResult)
            {
                sLog.outInfo("[DB Auto-Updater] No DB migrations found, table %s is empty.", MigrationTable);
                return {};
            }


            do {
                auto fields = tableResult->Fetch();
                auto hash = fields[1].GetCppString();

                dbMigrations.insert({ hash, Migration{ hash, fields[0].GetCppString() } });
            } while (tableResult->NextRow());
        }

        return dbMigrations;
    }

    bool AutoUpdater::ProcessTargetUpdates(const fs::directory_entry& targetPath, DatabaseType* targetDatabase, bool region) const
    {
        auto fileMigrations = LoadFileMigrations(targetPath);
        auto dbMigrations = LoadDatabaseMigrations(targetDatabase);

        std::vector<FileMigration> updates;

        for (auto& fileMigrationPair : fileMigrations)
        {
            const auto& hash = fileMigrationPair.first;
            const auto& migration = fileMigrationPair.second;

            if (dbMigrations.find(hash) != dbMigrations.end()) // already applied, skip
            {
                if (migration.Name != dbMigrations[hash].Name)
                    sLog.outInfo("[DB Auto-Updater] Migration with hash %s was migrated with name %s but now has name %s.", migration.Hash.c_str(), 
                        dbMigrations[hash].Name.c_str(), migration.Name.c_str());

                dbMigrations.erase(hash);
                continue;
            }

            updates.push_back(std::move(fileMigrationPair.second));
            dbMigrations.erase(hash);
        }


        if (!region)
        {
            for (const auto& dbMigration : dbMigrations)
            {
                auto name = dbMigration.second.Name;
                sLog.outInfo("[DB Auto-Updater] Migration %s with hash %s exists in DB but not as file, old migration?", dbMigration.second.Name.c_str(), dbMigration.first.c_str());
            }
        }

        //sort by modified-at ascending for oldest -> newest updates
        std::sort(updates.begin(), updates.end(), [](const FileMigration& e1, const FileMigration& e2)
        {
            if (e1.ModifiedAt < e2.ModifiedAt)
                return true;

            if (e1.ModifiedAt > e2.ModifiedAt)
                return false;


            //if we're here then both modifiedAt are the same, can happen with Git merges etc. We sort alphabetically by lowest -> oldest first.
            return e1.Name < e2.Name;

        });

        for (const auto& update : updates)
        {
            if (!ExecuteUpdate(update, targetDatabase))
            {
                sLog.outError("[DB Auto-Updater] Migration %s with hash %s failed to apply.", update.Name.c_str(), update.Hash.c_str());
                std::string line;
                std::getline(std::cin, line);
                return false;
           }
        }
        return true;
    }

    bool AutoUpdater::ExecuteUpdate(const FileMigration& migration, DatabaseType* targetDatabase) const
    {
        sLog.outInfo("[DB Auto-Updater] Attempting to execute update %s, hash %s.", migration.Name.c_str(), migration.Hash.c_str());
        sLog.out(LOG_AUTOUPDATER, "[INFO] Attempting to execute update %s, hash %s.", migration.Name.c_str(), migration.Hash.c_str());
        std::string sqlString{ migration.FileData.begin(), migration.FileData.end() };



        if (!targetDatabase->BeginTransaction())
            return false;

      
        
        //Split strings into separate queries because multiline has some unfortunate side-effects. - Jamey

        enum StringStatus
        {
            None,
            SingleQuotes,
            DoubleQuotes
        };

        enum class CommentScope
        {
            None,
            Singleline,
            Multiline
        };

        std::vector<std::string> queries;

        StringStatus stringScope = None;
        CommentScope commentScope = CommentScope::None;
        std::string query = "";

        for (size_t i = 0; i < sqlString.size(); ++i)
        {
            char ch = sqlString[i];

            if (ch == '\r' || ch == '\n')
            {
                if (ch == '\n')
                {
                    query += ' ';
                }

                if (commentScope == CommentScope::Singleline)
                    commentScope = CommentScope::None;

                continue;
            }


            if (ch == '/')
            {
                //Leaving scope
                if (commentScope == CommentScope::Multiline && i > 0 && sqlString[i - 1] == '*')
                {
                    commentScope = CommentScope::None;
                    continue;
                }


                //Entering scope
                if (i < sqlString.size() - 1 && stringScope == None && sqlString[i + 1] == '*')
                {
                    commentScope = CommentScope::Multiline;
                    continue;
                }
            }


            if (commentScope != CommentScope::None)
                continue;


            //Support single and multiline comments.
            if (ch == '-')
            {
                if (i < sqlString.size() - 1 && stringScope == None && sqlString[i + 1] == '-')
                {
                    commentScope = CommentScope::Singleline;
                    continue;
                }
            }



            //If we find a ' or a " make sure to note down we're in a string and check for escape characters.
            //However, some text queries (ab)use no usage of escape characters and instead take advantage of using ' in " strings and " in ' strings.
            if (ch == '\'')
            {                
                if (stringScope == None)
                {
                    //Simple, just enter the string.
                    stringScope = SingleQuotes;
                }
                else if (stringScope == SingleQuotes)
                {
                    //Check if we're dealing with an escape, if not then leave the string scope.
                    //We can't be in SingleQuotes scope without prior characters so we can safely backtrack.
                    //This can fail if we have things like \\' but at that point the writers need to ask questions.
                    char prevChar = sqlString[i - 1];
                    if (prevChar != '\\')
                        stringScope = None;
                }
                else if (stringScope == DoubleQuotes)
                {
                    //Intentionally left empty. These types of quotes should not take us out of string scope.
                }
            }

            if (ch == '\"')
            {
                //Same as ' except inverted.
                if (stringScope == None)
                {
                    stringScope = DoubleQuotes;
                }
                else if (stringScope == DoubleQuotes)
                {
                    char prevChar = sqlString[i - 1];
                    if (prevChar != '\\')
                        stringScope = None;
                }
                else if (stringScope == SingleQuotes)
                {
                    //..
                }
            }

            query += ch;

            //Only finish this query if we're not inside a string.
            if (ch == ';' && stringScope == None)
            {
                queries.emplace_back(std::move(query));
                query = ""; // In practice all moved-from objects are valid & empty but to be standard compliant we re-init.
            }
        }

        //Add in-buffer query only if not empty.
        if (query.find_first_not_of("\t\r\n ") != std::string::npos)
            queries.emplace_back(std::move(query));

        if (stringScope != None) // mid-string query at the end of SQL, bad news.
        {
            sLog.out(LOG_AUTOUPDATER, "[FAIL] Failed to execute update %s, hash %s.", migration.Name.c_str(), migration.Hash.c_str());
            return false;
        }

        for (const auto& query : queries)
        {
            targetDatabase->Execute(query.c_str());
        }

        targetDatabase->PExecute("INSERT INTO `%s` (`Name`, `Hash`, `AppliedAt`) VALUES (\'%s\', \'%s\', NOW());", MigrationTable, migration.Name.c_str(), migration.Hash.c_str());

        bool res = targetDatabase->CommitTransactionDirect();

        if (res)
        {
            sLog.out(LOG_AUTOUPDATER, "[SUCCESS] Executed update %s, hash %s.", migration.Name.c_str(), migration.Hash.c_str());
        }
        else
        {
            sLog.out(LOG_AUTOUPDATER, "[FAIL] Failed to execute update %s, hash %s.", migration.Name.c_str(), migration.Hash.c_str());
        }
        return res;
    }

    bool AutoUpdater::CalculateFileHash(const std::string& fileName, std::string& hexResult, std::optional<std::reference_wrapper<std::vector<uint8>>> fileData) const
    {
        std::basic_ifstream<char, std::char_traits<char>> fileStream{ fileName, std::ios::binary };

        //char_traits isn't specialized for uint8_t for some reason so get_faucet std::locale won't work if we don't imbue first.
       // fileStream.imbue(std::locale{ fileStream.getloc(), new std::codecvt<uint8, char, std::mbstate_t> });

        if (!fileStream)
        {
            sLog.outError("[DB Auto-Updater] Can\'t open migration file %s.", fileName.c_str());
            return false;
        }
        
        std::vector<char> binCharData{ std::istreambuf_iterator<char>(fileStream), std::istreambuf_iterator<char>() };
        std::vector<uint8> binData{ binCharData.begin(), binCharData.end() };

        Sha1Hash hash;
        hash.Initialize();
        if (binData.size() > 0)
            hash.UpdateData(&binData[0], binData.size());
        hash.Finalize();

        std::vector<uint8> digest{ hash.GetDigest(), hash.GetDigest() + hash.GetLength() };

        hexResult = ByteArrayToHexStr(&digest[0], digest.size());

        if (fileData.has_value())
            fileData.value().get() = std::move(binData);

        return true;
    }

    bool AutoUpdater::ProcessUpdates()
    {
        if (!sConfig.GetBoolDefault("Database.AutoUpdate.Enabled", true))
        {
            sLog.outInfo("[DB Auto-Updater] Disabled.");
            return true;
        }

        auto pathString = sConfig.GetStringDefault("Database.AutoUpdate.Path", "");
        auto authUpdateFolder = sConfig.GetStringDefault("Database.AutoUpdate.AuthUpdateName", "Logon");
        auto charUpdateFolder = sConfig.GetStringDefault("Database.AutoUpdate.CharUpdateName", "Char");
        auto worldUpdateFolder = sConfig.GetStringDefault("Database.AutoUpdate.WorldUpdateName", "World");
        path folderPath{ pathString };


        directory_entry logonUpdatePath{ folderPath / authUpdateFolder };
        directory_entry charUpdatePath{ folderPath / charUpdateFolder };
        directory_entry worldUpdatePath{ folderPath / worldUpdateFolder };

        if (!ProcessTargetUpdates(logonUpdatePath, &LoginDatabase, false))
            return false;

        if (!ProcessTargetUpdates(charUpdatePath, &CharacterDatabase, false))
            return false;

        if (!ProcessTargetUpdates(worldUpdatePath, &WorldDatabase, false))
            return false;


        
        if (sConfig.GetBoolDefault("NiHao", false))
        {

            sLog.out(LOG_AUTOUPDATER, "Starting CN-only Migrations.");

            directory_entry cnLogonPath { logonUpdatePath.path() / "cn" };
            directory_entry cnCharPath{ charUpdatePath.path() / "cn" };
            directory_entry cnWorldPath{ worldUpdatePath.path() / "cn" };


            if (!ProcessTargetUpdates(cnLogonPath, &LoginDatabase, true))
                return false;

            if (!ProcessTargetUpdates(cnCharPath, &CharacterDatabase, true))
                return false;

            if (!ProcessTargetUpdates(cnWorldPath, &WorldDatabase, true))
                return false;
        }

        return true;

    }
}