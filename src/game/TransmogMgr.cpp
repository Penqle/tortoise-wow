/*
 * Copyright (C) 2020-2021 Turtle WoW
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "TransmogMgr.h"
#include "World.h"
#include "ObjectMgr.h"
#include "ObjectGuid.h"
#include "Creature.h"
#include "Object.h"
#include "PoolManager.h"
#include "Language.h"
#include "Log.h"
#include "MapManager.h"
#include "BattleGroundMgr.h"
#include "MassMailMgr.h"
#include "SpellMgr.h"
#include "Policies/SingletonImp.h"
#include "Player.h"
#include "Chat.h"
#include "ItemPrototype.h"

#define STUPID_RESTRICTIONS false
#define TRANSMOG_CURRENCY 51217

TransmogMgr::TransmogMgr(Player* owner) : _owner(owner)
{
	prefix = "TW_TRANSMOG";
}

void TransmogMgr::LoadFromDB(QueryResult* result)
{
    _transmogs.clear();

    if (!result)
        return;

    do
    {

        Field* fields = result->Fetch();
        uint32 itemId = fields[0].GetUInt32();

        _transmogs.insert(itemId);

    } while (result->NextRow());
}

void TransmogMgr::HandleAddonMessages(std::string msg)
{
	if (strstr(msg.c_str(), "DoTransmog:"))
	{
		ApplyTransmog(msg);
		return;
	}

	if (strstr(msg.c_str(), "ResetTransmog:"))
	{
		Tokenizer params(msg, ':', 3);
		if (params.size() != 3)
		{
			// wrong syntax
			_owner->SendAddonMessage(prefix, "ResetTransmog:Error:WrongSyntax(" + msg + ")");
			return;
		}

		uint8 slot = atoi(params[1]);
		uint32 slotId = atoi(params[2]);

		std::string result;

		result = "ResetResult:" + std::to_string(slot) + ":" + 
			std::to_string(slotId) + ":" + 
			std::to_string(ApplyTransmog(slot, 0, 0));

		_owner->SendAddonMessage(prefix, result);

		return;
	}
	
	if (strstr(msg.c_str(), "GetAvailableTransmogsItemIDs:"))
	{

		Tokenizer params(msg, ':', 4);
		if (params.size() != 4)
		{
			// wrong syntax
			_owner->SendAddonMessage(prefix, "GetAvailableTransmogsItemIDs:Error:WrongSyntax(" + msg + ")");
			return;
		}

		uint8 InventorySlotId = atoi(params[1]);
		uint8 invType = atoi(params[2]);
		uint32 destItemId = atoi(params[3]);

		SendAvailableTransmogs(InventorySlotId, invType, destItemId);
		return;
	}
	
	if (strstr(msg.c_str(), "GetTransmogStatus"))
	{
		std::string status = "TransmogStatus:" + GetTransmogStatus();
		_owner->SendAddonMessage(prefix, status);
		return;
	}

	if (strstr(msg.c_str(), "GetSetsStatus:"))
	{
		if (STUPID_RESTRICTIONS)
			_owner->SendAddonMessage(prefix, "SetsStatus:0");
		else
			_owner->SendAddonMessage(prefix, "SetsStatus:1");
		
		return;

	}


	if (strstr(msg.c_str(), "DoChangeGlow:")) // not used
	{
		std::string aText;
		aText = "TW_TRANSMOG ChangeGlowResult:";

		std::string delimiter = ":";
		std::string command = msg.substr(0, msg.find(delimiter));

		msg = msg.substr(command.length() + 1, msg.length());
		std::string slotStr = msg.substr(0, msg.find(delimiter));

		msg = msg.substr(slotStr.length() + 1, msg.length());
		std::string glowIdStr = msg.substr(0, msg.find(delimiter));

		// 803 fiery
		// 1900 crusader
		// 2505 - white healing power
		// 2504 - purple spellpower
		// 1898 - lifestealing
		// 912 - demonslay
		// 1894 - icy
		// 1897 - striking 5
		// 853 - beastslaying
		// 1899 - unholy
		// 2564 - agility green
		// 2568 - intelect yellow ?
		// 2567 - spirit yellow ?
		// 2563 - str

		/*mangos > item->GetSlot() 15
			VisibleBase 440
			slot 0
			item->GetEnchantmentId(slot) 803*/
			// GetSlot - mh 15, oh 16

		try
		{
			uint32 slot = std::stoi(slotStr);
			uint32 glowId = std::stoi(glowIdStr);
			int VisibleBase = PLAYER_VISIBLE_ITEM_1_0 + (slot * MAX_VISIBLE_ITEM_OFFSET);
			_owner->SetUInt32Value(VisibleBase + 1 + 0, glowId);
			sLog.outInfo("slot = %u, glowId = %u", slot, glowId);
			//aText += slotStr + ":" + slotId + ":" + std::to_string(_player->ApplyTransmogrifications(slot, 0, 0));
		}
		catch (...)
		{
			//aText += slotStr + ":" + slotId + ":10"; // stoi failed
		}

		return;
	}
}

