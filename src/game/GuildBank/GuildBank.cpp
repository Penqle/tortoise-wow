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

#include "GuildBank.h"
#include "Guild.h"
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

/*
* Guild Bank Design
* 
* 5 tabs of 98 items each
* Tab 1 is unlocked when the Guild Bank feature is unlocked
* Tabs 2-5 can be unlocked only by the Guild Master, with personal gold or guild bank gold
* Tabs can have weekly withdraw limit, set only by the Guild Master
*  Possible limits 1-5 stacks/week
* Tabs can have a required rank to access
* Everyboody can deposit money
* Only officer(rank 1) and guild master(rank 0) can withdraw money
*
*/


enum GuildBankAction
{
	ACTION_WITHDRAW_ITEM             = 0,
	ACTION_DEPOSIT_ITEM              = 1,
	ACTION_UNLOCK_GUILD_BANK         = 2,
	ACTION_UNLOCK_TAB_PERSONAL_MONEY = 3,
	ACTION_WITHDRAW_MONEY            = 4,
	ACTION_DEPOSIT_MONEY             = 5,
	ACTION_UNLOCK_TAB_GUILD_MONEY    = 6,
	ACTION_DESTROY_ITEM              = 7,
	ACTION_SPLIT_ITEM                = 8,
	ACTION_MOVE_ITEM                 = 9,
};

enum GuildBankCosts
{
	GUILD_BANK_COST = 2000 * GOLD,
	TAB_2_COST      = 500 * GOLD,
	TAB_3_COST      = 1000 * GOLD,
	TAB_4_COST      = 1500 * GOLD,
	TAB_5_COST      = 2000 * GOLD,
};

enum BankDetails
{
	TAB_MONEY = 0,
	MAX_TABS = 5,
	MAX_WEEKLY_WITHDRAWALS = 5,
	BANK_TAB_SIZE = 98,
	DESTROY_ITEM_ALLOWED = false
};

enum BankCommLimits
{
	LOG_LINES_LIMIT = 50,
	ADDON_MAX_PACKET_SIZE = 2096,
};

constexpr uint32 AllianceGuildNpcEntry = 80917;
constexpr uint32 HordeGuildNpcEntry = 80918;

GuildBank::GuildBank(bool isInfenoBank)
{
	b_infernoBank = isInfenoBank;
}

/* Public Methods */

// set guild
void GuildBank::SetGuild(Guild* guild)
{
	_guild  = guild;
	guildid = guild->GetId();
	b_tabs  = 0;

	LoadBank();
	LoadLog();

	b_tabs_changed     = false;
	b_money_changed    = false;
	b_moneyLog_changed = false;
	b_log_changed      = false;

	b_itemUpdateQueue.clear();
}

// Addon Handler
void GuildBank::HandleAddonMessages(std::string msg, Player* player)
{
	SetPlayer(player);


	//Should rather do a full search on all nearby creatures and check their flag for GOSSIP_FLAG_GUILD_BANKER but this works for now..
	const uint32 findCreatureEntry = player->GetTeamId() == TEAM_HORDE ? HordeGuildNpcEntry : AllianceGuildNpcEntry;

	if (!player->FindNearestCreature(findCreatureEntry, INTERACTION_DISTANCE))
		return;

	if (b_saveLock)
	{
		sLog.outInfo("Save in progress, action blocked (%s)", msg.c_str());
		_player->SendAddonMessage(prefix, "ActionBlockedBySaveLock");
		return;
	}

	if (strstr(msg.c_str(), "UnlockGuildBank:"))
	{
		UnlockGuildBank(msg);
		return;
	}

	if (b_tabs == 0)
	{
		_player->SendAddonMessage(prefix, "BankInfo:NoGuildBank");
		return;
	}

	if (strstr(msg.c_str(), "UnlockTab:"))
		UnlockTab(msg);

	if (strstr(msg.c_str(), "UnlockTabCost:"))
		UnlockTabCost(msg);

	if (strstr(msg.c_str(), "GetBankInfo:"))
		SendBankInfo();

	if (strstr(msg.c_str(), "GetTabItems:"))
		SendTabItems(msg);

	if (strstr(msg.c_str(), "GetTabWithdrawalsLeft:"))
		SendTabWithdrawalsLeft(msg);

	if (strstr(msg.c_str(), "GetTabLog:"))
		SendTabLog(msg);

	if (strstr(msg.c_str(), "GetMoneyLog:"))
		SendMoneyLog(msg);

	if (strstr(msg.c_str(), "DepositItem:"))
		DepositItem(msg);

	if (strstr(msg.c_str(), "WithdrawItem:"))
		WithdrawItem(msg);

	if (strstr(msg.c_str(), "MoveItem:"))
		MoveItem(msg);

	if (strstr(msg.c_str(), "SplitItem:"))
		SplitItem(msg);

	if (strstr(msg.c_str(), "DestroyItem:") && DESTROY_ITEM_ALLOWED)
		DestroyItem(msg);

	if (strstr(msg.c_str(), "UpdateTab:"))
		UpdateTab(msg);

	if (strstr(msg.c_str(), "DepositMoney:"))
		DepositMoney(msg);

	if (strstr(msg.c_str(), "WithdrawMoney:"))
		WithdrawMoney(msg);
}

// Periodic saves guild bank data to db  
void GuildBank::SaveToDB()
{
	if (b_saveLock)
	{
		sLog.outInfo("[GuildBank] SaveToDB() skipped for guild: %s due to b_saveLock", _guild->GetName().c_str());
		return;
	}


	if (!b_moneyLog_changed && !b_tabs_changed && !b_money_changed && !b_log_changed && b_itemUpdateQueue.empty())
		return; // nothing to do, no reason to start transaction.


	b_saveLock = true;

	CharacterDatabase.BeginTransaction();

	// Save Money
	if (b_money_changed)
	{
		CharacterDatabase.PExecute("UPDATE guild_bank_money SET money = '%u' WHERE guildid = '%u' AND isInferno = '%u'" ,
		b_money, guildid, b_infernoBank);

		b_money_changed = false;
	}
	
	// Save Tabs
	if (b_tabs_changed)
	{
		static SqlStatementID guildBankTabUpdate;

		auto stmt = CharacterDatabase.CreateStatement(guildBankTabUpdate,
			"UPDATE guild_bank_tabs "
			"SET tabs = ?, "
			"name1 = ?, name2 = ?, name3 = ?, name4 = ?, name5 = ?, "
			"icon1 = ?, icon2 = ?, icon3 = ?, icon4 = ?, icon5 = ?, "
			"withdrawal1 = ?, withdrawal2 = ?, withdrawal3 = ?, withdrawal4 = ?, withdrawal5 = ?, "
			"minrank1 = ?, minrank2 = ?, minrank3 = ?, minrank4 = ?, minrank5 = ? "
			"WHERE guildid = ? AND isInferno = ?");

		stmt.PExecute(b_tabs,
			b_tabInfo[1].name.c_str(), b_tabInfo[2].name.c_str(), b_tabInfo[3].name.c_str(), b_tabInfo[4].name.c_str(), b_tabInfo[5].name.c_str(),
			b_tabInfo[1].icon.c_str(), b_tabInfo[2].icon.c_str(), b_tabInfo[3].icon.c_str(), b_tabInfo[4].icon.c_str(), b_tabInfo[5].icon.c_str(),
			b_tabInfo[1].withdrawals, b_tabInfo[2].withdrawals, b_tabInfo[3].withdrawals, b_tabInfo[4].withdrawals, b_tabInfo[5].withdrawals,
			b_tabInfo[1].minrank, b_tabInfo[2].minrank, b_tabInfo[3].minrank, b_tabInfo[4].minrank, b_tabInfo[5].minrank,
			guildid, b_infernoBank ? (uint8)1 : (uint8)0);

		b_tabs_changed = false;
	}
	
	// Save Money Log
	if (b_moneyLog_changed)
	{
		for (uint32 i = 0; i < b_moneyLog.size(); ++i)
			if (b_moneyLog[i].state == ITEM_NEW)
			{
				CharacterDatabase.PExecute("INSERT INTO guild_bank_log "
					"(guildid, isInferno, player, action, tab, item, randomPropertyId, enchant, count, stamp) "
					"VALUES ('%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u')",
					guildid, b_infernoBank, b_moneyLog[i].player, b_moneyLog[i].action, 0, 0, 0, 0,
					b_moneyLog[i].money, b_moneyLog[i].stamp);

				b_moneyLog[i].state = ITEM_UNCHANGED;
			}

		b_moneyLog_changed = false;
	}

	// Save Item Log
	if (b_log_changed)
	{
		for (uint32 i = 1; i <= MAX_TABS; ++i)
			for (uint32 j = 0; j < b_log[i].size(); ++j)
				if (b_log[i][j].state == ITEM_NEW)
				{
					CharacterDatabase.PExecute("INSERT INTO guild_bank_log "
						"(guildid, isInferno, player, action, tab, item, randomPropertyId, enchant, count, stamp) "
						"VALUES ('%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u')",
						guildid, b_infernoBank, b_log[i][j].player, b_log[i][j].action,
						b_log[i][j].tab, b_log[i][j].item, b_log[i][j].randomPropertyId, b_log[i][j].enchant,
						b_log[i][j].count, b_log[i][j].stamp);

					b_log[i][j].state = ITEM_UNCHANGED;
				}
		
		b_log_changed = false;
	}

	// Save Items
	if (!b_itemUpdateQueue.empty())
	{
		for (auto item : b_itemUpdateQueue)
		{
			switch (item.state)
			{
			case ITEM_NEW:
			{
				item.AddToDB();
			}
			break;
			case ITEM_CHANGED:
			{
				item.SaveToDB();
			}
			break;
			case ITEM_REMOVED:
			{
				item.DeleteFromDB();
			}
			break;
			case ITEM_UNCHANGED:
				break;
			}
		}

		for (const auto& item : b_items)
			item->state = ITEM_UNCHANGED;

		b_itemUpdateQueue.clear();
	}

	CharacterDatabase.CommitTransaction();

	b_saveLock = false;
}

