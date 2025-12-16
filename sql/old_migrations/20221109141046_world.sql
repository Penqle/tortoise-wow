-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2428

UPDATE `quest_template` SET `RewRepFaction2` = 0, `RewRepFaction3` = 0, `RewRepValue2` = 0, `RewRepValue3` = 0 WHERE `entry` = 80396;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2425

UPDATE `quest_template` SET `ZoneOrSort` = 17 WHERE `entry` = 40684;
UPDATE `quest_template` SET `ZoneOrSort` = 17 WHERE `entry` = 40685;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2423

DELETE FROM `creature_loot_template` WHERE `entry` = 7395;
UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` = 7395;
UPDATE `creature_template` SET `skinning_loot_id` = 0 WHERE `entry` = 7395;
UPDATE `creature_template` SET `type` = 8 WHERE `entry` = 7395;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2415

UPDATE `creature_template` SET `nature_res` = 0 WHERE `entry` = 5288;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2414

REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(7848, 4304, 77.167, 1, 1, 2, 0),
(7848, 8169, 2.3256, 1, 1, 2, 0),
(7848, 8170, 20.5074, 1, 1, 2, 0),
(7848, 18947, 80, 2, 1, 2, 0);

UPDATE `creature_template` SET `skinning_loot_id` = 7848 WHERE `entry` = 7848;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2413

UPDATE `creature_template` SET `skinning_loot_id` = 9683 WHERE `entry` = 9683;
UPDATE `creature_template` SET `skinning_loot_id` = 9683 WHERE `entry` = 9684;

REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(9683, 4304, 77.2672, 1, 1, 1, 0),
(9683, 8169, 3.2648,  1, 1, 1, 0),
(9683, 8170, 19.468,  1, 1, 1, 0),
(9684, 4304, 12.9032, 2, 1, 1, 0),
(9684, 8170, 83.2845, 2, 1, 1, 0),
(9684, 8171, 3.8123,  2, 1, 1, 0);

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2433

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES 

(17344, 0, 0, 'Heart Candy', '', 29331, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21816, 15, 0, 'Heart Candy', 'Be mine!',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21817, 15, 0, 'Heart Candy', 'I LOVE YOU',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21818, 15, 0, 'Heart Candy', 'I\'ll follow you all around Azeroth.',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21819, 15, 0, 'Heart Candy', 'All yours.',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21820, 15, 0, 'Heart Candy', 'You\'re the best!',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21821, 15, 0, 'Heart Candy', 'I\'m all yours!',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21822, 15, 0, 'Heart Candy', 'You\'re mine!',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21823, 15, 0, 'Heart Candy', 'Hot lips.',	34654, 1, 0, 5, 25, 1, 0, 32767, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2424

UPDATE `creature_template` SET `npc_flags` = 19, `trainer_type` = 2 WHERE `entry` = 60447;

REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (60447, 7733, 100, 0, 0, 5);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (60447, 7734, 500, 356, 50, 0);

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2429

UPDATE `creature_template` SET `loot_id` = 2742 WHERE `entry` = 91766;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2410

UPDATE `creature_template` SET `skinning_loot_id` = 8302 WHERE `entry` = 8302;

DELETE FROM `skinning_loot_template` WHERE `entry` = 8302;
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (8302, 4304, 85, 1, 1, 1, 0);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (8302, 8170, 15, 1, 1, 1, 0);

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2409

UPDATE `creature_template` SET `skinning_loot_id` = 10077 WHERE `entry` = 10077;

DELETE FROM `skinning_loot_template` WHERE `entry` = 10077;

REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('10077', '8170', '50', '1', '1', '2', '0'),
('10077', '4304', '45', '1', '1', '2', '0'),
('10077', '8171', '3', '1', '1', '1', '0'),
('10077', '8169', '2', '1', '1', '1', '0');

-- Related to https://github.com/slowtorta/turtlewow-bug-tracker/issues/2421

UPDATE `gameobject_template` SET `name` = 'Signed Letter' WHERE `entry` = 175704;
DELETE FROM `gameobject` where `id` = 175704;