void TransmogMgr::ApplyTransmog(std::string msg)
{
	Tokenizer params(msg, ':', 4);
	if (params.size() != 4)
	{
		// wrong syntax
		_owner->SendAddonMessage(prefix, "DoTransmog:Error:WrongSyntax(" + msg + ")");
		return;
	}
	uint8 slot = atoi(params[1]);
	uint32 itemID = atoi(params[2]);
	uint32 slotId = atoi(params[3]);

	std::string result;

	result = "TransmogResult:" + std::to_string(slot) + ":" +
		std::to_string(slotId) + ":" + 
		std::to_string(ApplyTransmog(slot, itemID, slotId));

	_owner->SendAddonMessage(prefix, result);

	return;
}
uint8 TransmogMgr::ApplyTransmog(uint8 slot, uint32 sourceItemID, uint32 slotId)
{
	Item* destItem = _owner->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);

	if (!destItem)
		return 1;

	ItemPrototype const* destItemProto = destItem->GetProto();

	if (!destItem->GetProto() || !destItemProto)
		return 1; // no dest item

	uint32 newItemId = 0;

	if (sourceItemID)
	{
		if (_owner->GetItemCount(TRANSMOG_CURRENCY) == 0)
			return 11; // no coin

		if (slot > EQUIPMENT_SLOT_END)
			return 2; // bad slot

		if (!HasTransmog(sourceItemID))
			return 3; // transmog not learned

		ItemPrototype const* srcItemProto = sObjectMgr.GetItemPrototype(sourceItemID);

		if (!srcItemProto)
			return 4; // no source item proto

		// todo transmog rules check HERE
		//std::string possibleTransmogs = _collectionMgr->GetAvailableTransmogs(slotId, destItem->GetProto()->InventoryType, destItem->GetProto()->ItemId) + ":";
		//std::vector<uint32>
		//if (!strstr(possibleTransmogs.c_str(), std::to_string(sourceItemID).c_str()))
			//return 5; // source not valid for destination


		// check if source is actually allowed on dest
		bool allowed = false;
		if (STUPID_RESTRICTIONS) {
			// plate = plate & mail
			// mail = plate & mail & leather
			// leather = mail & leather & cloth
			// cloth = leather * cloth
			if (srcItemProto->Class == ITEM_CLASS_ARMOR && destItemProto->Class == ITEM_CLASS_ARMOR
				&& srcItemProto->InventoryType == destItemProto->InventoryType)
			{
				if (srcItemProto->SubClass == ITEM_SUBCLASS_ARMOR_CLOTH)
					if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_CLOTH + 1)
						allowed = true;
				if (srcItemProto->SubClass == ITEM_SUBCLASS_ARMOR_LEATHER)
					if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_LEATHER - 1 || destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_LEATHER + 1)
						allowed = true;
				if (srcItemProto->SubClass == ITEM_SUBCLASS_ARMOR_MAIL)
					if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_MAIL - 1 || destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_MAIL + 1)
						allowed = true;
				if (srcItemProto->SubClass == ITEM_SUBCLASS_ARMOR_PLATE)
					if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_PLATE - 1)
						allowed = true;
			}
			if (srcItemProto->Class == destItemProto->Class)
				if (srcItemProto->SubClass == destItemProto->SubClass)
					if (srcItemProto->InventoryType == destItemProto->InventoryType)
						allowed = true;
		}
		else
		{
			if (srcItemProto->Class == ITEM_CLASS_WEAPON && destItemProto->Class == ITEM_CLASS_WEAPON) {

				if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_FIST && srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_FIST)
				{
					if (destItemProto->InventoryType == INVTYPE_WEAPON || destItemProto->InventoryType == INVTYPE_WEAPONMAINHAND)
						if (srcItemProto->InventoryType == INVTYPE_WEAPON || srcItemProto->InventoryType == INVTYPE_WEAPONMAINHAND)
							allowed = true;
					if (destItemProto->InventoryType == INVTYPE_WEAPONOFFHAND && srcItemProto->InventoryType == INVTYPE_WEAPONOFFHAND)
						allowed = true;
				}

				if (destItemProto->InventoryType == INVTYPE_RANGED || destItemProto->InventoryType == INVTYPE_RANGEDRIGHT)
					if (destItemProto->InventoryType == srcItemProto->InventoryType && destItemProto->SubClass == srcItemProto->SubClass)
						allowed = true;
				if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_DAGGER)
					if (srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_DAGGER)
						allowed = true;
				if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF)
					if (srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF)
						allowed = true;
				if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
					if (srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
						allowed = true;
				if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD)
					if (srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE || srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE || srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD)
						allowed = true;
				if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE2 || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE2 || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD2)
				{
					if (srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF || srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
						allowed = true;
					if (srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE2 || srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE2 || srcItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD2)
						allowed = true;
				}
			}
			else
			{
				if (destItemProto->InventoryType == INVTYPE_CHEST || destItemProto->InventoryType == INVTYPE_ROBE)
				{
					if (srcItemProto->InventoryType == INVTYPE_CHEST || srcItemProto->InventoryType == INVTYPE_ROBE)
						allowed = true;
				}
				else
				{
					if (srcItemProto->InventoryType == destItemProto->InventoryType)
						allowed = true;
				}
			}
		}

		if (!allowed)
			return 5; // source not valid for destination

		// create or get item replica
		newItemId = sObjectMgr.CreateItemTransmogrifyTemplate(destItem->GetProto()->ItemId, srcItemProto->DisplayInfoID, sourceItemID);

		_owner->DestroyItemCount(TRANSMOG_CURRENCY, 1, true);
	}
	else
	{
		sObjectMgr.DeleteItemTransmogrifyTemplate(destItem->GetTransmogrification());
	}

	destItem->SetTransmogrification(newItemId);
	if (!destItem->IsSoulBound())
		destItem->SetBinding(true);
	// update on client
	_owner->TransmogSetVisibleItemSlot(slot, destItem);
	destItem->SetState(ITEM_CHANGED, _owner);
	return 0;
}