// Deletes guild bank related dbs on guild disband
void GuildBank::DeleteFromDB()
{
	b_saveLock = true;
	CharacterDatabase.BeginTransaction();
	CharacterDatabase.PExecute("DELETE FROM guild_bank WHERE guildid = '%u' AND isInferno = '%u'", guildid, b_infernoBank);
	CharacterDatabase.PExecute("DELETE FROM guild_bank_log WHERE guildid = '%u' AND isInferno = '%u'", guildid, b_infernoBank);
	CharacterDatabase.PExecute("DELETE FROM guild_bank_money WHERE guildid = '%u' AND isInferno = '%u'", guildid, b_infernoBank);
	CharacterDatabase.PExecute("DELETE FROM guild_bank_tabs WHERE guildid = '%u' AND isInferno = '%u'", guildid, b_infernoBank);
	CharacterDatabase.CommitTransaction();
}

// Updates min rank in case it gets deleted
void GuildBank::UpdateMinranks(uint32 rank)
{
	for (uint32 tab = 1; tab <= MAX_TABS; ++tab)
	{
		if (b_tabInfo[tab].minrank == rank)
		{
			b_tabInfo[tab].minrank -= 1;
			b_tabs_changed = true;

			SendGuildMessage("GUpdateTab:" + std::to_string(tab) + ":" + 
				b_tabInfo[tab].name + ":" + 
				b_tabInfo[tab].icon + ":" + 
				std::to_string(b_tabInfo[tab].withdrawals) + ":" + 
				std::to_string(b_tabInfo[tab].minrank));
		}
	}
}

/* startup */

// Sets the player for the bank action
void GuildBank::SetPlayer(Player* player)
{
	_player = player;
	playerGuid = _player->GetGUID();
	playerRankIndex = _player->GetRank();

}

// Loads guild bank tabs, money, and items to memory
void GuildBank::LoadBank()
{
	// Load Tabs and Money
	QueryResult *guildBankTabs = CharacterDatabase.PQuery("SELECT `tabs`, `money`, "
		"`name1`, `name2`, `name3`, `name4`, `name5`, "
		"`icon1`, `icon2`, `icon3`, `icon4`, `icon5`, "
		"`withdrawal1`, `withdrawal2`, `withdrawal3`, `withdrawal4`, `withdrawal5`, "
		"`minrank1`, `minrank2`, `minrank3`, `minrank4`, `minrank5` "
		"FROM guild_bank_tabs bt "
		"JOIN guild_bank_money bm "
		"ON `bt`.`guildid` = `bm`.`guildid` AND `bt`.`isInferno` = `bm`.`isInferno` "
		"WHERE `bt`.`guildid` = '%u' AND `bt`.`isInferno` = '%u'", guildid, b_infernoBank);

	if (!guildBankTabs)
		return; // guild doesnt have a bank yet

	b_tabs = 0;

	do
	{
		Field *fields = guildBankTabs->Fetch();
		b_tabs  = fields[0].GetUInt32();
		b_money = fields[1].GetUInt32();
		
		for (uint32 i = 0; i < MAX_TABS; ++i) {
			b_tabInfo[i + 1].name        = fields[2 + i].GetString();
			b_tabInfo[i + 1].icon        = fields[2 + 5 + i].GetString();
			b_tabInfo[i + 1].withdrawals = fields[2 + 5 + 5 + i].GetUInt8();
			b_tabInfo[i + 1].minrank     = fields[2 + 5 + 5 + 5 + i].GetUInt8();
		}

	} while (guildBankTabs->NextRow());

	b_tabInfo[TAB_MONEY].minrank = 1; // min rank for withdrawing money

	delete guildBankTabs;

	// Load Items
	QueryResult *bankQuery = CharacterDatabase.PQuery("SELECT `guildid`, `guid`, `isInferno`, `tab`, `slot`, `item_template`, "
		"`creatorGuid`, `giftCreatorGuid`, `count`, `duration`, "
		"`charges`, `flags`, `enchantments`, `randomPropertyId`, `transmogrifyId`, `durability`, "
		"`text`, `generated_loot` "
		"FROM guild_bank WHERE `guildid` = '%u' AND `isInferno` = '%u'",
		guildid, b_infernoBank);

	if (!bankQuery)
		return; // no items in the bank

	do
	{
		BankItem *bItem = new BankItem;

		if (!bItem->LoadFromDB(bankQuery))
		{
			delete bItem;
			continue;
		}

		if (const ItemPrototype* pItem = sObjectMgr.GetItemPrototype(bItem->item_template))
		{
			bItem->Name = pItem->Name1;
			if (bItem->randomPropertyId > 0)
			{
				std::string sufix = sItemRandomPropertiesStore.LookupEntry(bItem->randomPropertyId)->nameSuffix[0];
				bItem->Name += " " + sufix; // of the Owl
			}
			
			bItem->quality = pItem->Quality;
			bItem->maxStackSize = pItem->GetMaxStackSize();
		}

		bItem->state = ITEM_UNCHANGED;

		AddItem(bItem);

	} while (bankQuery->NextRow());

	delete bankQuery;
}


/* bank and tabs */

// Unlocks guild bank feature and logs action
void GuildBank::UnlockGuildBank(std::string msg) {

	// should not get here from UI
	// Guild Master check
	if (playerRankIndex != 0)
	{
		_player->SendAddonMessage(prefix, "UnlockGuildBank:Error:NotGM");
		return;
	}

	std::string query;

	// msg = "TW_GUILDBANK UnlockGuildBank:Cost or UnlockGuildBank:Ok
	Tokenizer params(msg, ':', 2);
	if (params.size() == 2)
	{
		query = params[1];
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "UnlockGuildBank:Error:WrongSyntax(" + msg + ")");
		return;
	}

	if (query == "Cost")
	{
		_player->SendAddonMessage(prefix, "UnlockGuildBank:Cost:" + std::to_string(GUILD_BANK_COST / GOLD));
		return;
	}

	if (query == "Ok")
	{
		if (_player->GetMoney() < GUILD_BANK_COST)
		{
			_player->SendBuyError(BUY_ERR_NOT_ENOUGHT_MONEY, 0, 0, 0);
			return;
		}

		// insert tabs
		CharacterDatabase.DirectPExecute("INSERT INTO guild_bank_tabs (guildid, isInferno, tabs) VALUES ('%u', '%u', '%u')",
			guildid, b_infernoBank, 1);

		// insert money
		CharacterDatabase.DirectPExecute("INSERT INTO guild_bank_money (guildid, isInferno, money) VALUES ('%u', '%u', '%u')",
			guildid, b_infernoBank, 0);

		b_tabs = 1;

		_player->ModifyMoney(-(int32)GUILD_BANK_COST);
		
		LoadBank();
		LoadLog();

		SendGuildMessage("GUnlock:GuildBank:Ok");

		SendBankInfo();

		uint32 index;
		index = b_moneyLog.size();

		b_moneyLog[index].player     = playerGuid;
		b_moneyLog[index].action     = ACTION_UNLOCK_GUILD_BANK;
		b_moneyLog[index].money      = GUILD_BANK_COST;
		b_moneyLog[index].stamp      = time(nullptr);
		b_moneyLog[index].playerName = _player->GetName();
		b_moneyLog[index].state      = ITEM_NEW;

		return;
	}

	// action unknown
	_player->SendAddonMessage(prefix, "UnlockGuildBank:Error:UnknownAction");

}

// Unlocks a guild tab and logs this action
void GuildBank::UnlockTab(std::string msg)
{
	// Guild Master Check - should not get here from UI
	if (playerRankIndex != 0)
	{
		_player->SendAddonMessage(prefix, "UnlockTab:Error:NotGM");
		return;
	}

	uint8 tab;
	uint8 moneySource;
	uint32 cost = 0;

	// msg = UnlockTab:tab:moneysource
	// moneysource, 0 bank, 1 player
	Tokenizer params(msg, ':', 3);
	if (params.size() == 3)
	{
		tab = atoi(params[1]);
		moneySource = atoi(params[2]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "UnlockTab:Error:WrongSyntax(" + msg + ")");
		return;
	}

	if (tab <= 1 || tab > MAX_TABS)
	{
		_player->SendAddonMessage(prefix, "UnlockTab:Error:ParamsOutOfRange");
		return;
	}
	
	if (tab == 2) cost = TAB_2_COST;
	if (tab == 3) cost = TAB_3_COST;
	if (tab == 4) cost = TAB_4_COST;
	if (tab == 5) cost = TAB_5_COST;

	if (cost == 0)
	{
		_player->SendAddonMessage(prefix, "UnlockTab:Error:CantFindPrice");
		return;
	}

	GuildBankAction action;

	if (moneySource == 0)
	{
		// money from bank
		if (b_money < cost) {
			_player->GetSession()->SendNotification("Your guild bank does not have enough money.");
			_player->SendAddonMessage(prefix, "UnlockTab:Error:Player:NotEnoughMoney");
			return;
		}
		b_money -= cost;
		b_money_changed = true;
		action = ACTION_UNLOCK_TAB_GUILD_MONEY;
	}
	else
	{
		// money from player
		if (_player->GetMoney() < cost)
		{
			_player->SendBuyError(BUY_ERR_NOT_ENOUGHT_MONEY, 0, 0, 0);
			_player->SendAddonMessage(prefix, "UnlockTab:Error:Bank:NotEnoughMoney");
			
			return;
		}
		_player->ModifyMoney(-(int32)cost);
		action = ACTION_UNLOCK_TAB_PERSONAL_MONEY;
	}

	b_tabs = tab;
	
	SendGuildMessage("GUnlock:Tab:" + std::to_string(tab) + ":Ok");

	LogAction(action, TAB_MONEY, tab, cost, nullptr); // guild tab unlocked

	b_tabs_changed = true;
	SaveToDB();
}

// Sends tab cost to client
void GuildBank::UnlockTabCost(std::string msg)
{
	// Guild Master Check - should not get here from UI
	if (playerRankIndex != 0)
	{
		_player->SendAddonMessage(prefix, "UnlockTabCost:Error:NotGM");
		return;
	}

	uint8 tab;
	uint32 cost = 0;

	// msg = UnlockTabCost:tab
	Tokenizer params(msg, ':', 2);
	if (params.size() == 2)
	{
		tab = atoi(params[1]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "UnlockTabCost:Error:WrongSyntax(" + msg + ")");
		return;
	}

	if (tab <= 1 || tab > MAX_TABS)
	{
		_player->SendAddonMessage(prefix, "UnlockTabCost:Error:WrongTab");
		return;
	}

	if (tab == 2) cost = TAB_2_COST;
	if (tab == 3) cost = TAB_3_COST;
	if (tab == 4) cost = TAB_4_COST;
	if (tab == 5) cost = TAB_5_COST;

	if (cost == 0)
		_player->SendAddonMessage(prefix, "UnlockTabCost:Error:Cost0");
	else
		_player->SendAddonMessage(prefix, "Unlock:Tab:" + std::to_string(tab) + ":Cost:" + std::to_string(cost / GOLD));
}

