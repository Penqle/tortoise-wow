#include "TransferController.hpp"

#include "HttpApi/Authorizers/ApiKeyAuthorizer.hpp"

#include "World.h"
#include "ObjectMgr.h"
#include "Mail.h"
#include "AccountMgr.h"

using namespace httplib;

namespace HttpApi
{
    TransferController::TransferController(std::string key)
    {
        _authorizer = std::make_unique<ApiKeyAuthorizer>(key.c_str());
    }

    std::string DumpReturnToString(DumpReturn dumpReturn)
    {
        switch (dumpReturn)
        {
            case DUMP_SUCCESS:
                return "Dump success";
            case DUMP_FILE_OPEN_ERROR:
                return "Error with file open";
            case DUMP_TOO_MANY_CHARS:
                return "Too many characters on import";
            case DUMP_UNEXPECTED_END:
                return "Unexpeced end on the import file";
            case DUMP_FILE_BROKEN:
                return "Dump file broken";
        }
        return "";
    }

    //This is part 1 of transfer procedure, will EXTRACT char data.
    void InitTransferAction(const Request& req, Response& resp, const ContentReader& reader)
    {
        if (!req.has_header("Content-Type"))
            return;

        if (req.get_header_value("Content-Type") != "application/json")
            return;


        std::string body;
        reader([&](const char* data, size_t data_length) {
            body.append(data, data_length);
            return true;
            });

        sLog.out(LOG_API, "Init transfer started.");

        rapidjson::Document d;
        d.Parse(body.c_str());

        if (d.HasParseError())
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for init Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        if (!d.IsObject() || !d.HasMember("lowGuid"))
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for init Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        uint32 lowGuid = d["lowGuid"].GetUint();

        if (!sObjectMgr.GetPlayerDataByGUID(lowGuid))
        {
            resp.set_content("Bad Account.", "text/plain");
            sLog.out(LOG_API, "Init transfer could not find player by supplied GUID %u, aborting.", lowGuid);
            return;
        }

        auto playerData = sObjectMgr.GetPlayerDataByGUID(lowGuid);


        auto accountData = sAccountMgr.GetAccountData(playerData->uiAccount);

        if (!accountData)
        {
            resp.set_content("Bad Account.", "text/plain");
            sLog.out(LOG_API, "Init transfer could not find player account by supplied GUID %u , acc ID %u, aborting.", lowGuid, playerData->uiAccount);
            return;
        }

        //1st of Oct, 2023 for now.
        constexpr uint64 CreationCutoffTimestamp = 1696122966;

        if (accountData->CreatedAt > CreationCutoffTimestamp)
        {
            resp.set_content("Account too new.", "text/plain");
            return;
        }



        //Convert shellcoin current price, remove the shellcoins from the player and compensate in gold.

        auto result = std::unique_ptr<QueryResult>(CharacterDatabase.PQuery("SELECT SUM(count) FROM item_instance WHERE itemEntry = 81118 AND owner_guid = %u GROUP BY owner_guid",
            lowGuid));


        if (result)
        {
            auto shellcoinCount = (*result)[0].GetUInt32();

            auto extraMoney = sObjectMgr.GetShellCoinSellPrice() * shellcoinCount;

            CharacterDatabase.DirectPExecute("UPDATE characters SET money = money + %u WHERE guid = %u", extraMoney, lowGuid);
            CharacterDatabase.DirectPExecute("DELETE FROM item_instance WHERE itemEntry = 81118 AND owner_guid = %u", lowGuid);
        }

        //Add fashion coins because transferred chars lose their xmog on transfer.

        result = std::unique_ptr<QueryResult>(CharacterDatabase.PQuery("SELECT COUNT(*) FROM item_instance WHERE transmogrifyId != 0 AND owner_guid = %u", lowGuid));

        if (result)
        {
            uint32 count = result->Fetch()[0].GetUInt32();
            if (count > 0)
            {
                MailDraft draft;

                draft.SetSubjectAndBody("Fashion coins", "Fashion coins");

                if (Item* item = Item::CreateItem(51217, count, 0))
                {
                    item->SaveToDB(true);
                    draft.AddItem(item);
                }

                MailSender sender(MAIL_NORMAL, (uint32)0, MAIL_STATIONERY_GM);

                draft.SendMailTo(MailReceiver(nullptr, lowGuid), sender, MAIL_CHECK_MASK_NONE, 0, 0, true);
            }
        }

        std::string pDumpData;
        PlayerDumpWriter().ReturnDump(pDumpData, lowGuid);

        rapidjson::Document retDoc;
        retDoc.SetObject();

        rapidjson::Value transferStatusValue{ true };
        rapidjson::Value realmId{ realmID };
        retDoc.AddMember("transferStatus", transferStatusValue, retDoc.GetAllocator());

        auto dataRef = rapidjson::StringRef(pDumpData.c_str());

        retDoc.AddMember("data", dataRef, retDoc.GetAllocator());
        retDoc.AddMember("realmId", realmID, retDoc.GetAllocator());

        rapidjson::StringBuffer buffer;
        rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

        retDoc.Accept(writer);
        resp.set_content(buffer.GetString(), "application/json");
    }