std::string TransmogMgr::GetTransmogStatus()
{
	std::string status;
	for (auto slot = 0; slot < EQUIPMENT_SLOT_END; ++slot)
	{
		if (Item* pItem = _owner->GetItemByPos(INVENTORY_SLOT_BAG_0, slot))
		{
			// serverSlot to inventorySlotId
			uint8 InventorySlotId = ServerSlotToClientInventorySlotId(slot);

			//tmogProto->InventoryType
			if (ItemPrototype const* tmogProto = sObjectMgr.GetItemPrototype(pItem->GetTransmogrification()))
				status += std::to_string(InventorySlotId) + ":" + std::to_string(tmogProto->SourceItemId) + ",";
			else
				status += std::to_string(0) + ":0" + ",";
		}
	}

	if (status.empty())
		return "0:0";

	status.pop_back(); // remove last ","

	return status;
}

void TransmogMgr::RemoveTransmog(Item* item)
{
	sObjectMgr.DeleteItemTransmogrifyTemplate(item->GetTransmogrification());

    item->SetTransmogrification(0);
    item->SetState(ITEM_CHANGED, _owner);
}

bool TransmogMgr::HasTransmog(uint32 newItemId)
{

    ItemPrototype const* newItemProto = sObjectMgr.GetItemPrototype(newItemId);

    if (!newItemProto)
        return true;

    for (auto& collectedItemId : _transmogs)
    {
        ItemPrototype const* collectedItemProto = sObjectMgr.GetItemPrototype(collectedItemId);
        if (!collectedItemProto)
            continue;
        if (newItemProto->DisplayInfoID == collectedItemProto->DisplayInfoID && (newItemProto->Class == collectedItemProto->Class && newItemProto->SubClass == newItemProto->SubClass))
            return true;
    }

    return false;
}

void TransmogMgr::RemoveFromCollection(uint32 itemId)
{
	_transmogs.erase(itemId);
	CharacterDatabase.PExecute("DELETE FROM character_transmogs WHERE guid = %u AND itemId = %u", _owner->GetGUIDLow(), itemId);
}

