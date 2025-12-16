-- NPC Samantha Stewards remove item Pattern: Devilsaur Gauntlets (Entry 15728) from vendor list.
delete from npc_vendor where entry = 61272 and item = 15758;
-- Add item 8384 to Samantha Stewards vendor list with a limit of 1 (2 hr resupply timer). 
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61272, 0, 8384, 1, 7200, 0, 0);
-- Remove the following items from Samantha Stewards sell list:
delete from npc_vendor where entry = 61272 and item in (117,159,1179,1205,1645,1708,2287,3770,3771,4599,8766,8952);
-- Copy sell list of Mariette Shademoore (Entry 61373) to NPC Nolan Tanner (61370).
delete from npc_vendor where entry = 61370;
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4540, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4541, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4542, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4544, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4601, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 8950, 0, 0, 0, 0);
-- Add item 7976 to NPC Larry Bolder with limited stock of 1, and a resupply time of 2hrs.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61276, 0, 7976, 1, 7200, 0, 0);
-- Add item
replace into item_template values
 ('61616', '4', '4', 'Boldercrest Breastplate', '', '22480', '2', '0', '1', '80000', '7366', '5', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '427', '0', '0', '0',
 '0', '0', '0', '9142', '1', '0', '0', '-1', '0', '-1', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '115', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
-- to Larry Bolders sell list with a limited stock of 1, and a 2hr restock timer
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61276, 0, 61616, 1, 7200, 0, 0);
-- Add item
replace into item_template values
 ('61617', '4', '6', 'Iron-plated Defender', '', '26325', '2', '0', '1', '65000', '17508', '14', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1428', '0', '0', '0',
 '0', '0', '0', '13384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '4', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
-- to Larry Bolders sell list with a limited stock of 1, and a 2hr restock timer
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61276, 0, 61617, 1, 7200, 0, 0);
-- Item Le Fishe Au Chocolat add sell value of 3 silver, and buy value of 12 silver.
update item_template set buy_price = 1200, sell_price = 300 where entry = 84040;
-- Maltimor's Prototype loot ID changed:
update creature_template set loot_id = 61551 where entry = 61551;
-- Replace Duskskitterer's quest item drops with these items, each with equal chance to drop.
delete from reference_loot_template where entry = 30565;
REPLACE INTO reference_loot_template VALUES
(30565, 61610, 0, 1, 1, 1, 0),
(30565, 61611, 0, 1, 1, 1, 0),
(30565, 61612, 0, 1, 1, 1, 0);
-- Maltimor's Prototype, Widow of the Woods, Firstborn of Arugal should have a 24-48 hour respawn timer.
update creature set spawntimesecsmin = 86400, spawntimesecsmax = 172800 where ID in (61551,61553,61558);
-- Dawnhowl, Duskskitter, Baron Silverlaine, Bonecruncher should have a 12-24 hour respawn timer.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where ID in (61554,61552,3887,61555);
-- Replace Bonecruncher BoE uncommon item loottable to drop one of three items listed, with equal drop chances:
delete from creature_loot_template where entry = 61555;
update creature_template set loot_id = 61555 where entry = 61555;
-- Shadeflayer Goliath should drop the following items with the listed drop chances:
REPLACE INTO reference_loot_template VALUES
(30581, 61545, 10, 1, 1, 1, 0),
(30581, 61546, 40, 1, 1, 1, 0),
(30581, 61547, 10, 1, 1, 1, 0),
(30581, 61548, 40, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61533, 30581, 100, 0, -30581, 1, 0);
-- Embereye should not drop the following items:
delete from creature_loot_template where entry = 61516 and item = 30581;

