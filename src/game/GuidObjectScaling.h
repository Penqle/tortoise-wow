#pragma once

#include "Database/DatabaseEnv.h"

#include <unordered_map>
#include <string>
#include <type_traits>
#include <memory>

class GuidObjectScaling
{
public:

    void LoadFromDB()
    {
        auto ptr = std::unique_ptr<QueryResult>{ WorldDatabase.Query("SELECT `fullGuid`, `scale` FROM `object_scaling`") };

        if (!ptr)
            return;

        do {
            auto fields = ptr->Fetch();
            m_guidScales[fields[0].GetUInt64()] = fields[1].GetFloat();
        } while (ptr->NextRow());
    }
    
    template <typename T>
    typename std::enable_if<std::is_same<T, float>::value, T>::type GetScale(uint64 fullGuid, T scale = DEFAULT_OBJECT_SCALE)
    {
        auto itr = m_guidScales.find(fullGuid);

        if (itr != m_guidScales.end())
            return itr->second;
        return scale;
    }

    void AddOrEdit(uint64 fullGuid, float scale)
    {
        m_guidScales[fullGuid] = scale;
        sWorld.ExecuteUpdate("REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (%llu, %f)", fullGuid, scale);
    }

    void Remove(uint64 fullGuid)
    {
        auto ret = m_guidScales.erase(fullGuid);
        if (ret > 0)
            sWorld.ExecuteUpdate("DELETE FROM `object_scaling` WHERE `fullGuid` = %llu", fullGuid);
    }


    GuidObjectScaling() = default;
private:

    std::unordered_map<uint64, float> m_guidScales;
};

extern GuidObjectScaling sGuidObjectScaling;