void TransmogMgr::AddToCollection(uint32 itemId)
{
    if (HasTransmog(itemId))
        return;

    ItemPrototype const* proto = sObjectMgr.GetItemPrototype(itemId);
    if (!proto)
        return;
    if (!sObjectMgr.IsItemTypeTransmoggable(proto->InventoryType))
        return;
    if (!sObjectMgr.IsItemSubClassTransmoggable(proto->SubClass))
        return;

    _transmogs.insert(itemId);

    static SqlStatementID insTransmog;
    SqlStatement stmtIns = CharacterDatabase.CreateStatement(insTransmog, "INSERT INTO character_transmogs (guid,itemId) VALUES (?, ?)");

    stmtIns.PExecute(_owner->GetGUIDLow(), itemId);

	_owner->SendAddonMessage("TW_TRANSMOG","NewTransmog:" + std::to_string(itemId));
}

std::vector<uint32> TransmogMgr::GetAvailableTransmogs(uint8 InventorySlotId, uint8 invType, uint32 destItemId)
{

	std::vector<uint32> tmogs;

    ItemPrototype const* destItemProto = sObjectMgr.GetItemPrototype(destItemId);
	if (!destItemProto)
	{
		tmogs.push_back(0); // 1st id
		//return "0:0";
		return tmogs;
	}
    	
	for (auto& item : _transmogs)
	{
		if (ItemPrototype const* proto = sObjectMgr.GetItemPrototype(item))
		{

			if (STUPID_RESTRICTIONS) {
				// plate = plate & mail
				// mail = plate & mail & leather
				// leather = mail & leather & cloth
				// cloth = leather * cloth
				if (proto->Class == ITEM_CLASS_ARMOR && destItemProto->Class == ITEM_CLASS_ARMOR 
					&& proto->InventoryType == destItemProto->InventoryType)
				{
					if (proto->SubClass == ITEM_SUBCLASS_ARMOR_CLOTH)
					{
						if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_CLOTH + 1)
							tmogs.push_back(item);
					}
					if (proto->SubClass == ITEM_SUBCLASS_ARMOR_LEATHER)
					{
						if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_LEATHER - 1 || destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_LEATHER + 1)
							tmogs.push_back(item);
					}
					if (proto->SubClass == ITEM_SUBCLASS_ARMOR_MAIL)
					{
						if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_MAIL - 1 || destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_MAIL + 1)
							tmogs.push_back(item);
					}
					if (proto->SubClass == ITEM_SUBCLASS_ARMOR_PLATE)
					{
						if (destItemProto->SubClass == ITEM_SUBCLASS_ARMOR_PLATE - 1)
							tmogs.push_back(item);
					}
				}
				if (proto->Class == destItemProto->Class)
					if (proto->SubClass == destItemProto->SubClass)
						if (proto->InventoryType == destItemProto->InventoryType)
							tmogs.push_back(item);
			}
			else
			{
				if (proto->Class == ITEM_CLASS_WEAPON && destItemProto->Class == ITEM_CLASS_WEAPON) {

					if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_FIST && proto->SubClass == ITEM_SUBCLASS_WEAPON_FIST)
					{
						if (destItemProto->InventoryType == INVTYPE_WEAPON || destItemProto->InventoryType == INVTYPE_WEAPONMAINHAND)
						{
							if (proto->InventoryType == INVTYPE_WEAPON || proto->InventoryType == INVTYPE_WEAPONMAINHAND)
							{
								//tmogs += std::to_string(item) + ":";
								tmogs.push_back(item);
								continue;
							}
						}
						if (destItemProto->InventoryType == INVTYPE_WEAPONOFFHAND && proto->InventoryType == INVTYPE_WEAPONOFFHAND)
						{
							tmogs.push_back(item);
							continue;
						}
					}

					if (destItemProto->InventoryType == INVTYPE_RANGED || destItemProto->InventoryType == INVTYPE_RANGEDRIGHT)
					{
						if (destItemProto->InventoryType == proto->InventoryType && destItemProto->SubClass == proto->SubClass)
						{
							tmogs.push_back(item);
							continue;
						}
					}
					if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_DAGGER)
					{
						if (proto->SubClass == ITEM_SUBCLASS_WEAPON_DAGGER)
						{
							tmogs.push_back(item);
							continue;
						}
					}
					if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF)
					{
						if (proto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF)
						{
							tmogs.push_back(item);
							continue;
						}
					}
					if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
					{
						if (proto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
						{
							tmogs.push_back(item);
							continue;
						}
					}
					if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD)
					{
						if (proto->SubClass == ITEM_SUBCLASS_WEAPON_AXE || proto->SubClass == ITEM_SUBCLASS_WEAPON_MACE || proto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD)
						{
							tmogs.push_back(item);
							continue;
						}
					}
					if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE2 || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE2 || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD2)
					{

						if (proto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF || proto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
							continue;

						if (proto->SubClass == ITEM_SUBCLASS_WEAPON_AXE2 || proto->SubClass == ITEM_SUBCLASS_WEAPON_MACE2 || proto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD2)
						{
							tmogs.push_back(item);
							continue;
						}
					}
				}
				else
				{
					if (destItemProto->InventoryType == INVTYPE_CHEST || destItemProto->InventoryType == INVTYPE_ROBE)
					{
						if (proto->InventoryType == INVTYPE_CHEST || proto->InventoryType == INVTYPE_ROBE)
							tmogs.push_back(item);
					}
					else
					{
						if (proto->InventoryType == invType)
							tmogs.push_back(item);
					}
				}
			}
		}
	}
	if (tmogs.empty())
		tmogs.push_back(0);
   
    return tmogs;
}