-- Questline Reward Buffs
-- The Final Passage
update item_template set quality = 3, dmg_min1 = 42, dmg_max1 = 72, disenchant_id = 45, max_durability = 90, stat_value1 = 6, stat_value2 = 6 where entry = 6804; -- Windstorm Hammer
update item_template set quality = 3, dmg_min1 = 36, dmg_max1 = 68, disenchant_id = 45, max_durability = 90, sell_price = 10209, buy_price = 40836 where entry = 6806; -- Dancing Flame
-- The Legend of Stalvan
update item_template set quality = 3, dmg_min1 = 25, dmg_max1 = 48, disenchant_id = 44, max_durability = 90, stat_value1 = 2, spellid_1 = 16409, spelltrigger_1 = 2, spellppmRate_1 = 1, spellcooldown_1 = 300, sell_price = 8826, buy_price = 35316 where entry = 2044; -- Crescent of Forlorn Spirits
update item_template set quality = 3, disenchant_id = 44, stat_value1 = 7, stat_value2 = 0, stat_type1 = 6, spellid_1 = 14521, spelltrigger_1 = 1, sell_price = 10209, buy_price = 40836 where entry = 2043; -- Ring of Forlorn Spirits
-- Saving Yenniku
update item_template set quality = 3, dmg_min1 = 74, dmg_max1 = 112, disenchant_id = 45, max_durability = 100, stat_value1 = 2, spellid_1 = 9345, spelltrigger_1 = 1, sell_price = 26994, buy_price = 107976 where entry = 4143; -- Nimboya's Mystical Staff
update item_template set quality = 3, disenchant_id = 45, stat_value1 = 12, spellid_1 = 24351, spelltrigger_1 = 1 where entry = 6723; -- Medal of Courage
-- Weapons of Spirit
update item_template set quality = 3, dmg_min1 = 57, dmg_max1 = 106, disenchant_id = 46, max_durability = 90, sell_price = 30875, buy_price = 123500, stat_value1 = 9, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 9684; -- Force of the Hippogryph
update item_template set quality = 3, dmg_min1 = 62, dmg_max1 = 115, disenchant_id = 46, max_durability = 90, sell_price = 31097, buy_price = 124388, stat_value1 = 10, armor = 50 where entry = 9686; -- Spirit of the Faerie Dragon
update item_template set quality = 3, dmg_min1 = 131, dmg_max1 = 197, disenchant_id = 46, max_durability = 100, sell_price = 38459, buy_price = 153836, stat_value1 = 12, stat_value2 = 24 where entry = 9683; -- Strength of the Treant
update item_template set quality = 3, dmg_min1 = 99, dmg_max1 = 149, disenchant_id = 46, max_durability = 100, sell_price = 36370, buy_price = 145480, stat_value1 = 19, stat_value2 = 18 where entry = 10652; -- Will of the Mountain Giant
-- Venom to the Undercity
update item_template set quality = 3, armor = 78, disenchant_id = 47, max_durability = 80, sell_price = 15875, buy_price = 63500, spellid_1 = 9346, spelltrigger_1 = 1 where entry = 9649; -- Royal Highmark Vestments
update item_template set quality = 3, armor = 327, disenchant_id = 47, max_durability = 120, sell_price = 21619, buy_price = 86476, stat_value2 = 11, spellid_1 = 22912, spelltrigger_1 = 1 where entry = 9650; -- Honorguard Chestpiece
update item_template set quality = 3, armor = 1898, block = 34, disenchant_id = 47, max_durability = 100, sell_price = 25395, buy_price = 101580, stat_value2 = 0, spellid_1 = 13669, spelltrigger_1 = 1 where entry = 10686; -- Aegis of Battle
-- Saving Sharpbeak
update item_template set quality = 3, dmg_min1 = 66, dmg_max1 = 124, disenchant_id = 47, max_durability = 90, spellppmRate_1 = 1.3, sell_price = 32193, buy_price = 128772 where entry = 9651; -- Gryphon Rider's Stormhammer
update item_template set quality = 3, disenchant_id = 47, stat_value1 = 20, stat_value2 = 20, sell_price = 16159, buy_price = 64636, max_durability = 75 where entry = 9652; -- Gryphon Rider's Leggings
-- The Curse of the Tides
update item_template set quality = 3, disenchant_id = 44, sell_price = 5031, buy_price = 20124, spellid_1 = 21620, spelltrigger_1 = 1, max_durability = 80, armor = 58 where entry = 4120; -- Robe of Crystal Waters
-- Trol'kalar
update item_template set quality = 3, disenchant_id = 45, sell_price = 9351, buy_price = 37404, spellid_1 = 45420, spelltrigger_1 = 1, max_durability = 120, armor = 262 where entry = 4508; -- Blood-tinged Armor
update item_template set quality = 3, disenchant_id = 45, sell_price = 9938, buy_price = 39752, spellid_1 = 13679, spelltrigger_1 = 1, max_durability = 100, armor = 1287, block = 22 where entry = 4507; -- Pit Fighter's Shield
-- The Missing Diplomat
update item_template set quality = 3, disenchant_id = 44, stat_value1 = 4, stat_value2 = 4, stat_value3 = 4, stat_value4 = 4, stat_type3 = 3, stat_type4 = 5, sell_price = 5567, buy_price = 22268, spellid_1 = 9396, spelltrigger_1 = 1 where entry = 6757; -- Jaina's Signet Ring
-- Tower of Althalaxx
update item_template set stat_value1 = 11, stat_value2 = 4 where entry = 5614; -- Seraph's Strike
update item_template set stat_value1 = 7, stat_value2 = 5, spellid_1 = 7681, spelltrigger_1 = 1 where entry = 10043; -- Pious Legwraps
-- Bloodstone Sword Change
update item_template set spellid_1 = 45421, stat_value1 = 8, stat_value2 = 8 where entry = 60294; -- Bloodstone Warblade