// Updates bank tab information (name, icon, withdrawals, minrank)
void GuildBank::UpdateTab(std::string msg)
{
	// Guild Master Check - should not get here from UI
	if (playerRankIndex != 0)
	{
		_player->SendAddonMessage(prefix, "UpdateTab:Error:NotGM");
		return;
	}

	uint8 tab;
	std::string name;
	std::string icon;
	uint8 withdrawals;
	uint8 minrank;

	// msg = UpdateTab:tab:name:icon:withdrawals:minrank
	Tokenizer params(msg, ':', 6);
	if (params.size() == 6)
	{
		tab         = atoi(params[1]);
		name        = params[2];
		icon        = params[3];
		withdrawals = atoi(params[4]);
		minrank     = atoi(params[5]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "UpdateTab:Error:WrongSyntax(" + msg + ")");
		return;
	}


	if (name == "" || name.empty() || name.length() > 30)
	{
		_player->SendAddonMessage(prefix, "UpdateTab:Error:WrongName");
		return;
	}

	if (icon == "" || icon.empty() || icon.length() > 63)
	{
		_player->SendAddonMessage(prefix, "UpdateTab:Error:WrongIcon");
		return;
	}

	if (withdrawals > MAX_WEEKLY_WITHDRAWALS)
	{
		_player->SendAddonMessage(prefix, "UpdateTab:Error:WrongWithdrawals");
		return;
	}

	if (minrank > _guild->GetRanksSize())
	{
		_player->SendAddonMessage(prefix, "UpdateTab:Error:WrongMinRank");
		return;
	}


	b_tabInfo[tab].name        = name;
	b_tabInfo[tab].icon        = icon;
	b_tabInfo[tab].withdrawals = withdrawals;
	b_tabInfo[tab].minrank     = minrank;

	SendGuildMessage("GUpdateTab:" + std::to_string(tab) + ":" + name + ":" + icon + ":" + std::to_string(withdrawals) + ":" + std::to_string(minrank));

	b_tabs_changed = true;
	SaveToDB();
}

/* money */

// Sends bank money information to the client
void GuildBank::SendBankMoney()
{
	_player->SendAddonMessage(prefix, "BankInfo:money:" + std::to_string(b_money));
}

// Sends money and bank tabs infomation (name, icon, weekly withdrawals, minimum rank) to the client
void GuildBank::SendBankInfo()
{
	SendBankMoney();

	std::string info = "BankInfo:Tabs:" + std::to_string(b_tabs) + ":";

	for (uint32 i = 1; i <= MAX_TABS; ++i)
		info += b_tabInfo[i].name + ":";
	for (uint32 i = 1; i <= MAX_TABS; ++i)
		info += b_tabInfo[i].icon + ":";
	for (uint32 i = 1; i <= MAX_TABS; ++i)
		info += std::to_string(b_tabInfo[i].withdrawals) + ":";
	for (uint32 i = 1; i <= MAX_TABS; ++i)
		info += std::to_string(b_tabInfo[i].minrank) + ":";

	info.pop_back();

	_player->SendAddonMessage(prefix, info);
}

// Deposits money into the Guild Bank
void GuildBank::DepositMoney(std::string msg)
{
	// msg = DepositMoney:money

	uint32 money;

	Tokenizer params(msg, ':', 2);
	if (params.size() == 2)
	{
		money = atoi(params[1]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "DepositMoney:Error:WrongSyntax(" + msg + ")");
		return;
	}

	if (_player->GetMoney() < money)
	{
		_player->SendBuyError(BUY_ERR_NOT_ENOUGHT_MONEY, 0, 0, 0);
		_player->SendAddonMessage(prefix, "DepositMoney:Error:NotEnoughMoney");
		return;
	}

	_player->ModifyMoney(-(int32)money);
	
	b_money += money;

	LogAction(ACTION_DEPOSIT_MONEY, TAB_MONEY, 0, money, nullptr);

	SendGuildMessage("GMoney:" + std::to_string(b_money)); // update UI money

	b_money_changed = true;
	SaveToDB();
}

// Withdraws money from the guild bank, limited to guil rank index 0 and 1
void GuildBank::WithdrawMoney(std::string msg)
{
	uint32 money;

	Tokenizer params(msg, ':', 2);
	if (params.size() == 2)
	{
		money = atol(params[1]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "WithdrawMoney:Error:WrongSyntax(" + msg + ")");
		return;
	}

	if (!CanAccessTab(0, ACTION_WITHDRAW_MONEY)) // min rank = 1, officer
	{
		_player->GetSession()->SendNotification("You dont have access to guild money.");
		_player->SendAddonMessage(prefix, "WithdrawMoney:Error:NoAccess");
		return;
	}

	if (money > b_money)
	{
		_player->GetSession()->SendNotification("Your guild bank does not have enough money.");
		_player->SendAddonMessage(prefix, "WithdrawMoney:Error:NotEnoug");
		return;
	}

	b_money -= money;

	_player->ModifyMoney((int32)money);

	LogAction(ACTION_WITHDRAW_MONEY, TAB_MONEY, 0, money, nullptr);

	SendGuildMessage("GMoney:" + std::to_string(b_money)); // update UI money

	b_money_changed = true;
	SaveToDB();
}


/* access */

// Checks if player can access tab based on his guild rank
bool GuildBank::CanAccessTab(uint8 tab, uint8 action)
{
	if (action == ACTION_WITHDRAW_MONEY)
		return playerRankIndex <= 1;

	if (action == ACTION_SPLIT_ITEM || action == ACTION_DESTROY_ITEM)
		if (playerRankIndex > b_tabInfo[tab].minrank)
			return false;

	if (action == ACTION_WITHDRAW_ITEM || action == ACTION_DEPOSIT_ITEM)
		if (b_tabInfo[tab].withdrawals > 0)
			if (playerRankIndex == b_tabInfo[tab].minrank)
				if (GetTabWithdrawalsLeft(tab) == 0)
					return false;

	if (playerRankIndex > b_tabInfo[tab].minrank)
		return false;

	return true;
}

// Checks if bag item can be deposited in the bank
bool GuildBank::IsItemBankable(Item* bItem)
{
	// Bound items
	if (bItem->IsSoulBound())
	{
		_player->GetSession()->SendNotification("You cannot deposit soulbound items.");
		_player->SendAddonMessage(prefix, "Error:ItemSoulBound");
		return false;
	}

	// Conjured items like mage water
	if (bItem->IsConjuredConsumable())
	{
		_player->GetSession()->SendNotification("You cannot deposit conjured items.");
		_player->SendAddonMessage(prefix, "Error:ItemConjured");
		return false;
	}

	// Items with duration like 
	if (bItem->GetProto()->Duration > 0)
	{
		_player->GetSession()->SendNotification("You cannot deposit temporary items.");
		_player->SendAddonMessage(prefix, "Error:ItemTemporary");
		return false;
	}
	return true;
}

/* item actions */

// Sends bank tab items to a player
void GuildBank::SendTabItems(std::string msg)
{
	uint8 tab;

	// msg = GetBank:tab
	Tokenizer params(msg, ':', 2);
	if (params.size() == 2)
	{
		tab = atoi(params[1]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "TabItems:Error:WrongSyntax(" + msg + ")");
		return;
	}

	SendTabWithdrawalsLeft(tab);

	std::vector<std::string> messages;
	std::string message = "TabItems:" + std::to_string(tab) + ":";

	for (uint32 i = 1; i <= BANK_TAB_SIZE; i++)
	{
		if (BankItem* bItem = GetItem(tab, i))
		{
			message +=
				std::to_string(bItem->tab) + ":" +
				std::to_string(bItem->slot) + ":" +
				std::to_string(bItem->guid) + ":" +
				std::to_string(bItem->item_template) + ":" +
				std::to_string(bItem->count) + ":" +
				(bItem->randomPropertyId > 0 ? bItem->Name : "0") + ":" +
				std::to_string(bItem->randomPropertyId) + ":" +
				std::to_string(bItem->enchant) + ";";

			if (message.length() > ADDON_MAX_PACKET_SIZE)
			{
				message.pop_back();
				messages.push_back(message);
				message = "TabItems:" + std::to_string(tab) + ":";
			}
		}
	}

	if (message == "TabItems:" + std::to_string(tab) + ":")
	{
		message += "end";
		messages.push_back(message);
	}
	else
	{
		message.pop_back();
		messages.push_back(message);
		messages.push_back("TabItems:" + std::to_string(tab) + ":end");
	}

	for (const auto msg : messages)
		_player->SendAddonMessage(prefix, msg);
}

