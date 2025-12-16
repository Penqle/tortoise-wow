#include "DynamicVisibilityMgr.h"

DynamicVisibilityMgr sDynamicVisMgr;

void DynamicVisibilityMgr::LoadFromDB(bool reload)
{
    std::unique_ptr<QueryResult> result = std::unique_ptr<QueryResult>(WorldDatabase.Query("SELECT * FROM `dynamic_visibility_template`"));

    _areaSettings.clear();

    if (!result)
        return;

    uint32 count = 0;
    auto fields = result->Fetch();
    do {
        VisibilitySettings settings
        {
            fields[0].GetUInt32(),
            fields[1].GetUInt32(),
            fields[2].GetUInt32(),
            fields[3].GetUInt32(),
            fields[4].GetUInt32()
        };

        _areaSettings.insert({ settings.AreaId, settings });
        ++count;

    } while (result->NextRow());

    //dont set all dynamic areas to max vis on reload as it might blow up in our faces. Only new ones
    InitVisibilities(reload);

    sLog.outString("Loaded %u dynamic visibility templates.", count);
}

void DynamicVisibilityMgr::InitVisibilities(bool reload)
{
    for (auto& visSettings : _areaSettings)
    {
        if (reload)
        {
            auto itr = _currentVisibilities.find(visSettings.first);
            if (itr == _currentVisibilities.end())
                _currentVisibilities[visSettings.first] = visSettings.second.MaxVisibilityDistance;
        }
        else
            _currentVisibilities[visSettings.first] = visSettings.second.MaxVisibilityDistance;
        
    }
}

void DynamicVisibilityMgr::UpdateVisibility(uint32 diff)
{
    for (auto& vis : _currentVisibilities)
    {
        auto settingsItr = _areaSettings.find(vis.first);
        if (settingsItr == _areaSettings.end())
            continue;

        if ((diff > settingsItr->second.DecreaseTickDiff && settingsItr->second.MinVisibilityDistance < vis.second) || settingsItr->second.MaxVisibilityDistance < vis.second)
            --vis.second;

        if ((diff < settingsItr->second.IncreaseTickDiff && settingsItr->second.MaxVisibilityDistance > vis.second) || settingsItr->second.MinVisibilityDistance > vis.second)
            ++vis.second;
    }
}

std::optional<uint32> DynamicVisibilityMgr::GetDynamicVisibility(uint32 areaId)
{
    if (auto itr = _currentVisibilities.find(areaId); itr != _currentVisibilities.end())
        return itr->second;

    return {};
}

