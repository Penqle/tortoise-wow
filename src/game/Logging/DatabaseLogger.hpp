#pragma once
#include <string_view>

#include "ObjectGuid.h"

#define DEFINE_ENUM_TYPE(pre, name) constexpr std::string_view pre##name = #name;


namespace LogLoot
{

    //Have to do this to support enum types in SQL tables.
    DEFINE_ENUM_TYPE(Source, Creature);
    DEFINE_ENUM_TYPE(Source, GameObject);
    DEFINE_ENUM_TYPE(Source, Item);

    DEFINE_ENUM_TYPE(Type, Kill);
    DEFINE_ENUM_TYPE(Type, Roll);
    DEFINE_ENUM_TYPE(Type, Profession);
    DEFINE_ENUM_TYPE(Type, Container);

    static std::string_view SourceType(ObjectGuid guid)
    {
        switch (guid.GetHigh())
        {
        case HIGHGUID_ITEM:
            return SourceItem;

        case HIGHGUID_GAMEOBJECT:
            return SourceGameObject;

        default :
            return SourceCreature;
        }
    }

};

struct LootLogEntry
{
    uint32 receiverGuid = 0;
    std::string receiverName = "";
    uint32 receiverAccountId = 0;
    std::string receiverIp = "0.0.0.0";
    std::string_view sourceType = LogLoot::SourceCreature; 
    uint32 sourceGuid = 0;
    uint32 sourceEntry = 0;
    uint32 money = 0;
    uint32 itemEntry = 0;
    uint32 itemCount = 0;
    std::string_view lootType = LogLoot::TypeKill;
};

namespace LogCharAction
{
    DEFINE_ENUM_TYPE(Action, Login);
    DEFINE_ENUM_TYPE(Action, Logout);
    DEFINE_ENUM_TYPE(Action, Create);
    DEFINE_ENUM_TYPE(Action, Delete);
    DEFINE_ENUM_TYPE(Action, Rename);
}

struct CharActionRenameEntry
{
    uint32 actionId = 0;
    std::string oldName;
    std::string newName;
};


struct CharActionLogEntry
{
    uint32 charGuid = 0;
    uint32 accountId = 0;
    std::string_view action = LogCharAction::ActionLogin;
    std::optional<CharActionRenameEntry> renameInfo;
};


class DatabaseLogger
{
public:

    void LogLoot(const LootLogEntry& log);
    void LogCharAction(const CharActionLogEntry& log);

    uint32 _maxCharActionId = 0;
};

extern DatabaseLogger sDBLogger;