// Deposits a player item into the bank
void GuildBank::DepositItem(std::string msg) {

	uint8 playerBag;
	uint8 playerSlot;
	uint8 bankTab;
	uint8 bankSlot;
	uint8 count;

	// msg = DepositItem:playerbag:playerslot:bankTab:bankslot:count
	Tokenizer params(msg, ':', 6);
	if (params.size() == 6)
	{
		playerBag  = atoi(params[1]);
		playerSlot = atoi(params[2]);
		bankTab    = atoi(params[3]);
		bankSlot   = atoi(params[4]);
		count      = atoi(params[5]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "DepositItem:Error:WrongSyntax(" + msg + ")");
		return;
	}

	if (bankTab == 0 || bankTab > MAX_TABS || bankSlot > BANK_TAB_SIZE)
	{
		_player->SendAddonMessage(prefix, "DepositItem:Error:ParamsOutOfRange");
		return;
	}

	// rights
	if (!CanAccessTab(bankTab, ACTION_DEPOSIT_ITEM))
	{
		_player->GetSession()->SendNotification("You dont have access to this tab.");
		_player->SendAddonMessage(prefix, "DepositItem:Error:NoRights");
		return;
	}

	// change from game slots to server slots
	// client bags = 0(backpack), 1, 2, 3, 4
	// client slots = 1,2,3, ...
	// server bags = 255(backpack), 19, 20, 21, 22
	// server slots for bag 255 (backpack) = INVENTORY_SLOT_ITEM_START(23), INVENTORY_SLOT_ITEM_START + 1 + 2 + 3 ...
	// server slots for other bags  = 0, 1, 2, 3...
	if (playerBag == 0)
	{
		playerBag = INVENTORY_SLOT_BAG_0; //255
		playerSlot = playerSlot + INVENTORY_SLOT_ITEM_START - 1;
	}
	else
	{
		playerBag = playerBag + INVENTORY_SLOT_BAG_START - 1;
		playerSlot = playerSlot - 1;
	}

	Item* pItem = _player->GetItemByPos(playerBag, playerSlot);

	if (!pItem)
	{
		_player->SendAddonMessage(prefix, "DepositItem:Error:CantGetPlayerItem:" + std::to_string(playerBag) + ":" + std::to_string(playerSlot));
		return;
	}

	if (!IsItemBankable(pItem))
		return;

	if (count > pItem->GetMaxStackCount())
	{
		// shouldnt get here from UI
		// cant store more than GetMaxStackCount items
		_player->SendAddonMessage(prefix, "DepositItem:Error:Count>GetMaxStackCount");
		return;
	}

	if (bankSlot == 0) {
		// right click item in player bag, goes to auto slot in bank
		DepositItemInFreeSlot(bankTab, pItem);
	}
	else
	{
		// drag from player bag to bank slot
		BankItem* dItem = GetItem(bankTab, bankSlot); // bank destination

		//check bank slot is occupied
		if (dItem)
		{
			// special case when the source and destination are same item_template and equal count of maxStackSize
			// since they are max stacked, can't stack over
			// if max stack = 1, no need to swap bag item with same itemm from bank,
			// with the exception of different randomPropertyId items //and randomPropertyId > 0
			if (dItem->item_template == pItem->GetProto()->ItemId && dItem->count == pItem->GetCount() 
				&& dItem->count == dItem->maxStackSize
				&& (dItem->randomPropertyId == pItem->GetItemRandomPropertyId()))
			{
				_player->SendAddonMessage(prefix, "DepositItem:Swap:Error:SameItemSameCount");
				return;
			}

			// check if its same template and stackable
			if (dItem->item_template == pItem->GetProto()->ItemId && dItem->maxStackSize > 1)
			{
				// check if we can stack
				//if ((dItem->count + pItem->GetCount()) <= dItem->maxStackSize)
				if ((dItem->count + count) <= dItem->maxStackSize)
				{
					// can stack all
					DepositItemInSlot(bankTab, bankSlot, pItem, count, 0, ITEM_CHANGED, true);
					return;
				}
				else if (count < dItem->count && dItem->count == dItem->maxStackSize) //15 peste 20, withdraw 20-15
				{
					// stack a less than max stack over a full stack
					// results in a withdrawal of maxstack - less than max count
					uint32 withdrawCount = dItem->maxStackSize - count;
					uint32 remainer = dItem->maxStackSize - withdrawCount;
					WithdrawItem(bankTab, bankSlot, withdrawCount, pItem->GetBagSlot(), pItem->GetSlot(), dItem, pItem, remainer, false);
					return;
				}
				else
				{
					// can only stack a few

					uint32 stackCount = dItem->maxStackSize - dItem->count;
					uint32 remainer = count - stackCount;

					// deposit what we can over sources over dest item, keep rest in bag in original item
					DepositItemInSlot(bankTab, bankSlot, pItem, stackCount, 0, ITEM_CHANGED, true);
					return;
				}
			}
			
			// swap
			SwapItems(pItem, dItem);
			return;
		}
		else
		{
			// bank slot free
			DepositItemInSlot(bankTab, bankSlot, pItem, count, 0, ITEM_NEW, false);
		}
	}
}

void GuildBank::DepositInternal(uint32 bankTab, Item* item)
{
	for (uint32 slot = 1; slot <= BANK_TAB_SIZE; ++slot)
	{
		if (!GetItem(bankTab, slot))
		{
			BankItem* bItem;

			bItem = new BankItem;
			bItem->is_inferno = b_infernoBank;
			bItem->guid = GetNewGuid();
			bItem->guildid = guildid;
			bItem->count = item->GetCount();
			bItem->tab = bankTab;
			bItem->slot = slot;

			bItem->state = ITEM_NEW;

			CloneItem(bItem, item);

			b_itemUpdateQueue.push_back(*bItem);

			AddItem(bItem);
			break;
		}
	}
}

// Deposits a player item into the bank
void GuildBank::DepositItemInFreeSlot(uint32 bankTab, Item* pItem)
{
	// check if its stackable first
	if (pItem->GetProto()->GetMaxStackSize() > 1)
	{
		// check if we have same item in bank already
		for (uint32 i = 1; i <= BANK_TAB_SIZE; i++)
		{
			BankItem* bItem = GetItem(bankTab, i);
			if (!bItem)
				continue;

			// check if we found one that's not max stacked
			if (bItem->item_template == pItem->GetProto()->ItemId && bItem->count < bItem->maxStackSize)
			{
				// found one
				// check if we can stack all pItem on bItem or just a few
				if (pItem->GetCount() + bItem->count <= bItem->maxStackSize)
				{
					// can stack all
					DepositItemInSlot(bankTab, i, pItem, pItem->GetCount(), 0, ITEM_CHANGED, true /*stack*/);
					return;
				}
				else
				{
					// can only statck max_stack - current_bank_count
					uint32 remainer = pItem->GetCount() - (bItem->maxStackSize - bItem->count);
					DepositItemInSlot(bankTab, i, pItem, bItem->maxStackSize - bItem->count, remainer, ITEM_CHANGED, true);
					return;
				}
			}
		}
	}

	// source item is not stackable or a full stack of a different item, try to deposit to an empty spot
	for (uint32 slot = 1; slot <= BANK_TAB_SIZE; ++slot)
	{
		if (!GetItem(bankTab, slot))
		{
			// found free slot, deposit
			DepositItemInSlot(bankTab, slot, pItem, pItem->GetCount(), 0, ITEM_NEW, false);
			return;
		}
	}

	if (_player)
	{
		// couldnt find a free slot, tab is full
		_player->GetSession()->SendNotification("Your bank tab is full.");
		_player->SendAddonMessage(prefix, "DepositItem:Error:BankTabFullAdd");
	}
}

// Deposits a player item into the bank
void GuildBank::DepositItemInSlot(uint32 bankTab, uint32 bankSlot, Item* pItem, uint32 count, uint32 remainer, ItemUpdateState state, bool stack)
{
	BankItem* bItem;

	// form a new bItem 
	if (state == ITEM_NEW)
	{
		// insert
		bItem          = new BankItem;
		bItem->is_inferno = b_infernoBank;
		bItem->guid    = GetNewGuid();
		bItem->guildid = guildid;
		bItem->count   = count;
		bItem->tab     = bankTab;
		bItem->slot    = bankSlot;
	}

	// update bItem count
	if (state == ITEM_CHANGED)
	{
		bItem = GetItem(bankTab, bankSlot);
		if (!bItem)
		{
			_player->SendAddonMessage(prefix, "DepositItem:Error:CantFindStackDestinationItemAt:" + std::to_string(bankTab) + ":" + std::to_string(bankSlot));
			return;
		}
		if (stack)
			bItem->count += count; // deposit over same item bank with smaller stack than max
		else
			bItem->count = count; // deposit count items
	}
	

	// form bItem from pItem
	bItem->state = state;

	CloneItem(bItem, pItem);

	// add bank item to the update queue, processed on bank save
	b_itemUpdateQueue.push_back(*bItem);

	if (bItem->state == ITEM_NEW)
		AddItem(bItem);

	if (remainer == 0)
	{
		if (count == pItem->GetCount())
		{
			// deposited all, remove from player inventory
			_player->DestroyItem(pItem->GetBagSlot(), pItem->GetSlot(), true);
		}
		else
		{
			// deposited just a portion (from split)
			pItem->SetCount(pItem->GetCount() - count);
			pItem->SendCreateUpdateToPlayer(_player);
			pItem->SetState(ITEM_CHANGED, _player);
		}
			
	}
	else
	{
		// deposited only count pItem, update player inventory
		//pItem->SetCount(remainer);
		pItem->SetCount( pItem->GetCount() - count ); // 20-4 = 16 left in bag, 
		pItem->SendCreateUpdateToPlayer(_player);
		pItem->SetState(ITEM_CHANGED, _player);

		DepositItemInFreeSlot(bankTab, pItem);
	}

	// Update player view
	SendGuildMessage("GDeposit:" +
		std::to_string(bItem->tab) + ":" +
		std::to_string(bItem->slot) + ":" +
		std::to_string(bItem->guid) + ":" +
		std::to_string(bItem->item_template) + ":" +
		std::to_string(bItem->count) + ":" +
		(bItem->randomPropertyId > 0 ? bItem->Name : "0") + ":" + 
		std::to_string(bItem->randomPropertyId) + ":" + 
		std::to_string(bItem->enchant)
	);

	// Log this deposit action
	LogAction(ACTION_DEPOSIT_ITEM, bItem->tab, bItem->item_template, count, bItem);
	SaveToDB();
}

