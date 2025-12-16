#pragma once
#include <unordered_map>
#include <memory>
#include <optional>

class MountManager
{
public:

	void LoadFromDB()
	{
		m_MountSpells.clear();
		auto result = std::unique_ptr<QueryResult>{ WorldDatabase.Query("SELECT itemId, spellId FROM collection_mount") };
		if (!result)
			return;

		do {
			auto fields = result->Fetch();
			m_MountSpells[fields[0].GetUInt32()] = fields[1].GetUInt32();

		} while (result->NextRow());

	}

	std::optional<uint32> GetMountSpellId(uint32 itemId) const
	{
		if (auto itr = m_MountSpells.find(itemId); itr != m_MountSpells.end())
			return { itr->second };
		return {};
	}


private:
	std::unordered_map<uint32, uint32> m_MountSpells;
};

extern MountManager sMountMgr;