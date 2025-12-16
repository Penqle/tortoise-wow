#include "TWDebuff.hpp"

#include "ObjectAccessor.h"

#include "rapidjson/writer.h"

#include "rapidjson/stringbuffer.h"

void TWDebuff::SendNewDebuff(Player* player, SpellAuraHolder* aura, bool add)
{
	if (!aura || !player)
		return;

	auto spellId = aura->GetSpellProto()->Id;
	SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spellId);
	if (!spellInfo)
		return;

	SpellIconEntry const* spellIconEntry = sSpellIconStore.LookupEntry(spellInfo->SpellIconID);

	if (!spellIconEntry)
		return;

	rapidjson::Document d;
	d.SetObject();
	rapidjson::Value dataObject{ rapidjson::kObjectType };

	dataObject.AddMember("id", spellId, d.GetAllocator());

	std::string textureName(spellIconEntry->TextureFilename);
	auto ref = rapidjson::StringRef(textureName.c_str());
	auto nameRef = rapidjson::StringRef(spellInfo->SpellName[sWorld.GetDefaultDbcLocale()].c_str());
	auto tooltipRef = rapidjson::StringRef(spellInfo->ParsedTooltip.c_str());
	if (add)
	{

		dataObject.AddMember("texture", ref, d.GetAllocator());
		dataObject.AddMember("stackAmount", aura->GetStackAmount(), d.GetAllocator());
		dataObject.AddMember("dispel", spellInfo->Dispel, d.GetAllocator());
		dataObject.AddMember("name", nameRef, d.GetAllocator());
		dataObject.AddMember("tooltip", tooltipRef, d.GetAllocator());


		d.AddMember("opcode", "ADD", d.GetAllocator());
		d.AddMember("data", dataObject, d.GetAllocator());

	}
	else
	{
		//remove, only send id
		d.AddMember("opcode", "REMOVE", d.GetAllocator());
		d.AddMember("data", dataObject, d.GetAllocator());
	}
	
	rapidjson::StringBuffer buffer;
	rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);
	d.Accept(writer);

	player->SendAddonMessage("TW_Debuff", buffer.GetString());

}

void TWDebuff::AddDebuff(Unit* target, SpellAuraHolder* debuff)
{
	//notify all seers of target that a new debuff has been applied.
	auto seerItrPair = m_targetHolder.equal_range(target->GetObjectGuid());

	auto it = seerItrPair.first;
	while (it != seerItrPair.second)
	{
		auto player = sObjectAccessor.FindPlayer(it->second);
		if (player)
			SendNewDebuff(player, debuff, true);
		++it;
	}
}

void TWDebuff::RegisterTarget(Player* seer, ObjectGuid targetGuid)
{
	/*const auto seerGuid = seer->GetObjectGuid();

	auto oldTargetItr = m_unitTargets.find(seerGuid);

	if (targetGuid.IsEmpty())
	{
		if (oldTargetItr != m_unitTargets.end())
			m_unitTargets.erase(oldTargetItr);
		return;
	}

	if (oldTargetItr != m_unitTargets.end())
	{

		auto targetHolderItrPair = m_targetHolder.equal_range(oldTargetItr->second);
		if (targetHolderItrPair.first != targetHolderItrPair.second)
		{
			auto it = targetHolderItrPair.first;
			while (it != targetHolderItrPair.second)
			{
				if (it->second == seerGuid)
				{
					m_targetHolder.erase(it);
					break;
				}
				++it;
			}
		}
	}

	m_unitTargets[seerGuid] = targetGuid;
	m_targetHolder.insert({ targetGuid, seerGuid });

	auto target = ObjectAccessor::GetUnit(*seer, targetGuid);
	if (target)
	{
		auto customDebuffs = target->GetCustomDebuffs();
		if (customDebuffs)
		{
			for (const auto& holder : *customDebuffs)
			{
				SendNewDebuff(seer, holder.second, true);
			}
		}
	}*/
}

void TWDebuff::RemoveDebuff(Unit* target, SpellAuraHolder* debuff)
{
	//notify all seers of target that a new debuff has been removed.
	auto seerItrPair = m_targetHolder.equal_range(target->GetObjectGuid());

	auto it = seerItrPair.first;
	while (it != seerItrPair.second)
	{
		auto player = sObjectAccessor.FindPlayer(it->second);
		if (player)
			SendNewDebuff(player, debuff, false);
		++it;
	}
}