void TransmogMgr::SendAvailableTransmogs(uint8 InventorySlotId, uint8 invType, uint32 destItemId)
{
	uint32 numPossibleTransmogs;

	ItemPrototype const* destItemProto = sObjectMgr.GetItemPrototype(destItemId);
	if (!destItemProto)
	{
		_owner->SendAddonMessage(prefix, "SendAvailableTransmogs:Error:CantFindProto");
		return;
	}

	if (destItemProto->Class == ITEM_CLASS_ARMOR && destItemProto->SubClass != ITEM_SUBCLASS_ARMOR_SHIELD)
		numPossibleTransmogs = sObjectMgr.GetPossibleTransmogs(_owner->GetClass(), destItemProto->Class, 1, destItemProto->InventoryType, STUPID_RESTRICTIONS);
	else
		numPossibleTransmogs = sObjectMgr.GetPossibleTransmogs(_owner->GetClass(), destItemProto->Class, destItemProto->SubClass, destItemProto->InventoryType, STUPID_RESTRICTIONS);

	std::vector<uint32> tmogs = GetAvailableTransmogs(InventorySlotId, invType, destItemId);

	std::vector<std::string> messages;
	std::string message = "AvailableTransmogs:" + std::to_string(InventorySlotId) + ":" + std::to_string(numPossibleTransmogs) + ":";
	for (auto& item : tmogs)
	{
		message += std::to_string(item) + ":";
		if (message.length() > 1000)
		{
			message.pop_back();
			messages.push_back(message);
			message = "AvailableTransmogs:" + std::to_string(InventorySlotId) + ":" + std::to_string(numPossibleTransmogs) + ":";
		}
	}

	if (message == "AvailableTransmogs:" + std::to_string(InventorySlotId) + ":" + std::to_string(numPossibleTransmogs) + ":")
	{
		message += "end";
		messages.push_back(message);
	}
	else
	{
		message.pop_back();
		messages.push_back(message);
		messages.push_back("AvailableTransmogs:" + std::to_string(InventorySlotId) + ":" +std::to_string(numPossibleTransmogs) + ":end");
	}

	_owner->SendAddonMessage(prefix, "AvailableTransmogs:" + std::to_string(InventorySlotId) + ":" + std::to_string(numPossibleTransmogs) + ":start");

	for (const auto msg : messages)
		_owner->SendAddonMessage(prefix, msg);
}

uint8 TransmogMgr::ServerSlotToClientInventorySlotId(uint8 InventorySlotId)
{
    switch (InventorySlotId)
    {
        case EQUIPMENT_SLOT_HEAD:// = 0,
            return 1;
        case EQUIPMENT_SLOT_SHOULDERS:// = 2,
            return 3;
        case EQUIPMENT_SLOT_CHEST:// = 4,
            return 5;
        case EQUIPMENT_SLOT_WAIST:// = 5,
            return 6;
        case EQUIPMENT_SLOT_LEGS:// = 6,
            return 7;
        case EQUIPMENT_SLOT_FEET:// = 7,
            return 8;
        case EQUIPMENT_SLOT_WRISTS:// = 8,
            return 9;
        case EQUIPMENT_SLOT_HANDS:// = 9,
            return 10;
        case EQUIPMENT_SLOT_BACK:// = 14,
            return 15;
        case EQUIPMENT_SLOT_MAINHAND:// = 15,
            return 16;
        case EQUIPMENT_SLOT_OFFHAND:// = 16,
            return 17;
        case EQUIPMENT_SLOT_RANGED:// = 17,
            return 18;
    }
    return 0;
}