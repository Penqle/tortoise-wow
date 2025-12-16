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

#ifndef GUILD_BANK_H
#define GUILD_BANK_H

#include "Common.h"
#include "SharedDefines.h"
#include "Platform/Define.h"
#include "Item.h"
#include "Database/DatabaseEnv.h"
#include "Util.h"

class Player;
class Guild;
class QueryResult;
class Bag;

struct BankItem
{
	uint32 guildid;
	uint32 guid;
	std::string Name; // includes random property
	uint32 tab;
	uint32 slot;
	uint32 item_template;
	uint32 creatorGuid;
	uint32 giftCreatorGuid;
	uint32 count;
	uint32 maxStackSize;
	int32 duration;
	std::string charges;
	uint8 flags;
	std::string enchantments;
	uint32 enchant;
	int32 randomPropertyId;
	uint32 transmogrifyId;
	uint8 durability;
	uint32 text;
	int8 generated_loot;
	bool is_inferno = false;

	// extra
	uint32 quality; 
	ItemUpdateState state;

	bool LoadFromDB(QueryResult *result)
	{
		if (!result)
			return false;

		Field *fields = result->Fetch();

		guildid = fields[0].GetUInt32();
		guid = fields[1].GetUInt32();
		is_inferno = fields[2].GetBool();
		tab = fields[3].GetUInt8();
		slot = fields[4].GetUInt8();
		item_template = fields[5].GetUInt32();
		creatorGuid = fields[6].GetUInt32();
		giftCreatorGuid = fields[7].GetUInt32();
		count = fields[8].GetUInt32();
		duration = fields[9].GetUInt32();
		charges = fields[10].GetString();
		flags = fields[11].GetUInt8();
		enchantments = fields[12].GetString();

		enchant = 0;

		Tokenizer params(enchantments, ' ', MAX_ENCHANTMENT_SLOT * MAX_ENCHANTMENT_OFFSET);
		if (params.size() == MAX_ENCHANTMENT_SLOT * MAX_ENCHANTMENT_OFFSET)
			enchant = atoi(params[0]);

		randomPropertyId = fields[13].GetInt16();
		transmogrifyId = fields[14].GetUInt32();
		durability = fields[15].GetUInt16();
		text = fields[16].GetUInt32();
		generated_loot = fields[17].GetInt16();

		return true;
	}

	bool AddToDB()
	{
		return CharacterDatabase.PExecute("INSERT INTO guild_bank (guildid, guid, isInferno, tab, slot, item_template, "
			"creatorGuid, giftCreatorGuid, count, duration, "
			"charges, flags, enchantments, randomPropertyId, transmogrifyId, "
			"durability, text, generated_loot) VALUES ("
			"'%u', '%u', '%u', '%u', '%u', '%u', "
			"'%u', '%u', '%u', '%u', "
			"'%s', '%u', '%s', '%u', '%u', "
			"'%u', '%u', '%u')",
			guildid, guid, is_inferno ? 1 : 0, tab, slot, item_template,
			creatorGuid, giftCreatorGuid, count, duration,
			charges.c_str(), flags, enchantments.c_str(), randomPropertyId, transmogrifyId,
			durability, text, generated_loot);
	}

	bool SaveToDB()
	{
		return CharacterDatabase.PExecute("UPDATE guild_bank SET "
			"tab = '%u', isInferno = '%u', slot = '%u', item_template = '%u',"
			"creatorGuid = '%u', giftCreatorGuid = '%u', count = '%u', duration = '%u',"
			"charges = '%s', flags = '%u', enchantments = '%s', randomPropertyId = '%u', transmogrifyId = '%u',"
			"durability = '%u', text = '%u', generated_loot = '%u' "
			"WHERE guildid = '%u' and guid = '%u'",
			tab, is_inferno ? 1 : 0, slot, item_template,
			creatorGuid, giftCreatorGuid, count, duration,
			charges.c_str(), flags, enchantments.c_str(), randomPropertyId, transmogrifyId,
			durability, text, generated_loot,
			guildid, guid);
	}

	bool DeleteFromDB()
	{
		return CharacterDatabase.PExecute("DELETE FROM guild_bank WHERE guildid = '%u' and guid = '%u' AND isInferno = '%u'",
			guildid, guid, is_inferno ? 1 : 0);
	}

};

