#pragma once
#include <unordered_map>
#include <memory>
#include <optional>

class CompanionManager
{
public:

	void LoadFromDB()
	{
		m_companionSpells.clear();
		auto result = std::unique_ptr<QueryResult>{ WorldDatabase.Query("SELECT itemId, spellId FROM collection_pet") };
		if (!result)
			return;

		do {
			auto fields = result->Fetch();
			m_companionSpells[fields[0].GetUInt32()] = fields[1].GetUInt32();

		} while (result->NextRow());

	}

	std::optional<uint32> GetCompanionSpellId(uint32 itemId) const
	{
		if (auto itr = m_companionSpells.find(itemId); itr != m_companionSpells.end())
			return { itr->second };
		return {};
	}


private:
	std::unordered_map<uint32, uint32> m_companionSpells;
};

extern CompanionManager sCompanionMgr;