// Withdraws a bank item to player inventory
void GuildBank::WithdrawItem(std::string msg)
{
	uint32 bankTab;
	uint32 bankSlot;
	uint32 playerBag;
	uint32 playerSlot;
	uint32 withdrawCount;

	// msg = WithdrawItem:bankTab:bankslot:playerbag:playerslot:count
	Tokenizer params(msg, ':', 6);
	if (params.size() == 6)
	{
		bankTab       = atoi(params[1]);
		bankSlot      = atoi(params[2]);
		playerBag     = atoi(params[3]);
		playerSlot    = atoi(params[4]);
		withdrawCount = atoi(params[5]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "WithdrawItem:Error:WrongSyntax(" + msg + ")");
		return;
	}

	if (bankTab == 0 || bankTab > MAX_TABS || bankSlot == 0 || bankSlot > BANK_TAB_SIZE)
	{
		_player->SendAddonMessage(prefix, "WithdrawItem:Error:ParamsOutOfRange");
		return;
	}

	// rights
	if (!CanAccessTab(bankTab, ACTION_WITHDRAW_ITEM))
	{
		_player->GetSession()->SendNotification("You dont have access to this tab.");
		_player->SendAddonMessage(prefix, "WithdrawItem:Error:NoRights");
		return;
	}

	BankItem* bItem = GetItem(bankTab, bankSlot);
	if (!bItem)
	{
		_player->SendAddonMessage(prefix, "WithdrawItem:Error:CantFindBankItem");
		return;
	}

	if (withdrawCount > bItem->count)
	{
		_player->SendAddonMessage(prefix, "WithdrawItem:Error:CantWithdrawMoreThanCount");
		return;
	}

	// auto dest to player bag
	if (playerBag == 0 && playerSlot == 0)
	{
		// withdrawCount should be equal to bItem->count
		// doublecheck just to be sure
		if (bItem->count == withdrawCount)
		{
			WithdrawItem(bankTab, bankSlot, bItem->count, NULL_BAG, NULL_SLOT, bItem, nullptr, 0, false);
			return;
		}
		else
		{
			_player->SendAddonMessage(prefix, "WithdrawItem:Error:CantAutoWithdrawDifferentCount");
			return;
		}
	}
	else
	{
		// targeted destination in bag
		if (playerBag == 0)
			playerBag = 255;
		else
			playerBag = playerBag + 18;

		if (playerBag == 255)
			playerSlot = playerSlot + 22;
		else
			playerSlot = playerSlot - 1;

		Item* pItem = _player->GetItemByPos(playerBag, playerSlot); // destiation

		if (pItem)
		{
			// withdraw to occupied destination

			if (!IsItemBankable(pItem))
				return;

			// check if destination is the same template
			if (pItem->GetProto()->ItemId == bItem->item_template)
			{
				// check if they are stackable
				if (bItem->maxStackSize > 1)
				{
					uint32 count;
					uint32 remainer;

					if (withdrawCount + pItem->GetCount() > pItem->GetMaxStackCount())
					{
						// cant stack all, stack how many we can, leave the rest in bank
						count    = pItem->GetProto()->GetMaxStackSize() - pItem->GetCount();
						remainer = bItem->count - count;
					}
					else
					{
						// can stack/withdraw all
						count    = withdrawCount;
						remainer = bItem->count - count;
					}
					WithdrawItem(bankTab, bankSlot, count, playerBag, playerSlot, bItem, pItem, remainer, false);
					return;
				}
			}

			SwapItems(pItem, bItem);
			return;
		}
		else
		{
			// simple withdraw of withDrawcount to empty destination, leave rest in bank

			uint32 remainer = bItem->count - withdrawCount;
			WithdrawItem(bankTab, bankSlot, withdrawCount, playerBag, playerSlot, bItem, nullptr, remainer, false);
			return;
		}
	}
}

// Withdraws a bank item to player inventory
void GuildBank::WithdrawItem(uint32 bankTab, uint32 bankSlot, uint32 count, uint32 playerBag, uint32 playerSlot, BankItem* bItem, Item* pItem, uint32 remainer, bool swap)
{
	// check if we can store it
	uint32 noSpaceForCount = 0;
	ItemPosCountVec dest;
	InventoryResult msg = _player->CanStoreNewItem(playerBag, playerSlot, dest, bItem->item_template, count, &noSpaceForCount);
	if (msg != EQUIP_ERR_OK)
	{
		_player->SendEquipError(msg, nullptr, nullptr);
		return;
	}

	if (pItem)
	{
		// withdraw count over item in bag

		if (remainer == 0)
		{
			bItem->state = ITEM_REMOVED;

			if (!swap)
			{
				// only clear slot in player view when its not a swap
				// on swap, view is already updated by deposit action that happened first
				SendGuildMessage("GWithdraw:" + std::to_string(bankTab) + ":" + std::to_string(bankSlot)); 
			}
		}
		else
		{
			bItem->count -= count;
			bItem->state = ITEM_CHANGED;

			// decrease count in player view
			SendGuildMessage("GPartialWithdraw:" +
				std::to_string(bItem->tab) + ":" +
				std::to_string(bItem->slot) + ":" +
				std::to_string(bItem->guid) + ":" +
				std::to_string(bItem->item_template) + ":" +
				std::to_string(bItem->count) + ":" +
				"0:0:0"
			);
		}

		b_itemUpdateQueue.push_back(*bItem);

		// update player item with new count
		pItem->SetCount(pItem->GetCount() + count);
		pItem->SendCreateUpdateToPlayer(_player);
		pItem->SetState(ITEM_CHANGED, _player);
		
		LogAction(ACTION_WITHDRAW_ITEM, bItem->tab, bItem->item_template, count, bItem);

		if (bItem->state == ITEM_REMOVED)
			DeleteItem(bItem);

		SendTabWithdrawalsLeft(bankTab);
		
	}
	else
	{
		// rightclick withdraw, let game decide dest

		// create it from bItem
		Item* item = _player->StoreNewItem(dest, bItem->item_template, true, Item::GenerateItemRandomPropertyId(bItem->item_template));

		if (item)
		{
			CloneItem(item, bItem);

			if (remainer == 0)
			{
				bItem->state = ITEM_REMOVED;

				// clear slot in player view
				if (!swap)
				{
					// only clear slot in player view when its not a swap
					// on swap, view is already updated by deposit action that happened first
					SendGuildMessage("GWithdraw:" + std::to_string(bankTab) + ":" + std::to_string(bankSlot));
				}
			}
			else
			{
				bItem->count = remainer;
				bItem->state = ITEM_CHANGED;

				// decrease count in player view
				SendGuildMessage("GPartialWithdraw:" +
					std::to_string(bItem->tab) + ":" +
					std::to_string(bItem->slot) + ":" +
					std::to_string(bItem->guid) + ":" +
					std::to_string(bItem->item_template) + ":" +
					std::to_string(bItem->count) + ":" +
					"0:0:0"
				);
			}

			b_itemUpdateQueue.push_back(*bItem);

			_player->SendNewItem(item, count, true, false, false, false);

			LogAction(ACTION_WITHDRAW_ITEM, bItem->tab, bItem->item_template, count, bItem);

			if (bItem->state == ITEM_REMOVED)
				DeleteItem(bItem);

			SendTabWithdrawalsLeft(bankTab);
		}
		else
		{
			//sLog.outInfo("couldnt create item");
		}
	}

	SaveToDB();
}

// Swaps a player bag item with a guild bank item
void GuildBank::SwapItems(Item* bagItem, BankItem* bankItem)
{
	uint32 noSpaceForCount = 0;
	ItemPosCountVec dest;
	InventoryResult msg = _player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, bankItem->item_template, bankItem->count, &noSpaceForCount);
	if (msg != EQUIP_ERR_OK && msg != EQUIP_ERR_INVENTORY_FULL)
	{
		// can't store it
		_player->SendEquipError(msg, nullptr, nullptr, bankItem->item_template);
		return;
	}

	BankItem aux = *bankItem;
	// deposit bag item in gbank
	DepositItemInSlot(bankItem->tab, bankItem->slot, bagItem, bagItem->GetCount(), 0, ITEM_CHANGED, false);
	// withdraw bank item to player bags
	WithdrawItem(bankItem->tab, bankItem->slot, (&aux)->count, bagItem->GetBagSlot(), bagItem->GetSlot(), &aux, nullptr, 0, true);
}

// Moves a bank item to a different slot
void GuildBank::MoveItem(std::string msg)
{
	uint8 bankTab;
	uint8 fromSlot;
	uint8 toSlot;

	// msg = MoveItem:tab:fromSlot:toSlot
	Tokenizer params(msg, ':', 4);
	if (params.size() == 4)
	{
		bankTab  = atoi(params[1]);
		fromSlot = atoi(params[2]);
		toSlot   = atoi(params[3]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "MoveItem:Error:WrongSyntax(" + msg + ")");
		return;
	}

	// rights
	if (!CanAccessTab(bankTab, ACTION_MOVE_ITEM))
	{
		_player->GetSession()->SendNotification("You dont have access in this tab.");
		_player->SendAddonMessage(prefix, "MoveItem:Error:NoRights");
		return;
	}

	if (fromSlot == toSlot)
	{
		_player->SendAddonMessage(prefix, "MoveItem:Error:SameSourceDest");
		return;
	}

	if (bankTab == 0 || bankTab > MAX_TABS || fromSlot == 0 || fromSlot > BANK_TAB_SIZE || toSlot == 0 || toSlot > BANK_TAB_SIZE)
	{
		_player->SendAddonMessage(prefix, "MoveItem:Error:ParamsOutOfRange");
		return;
	}

	BankItem* sItem = GetItem(bankTab, fromSlot);
	BankItem* dItem = GetItem(bankTab, toSlot);

	MoveItem(sItem, dItem, bankTab, fromSlot, toSlot);
}

