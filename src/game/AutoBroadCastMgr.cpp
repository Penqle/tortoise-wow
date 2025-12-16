#include "Database/DatabaseEnv.h"
#include "World.h"
#include "Util.h"
#include "Log.h"
#include "Policies/SingletonImp.h"

#include "AutoBroadCastMgr.h"

AutoBroadCastMgr sAutoBroadCastMgr;

AutoBroadCastMgr::AutoBroadCastMgr()
{
    _current = 0;
}

AutoBroadCastMgr::~AutoBroadCastMgr()
{
    entries.clear();
}

void AutoBroadCastMgr::Load()
{
    entries.clear();
	_constInterval = sWorld.getConfig(CONFIG_UINT32_AUTOBROADCAST_INTERVAL);
    std::unique_ptr<QueryResult> result(WorldDatabase.Query("SELECT `string_id` FROM `autobroadcast`"));

    if (!result)
    {
        return;
    }

    uint32 count = 0;

    Field *fields;
    do
    {
        AutoBroadCastEntry e;
        fields = result->Fetch();

        e.stringId = fields[0].GetInt32();

        entries.push_back(e);
        ++count;
    }
    while (result->NextRow());
}

void AutoBroadCastMgr::Update(uint32 diff)
{
    if (entries.empty())
        return;

    _current += diff;

    if (_current >= _constInterval)
    {
        AutoBroadCastEntry entry = SelectRandomContainerElement(entries);
        sWorld.SendWorldText(entry.stringId);
        _current = 0;
    }
}