struct BankLog
{
	uint32 player;
	uint8 action;
	uint8 tab;
	uint32 item;
	uint32 enchant;
	uint32 randomPropertyId;
	uint8 count;
	uint32 stamp;

	// extra
	std::string playerName;
	std::string itemName;
	std::string itemQuality;
	uint32 state;
};

struct MoneyLog
{
	uint32 player;
	uint8 action;
	uint32 money;
	uint32 stamp;

	// extra
	std::string playerName;
	uint32 state;
};

struct BankTab
{
	std::string name;
	std::string icon;
	uint8 withdrawals;
	uint8 minrank;
};

typedef std::unordered_map<uint32, BankLog> LogMap;
typedef std::unordered_map<uint32, MoneyLog> MoneyLogMap;

class GuildBank
{
	friend class GuildMgr;
    public:
		GuildBank(bool isInfernoBank);

		void SetGuild(Guild* guild);
        void HandleAddonMessages(std::string msg, Player* player);
		void SaveToDB();
		void DeleteFromDB();
		void UpdateMinranks(uint32 rank);

    private:
		std::string prefix = "TW_GUILDBANK";
		uint32 b_tabs = 0;
		std::vector<BankItem*> b_items;
		std::unordered_map<uint32, BankTab> b_tabInfo;
		std::unordered_map<uint32, LogMap> b_log;
		MoneyLogMap b_moneyLog;
		std::vector<BankItem> b_itemUpdateQueue;

		bool b_saveLock = false;
		bool b_itemUpdateQueueBlocked;
		bool b_tabs_changed;
		bool b_money_changed;
		bool b_moneyLog_changed;
		bool b_log_changed;

		bool b_infernoBank = false;

        Guild* _guild;
        Player* _player;
		uint32 guildid;
		uint32 playerGuid;
		uint32 playerRankIndex;
		uint32 b_money;
		std::unordered_map<uint8, uint32> t_withdrawalsLeft;

		// startup
		void SetPlayer(Player* player);
		void LoadBank();

		// bank and tabs
		void UnlockGuildBank(std::string msg);
		void UnlockTab(std::string msg);
		void UnlockTabCost(std::string msg);
		void UpdateTab(std::string msg);

		// money
		void SendBankMoney();
		void SendBankInfo();
		void DepositMoney(std::string msg);
		void WithdrawMoney(std::string msg);

		// access
		bool CanAccessTab(uint8 tab, uint8 action);
		bool IsItemBankable(Item* bItem);
		
		// item actions
		void SendTabItems(std::string msg);
		void DepositItem(std::string msg);
		void DepositItemInFreeSlot(uint32 bankTab, Item* pItem);
		void DepositItemInSlot(uint32 bankTab, uint32 bankSlot, Item* pItem, uint32 count, uint32 remainer, ItemUpdateState state, bool stack);
		void WithdrawItem(std::string msg);
		void WithdrawItem(uint32 bankTab, uint32 bankSlot, uint32 count, uint32 playerBag, uint32 playerSlot, BankItem* bItem, Item* pItem, uint32 remainer, bool swap);
		void SwapItems(Item* bagItem, BankItem* bankItem);
		void MoveItem(std::string msg);
		void MoveItem(BankItem* sItem, BankItem* dItem, uint8 bankTab, uint8 fromSlot, uint8 toSlot);
		void SplitItem(std::string msg);
		void DestroyItem(std::string msg);

		void DepositInternal(uint32 bankTab, Item* item);

		// weekly withdrawals
		void SendTabWithdrawalsLeft(uint8 tab);
		void SendTabWithdrawalsLeft(std::string msg);
		uint8 GetTabWithdrawalsLeft(uint8 tab);

		// log
		void LoadLog();
		void AppendLog(uint32 index, uint32 tab, Field *fields, uint32 state);
		void SendTabLog(std::string msg);
		void SendMoneyLog(std::string msg);
		void LogAction(uint8 action, uint32 tab, uint32 itemID, uint32 count, BankItem* bItem);

		// helpers
		void SendGuildMessage(std::string message);
		uint32 GetNewGuid();

		// item handlers
		void AddItem(BankItem* pItem);
		void DeleteItem(BankItem* pItem);
		BankItem* CloneBankItem(BankItem* sItem);
		void CloneItem(Item* item, BankItem* bItem);
		void CloneItem(BankItem* bItem, Item* pItem);
		BankItem* GetItem(uint32 tab, uint32 slot);

};

#endif