    std::unordered_map<std::string, time_t> transferredNames;


    //This is part 2 of the transfer procedure. This will IMPORT the pdump data and call the necessary import functions.
    //This should be done on the world thread on the OTHER server where extractions take place to do a successful transfer.
    void ProceedTransferAction(const Request& req, Response& resp, const ContentReader& reader)
    {
        if (!req.has_header("Content-Type"))
            return;

        if (req.get_header_value("Content-Type") != "application/json")
            return;


        std::string body;
        reader([&](const char* data, size_t data_length) {
            body.append(data, data_length);
        return true;
            });

        rapidjson::Document d;
        d.Parse(body.c_str());


        if (d.HasParseError())
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for Proceed Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        if (!d.IsObject())
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for Proceed Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        if (!d.HasMember("data") || !d.HasMember("targetAccountId") || !d.HasMember("source_guid"))
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for Proceed Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        std::string pdumpData = d["data"].GetString();
        uint32 accountId = d["targetAccountId"].GetUint();
        uint32 oldGuidLow = d["source_guid"].GetUint();


        sLog.out(LOG_API, "Accepting transfer for targetAccount:%u\nData:%s", accountId, body.c_str());

        uint32 guid = 0;
        std::string charName = "";
        
        std::shared_ptr<uint32> guidPtr = std::make_shared<uint32>(0);
        std::function<void(bool)> transCallback = [guidPtr, accountId, oldGuidLow](bool transSuccess)
        {
            if (transSuccess)
            {
                //only set char active if transaction for migration transfer succeeded.
                CharacterDatabase.PExecute("UPDATE `characters` SET `active` = 1 WHERE `guid` = %u", *guidPtr);
                CharacterDatabase.PExecute("UPDATE `characters` SET `customFlags` = `customFlags` | 0x20 WHERE `guid` = %u", *guidPtr); // add WAS_TRANSFERRED custom flag to take away items after login.

                //Set all purchase logs to new char guid to fix HC not getting proper refunds.
                if (*guidPtr && oldGuidLow)               
                    LoginDatabase.PExecute("UPDATE shop_logs SET guid = %u WHERE guid = %u", *guidPtr, oldGuidLow);
            }
            else
                sLog.out(LOG_API, "FAILED to run transaction for account ID %u", accountId);
        };

        auto res = PlayerDumpReader().LoadStringDump(pdumpData, accountId, charName, guid, &transCallback);
        sLog.out(LOG_API, "Result of transfer for targetAccount:%u\nres:%s.\nnewGuid:%u\nplayername:%s", accountId, DumpReturnToString(res).c_str(), guid, charName.c_str());

        if (res == DumpReturn::DUMP_SUCCESS) 
        {
            *guidPtr = guid;

            if (!charName.empty() && transferredNames.find(charName) != transferredNames.end())
            {
                auto now = time(nullptr);
                if (now - transferredNames[charName] < 60)
                {
                    sLog.out(LOG_API, "ALREADY IMPORTED CHAR. Aborting. AccountId:%u, newGuid:%u,playername:%s", accountId, guid, charName.c_str());
                    CharacterDatabase.PExecute("UPDATE `characters` SET `account` = 0 WHERE `guid` = %u", guid);
                }
            }
            else
                transferredNames[charName] = time(nullptr);

            sLog.out(LOG_API, "Sucessfully accepted transfer import. AccountId:%u, newGuid:%u,playername:%s", accountId, guid, charName.c_str());
        }
        else
            sLog.out(LOG_API, "FAILED dump import.Account:%u\nres:%u.\newGuid:%u\nplayername:%s\ndump result:%s", accountId, (uint32)res, guid, charName.c_str(), DumpReturnToString(res)
            .c_str());

        rapidjson::Document retDoc;
        retDoc.SetObject();

        rapidjson::Value transferResult{ res };
        retDoc.AddMember("transferResult", transferResult, retDoc.GetAllocator());

        rapidjson::StringBuffer buffer;
        rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

        
        retDoc.Accept(writer);
        resp.set_content(buffer.GetString(), "application/json");
    }
}