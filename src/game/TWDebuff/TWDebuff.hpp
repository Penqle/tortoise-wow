#pragma once

#include "rapidjson/rapidjson.h"
#include "rapidjson/document.h"
#include "Objects/Unit.h"
#include "Objects/Item.h"
#include "Objects/Object.h"
#include "SpellEntry.h"
#include "SpellAuras.h"
#include "World.h"
#include "Player.h"

#include <unordered_map>
#include <string>

class TWDebuff
{
private:
	TWDebuff() {}

public:

	static TWDebuff* Instance()
	{
		static TWDebuff instance;
		return &instance;
	}

	void SendNewDebuff(Player* player, SpellAuraHolder* aura, bool add);
	void AddDebuff(Unit* target, SpellAuraHolder* debuff);
	void RemoveDebuff(Unit* targetm, SpellAuraHolder* debuff);
	void RegisterTarget(Player* player, ObjectGuid targetGuid);

private:
	std::unordered_multimap<ObjectGuid, ObjectGuid> m_targetHolder; // Key = target, value = multiple seers who have targeted target
	std::unordered_map<ObjectGuid, ObjectGuid> m_unitTargets; // Key = seer, value = what target
};

#define sTWDebuff TWDebuff::Instance()