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

#ifndef TRANSMOG_MGR_H
#define TRANSMOG_MGR_H

#include "Common.h"
#include "SharedDefines.h"
#include "Platform/Define.h"
#include <unordered_set>

typedef std::vector<uint32> TransmogContainer;

class Player;
struct ItemPrototype;
class QueryResult;
class Item;

class TransmogMgr
{
    public:
        explicit TransmogMgr(Player* owner);

        // General
        void LoadFromDB(QueryResult* result);

		void HandleAddonMessages(std::string msg);

		void ApplyTransmog(std::string msg);
		uint8  ApplyTransmog(uint8 slot, uint32 sourceItemID, uint32 slotId);

		std::string GetTransmogStatus();

        // Helpers
        bool HasTransmog(uint32 newItemId);
        void AddToCollection(uint32 itemId);
        void RemoveFromCollection(uint32 itemId);
        bool ItemIsValidTransmogForDest(uint32 item, ItemPrototype const* destItemProto);

        void RemoveTransmog(Item* item);

        const std::unordered_set<uint32>& GetTransmogs() const { return _transmogs; }
        
		std::vector<uint32> GetAvailableTransmogs(uint8 InventorySlotId, uint8 invType, uint32 destItemId);
		void SendAvailableTransmogs(uint8 InventorySlotId, uint8 invType, uint32 destItemId);
        
		uint8 ServerSlotToClientInventorySlotId(uint8 InventorySlotId);

    private:
        Player* _owner;
        std::string prefix;
        std::unordered_set<uint32> _transmogs{};
        
};

#endif