// Moves a bank item to a different slot
void GuildBank::MoveItem(BankItem* sItem, BankItem* dItem, uint8 bankTab, uint8 fromSlot, uint8 toSlot)
{

	if (!sItem)
	{
		// source slot null, maybe someone else moved it
		_player->SendAddonMessage(prefix, "MoveItem:Error:CantGetSource");
		return;
	}

	bool swapItems = false;

	if (!dItem)
	{
		// destination is empty just move source to dest
		sItem->slot  = toSlot;
		sItem->state = ITEM_CHANGED;
		b_itemUpdateQueue.push_back(*sItem);

		SendGuildMessage("GMoveItem:from:" +
			std::to_string(bankTab) + ":" +
			std::to_string(fromSlot) + ":" +
			"0:" +
			"0:" +
			"0:" +
			"0:" +
			"0:" +
			"0:" +
			"to:" +
			std::to_string(sItem->tab) + ":" +
			std::to_string(sItem->slot) + ":" +
			std::to_string(sItem->guid) + ":" +
			std::to_string(sItem->item_template) + ":" +
			std::to_string(sItem->count) + ":" +
			(sItem->randomPropertyId > 0 ? sItem->Name : "0") + ":" +
			std::to_string(sItem->randomPropertyId) + ":" +
			std::to_string(sItem->enchant)
		);
		return;
	}
	else
	{
		// destination not empty

		// check if source item_template == dest item_template to stack
		if (sItem->item_template == dItem->item_template)
		{
			// try to stack

			// if source or dest is max stack just swap around
			if (sItem->count == sItem->maxStackSize || dItem->count == dItem->maxStackSize)
			{
				swapItems = true;
			}
			else if ((sItem->count + dItem->count) <= sItem->maxStackSize)
			{
				// can stack all to dest
				uint32 destNewCount      = sItem->count + dItem->count;
				uint32 destOriginalCount = dItem->count;

				dItem->count = destNewCount;
				dItem->state = ITEM_CHANGED;
				b_itemUpdateQueue.push_back(*dItem);

				sItem->state = ITEM_REMOVED;
				b_itemUpdateQueue.push_back(*sItem);

				if (sItem->state == ITEM_REMOVED)
					DeleteItem(sItem);

				SendGuildMessage("GMoveItem:from:" +
					std::to_string(bankTab) + ":" +
					std::to_string(fromSlot) + ":" +
					"0:" +
					"0:" +
					"0:" +
					"0:" +
					"0:" +
					"0:" +
					"to:" +
					std::to_string(dItem->tab) + ":" +
					std::to_string(dItem->slot) + ":" +
					std::to_string(dItem->guid) + ":" +
					std::to_string(dItem->item_template) + ":" +
					std::to_string(dItem->count) + ":" +
					(dItem->randomPropertyId > 0 ? dItem->Name : "0") + ":" +
					std::to_string(dItem->randomPropertyId) + ":" +
					std::to_string(dItem->enchant)
				);
				return;
			}
			else
			{
				// can only move a few to dest
				uint32 sourceNewCount      = sItem->count - (sItem->maxStackSize - dItem->count); // what remains after stack
				uint32 sourceOriginalCount = sItem->count;

				uint32 destNewCount      = dItem->maxStackSize;
				uint32 destOriginalCount = dItem->count;

				sItem->count = sourceNewCount;
				sItem->state = ITEM_CHANGED;
				b_itemUpdateQueue.push_back(*sItem);

				dItem->count = destNewCount;
				dItem->state = ITEM_CHANGED;

				b_itemUpdateQueue.push_back(*dItem);

				SendGuildMessage("GMoveItem:from:" +
					std::to_string(sItem->tab) + ":" +
					std::to_string(sItem->slot) + ":" +
					std::to_string(sItem->guid) + ":" +
					std::to_string(sItem->item_template) + ":" +
					std::to_string(sItem->count) + ":" +
					(sItem->randomPropertyId > 0 ? sItem->Name : "0") + ":" +
					std::to_string(sItem->randomPropertyId) + ":" +
					std::to_string(sItem->enchant) +
					":to:" +
					std::to_string(dItem->tab) + ":" +
					std::to_string(dItem->slot) + ":" +
					std::to_string(dItem->guid) + ":" +
					std::to_string(dItem->item_template) + ":" +
					std::to_string(dItem->count) + ":" +
					(dItem->randomPropertyId > 0 ? dItem->Name : "0") + ":" +
					std::to_string(dItem->randomPropertyId) + ":" +
					std::to_string(dItem->enchant)
				);
				return;
			}
		}
		else
			swapItems = true;
	}

	// swap items around
	if (swapItems)
	{
		sItem->slot  = toSlot;
		sItem->state = ITEM_CHANGED;
		b_itemUpdateQueue.push_back(*sItem);

		dItem->slot  = fromSlot;
		dItem->state = ITEM_CHANGED;
		b_itemUpdateQueue.push_back(*dItem);

		SendGuildMessage("GMoveItem:from:" +
			std::to_string(sItem->tab) + ":" +
			std::to_string(sItem->slot) + ":" +
			std::to_string(sItem->guid) + ":" +
			std::to_string(sItem->item_template) + ":" +
			std::to_string(sItem->count) + ":" +
			(sItem->randomPropertyId > 0 ? sItem->Name : "0") + ":" +
			std::to_string(sItem->randomPropertyId) + ":" +
			std::to_string(sItem->enchant) +
			":to:" +
			std::to_string(dItem->tab) + ":" +
			std::to_string(dItem->slot) + ":" +
			std::to_string(dItem->guid) + ":" +
			std::to_string(dItem->item_template) + ":" +
			std::to_string(dItem->count) + ":" +
			(dItem->randomPropertyId > 0 ? dItem->Name : "0") + ":" +
			std::to_string(dItem->randomPropertyId) + ":" +
			std::to_string(dItem->enchant)
		);

	}

	SaveToDB();
}

// Splits a bank item
void GuildBank::SplitItem(std::string msg)
{
	uint8 bankTab;
	uint8 fromSlot;
	uint8 toSlot;
	uint8 split;

	// msg = SplitItem:tab:fromSlot:toSlot:count
	Tokenizer params(msg, ':', 5);
	if (params.size() == 5)
	{
		bankTab  = atoi(params[1]);
		fromSlot = atoi(params[2]);
		toSlot   = atoi(params[3]);
		split    = atoi(params[4]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "SplitItem:Error:WrongSyntax(" + msg + ")");
		return;
	}

	// rights
	if (!CanAccessTab(bankTab, ACTION_SPLIT_ITEM))
	{
		_player->GetSession()->SendNotification("You dont have access to this tab.");
		_player->SendAddonMessage(prefix, "SplitItem:Error:NoRights");
		return;
	}

	// wrong params
	if (fromSlot == toSlot)
	{
		_player->SendAddonMessage(prefix, "SplitItem:Error:fromSlot=toSlot");
		return;
	}
	if (bankTab == 0 || bankTab > MAX_TABS || fromSlot == 0 || fromSlot > BANK_TAB_SIZE || toSlot == 0 || toSlot > BANK_TAB_SIZE)
	{
		_player->SendAddonMessage(prefix, "SplitItem:Error:ParamsOutOfRange");
		return;
	}

	BankItem* sItem = GetItem(bankTab, fromSlot);
	if (!sItem)
		return;

	BankItem* dItem = GetItem(bankTab, toSlot);

	// check if destination is empty
	if (!dItem)
	{
		// check if dest count >= max stack size (shouldnt get here from UI)
		if (split >= sItem->maxStackSize)
		{
			_player->SendAddonMessage(prefix, "SplitItem:Error:DestinationCountTooBig");
			return;
		}

		uint32 sorceOriginalCount = sItem->count;
		int32 sourceNewCount     =  (int32)sItem->count - (int32)split;

		if (sourceNewCount <= 0)
		{
			//move item todo maybe ?
			_player->SendAddonMessage(prefix, "SplitItem:Error:SourceLeftCount0");
			return;
		}

		sItem->count = sourceNewCount;
		sItem->state = ITEM_CHANGED;
		b_itemUpdateQueue.push_back(*sItem);

		dItem        = CloneBankItem(sItem);
		dItem->slot  = toSlot;
		dItem->count = split;
		dItem->state = ITEM_NEW;
		b_itemUpdateQueue.push_back(*dItem);

		AddItem(dItem);

		// update player view
		SendGuildMessage("GSplitItem:from:" +
			std::to_string(sItem->tab) + ":" +
			std::to_string(sItem->slot) + ":" +
			std::to_string(sItem->guid) + ":" +
			std::to_string(sItem->item_template) + ":" +
			std::to_string(sItem->count) + ":" +
			"0:" +
			"0:" +
			"0:" +
			"to:" +
			std::to_string(dItem->tab) + ":" +
			std::to_string(dItem->slot) + ":" +
			std::to_string(dItem->guid) + ":" +
			std::to_string(dItem->item_template) + ":" +
			std::to_string(dItem->count) + ":" +
			"0:" +
			"0:" +
			"0"
		);
	}
	else
	{
		// destination not empty
		// try to stack if possible

		if (sItem->item_template == dItem->item_template)
		{
			if ((dItem->count + split) <= dItem->maxStackSize)
			{
				// can stack

				uint32 sourceNewCount      = sItem->count - split;
				uint32 sourceOriginalCount = sItem->count - split;

				uint32 destNewCount      = dItem->count + split;
				uint32 destOriginalCount = dItem->count + split;

				if (sourceNewCount <= 0)
				{
					// cant be left with 0 items after split
					_player->SendAddonMessage(prefix, "SplitItem:Error:SourceCount0");
					return;
				}

				if (sourceNewCount > sItem->maxStackSize)
				{
					// weird case, not sure if it can happen
					_player->SendAddonMessage(prefix, "SplitItem:Error:BadSourceCount");
					return;
				}

				if (destNewCount <= 0)
				{
					// cant be left with 0 items after split
					_player->SendAddonMessage(prefix, "SplitItem:Error:DestCount0");
					return;
				}

				if (destNewCount > sItem->maxStackSize)
				{
					// weird case, not sure if it can happen
					_player->SendAddonMessage(prefix, "SplitItem:Error:BadDestCount");
					return;
				}

				sItem->count = sourceNewCount;
				sItem->state = ITEM_CHANGED;
				b_itemUpdateQueue.push_back(*sItem);

				dItem->count = destNewCount;
				dItem->state = ITEM_CHANGED;
				b_itemUpdateQueue.push_back(*dItem);

				// update player view
				SendGuildMessage("GSplitItem:from:" +
					std::to_string(sItem->tab) + ":" +
					std::to_string(sItem->slot) + ":" +
					std::to_string(sItem->guid) + ":" +
					std::to_string(sItem->item_template) + ":" +
					std::to_string(sItem->count) + ":" +
					"0:" +
					"0:" +
					"0:" +
					"to:" +	
					std::to_string(dItem->tab) + ":" +
					std::to_string(dItem->slot) + ":" +
					std::to_string(dItem->guid) + ":" +
					std::to_string(dItem->item_template) + ":" +
					std::to_string(dItem->count) + ":" +
					"0:" +
					"0:" +
					"0"
				);
				return;
			}
			else
			{
				//destination resulting stack too big
				_player->SendAddonMessage(prefix, "SplitItem:cantStackOnTarget");
				return;
			}
		}
		else
		{
			// trying to place a split on top of a different item_template
			_player->SendAddonMessage(prefix, "SplitItem:destinationItemDifferent");
			return;
		}

	}

	SaveToDB();

}
// Deletes a bank item
void GuildBank::DestroyItem(std::string msg)
{
	uint8 bankTab;
	uint8 bankSlot;
	uint8 count;

	// msg = DestroyItem:tab:slot:count
	Tokenizer params(msg, ':', 4);
	if (params.size() == 4)
	{
		bankTab  = atoi(params[1]);
		bankSlot = atoi(params[2]);
		count    = atoi(params[3]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "DestroyItem:Error:WrongSyntax(" + msg + ")");
		return;
	}

	// rights
	if (!CanAccessTab(bankTab, ACTION_DESTROY_ITEM))
	{
		_player->GetSession()->SendNotification("You dont have access to this tab.");
		_player->SendAddonMessage(prefix, "DestroyItem:Error:NoRights");
		return;
	}

	// wrong params
	if (bankTab == 0 || bankTab > MAX_TABS || bankSlot == 0 || bankSlot > BANK_TAB_SIZE)
	{
		_player->SendAddonMessage(prefix, "DestroyItem:Error:ParamsOutOfRange");
		return;
	}

	BankItem* sItem = GetItem(bankTab, bankSlot);
	if (!sItem)
		return;

	if (count > sItem->maxStackSize || count > sItem->count)
	{
		_player->SendAddonMessage(prefix, "DestroyItem:Error:CountTooBig");
		return;
	}

	// destroy all
	if (count == 0 || count == sItem->count)
	{
		sItem->state = ITEM_REMOVED;
		b_itemUpdateQueue.push_back(*sItem);

		// delete item from player view
		SendGuildMessage("GDestroy:" 
			+ std::to_string(bankTab) + ":" 
			+ std::to_string(bankSlot) + ":"
			+ "0" + ":"
			+ std::to_string(sItem->item_template) + ":"
			+ std::to_string(sItem->count)
		);

		LogAction(ACTION_DESTROY_ITEM, bankTab, sItem->item_template, sItem->count, sItem);
	}
	else
	{
		// destroy a portion
		sItem->count -= count;
		sItem->state  = ITEM_CHANGED;

		// decrease count in player view
		SendGuildMessage("GPartialDestroy:" +
			std::to_string(sItem->tab) + ":" +
			std::to_string(sItem->slot) + ":" +
			std::to_string(sItem->guid) + ":" +
			std::to_string(sItem->item_template) + ":" +
			std::to_string(sItem->count)
		);

        LogAction(ACTION_DESTROY_ITEM, bankTab, sItem->item_template, count, sItem);
	}

	if (sItem->state == ITEM_REMOVED)
		DeleteItem(sItem);
}


