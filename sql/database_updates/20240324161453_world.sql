REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (92010, 15, 0, 'Noblegarden Egg', 'Happy Noblegarden! May your hunts lead to surprises.', 18047, 3, 4, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `locales_item` (`entry`, `name_loc0`, `name_loc4`, `description_loc0`, `description_loc4`) VALUES (92010, 'Noblegarden Egg', '复活节彩蛋', 'Happy Noblegarden! May your hunts lead to surprises.',  '祝您复活节快乐！愿您的狩猎满载而归，惊喜连连。');

UPDATE `creature_template` SET `display_id1` = 18820, name = 'White Riding Talbuk' WHERE `entry` = 22200;
UPDATE `creature_template` SET `display_id1` = 18819, name = 'Black Riding Talbuk' WHERE `entry` = 22203;

UPDATE item_template SET max_count = 0 WHERE entry = 92010;

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES 

(92011, 4, 0, 'Lavender Spring Shirt', '', 68017, 3, 0, 1, 0, 0, 4, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92012, 4, 0, 'Mint Spring Shirt', '', 68018, 3, 0, 1, 0, 0, 4, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92019, 4, 0, 'Green Spring Shirt ', '', 68024, 3, 0, 1, 0, 0, 4, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92013, 4, 0, 'Pink Spring Shirt', '', 68019, 3, 0, 1, 0, 0, 4, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92014, 4, 0, 'Cerulean Spring Shirt', '', 40160, 3, 0, 1, 0, 0, 4, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92014, 4, 1, 'Spring Chemise', '', 67875, 2, 0, 1, 0, 0, 5, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92015, 4, 0, 'Traditional Spring Fan', '', 61015 , 1, 0, 1, 0, 0, 23, -1, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92016, 15, 2, 'Spotted Rabbit', 'Agile and quick, it hops around with a whimsical grace that captivates the hearts of adventurers across Azeroth.', 7913, 1, 0, 1, 10000, 2500, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92017, 15, 4, 'White Riding Talbuk', '', 23358, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, ''),
(92018, 15, 4, 'Dark Riding Talbuk', '', 23358, 4, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, '');

REPLACE INTO `locales_item` (`entry`, `name_loc0`, `name_loc4`) VALUES 
(92017, 'White Riding Talbuk', '白色骑乘塔布羊'),
(92018, 'Dark Riding Talbuk', '黑色骑乘塔布羊'),
(92016, 'Spotted Rabbit', '斑点兔'),

(92011, 'Lavender Spring Shirt', '紫色春季衬衫'),
(92012, 'Mint Spring Shirt', '薄荷绿春季衬衫'),
(92013, 'Pink Spring Shirt', '粉色春季衬衫'),
(92014, 'Spring Chemise', '春季连衣裙'),
(92019, 'Green Spring Shirt ', '绿色春季衬衫');

UPDATE spell_template SET description = 'Agile and quick, it hops around with a whimsical grace that captivates the hearts of adventurers across Azeroth.' WHERE entry = 10712;
UPDATE spell_template SET description = 'If you go chasing snowshoe rabbits, you know you''re going to fall.' WHERE entry = 10711;

UPDATE `locales_item` SET `name_loc4` = '悲伤的云朵' WHERE `entry` = 81240;
UPDATE `locales_item` SET `name_loc4` = '开心的云朵' WHERE `entry` = 81239;

REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (60150, 7131, 0, 0, 0, 0, 'Gizbert Eggwell', 'Egg-hunting Expert', 0, 42, 42, 2000, 3000, 0, 0, 4391, 35, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 1510, 2004, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `item_loot_template` WHERE `entry` = 92010;
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

(92010, 12303, 1.8, 1, 1, 1, 0),	-- Black Zulian Panther
(92010, 13582, 1.8, 1, 1, 1, 0),	-- Zergling Leash
(92010, 13584, 1.8, 1, 1, 1, 0),	-- Diablo Stone
(92010, 18768, 1.8, 1, 1, 1, 0),	-- Armored Dawnsaber
(92010, 23193, 1.8, 1, 1, 1, 0),	-- Armored Black Deathcharger
(92010, 23705, 1.8, 1, 1, 1, 0),	-- Tabard of Flame
(92010, 50003, 1.8, 1, 1, 1, 0),	-- Loremaster's Backpack
(92010, 50004, 1.8, 1, 1, 1, 0),	-- Portable Pocket Dimension
(92010, 50005, 1.8, 1, 1, 1, 0),	-- Field Repair Bot 75B
(92010, 50007, 1.8, 1, 1, 1, 0),	-- Forworn Mule
(92010, 50009, 1.8, 1, 1, 1, 0),	-- Mechanical Auctioneer
(92010, 50011, 1.8, 1, 1, 1, 0),	-- MOLL-E, Remote Mail Terminal
(92010, 50081, 1.8, 1, 1, 1, 0),	-- Cottontail Rabbit
(92010, 50399, 1.8, 1, 1, 1, 0),	-- Ancient Quel'dorei Steed
(92010, 50400, 1.8, 1, 1, 1, 0),	-- Riding Zhevra
(92010, 50407, 1.8, 1, 1, 1, 0),	-- Nightmare Dreamrunner
(92010, 50602, 1.8, 1, 1, 1, 0),	-- Summon: Auctioneer
(92010, 51421, 1.8, 1, 1, 1, 0),	-- Caravan Kodo
(92010, 51700, 1.8, 1, 1, 1, 0),	-- Cracked Raptor Egg
(92010, 51715, 1.8, 1, 1, 1, 0),	-- Goblin Brainwashing Device
(92010, 51891, 1.8, 1, 1, 1, 0),	-- Mysterious Fortune Teller
(92010, 60982, 1.7, 1, 1, 1, 0),	-- Programmer Socks
(92010, 69001, 1.7, 1, 1, 1, 0),	-- Tiny Warp Stalker
(92010, 69002, 1.7, 1, 1, 1, 0),	-- Scotty
(92010, 69004, 1.7, 1, 1, 1, 0),	-- Pengu
(92010, 69006, 1.7, 1, 1, 1, 0),	-- Glitterwing
(92010, 80430, 0.1, 1, 1, 1, 0),	-- Armored Spectral Tiger
(92010, 80449, 1.7, 1, 1, 1, 0),	-- Armored Alliance Steed
(92010, 81081, 1.7, 1, 1, 1, 0),	-- Tabard of Fury
(92010, 81082, 1.8, 1, 1, 1, 0),	-- Tabard of Brilliance
(92010, 81085, 1.8, 1, 1, 1, 0),	-- Tabard of Nature
(92010, 81091, 1.7, 1, 1, 1, 0),	-- Big Blizzard Bear
(92010, 81102, 1.7, 1, 1, 1, 0),	-- Darkmoon Dancing Bear
(92010, 81152, 1.7, 1, 1, 1, 0),	-- Tiny Pterodactyl
(92010, 81153, 1.7, 1, 1, 1, 0),	-- Armored Purple Bear
(92010, 81155, 1.7, 1, 1, 1, 0),	-- Armored Red Bear
(92010, 81158, 1.7, 1, 1, 1, 0),	-- Armored Frostmane Bear
(92010, 81207, 1.7, 1, 1, 1, 0),	-- Dalaran Cloud Familiar
(92010, 81231, 1.7, 1, 1, 1, 0),	-- Tamed Rak'Shiri
(92010, 81232, 1.7, 1, 1, 1, 0),	-- Azure Frostsaber
(92010, 81234, 1.7, 1, 1, 1, 0),	-- Brewfest Ram
(92010, 81235, 1.7, 1, 1, 1, 0),	-- Armored Vermilion Deathcharger
(92010, 81236, 1.7, 1, 1, 1, 0),	-- Armored Grey Steed
-- (92010, 81239, 1.7, 1, 1, 1, 0),	-- Happy Whimsyshire Cloud
-- (92010, 81240, 1.7, 1, 1, 1, 0),	-- Sad Whimsyshire Cloud
(92010, 81258, 1.7, 1, 1, 1, 0),	-- Spectral Cub
(92010, 83150, 1.7, 1, 1, 1, 0),	-- Big Turtle WoW Bear
(92010, 83300, 1.7, 1, 1, 1, 0),	-- Lil' K.T.
(92010, 83301, 1.7, 1, 1, 1, 0),	-- Core Hound Pup
(92010, 83302, 1.7, 1, 1, 1, 0),	-- Lil' Ragnaros
(92010, 92011, 1.7, 1, 1, 1, 0),	-- Lavender Spring Shirt
(92010, 92012, 1.8, 1, 1, 1, 0),	-- Mint Spring Shirt
(92010, 92013, 1.8, 1, 1, 1, 0),	-- Pink Spring Shirt
(92010, 92014, 1.8, 1, 1, 1, 0),	-- Spring Chemise
(92010, 92016, 1.8, 1, 1, 1, 0),	-- Spotted Rabbit
(92010, 92017, 1.8, 1, 1, 1, 0),	-- White Riding Talbuk
(92010, 92018, 1.8, 1, 1, 1, 0),	-- Dark Riding Talbuk
(92010, 92019, 1.8, 1, 1, 1, 0);	-- Green Spring Shirt 



REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (92016, 10712);

REPLACE INTO `collection_mount` (`itemId`, `spellId`) VALUES (92017, 46527);
REPLACE INTO `collection_mount` (`itemId`, `spellId`) VALUES (92018, 46530);
 
 
 replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55342, 'Spring Shirt 1', '', 4, 1, 7, 1, 68017, 1, 0, 0, -1, -1, 4, 1, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55343, 'Spring Shirt 2', '', 4, 1, 7, 1, 68018, 1, 0, 0, -1, -1, 4, 1, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55344, 'Spring Shirt 3', '', 4, 1, 7, 1, 68005, 1, 0, 0, -1, -1, 4, 1, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (55345, 'Spring Shirt 4', '', 4, 1, 7, 1, 68024, 1, 0, 0, -1, -1, 4, 1, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
