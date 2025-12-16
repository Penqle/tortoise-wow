UPDATE `spell_template` SET `description` = 'Permanently increase the intellect by 8 and spell power by 6 of an item worn on the chest, legs, hands or feet.  Only usable on items level 60 and above.' WHERE `entry` = 57115;
UPDATE `spell_template` SET `name` = 'Intellect +8, Spell Power +6' WHERE `entry` = 57136;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57127;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57142;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57148;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57036;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57034;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57032;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57127;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57142;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57148;
UPDATE `spell_template` SET `name` = 'Enchant Chest - Mighty Mana' WHERE `entry` = 57119;

-- Rainy weather for Gilneas:

REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES (5179, 60, 0, 0, 60, 0, 0, 60, 0, 0, 60, 0, 0);

-- Create books for new mage's teleports and portals.

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES 

(92001, 9, 0, 'Tome of Teleportaion: Theramore', 'A weathered tome, imbued with the arcane knowledge, grants mages the ability to swiftly journey to the city''s shores.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 589, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49360, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL), 
(92002, 9, 0, 'Tome of Portals: Theramore', 'An enchanted compendium that empowers mages to create portals leading to the city of Theramore, fostering swift transportation for allies and friends.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 589, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49365, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL), 
(92003, 9, 0, 'Tome of Teleportaion: Stonard', 'A weathered tome, imbued with the arcane knowledge, grants mages the ability to swiftly journey to the outpost of Stonard.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 434, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49357, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL), 
(92004, 9, 0, 'Tome of Portals: Stonard', 'Unleashing the arcane essence contained within, this tome enables mages to conjure portals that transport them and their companions to the stronghold of Stonard, deep within the Swamp of Sorrow.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 434, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49363, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

UPDATE `item_template` SET `bonding` = 1 WHERE `entry` IN (92001, 92002, 92003, 92004);

-- New recipies added to skill line ability.

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36457, 333, 57142, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36458, 333, 57144, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36459, 333, 57146, 0, 0, 1, 0, 0, 210, 205, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36460, 333, 57148, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36461, 333, 57119, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36462, 333, 57117, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36463, 164, 57113, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36464, 164, 57121, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36465, 171, 57111, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36466, 165, 57125, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36467, 197, 57123, 0, 0, 1, 0, 0, 320, 310, 0);

-- NPC ID 61550 should have a random respawn timer between 12 and 24 hours.

UPDATE `creature` SET `spawntimesecsmin` = 43200, `spawntimesecsmax` = 86400 WHERE `id` = 61550;

-- quest 40872, 40873, 40874, 40875, 40883, 40884, change short description to the following: 

-- "Gather 50 Bright Dream Shards for Evandil Nightwind at Nordanaar in Hyjal."

UPDATE `quest_template` SET `Objectives` = 'Gather 50 Bright Dream Shards for Evandil Nightwind at Nordanaar in Hyjal.' WHERE `entry` IN (40872, 40873, 40874, 40875, 40883, 40884);

-- Item Powerful Smelling Salts (entry 8546) set requirement to First Aid 250 instead of 200

UPDATE `item_template` SET `required_skill_rank` = 250 WHERE `entry` = 8546;

-- Recipe: Alchemists' Stone (Entry 13517) change to rarity purple (epic) 

UPDATE `item_template` SET `quality` = 4 WHERE `entry` = 13517;

-- Increase dropchance of 61198 from 3.2 to 4.4 
-- Increase dropchance of 61198 from 6.4 to 7.6 

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60742, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60743, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60744, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60745, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60746, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61212, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61334, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61335, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61332, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61333, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61336, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61337, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61338, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61339, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61340, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61341, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61346, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61345, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61344, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61343, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61367, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61342, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61347, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61356, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61357, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61358, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61359, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61353, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61352, 61198, 6.5, 0, 1, 1, 0);

-- Quest The Recipe of Powerful Smelling Salts (entry 40875), change name to Pattern: Enchanted Armor Kit

-- change main description to : "Long ago the druids of Hyjal devised a potent and powerful leatherworking recipe to enhance their armor.$B$BThis armor kit contains the very power of the druidic magic itself.$B$BIf you desire, I could give you this pattern in exchange for your efforts to assist us in Nordanaar. It could be a powerful boon for you and your allies."

-- change item reward to Pattern: Enchanted Armor Kit (Entry 61179)

UPDATE `quest_template` SET `Title` = 'Pattern: Enchanted Armor Kit', `Details` = 'Long ago the druids of Hyjal devised a potent and powerful leatherworking recipe to enhance their armor.$B$BThis armor kit contains the very power of the druidic magic itself.$B$BIf you desire, I could give you this pattern in exchange for your efforts to assist us in Nordanaar. It could be a powerful boon for you and your allies.', `RewItemId1` = 61179 WHERE `entry` = 40875;

-- Item Glyph of the Dreamkin (Entry 51361) change item to blue (rare) rarity, change description text to 
-- "Your Moonkin Form appears as a Dreamkin, while this Glyph is on your keyring."
-- Add item Glyph of the Dreamkin as a drop from Solnius (60748) at 14%

-- Item Glyph of the Dream Panther, change description text to 
-- "Your Cat Form appears as a Dream Panther, while this Glyph is on your keyring."

UPDATE `item_template` SET `description` = 'Your Moonkin Form appears as a Dreamkin, while this Glyph is on your keyring.', `quality` = 3 WHERE `entry` = 51361;
UPDATE `item_template` SET `description` = 'Your Cat Form appears as a Dream Panther, while this Glyph is on your keyring.', `quality` = 3 WHERE `entry` = 51362;

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 51361, 14, 11, 1, 1, 0);

-- Buff damage from Echo of Time (Entry 61318) by 20%

UPDATE `creature_template` SET `dmg_min` = 970, `dmg_max` = 1284 WHERE `entry` = 61318;

-- NPC Lord Darius Ravenwood change gossip text to : "Gilneas has seen darker days. With newfound allies, such as you, hope remains. I feared the Alliance would've abandoned us, but here we stand. I will bend no knee to these Alteraci scum. We will prevail."

UPDATE `broadcast_text` SET `male_text` = 'Gilneas has seen darker days. With newfound allies, such as you, hope remains. I feared the Alliance would\'ve abandoned us, but here we stand.$B$BI will bend no knee to these Alteraci scum. We will prevail.' WHERE `entry` = 61326;

-- New items with Moon's spells:

replace into item_template values
 ('92005', '0', '0', 'Invocation of Shattering', '', '32831', '3', '0', '1', '0', '0', '0', '-1', '-1', '65',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57151', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('92006', '0', '0', 'Invocation of Greater Protection', '', '32831', '3', '0', '1', '0', '0', '0', '-1', '-1', '65',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57152', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('92007', '0', '0', 'Invocation of Expansive Mind', '', '32831', '3', '0', '1', '0', '0', '0', '-1', '-1', '65',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57153', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('92008', '0', '0', 'Invocation of Greater Arcane Fortitude', '', '32831', '3', '0', '1', '0', '0', '0', '-1', '-1', '65',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57154', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
-- Add spell 57155 as a use effect with -1 charges, it should be consumed to item Sigil of Leeching (entry 61436)

-- Add spell 57156 as a use effect with -1 charges, it should be consumed to item Sigil of Leeching (entry 61437)

-- Add spell 57157 as a use effect with -1 charges, it should be consumed to item Sigil of Leeching (entry 61438)

UPDATE `item_template` SET `spellid_1` = 57155, `spellcharges_1` = -1 WHERE `entry` = 61436;
UPDATE `item_template` SET `spellid_1` = 57156, `spellcharges_1` = -1 WHERE `entry` = 61437;
UPDATE `item_template` SET `spellid_1` = 57157, `spellcharges_1` = -1 WHERE `entry` = 61438;

UPDATE `spell_template` SET `effectMiscValue1` = 3026 WHERE `entry` = 57134;
UPDATE `spell_template` SET `effectMiscValue1` = 1068 WHERE `entry` = 57127;
UPDATE `spell_template` SET `description` = 'Permanently increase the spell power and intellect values of an item worn on the chest, legs, hands or feet by 8 and 6, respectively.  Only usable on items level 60 and above.' WHERE `entry` = 57135;
UPDATE `spell_template` SET `description` = 'Permanently increase the intellect by 8 and spell power by 6 of an item worn on the chest, legs, hands or feet.  Only usable on items level 60 and above.' WHERE `entry` = 57115;
UPDATE `spell_template` SET `effectMiscValue1` = 3025 WHERE `entry` = 57135;
UPDATE `spell_template` SET `totem1` = 11130 WHERE `entry` = 57146;
UPDATE `spell_template` SET `reagent1` = 11135, `reagent2` = 5637, `reagentCount2` = 2, `reagentCount3` = 2, `reagentCount4` = 0 WHERE `entry` = 57146;

UPDATE `spell_template` SET `effectMiscValue1` = 3026 WHERE `entry` = 57134;
UPDATE `spell_template` SET `effectMiscValue1` = 1068 WHERE `entry` = 57127;
UPDATE `spell_template` SET `description` = 'Permanently increase the spell power and intellect values of an item worn on the chest, legs, hands or feet by 8 and 6, respectively.  Only usable on items level 60 and above.' WHERE `entry` = 57135;
UPDATE `spell_template` SET `description` = 'Permanently increase the intellect by 8 and spell power by 6 of an item worn on the chest, legs, hands or feet.  Only usable on items level 60 and above.' WHERE `entry` = 57115;
UPDATE `spell_template` SET `effectMiscValue1` = 3025 WHERE `entry` = 57135;
UPDATE `spell_template` SET `totem1` = 11130 WHERE `entry` = 57146;
UPDATE `spell_template` SET `reagent1` = 11135, `reagent2` = 5637, `reagentCount2` = 2, `reagentCount3` = 2, `reagentCount4` = 0 WHERE `entry` = 57146;
UPDATE `spell_template` SET `description` = 'Permanently enchant a pair of boots to increase stamina by 15.' WHERE `entry` = 57127;
UPDATE `spell_template` SET `description` = 'Teaches you how to permanently enchant a pair of boots to increase stamina by 15.' WHERE `entry` = 57126;

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36457, 333, 57142, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36458, 333, 57144, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36459, 333, 57146, 0, 0, 1, 0, 0, 210, 205, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36460, 333, 57148, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36461, 333, 57119, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36462, 333, 57117, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36463, 164, 57113, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36464, 164, 57121, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36465, 171, 57111, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36466, 165, 57125, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36467, 197, 57123, 0, 0, 1, 0, 0, 320, 310, 0);

UPDATE `spell_template` SET `effectMiscValue1` = 3049 WHERE `entry` = 57157;
UPDATE `spell_template` SET `effectMiscValue1` = 3040 WHERE `entry` = 57151;
UPDATE `spell_template` SET `effectMiscValue1` = 3049 WHERE `entry` = 57152;

-- Trying to fix items:

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (61436, 12, 0, 'Sigil of Leeching', '', 20774, 3, 64, 1, 0, 0, 0, 2047, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57155, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

UPDATE `item_template` SET `class` = 12, `flags` = 64, `bonding` = 1 WHERE `entry` IN (61081, 61436, 61437, 61438, 92005, 92006, 92007, 92008);

-- whoops
update spell_template SET EffectBasePoints1 = 0, EffectBasePoints2 = 0, EffectBasePoints3 = 1 WHERE entry = 13679; -- Haste 1
update spell_template SET EffectBasePoints1 = 1, EffectBasePoints2 = 1, EffectBasePoints3 = 3 WHERE entry = 8815; -- Haste 2
update spell_template SET EffectBasePoints1 = 2, EffectBasePoints2 = 2, EffectBasePoints3 = 5 WHERE entry = 13680; -- Haste 3
update spell_template SET EffectBasePoints1 = 3, EffectBasePoints2 = 3, EffectBasePoints3 = 7 WHERE entry = 13681; -- Haste 4
update spell_template SET EffectBasePoints1 = 4, EffectBasePoints2 = 4, EffectBasePoints3 = 9 WHERE entry = 13682; -- Haste 5
update spell_template SET EffectBasePoints1 = 9, EffectBasePoints2 = 9, EffectBasePoints3 = 19 WHERE entry = 18065; -- Haste 10
update spell_template SET EffectBasePoints1 = 849, EffectBasePoints2 = 849 WHERE entry = 48002; -- Dark Accord
update spell_template SET EffectBasePoints1 = 49 WHERE entry = 48006; -- Strike (Crafted Shoulder Effect)
update spell_template SET ReagentCount1 = 10, ReagentCount2 = 10, ReagentCount3 = 8 WHERE entry = 46667; -- Pauldron of Deflection

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (19126, 0, 0, 0, 0);

-- Some new drops:

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

-- Add these items as a 0.03% drop chance from creatures 61191, 61192, 61193, 61194, 61211, 61195, 61196, 61197, 61198, 61199, 61200, 61201, 61202, 61203, 61204, 61205, 61206, 61207, 61208, 61209, 61210, and a 1.2% chance from 61226, 61224, 61223, 61222, 61221

-- Formula: Enchant Cape - Greater Arcane Resistance (Entry 61180)
-- Plans: Thorium Spurs (Entry 61178)
-- Formula: Powerful Smelling Salts (Entry 8547)
-- Recipe: Potion of Quickness (Entry 61177)

(61191, 61180, 0.03, 11, 1, 1, 0),
(61192, 61180, 0.03, 11, 1, 1, 0),
(61193, 61180, 0.03, 11, 1, 1, 0),
(61194, 61180, 0.03, 11, 1, 1, 0),
(61195, 61180, 0.03, 11, 1, 1, 0),
(61196, 61180, 0.03, 11, 1, 1, 0),
(61197, 61180, 0.03, 11, 1, 1, 0),
(61198, 61180, 0.03, 11, 1, 1, 0),
(61199, 61180, 0.03, 11, 1, 1, 0),
(61200, 61180, 0.03, 11, 1, 1, 0),
(61201, 61180, 0.03, 11, 1, 1, 0),
(61202, 61180, 0.03, 11, 1, 1, 0),
(61203, 61180, 0.03, 11, 1, 1, 0),
(61204, 61180, 0.03, 11, 1, 1, 0),
(61205, 61180, 0.03, 11, 1, 1, 0),
(61206, 61180, 0.03, 11, 1, 1, 0),
(61207, 61180, 0.03, 11, 1, 1, 0),
(61208, 61180, 0.03, 11, 1, 1, 0),
(61209, 61180, 0.03, 11, 1, 1, 0),
(61210, 61180, 0.03, 11, 1, 1, 0),
(61211, 61180, 0.03, 11, 1, 1, 0),

(61191, 61178, 0.03, 11, 1, 1, 0),
(61192, 61178, 0.03, 11, 1, 1, 0),
(61193, 61178, 0.03, 11, 1, 1, 0),
(61194, 61178, 0.03, 11, 1, 1, 0),
(61195, 61178, 0.03, 11, 1, 1, 0),
(61196, 61178, 0.03, 11, 1, 1, 0),
(61197, 61178, 0.03, 11, 1, 1, 0),
(61198, 61178, 0.03, 11, 1, 1, 0),
(61199, 61178, 0.03, 11, 1, 1, 0),
(61200, 61178, 0.03, 11, 1, 1, 0),
(61201, 61178, 0.03, 11, 1, 1, 0),
(61202, 61178, 0.03, 11, 1, 1, 0),
(61203, 61178, 0.03, 11, 1, 1, 0),
(61204, 61178, 0.03, 11, 1, 1, 0),
(61205, 61178, 0.03, 11, 1, 1, 0),
(61206, 61178, 0.03, 11, 1, 1, 0),
(61207, 61178, 0.03, 11, 1, 1, 0),
(61208, 61178, 0.03, 11, 1, 1, 0),
(61209, 61178, 0.03, 11, 1, 1, 0),
(61210, 61178, 0.03, 11, 1, 1, 0),
(61211, 61178, 0.03, 11, 1, 1, 0),

(61191, 8547, 0.03, 11, 1, 1, 0),
(61192, 8547, 0.03, 11, 1, 1, 0),
(61193, 8547, 0.03, 11, 1, 1, 0),
(61194, 8547, 0.03, 11, 1, 1, 0),
(61195, 8547, 0.03, 11, 1, 1, 0),
(61196, 8547, 0.03, 11, 1, 1, 0),
(61197, 8547, 0.03, 11, 1, 1, 0),
(61198, 8547, 0.03, 11, 1, 1, 0),
(61199, 8547, 0.03, 11, 1, 1, 0),
(61200, 8547, 0.03, 11, 1, 1, 0),
(61201, 8547, 0.03, 11, 1, 1, 0),
(61202, 8547, 0.03, 11, 1, 1, 0),
(61203, 8547, 0.03, 11, 1, 1, 0),
(61204, 8547, 0.03, 11, 1, 1, 0),
(61205, 8547, 0.03, 11, 1, 1, 0),
(61206, 8547, 0.03, 11, 1, 1, 0),
(61207, 8547, 0.03, 11, 1, 1, 0),
(61208, 8547, 0.03, 11, 1, 1, 0),
(61209, 8547, 0.03, 11, 1, 1, 0),
(61210, 8547, 0.03, 11, 1, 1, 0),
(61211, 8547, 0.03, 11, 1, 1, 0),

(61191, 61177, 0.03, 11, 1, 1, 0),
(61192, 61177, 0.03, 11, 1, 1, 0),
(61193, 61177, 0.03, 11, 1, 1, 0),
(61194, 61177, 0.03, 11, 1, 1, 0),
(61195, 61177, 0.03, 11, 1, 1, 0),
(61196, 61177, 0.03, 11, 1, 1, 0),
(61197, 61177, 0.03, 11, 1, 1, 0),
(61198, 61177, 0.03, 11, 1, 1, 0),
(61199, 61177, 0.03, 11, 1, 1, 0),
(61200, 61177, 0.03, 11, 1, 1, 0),
(61201, 61177, 0.03, 11, 1, 1, 0),
(61202, 61177, 0.03, 11, 1, 1, 0),
(61203, 61177, 0.03, 11, 1, 1, 0),
(61204, 61177, 0.03, 11, 1, 1, 0),
(61205, 61177, 0.03, 11, 1, 1, 0),
(61206, 61177, 0.03, 11, 1, 1, 0),
(61207, 61177, 0.03, 11, 1, 1, 0),
(61208, 61177, 0.03, 11, 1, 1, 0),
(61209, 61177, 0.03, 11, 1, 1, 0),
(61210, 61177, 0.03, 11, 1, 1, 0),
(61211, 61177, 0.03, 11, 1, 1, 0),

(61221, 61180, 1.2, 11, 1, 1, 0),
(61222, 61180, 1.2, 11, 1, 1, 0),
(61223, 61180, 1.2, 11, 1, 1, 0),
(61224, 61180, 1.2, 11, 1, 1, 0),
(61226, 61180, 1.2, 11, 1, 1, 0),

(61221, 61178, 1.2, 11, 1, 1, 0),
(61222, 61178, 1.2, 11, 1, 1, 0),
(61223, 61178, 1.2, 11, 1, 1, 0),
(61224, 61178, 1.2, 11, 1, 1, 0),
(61226, 61178, 1.2, 11, 1, 1, 0),

(61221, 8547, 1.2, 11, 1, 1, 0),
(61222, 8547, 1.2, 11, 1, 1, 0),
(61223, 8547, 1.2, 11, 1, 1, 0),
(61224, 8547, 1.2, 11, 1, 1, 0),
(61226, 8547, 1.2, 11, 1, 1, 0),

(61221, 61177, 1.2, 11, 1, 1, 0),
(61222, 61177, 1.2, 11, 1, 1, 0),
(61223, 61177, 1.2, 11, 1, 1, 0),
(61224, 61177, 1.2, 11, 1, 1, 0),
(61226, 61177, 1.2, 11, 1, 1, 0),

-- Add these items as a 0.9% drop chance from creatures 61224, 61223, 61222, 61221, and a 2.2% drop chance from 61226

-- Recipe: Alchemists' Stone (Entry 13517)
-- Plans: Dawnstone Hammer (Entry 61185)
-- Pattern: Gloves of Unwinding Mystery (Entry 61190)
-- Formula: Enchant Gloves - Arcane Power (Entry 70001)
-- Formula: Enchant Boots - Superior Stamina  (Entry 61219)
-- Schematic: Intricate Gyroscope Goggles (Entry 61191)
-- Pattern: Inscribed Runic Bracers (Entry 61192)

(61221, 13517, 0.9, 11, 1, 1, 0),
(61222, 13517, 0.9, 11, 1, 1, 0),
(61223, 13517, 0.9, 11, 1, 1, 0),
(61224, 13517, 0.9, 11, 1, 1, 0),

(61221, 61185, 0.9, 11, 1, 1, 0),
(61222, 61185, 0.9, 11, 1, 1, 0),
(61223, 61185, 0.9, 11, 1, 1, 0),
(61224, 61185, 0.9, 11, 1, 1, 0),

(61221, 61190, 0.9, 11, 1, 1, 0),
(61222, 61190, 0.9, 11, 1, 1, 0),
(61223, 61190, 0.9, 11, 1, 1, 0),
(61224, 61190, 0.9, 11, 1, 1, 0),

(61221, 70001, 0.9, 11, 1, 1, 0),
(61222, 70001, 0.9, 11, 1, 1, 0),
(61223, 70001, 0.9, 11, 1, 1, 0),
(61224, 70001, 0.9, 11, 1, 1, 0),

(61221, 61219, 0.9, 11, 1, 1, 0),
(61222, 61219, 0.9, 11, 1, 1, 0),
(61223, 61219, 0.9, 11, 1, 1, 0),
(61224, 61219, 0.9, 11, 1, 1, 0),

(61221, 61191, 0.9, 11, 1, 1, 0),
(61222, 61191, 0.9, 11, 1, 1, 0),
(61223, 61191, 0.9, 11, 1, 1, 0),
(61224, 61191, 0.9, 11, 1, 1, 0),

(61221, 61192, 0.9, 11, 1, 1, 0),
(61222, 61192, 0.9, 11, 1, 1, 0),
(61223, 61192, 0.9, 11, 1, 1, 0),
(61224, 61192, 0.9, 11, 1, 1, 0),

(61226, 61192, 2.2, 11, 1, 1, 0),
(61226, 61191, 2.2, 11, 1, 1, 0),
(61226, 61219, 2.2, 11, 1, 1, 0),
(61226, 61190, 2.2, 11, 1, 1, 0),
(61226, 70001, 2.2, 11, 1, 1, 0),
(61226, 61185, 2.2, 11, 1, 1, 0),
(61226, 13517, 2.2, 11, 1, 1, 0);

 UPDATE `broadcast_text` SET `male_text` = 'Please, don\'t kill me!\n\nI\'m the bootlegger who created the recipe for the famous Southsea Reserve!\n\nYou... you can buy some of it if you\'d like!' WHERE `entry` = 92137