/* weekly withdrawals */

// Sends how many weekly withdrawals the player has left
void GuildBank::SendTabWithdrawalsLeft(std::string msg)
{
	uint8 tab;

	// msg = GetTabWithdrawalsLeft:tab
	Tokenizer params(msg, ':', 2);
	if (params.size() == 2)
	{
		tab = atoi(params[1]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "SendTabWithdrawalsLeft:Error:WrongSyntax(" + msg + ")");
		return;
	}

	SendTabWithdrawalsLeft(tab);
}

// Sends how many weekly withdrawals the player has left
void GuildBank::SendTabWithdrawalsLeft(uint8 tab)
{

	// wrong params
	if (tab == 0 || tab > MAX_TABS)
	{
		_player->SendAddonMessage(prefix, "SendTabWithdrawalsLeft:Error:ParamsOutOfRange");
		return;
	}

	if (b_tabInfo[tab].withdrawals == 0 || playerRankIndex < b_tabInfo[tab].minrank || playerRankIndex == 0)
		_player->SendAddonMessage(prefix, "TabWithdrawalsLeft:" + std::to_string(tab) + ":Unlimited");
	else
		_player->SendAddonMessage(prefix, "TabWithdrawalsLeft:" + std::to_string(tab) + ":" +
			std::to_string(GetTabWithdrawalsLeft(tab)));
}

uint8 GuildBank::GetTabWithdrawalsLeft(uint8 tab)
{
	// wrong params
	if (tab == 0 || tab > MAX_TABS)
	{
		_player->SendAddonMessage(prefix, "GetTabWithdrawalsLeft:Error:ParamsOutOfRange");
		return 0;
	}

	time_t weekstart = time(0);
	time_t SECONDS_IN_DAY = 60 * 60 * 24;

	tm* timeinfo = localtime(&weekstart);
	int wday     = timeinfo->tm_wday;
	int hour     = timeinfo->tm_hour;
	int min      = timeinfo->tm_min;
	int sec      = timeinfo->tm_sec;
	                            
	wday--;
	if (wday == -1) 
		wday = 6;        //monday should be 0 and sunday 6           

	weekstart -= wday * SECONDS_IN_DAY;
	weekstart -= (sec + 60 * min + 60 * 60 * hour);

	uint8 weekWithdrawals = 0;

	for (const auto& itr : b_log[tab])
	{
		if (itr.second.action != ACTION_WITHDRAW_ITEM)
			continue;
		if (itr.second.player != playerGuid)
			continue;
		if (itr.second.tab != tab)
			continue;
		if (itr.second.stamp >= weekstart)
			weekWithdrawals++;
	}

	if (weekWithdrawals >= b_tabInfo[tab].withdrawals)
		return 0;
	
	return b_tabInfo[tab].withdrawals - weekWithdrawals;
}


/* log */

// Loads bank log from the DB
void GuildBank::LoadLog()
{
	std::unordered_map<uint32, uint32> index;

	for (uint32 tab = 0; tab <= MAX_TABS; ++tab)
		index[tab] = 0;

	time_t timeStamp = time(nullptr) - 604800;
	
	// 1 week behind
	QueryResult *guildBankLog = CharacterDatabase.PQuery("SELECT `log_id`, `player`, `action`, `tab`, `item`, `randomPropertyId`, `enchant`, `count`, `stamp` "
		"FROM guild_bank_log WHERE `guildid` = '%u' AND `isInferno`= '%u' AND `stamp` >= %u "
		"ORDER BY stamp",
		guildid, b_infernoBank, timeStamp);

	if (!guildBankLog)
		return; // log empty

	do
	{
		Field *fields = guildBankLog->Fetch();

		uint8 tab = fields[3].GetUInt8();

		AppendLog(index[tab], tab, fields, ITEM_UNCHANGED);

		index[tab]++;

	} while (guildBankLog->NextRow());

	delete guildBankLog;

	b_moneyLog_changed = false;
	b_log_changed      = false;
}

// Sends tab log to player
void GuildBank::SendTabLog(std::string msg)
{
	uint8 tab;

	// msg = GetLog:tab
	Tokenizer params(msg, ':', 2);
	if (params.size() == 2)
	{
		tab = atoi(params[1]);
	}
	else
	{
		// wrong syntax
		_player->SendAddonMessage(prefix, "SendTabLog:Error:WrongSyntax(" + msg + ")");
		return;
	}

	// wrong params
	if (tab == 0 || tab > MAX_TABS)
	{
		_player->SendAddonMessage(prefix, "SendTabLog:Error:ParamsOutOfRange");
		return;
	}

	std::vector<std::string> messages;
	std::string message = "TabLog:" + std::to_string(tab) + ":";

	uint32 startIndex = 0;

	if (b_log[tab].size() > LOG_LINES_LIMIT)
		startIndex = b_log[tab].size() - LOG_LINES_LIMIT;

	for (uint32 i = startIndex; i < b_log[tab].size(); ++i)
	{
		message +=
			std::to_string(b_log[tab][i].stamp) + ";" +
			b_log[tab][i].playerName + ";" +
			std::to_string(b_log[tab][i].action) + ";" +
			std::to_string(b_log[tab][i].item) + ";" +
			b_log[tab][i].itemName + ";" +
			b_log[tab][i].itemQuality + ";" +
			std::to_string(b_log[tab][i].count) + ";" +
			std::to_string(b_log[tab][i].randomPropertyId) + ";" + 
			std::to_string(b_log[tab][i].enchant) + "=";

		if (message.length() > ADDON_MAX_PACKET_SIZE)
		{
			message.pop_back();
			messages.push_back(message);
			message = "TabLog:" + std::to_string(tab) + ":";
		}
	}

	if (message == "TabLog:" + std::to_string(tab) + ":")
	{
		message += "end";
		messages.push_back(message);
	}
	else
	{
		message.pop_back();
		messages.push_back(message);
		messages.push_back("TabLog:" + std::to_string(tab) + ":end");
	}

	for (const auto msg : messages)
		_player->SendAddonMessage(prefix, msg);
}

// Sends money log to player
void GuildBank::SendMoneyLog(std::string msg)
{
	// msg = GetMoneyLog:
	std::vector<std::string> messages;
	std::string message = "MoneyLog:";

	uint32 startIndex = 0;

	if (b_moneyLog.size() > LOG_LINES_LIMIT)
		startIndex = b_moneyLog.size() - LOG_LINES_LIMIT;

	for (uint32 i = startIndex; i < b_moneyLog.size(); ++i)
	{
		message +=
			std::to_string(b_moneyLog[i].stamp) + ";" +
			b_moneyLog[i].playerName + ";" +
			std::to_string(b_moneyLog[i].action) + ";" +
			std::to_string(b_moneyLog[i].money) + "=";

		if (message.length() > ADDON_MAX_PACKET_SIZE)
		{
			message.pop_back();
			messages.push_back(message);
			message = "MoneyLog:";
		}
	}

	if (message == "MoneyLog:")
	{
		message += "end";
		messages.push_back(message);
	}
	else
	{
		message.pop_back();
		messages.push_back(message);
		messages.push_back("MoneyLog:end");
	}

	for (const auto msg : messages)
		_player->SendAddonMessage(prefix, msg);
}

// Logs an action 
void GuildBank::LogAction(uint8 action, uint32 tab, uint32 itemID, uint32 count, BankItem* bItem)
{
	if (tab > MAX_TABS)
		return; // wrong log tab

	std::string playerName = _player->GetName();
	uint32 index;

	if (tab == TAB_MONEY)
	{
		// money
		index = b_moneyLog.size();

		b_moneyLog[index].player     = playerGuid;
		b_moneyLog[index].action     = action;
		b_moneyLog[index].money      = count;
		b_moneyLog[index].stamp      = time(nullptr);
		b_moneyLog[index].playerName = playerName;
		b_moneyLog[index].state      = ITEM_NEW;

		// for real time log update
		SendGuildMessage("GMoneyLog:0:" +
			std::to_string(b_moneyLog[index].stamp) + ";" +
			b_moneyLog[index].playerName + ";" +
			std::to_string(b_moneyLog[index].action) + ";" +
			std::to_string(b_moneyLog[index].money) + ";" +
			std::to_string(index)
		);

		b_moneyLog_changed = true;
	}
	else {

		// items
		index = b_log[tab].size();
		
		std::string itemName = "Unknown";
		std::string itemQuality = "1";

		if (action == ACTION_WITHDRAW_ITEM || action == ACTION_DEPOSIT_ITEM || action == ACTION_DESTROY_ITEM)
		{
			if (bItem) 
			{
				itemName    = bItem->Name;
				itemQuality = std::to_string(bItem->quality);
			}
		}

		b_log[tab][index].player           = playerGuid;
		b_log[tab][index].action           = action;
		b_log[tab][index].tab              = tab;
		b_log[tab][index].item             = itemID;
		b_log[tab][index].randomPropertyId = bItem ? bItem->randomPropertyId : 0;
		b_log[tab][index].enchant          = bItem ? bItem->enchant : 0;
		b_log[tab][index].count            = count;
		b_log[tab][index].stamp            = time(nullptr);
		b_log[tab][index].playerName       = playerName;
		b_log[tab][index].itemName         = itemName;
		b_log[tab][index].itemQuality      = itemQuality;
		b_log[tab][index].state            = ITEM_NEW;

		// for real time log update
		SendGuildMessage("GTabLog:" + std::to_string(tab) + ":" +
			std::to_string(b_log[tab][index].stamp) + ";" +
			b_log[tab][index].playerName + ";" +
			std::to_string(action) + ";" +
			std::to_string(itemID) + ";" +
			b_log[tab][index].itemName + ";" +
			b_log[tab][index].itemQuality + ";" +
			std::to_string(count) + ";" +
			std::to_string(b_log[tab][index].randomPropertyId) + ";" +
			std::to_string(b_log[tab][index].enchant)
		);

		b_log_changed = true;
	}
}


