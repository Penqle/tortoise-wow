
#pragma once
#include <unordered_map>
#include <memory>
#include <optional>

class ToyManager
{
public:

	void LoadFromDB()
	{
		m_ToySpells.clear();
		auto result = std::unique_ptr<QueryResult>{ WorldDatabase.Query("SELECT itemId, spellId FROM collection_toy") };
		if (!result)
			return;

		do {
			auto fields = result->Fetch();
			m_ToySpells[fields[0].GetUInt32()] = fields[1].GetUInt32();

		} while (result->NextRow());

	}

	std::optional<uint32> GetToySpellId(uint32 itemId) const
	{
		if (auto itr = m_ToySpells.find(itemId); itr != m_ToySpells.end())
			return { itr->second };
		return {};
	}


private:
	std::unordered_map<uint32, uint32> m_ToySpells;
};

extern ToyManager sToyMgr;
extern ToyManager sToyMgr;