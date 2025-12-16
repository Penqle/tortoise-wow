-- NPC ID 59991 should wield Item ID 55127 in his main hand with nothing on his off-hand.
UPDATE `creature_equip_template` SET `equipentry1` = 55127, `equipentry2` = 0, `equipentry3` = 0 WHERE `entry` = 59991;

-- replace netherclaw gauntlets
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (55356, 'Netherwrought Bracers', '', 4, 4, 6, 4, 68207, 1, 60, 1, -1, -1, 285127, 71281, 9, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 55, 459, 0, 0, 96, 0, 65, 0, 0, 0, 0, 10, 0, 4, 24, 3, 20, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- breh
update item_template set stat_value1 = 11, stat_value2 = 10, stat_value3 = 9, spellid_1 = 18033 where entry = 21604; -- Bracelets of Royal Redemption
update item_template set spellppmrate_1 = 2, stat_value1 = 16, stat_type1 = 5 where entry = 60787; -- Scythe of the Harvest
UPDATE `item_template` SET max_count = 1, spelltrigger_4 = 1, item_level = 88, stat_type1 = 7, stat_value1 = 22, armor = 166, spellid_1 = 7518, spellid_2 = 13669, spellid_3 = 15464, spelltrigger_3 = 1, spellid_4 = 9346, name = 'Chain-Cloak of the Rookguard' WHERE `entry` = 55274; -- Cloak of the Forgotten Dawn

-- mcp + battery powered cousin adjustments
update item_template set delay = 2900, dmg_min1 = 66, dmg_max1 = 102, spellcooldown_1 = 1200000 where entry = 9449; -- Manual Crowd Pummeler
update item_template set stat_value1 = 21, stat_value2 = 13, delay = 2900, dmg_min1 = 99, dmg_max1 = 151, spellcooldown_1 = 1200000, required_level = 45, item_level = 50, disenchant_id = 47, quality = 3, description = 'Battery not included.' where entry = 60099; -- Battery-Powered Crowd Pummeler 
update item_template set quality = 3, name = 'Schematic: Hypertech Essentials' where entry = 51809; -- Schematic: Battery-Powered Crowd Pummeler
update item_template set max_count = 1, inventory_type = 2, class = 15 where entry = 55507; -- Choker of Terminal Arcanum
update item_template set max_count = 1, inventory_type = 11, class = 15, spellid_2 = 13679 where entry = 55508; -- Brand of Karazhan
update item_template set inventory_type = 5 where entry = 55504; -- Anchor of the Wavecutter

-- NPC ID 59991 and 59981 should have the following item IDs in the listed loot groups with the listed drop c 4:hance percentages.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (59991, 55482, 4, 4, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (59981, 55482, 4, 4, 1, 1, 0);
-- Remove Item ID 51801 and 60098 from NPC ID 7800's loottables.
delete from creature_loot_template where entry = 7800 and item in (51801,60098);