// Adds a record to itemlog or moneylog
void GuildBank::AppendLog(uint32 index, uint32 tab, Field *fields, uint32 state)
{
	uint32 player = fields[1].GetUInt32();
	uint8 action  = fields[2].GetUInt8();
	uint32 count  = fields[7].GetUInt32();
	uint32 stamp  = fields[8].GetUInt32();

	std::string playerName = "Unknown";

	if (PlayerCacheData* logPlayer = sObjectMgr.GetPlayerDataByGUID(player))
		playerName = logPlayer->sName;


	if (tab == TAB_MONEY)
	{
		// money log
		b_moneyLog[index].player     = player;
		b_moneyLog[index].action     = action;
		b_moneyLog[index].money      = count;
		b_moneyLog[index].stamp      = stamp;
		b_moneyLog[index].playerName = playerName;
		b_moneyLog[index].state      = state;
	}
	else
	{
		// item log
		//uint8 tab = fields[3].GetUInt8();
		uint32 item             = fields[4].GetUInt32();
		uint32 randomPropertyId = fields[5].GetUInt32();
		uint32 enchant          = fields[6].GetUInt32();

		std::string itemName    = "Unknown";
		std::string itemQuality = "1";

		if (const ItemPrototype* logItem = sObjectMgr.GetItemPrototype(item))
		{
			itemName    = logItem->Name1;
			itemQuality = std::to_string(logItem->Quality);

			if (randomPropertyId > 0)
			{
				std::string sufix = sItemRandomPropertiesStore.LookupEntry(randomPropertyId)->nameSuffix[0];
				itemName += " " + sufix;
			}
		}

		b_log[tab][index].player           = player;
		b_log[tab][index].action           = action;
		b_log[tab][index].tab              = tab;
		b_log[tab][index].item             = item;
		b_log[tab][index].count            = count;
		b_log[tab][index].randomPropertyId = randomPropertyId;
		b_log[tab][index].stamp            = stamp;
		b_log[tab][index].playerName       = playerName; 
		b_log[tab][index].itemName         = itemName;
		b_log[tab][index].itemQuality      = itemQuality;
		b_log[tab][index].state            = state;
	}
}

// Helpers

// Sends a addon message to everyone in the guild
void GuildBank::SendGuildMessage(std::string message)
{
	_guild->BroadcastToGuild(_player->GetSession(), prefix + "\t" + message, LANG_ADDON);
}

// Gets a new bank item guid
uint32 GuildBank::GetNewGuid()
{
	uint32 guid = 0;
	for (const auto& item : b_items)
		if (item && item->guid > guid)
			guid = item->guid;
	return guid + 1;
}


/* item handlers */

// Adds a new item into memory
void GuildBank::AddItem(BankItem* pItem)
{
	b_items.push_back(pItem);
}

// Deletes an item from memory
void GuildBank::DeleteItem(BankItem* pItem)
{
	for (std::vector<BankItem*>::const_iterator itr = b_items.begin(); itr != b_items.end(); ++itr)
		if (*itr == pItem)
		{
			auto bankItem = *itr;
			b_items.erase(itr);
			delete bankItem;
			return;
		}
}

// Clones a bank item
BankItem* GuildBank::CloneBankItem(BankItem* sItem)
{
	BankItem* cItem = new BankItem;

	cItem->guildid          = guildid;
	cItem->guid             = GetNewGuid();
	cItem->tab              = sItem->tab;
	cItem->slot             = sItem->slot;
	cItem->item_template    = sItem->item_template;
	cItem->creatorGuid      = sItem->creatorGuid;
	cItem->giftCreatorGuid  = sItem->giftCreatorGuid;
	cItem->count            = sItem->count;
	cItem->maxStackSize     = sItem->maxStackSize;
	cItem->duration         = sItem->duration;
	cItem->charges          = sItem->charges;
	cItem->flags            = sItem->flags;
	cItem->enchantments     = sItem->enchantments;
	cItem->randomPropertyId = sItem->randomPropertyId;
	cItem->enchant          = sItem->enchant;
	cItem->transmogrifyId   = sItem->transmogrifyId;
	cItem->durability       = sItem->durability;
	cItem->text             = sItem->text;
	cItem->generated_loot   = sItem->generated_loot;
	cItem->is_inferno       = sItem->is_inferno;

	return cItem;
}

// Creates an Item from a BankItem, for withdrawals
void GuildBank::CloneItem(Item* item, BankItem* bItem)
{	
	item->SetOwnerGuid(playerGuid);
	item->SetGuidValue(ITEM_FIELD_CREATOR, bItem->creatorGuid);
	item->SetGuidValue(ITEM_FIELD_GIFTCREATOR, bItem->giftCreatorGuid);
	item->SetUInt32Value(ITEM_FIELD_DURATION, bItem->duration);

	Tokenizer chr(bItem->charges, ' ', MAX_ITEM_PROTO_SPELLS);
	if (chr.size() == MAX_ITEM_PROTO_SPELLS)
		for (uint8 i = 0; i < MAX_ITEM_PROTO_SPELLS; ++i)
			item->SetSpellCharges(i, atoi(chr[i]));

	item->SetUInt32Value(ITEM_FIELD_FLAGS, bItem->flags);

	std::string enchants = bItem->enchantments;

	Tokenizer ench(enchants, ' ', MAX_ENCHANTMENT_SLOT * MAX_ENCHANTMENT_OFFSET);

	for (uint8 i = 0; i < MAX_ENCHANTMENT_SLOT; ++i) {
		item->SetUInt32Value(ITEM_FIELD_ENCHANTMENT + i * MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_ID_OFFSET,
			strtoul(ench[i * MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_ID_OFFSET], nullptr, 10));
		item->SetUInt32Value(ITEM_FIELD_ENCHANTMENT + i * MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_DURATION_OFFSET,
			strtoul(ench[i * MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_DURATION_OFFSET], nullptr, 10));
		item->SetUInt32Value(ITEM_FIELD_ENCHANTMENT + i * MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_CHARGES_OFFSET,
			strtoul(ench[i * MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_CHARGES_OFFSET], nullptr, 10));
	}

	item->SetUInt32Value(ITEM_FIELD_RANDOM_PROPERTIES_ID, bItem->randomPropertyId);
	item->SetTransmogrification(bItem->transmogrifyId);

	item->SetUInt32Value(ITEM_FIELD_DURABILITY, bItem->durability);
	item->SetUInt32Value(ITEM_FIELD_ITEM_TEXT_ID, bItem->text);

	item->SetGeneratedLoot(bItem->generated_loot == 1);
}

// Clones a Item into a BankItem
void GuildBank::CloneItem(BankItem* bItem, Item* pItem)
{
	bItem->Name            = pItem->GetProto()->Name1;
	bItem->item_template   = pItem->GetProto()->ItemId;
	bItem->creatorGuid     = pItem->GetGuidValue(ITEM_FIELD_CREATOR).GetCounter();
	bItem->giftCreatorGuid = pItem->GetGuidValue(ITEM_FIELD_GIFTCREATOR).GetCounter();
	bItem->maxStackSize    = pItem->GetProto()->GetMaxStackSize();
	bItem->duration        = pItem->GetInt32Value(ITEM_FIELD_DURATION);
	bItem->is_inferno      = b_infernoBank;

	std::ostringstream ssSpells;
	for (uint8 i = 0; i < MAX_ITEM_PROTO_SPELLS; ++i)
		ssSpells << pItem->GetSpellCharges(i) << ' ';

	bItem->charges = ssSpells.str();

	bItem->flags = pItem->GetUInt32Value(ITEM_FIELD_FLAGS);

	std::string ssEnchants = "";
	for (uint8 i = 0; i < MAX_ENCHANTMENT_SLOT; ++i)
	{
		ssEnchants = ssEnchants + std::to_string(pItem->GetEnchantmentId(EnchantmentSlot(i))) + " ";
		ssEnchants = ssEnchants + std::to_string(pItem->GetEnchantmentDuration(EnchantmentSlot(i))) + " ";
		ssEnchants = ssEnchants + std::to_string(pItem->GetEnchantmentCharges(EnchantmentSlot(i))) + " ";
	}
	bItem->enchantments     = ssEnchants;
	bItem->enchant          = pItem->GetEnchantmentId(EnchantmentSlot(0));

	bItem->randomPropertyId = pItem->GetInt32Value(ITEM_FIELD_RANDOM_PROPERTIES_ID);
	if (bItem->randomPropertyId > 0)
	{
		std::string sufix = sItemRandomPropertiesStore.LookupEntry(bItem->randomPropertyId)->nameSuffix[0];
		bItem->Name += " " + sufix;
	}

	bItem->transmogrifyId = pItem->GetTransmogrification();
	bItem->durability     = pItem->GetUInt32Value(ITEM_FIELD_DURABILITY);
	bItem->text           = pItem->GetUInt32Value(ITEM_FIELD_ITEM_TEXT_ID);
	bItem->generated_loot = pItem->HasGeneratedLootSecondary() ? 1 : 0;
	bItem->quality        = pItem->GetProto()->Quality;
}

// Gets itemm from memory
BankItem* GuildBank::GetItem(uint32 tab, uint32 slot)
{
	for (const auto& item : b_items)
	{
		if (!item)
			continue;
		if (item->tab == tab && item->slot == slot)
			return item;
	}
	return nullptr;
}
