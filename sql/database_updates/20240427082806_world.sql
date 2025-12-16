-- Item 56097 should be added to the following creatures loot, on its own loot table, and with a drop chance of 0.3%
-- 9045, 9257, 9097, 9258, 9044, 9098, 9043, 9264, 9263, 9260, 9259, 9261, 9262, 9265, 9267, 9268, 9239, 9241, 9269.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(9045, 56097, 0.3, 6, 1, 1, 0),
(9257, 56097, 0.3, 6, 1, 1, 0),
(9097, 56097, 0.3, 6, 1, 1, 0),
(9258, 56097, 0.3, 6, 1, 1, 0),
(9044, 56097, 0.3, 6, 1, 1, 0),
(9098, 56097, 0.3, 6, 1, 1, 0),
(9043, 56097, 0.3, 6, 1, 1, 0),
(9264, 56097, 0.3, 6, 1, 1, 0),
(9263, 56097, 0.3, 6, 1, 1, 0),
(9260, 56097, 0.3, 6, 1, 1, 0),
(9259, 56097, 0.3, 6, 1, 1, 0),
(9261, 56097, 0.3, 6, 1, 1, 0),
(9262, 56097, 0.3, 6, 1, 1, 0),
(9265, 56097, 0.3, 6, 1, 1, 0),
(9267, 56097, 0.3, 6, 1, 1, 0),
(9268, 56097, 0.3, 6, 1, 1, 0),
(9239, 56097, 0.3, 6, 1, 1, 0),
(9241, 56097, 0.3, 6, 1, 1, 0),
(9269, 56097, 0.3, 6, 1, 1, 0);
-- Item 56097 should be added to the following creatures loot, on its own loot table, and with a drop chance of 0.4%
-- 9240, 9266, 9200, 9218, 9197, 9198, 9199, 9216, 9219, 9217, 9717, 9693, 9692, 9696, 9716.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(9240, 56097, 0.4, 6, 1, 1, 0),
(9266, 56097, 0.4, 6, 1, 1, 0),
(9200, 56097, 0.4, 6, 1, 1, 0),
(9218, 56097, 0.4, 6, 1, 1, 0),
(9197, 56097, 0.4, 6, 1, 1, 0),
(9198, 56097, 0.4, 6, 1, 1, 0),
(9199, 56097, 0.4, 6, 1, 1, 0),
(9216, 56097, 0.4, 6, 1, 1, 0),
(9219, 56097, 0.4, 6, 1, 1, 0),
(9217, 56097, 0.4, 6, 1, 1, 0),
(9717, 56097, 0.4, 6, 1, 1, 0),
(9693, 56097, 0.4, 6, 1, 1, 0),
(9692, 56097, 0.4, 6, 1, 1, 0),
(9696, 56097, 0.4, 6, 1, 1, 0),
(9716, 56097, 0.4, 6, 1, 1, 0);
-- Item 56097 should be added to the following creatures loot, on its own loot table, and with a drop chance of 6%
-- 9568.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (9568, 56097, 6, 6, 1, 1, 0);
-- Item 56098, add as a drop to creature 9056 on its own loot table with a drop chance of 9%
-- Item 56098, add as a drop to creature 8897 on its own loot table with a drop chance of 0.8%
-- Item 56098, add as a drop to creature 8900 on its own loot table with a drop chance of 0.9%
-- item 56098, add as a drop to creature 8899 on itss own loot table with a drop chance of 0.7%
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (9056, 56098, 9  , 1, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (8897, 56098, 0.8, 1, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (8900, 56098, 0.9, 1, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (8899, 56098, 0.7, 1, 1, 1, 0);
-- Item 56097 should be added to the following creatures loot, on its own loot table, and with a drop chance of 0.5%
-- 8898, 8891, 8895, 8903, 8893, 8889, 8890, 8892, 8894.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(8898, 56097, 0.5, 1, 1, 1, 0),
(8891, 56097, 0.5, 1, 1, 1, 0),
(8895, 56097, 0.5, 1, 1, 1, 0),
(8903, 56097, 0.5, 1, 1, 1, 0),
(8893, 56097, 0.5, 1, 1, 1, 0),
(8889, 56097, 0.5, 1, 1, 1, 0),
(8890, 56097, 0.5, 1, 1, 1, 0),
(8892, 56097, 0.5, 1, 1, 1, 0),
(8894, 56097, 0.5, 1, 1, 1, 0);
-- Move Item ID 80719 to loot group 1 for NPC ID 4832, with a 15% chance to drop 1 item, reduce Item ID 6903's drop chance to 35%
delete from creature_loot_template where entry = 4832 and item = 80719;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30153, 80719, 15, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30153, 6903, 35, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30153, 1155, 50, 1, 1, 1, 0);
-- Move Item ID 80743 to loot group 1 for NPC ID 4543, with a 15% chance to drop 1 item, reduce Item ID 7684's drop chance to 35%
delete from creature_loot_template where entry = 4543 and item = 80743;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30149, 7684, 35, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30149, 7685, 50, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30149, 80743, 15, 1, 1, 1, 0);

-- Buff deez nuts:
-- Razorfen Downs
update item_template set disenchant_id = 44, item_level = 44, required_level = 39, spellid_1 = 23727, spelltrigger_1 = 1, quality = 3, armor = 81, max_durability = 35, buy_price = 20470, sell_price = 4114 where entry = 10765; -- Bonefingers
update item_template set disenchant_id = 44, item_level = 40, required_level = 35, quality = 3, armor = 75, max_durability = 35, stat_value1 = 11, stat_value2 = 10, buy_price = 14570, sell_price = 2914 where entry = 10760; -- Swine Fists
update item_template set disenchant_id = 44, quality = 3, max_durability = 90, spellid_1 = 16393, dmg_min1 = 39, dmg_max1 = 73, buy_price = 73020, sell_price = 14604 where entry = 10772; -- Glutton's Cleaver
update item_template set stat_type1 = 7, stat_value2 = 0, armor = 40 where entry = 10770; -- Mordresh\'s Lifeless Skull
update item_template set stat_value2 = 0, spellid_1 = 57158, spelltrigger_1 = 1 where entry = 10769; -- Glowing Eye of Mordresh
update item_template set stat_type2 = 3 where entry = 10763; -- Icemetal Barbute
update item_template set stat_value1 = 9, stat_type1 = 5, stat_type2 = 7, stat_value2 = 3, stat_value3 = 0, spellid_1 = 24595, spelltrigger_1 = 1 where entry = 10764; -- Deathchill Armor
update item_template set stat_value1 = 9, stat_type1 = 5, stat_type2 = 7, stat_value2 = 3, stat_value3 = 0, spellid_1 = 23727, spelltrigger_1 = 1, spellid_2 = 18384, spelltrigger_2 = 1 where entry = 10762; -- Robes of the Lich
update item_template set item_level = 40, name = 'Plaguemaw\'s Staff of Rotting' where entry = 80744; -- Plaguerot Staff
update item_template set allowable_class = -1, shadow_res = 0, spellid_1 = 9398, spelltrigger_1 = 1 where entry = 10766; -- Plaguerot Sprig
-- SM GY
update item_template set disenchant_id = 43, quality = 3, max_durability = 65, dmg_min1 = 22, dmg_max1 = 41, buy_price = 38776, sell_price = 7755, stat_value1 = 8, stat_type1 = 5 where entry = 7683; -- Bloody Brass Knuckles
-- Zul'farrak
update item_template set disenchant_id = 46, quality = 3, max_durability = 65, dmg_min1 = 39, dmg_max1 = 72, buy_price = 112393, sell_price = 22478, spellppmrate_1 = 0.9 where entry = 9467; -- Gahz'rilla Fang
update item_template set stat_value1 = 23, stat_value2 = 0, spellid_1 = 9411, spelltrigger_1 = 1, spellid_2 = 16615, spelltrigger_2 = 1 where entry = 9469; -- Gahz'rilla Scale Armor
update item_template set stat_value1 = 21, stat_value2 = 8, spellid_1 = 57158, spelltrigger_1 = 1 where entry = 9474; -- Jinxed Hoodoo Kilt
update item_template set stat_value1 = 8, stat_type1 = 5, stat_value2 = 13, stat_type2 = 7, stat_value3 = 0, spellid_1 = 45422, spelltrigger_1 = 1 where entry = 9473; -- Jinxed Hoodoo Skin
-- Uldaman
update item_template set disenchant_id = 45, quality = 3, max_durability = 90, dmg_min1 = 47, dmg_max1 = 89, buy_price = 108460, sell_price = 21692, spellppmrate_1 = 0.9 where entry = 9419; -- Galgann's Firehammer
update item_template set disenchant_id = 45, quality = 3, armor = 33, buy_price = 42935, sell_price = 6132, stat_value1 = 12, stat_type1 = 7, stat_value2 = 6 where entry = 11311; -- Emberscale Cape
update item_template set disenchant_id = 45, quality = 3, max_durability = 70, armor = 205, buy_price = 42935, sell_price = 8587, stat_type1 = 6, stat_type2 = 7, stat_value3 = 0, stat_value1 = 7, stat_value2 = 9, spellid_1 = 9334, spelltrigger_1 = 1 where entry = 9411; -- Rockshard Pauldrons
update item_template set disenchant_id = 45, quality = 3, max_durability = 75, armor = 119, buy_price = 51870, sell_price = 10374, stat_value1 = 20, fire_res = -5 where entry = 9414; -- Oilskin Leggings
-- Deadmines
update item_template set disenchant_id = 41, quality = 3, max_durability = 75, dmg_min1 = 42, dmg_max1 = 78, buy_price = 11813, sell_price = 2362, spellid_1 = 48029, spelltrigger_1 = 1 where entry = 872; -- Rockslicer
update item_template set disenchant_id = 23, quality = 2, item_level = 21, required_level = 16, dmg_min1 = 31, dmg_max1 = 57, buy_price = 10058, sell_price = 2011, armor = 75 where entry = 5187; -- Rhahk'Zor's Hammer
-- Wailing Caverns
update item_template set disenchant_id = 41, quality = 3, max_durability = 70, armor = 65, buy_price = 3605, sell_price = 721, stat_value1 = 4, stat_value2 = 6, stat_type1 = 3, stat_type2 = 6 where entry = 5404; -- Serpent's Shoulders
-- misc jc
update item_template set bonding = 2 where entry = 55204; -- Runebound Amulet
update item_template set fire_res = 10, spellid_1 = 9296 where entry = 80826; -- Scale of the Red Drake
update item_template set spellppmrate_1 = 2 where entry = 17076; -- Bonereaver's Edge
-- NEW ITEMS
-- Zandara Windhoof
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (55369, 'Kolkar Marauder Gauntlets', '', 4, 3, 5, 3, 27060, 1, 18, 0, -1, -1, 4040, 808, 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 122, 0, 0, 23, 0, 41, 0, 0, 0, 0, 0, 0, 4, 5, 7, 6, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55370, 'Totem of Static Charge', '', 4, 9, 1, 3, 28108, 1, 18, 0, -1, -1, 10000, 2500, 28, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, random_property, required_reputation_faction, required_reputation_rank, spellid_1, spelltrigger_1) values (55371, 'Windborne Sash', '', 4, 1, 7, 2, 16773, 1, 17, 0, -1, -1, 1957, 391, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 20, 20, 0, 0, 22, 0, 3, 0, 0, 0, 0, 0, 0, 5, 3, 0, 0, 0, 21360, 1);
-- Vangros
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank, spellid_1, spelltrigger_1) values (55372, 'Band of the Claw', '', 4, 0, 1, 3, 6486, 1, 18, 1, -1, -1, 4915, 1228, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 23, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9140, 1);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55373, 'Idol of the Apex Predator', '', 4, 8, 1, 3, 26594, 1, 18, 1, -1, -1, 10000, 2500, 28, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (55374, 'Enraging Waistwraps', '', 4, 2, 8, 2, 16935, 1, 17, 1, -1, -1, 12351, 470, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 25, -25, 0, 0, 22, 0, 3, 0, 0, 0, 0, 0, 0, 4, 5, 3, 2, 0, 0, 0);
-- Jared Vess
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55375, 'Corrosive Vial', '', 4, 0, 1, 3, 18077, 1, 17, 1, -1, -1, 2000, 500, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (55376, 'Mixologist', 'Useful for mixing poisons and twisting guts.', 2, 15, 1, 3, 20472, 1, 17, 1, -1, -1, 12046, 2384, 13, 3, 0, 0, 1, 1, 0, 18, 34, 1800, 0, 0, 50, 0, 0, 0, 22, 0, 41, 0, 0, 0, 0, 0, 0, 3, 4, 6, 2, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (55377, 'Chemist\'s Shawl', 'Full of holes.', 4, 1, 7, 2, 27673, 1, 16, 0, -1, -1, 3378, 675, 16, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 3, 0, 0, 0, 0, 0, 0, 5, 3, 6, 2, 0, 0, 0);
-- Masterpiece Harvester
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55378, 'Inventor\'s Mitts', 'It feels as if your hands have a mind of their own.', 4, 1, 7, 3, 9609, 1, 18, 0, -1, -1, 2055, 411, 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 20, 23, 0, 0, 23, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55379, 'Slag Slugger', '', 2, 3, 1, 3, 20727, 1, 18, 0, -1, -1, 10802, 2140, 26, 0, 0, 0, 1, 1, 0, 15, 28, 2300, 0, 0, 65, 0, 0, 0, 23, 100, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (55380, 'Craftsman\'s Pants', 'Oil leaks have not been kind to these trousers.', 4, 2, 8, 2, 19041, 1, 17, 0, -1, -1, 4646, 929, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 55, 71, 0, 0, 22, 0, 3, 0, -5, 0, 0, 0, 0, 5, 4, 6, 7, 0, 0, 0);
-- Rare Drop from Unnatural Overgrowth
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank, required_skill, required_skill_rank) values (55381, 'Phytolance', '', 2, 6, 1, 3, 20749, 2, 18, 0, -1, -1, 15799, 3179, 17, 1, 0, 0, 1, 1, 0, 41, 76, 3000, 0, 0, 80, 0, 0, 0, 23, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 182, 80);
-- Prelate Ironmane
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (55382, 'Mitre of the First Light', 'Prior to the unification of the Churches, the Gilneans regarded the Light as a neutral force, neither inherently good nor evil, but simply one among various powers in the world.', 4, 1, 7, 3, 40075, 1, 20, 0, -1, -1, 8536, 1708, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 34, 0, 0, 25, 0, 41, 0, 0, 0, 0, 0, 0, 6, 6, 21508, 1, 0, 0, -1, 0, -1, 45420, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (55383, 'Prelate\'s Sigil', '', 4, 0, 1, 3, 66423, 1, 20, 0, -1, -1, 12105, 2421, 23, 6, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 41, 0, 0, 0, 0, 0, 0, 5, 3, 6, 6, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55384, 'Hilt of Radiance', '', 2, 7, 1, 3, 66252, 1, 20, 0, -1, -1, 18800, 3740, 13, 3, 0, 0, 1, 1, 0, 26, 51, 2400, 0, 0, 80, 0, 0, 0, 25, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (55385, 'Signet of Faded Sermons', '', 4, 0, 1, 3, 23728, 1, 20, 1, -1, -1, 8835, 2208, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 41, 0, 0, 0, 0, 0, 0, 7, 4, 13674, 1, 0, 0, 0, 0, -1, 0, 0, 0);
-- Duke Dreadmoore
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (55386, 'Harbinger Girdle', '', 4, 3, 5, 3, 25866, 1, 30, 0, -1, -1, 12530, 2506, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 40, 133, 0, 0, 35, 0, 43, 0, 0, 0, 0, 0, 0, 4, 8, 7, 8, 45420, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (55387, 'Introduction to the Dark Arts', 'A few pages are missing, surely they can\'t be that important.', 4, 0, 1, 3, 8092, 1, 30, 1, -1, -1, 12500, 3125, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 43, 0, 0, 0, 0, 10, 0, 6, -5, 9413, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, random_property, required_reputation_faction, required_reputation_rank) values (55388, 'Slain Sentry\'s Ring', 'Severed finger not included.', 4, 0, 1, 3, 26391, 1, 30, 1, -1, -1, 26053, 6513, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 43, 0, 0, 0, 0, 0, 0, 7, 10, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, random_property, required_reputation_faction, required_reputation_rank) values (55389, 'Ghoulskin Treads', '', 4, 2, 8, 3, 3709, 1, 30, 0, -1, -1, 16853, 3371, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 77, 0, 0, 35, 0, 43, 0, 0, 0, 0, 0, 0, 4, 8, 3, 2, 7, 10, 0, 0, 0);
-- NPC ID 61961 should drop the following Item IDs in the same loottable with the following drop chances: 55375 (25%), 55376 (25%), 55377 (50%).
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61961, 55375, 25, 0, 1, 1, 0),
(61961, 55376, 25, 0, 1, 1, 0),
(61961, 55377, 50, 0, 1, 1, 0);
-- NPC ID 61963 should drop the following Item IDs in the same loottable with the following drop chances: 55378 (25%), 55379 (25%), 55380 (50%).
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61963, 55378, 25, 0, 1, 1, 0),
(61963, 55379, 25, 0, 1, 1, 0),
(61963, 55380, 50, 0, 1, 1, 0);
-- NPC ID 61968 should drop the following Item IDs in the same loottable with the following drop chances: 55369 (25%), 55370 (25%), 55371 (50%).
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61968, 55369, 25, 0, 1, 1, 0),
(61968, 55370, 25, 0, 1, 1, 0),
(61968, 55371, 50, 0, 1, 1, 0);
-- NPC ID 61965 should drop the following Item IDs in the same loottable with the following drop chances: 55372 (25%), 55373 (25%), 55374 (50%).
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61965, 55372, 25, 0, 1, 1, 0),
(61965, 55373, 25, 0, 1, 1, 0),
(61965, 55374, 50, 0, 1, 1, 0);
-- NPC ID 61969 should drop the following Item IDs in the same loottable with the following drop chances: 55382 (25%), 55383 (25%), 55384 (25%), 55385 (25%).
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61969, 55382, 25, 0, 1, 1, 0),
(61969, 55383, 25, 0, 1, 1, 0),
(61969, 55384, 25, 0, 1, 1, 0),
(61969, 55385, 25, 0, 1, 1, 0);
-- NPC ID 61972 should drop the following Item IDs in the same loottable with the following drop chances: 55386 (25%), 55387 (25%), 55388 (25%), 55389 (25%).
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61972, 55386, 25, 0, 1, 1, 0),
(61972, 55387, 25, 0, 1, 1, 0),
(61972, 55388, 25, 0, 1, 1, 0),
(61972, 55389, 25, 0, 1, 1, 0);
-- NPC ID 61964 should drop Item ID 55381 with a 0.02% drop chance from the same loot group as Serpent's Bite.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61964, 55381, 0.02, 5, 1, 1, 0);