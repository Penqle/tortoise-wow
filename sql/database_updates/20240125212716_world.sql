update item_template set stat_value2 = 9, spellid_2 = 15464 where entry = 81365; -- Kargron's Leggings
update item_template set sheath = 1 where entry = 61523; -- Crystal Sword of the Blossom
update item_template set class = 4, subclass = 0 where entry = 18634; -- Gyrofreeze Ice Reflector
update item_template set bag_family = 256 where entry = 13873; -- Viewing Room Key
-- fix meditation for good
update item_template set spellid_1 = 57158 where entry = 19369; -- Gloves of Rapid Evolution
update item_template set spellid_2 = 57158 where entry = 12756; -- Leggings of Arcana
update item_template set spellid_1 = 57158 where entry = 83464; -- Mantle of Twisted Damnation
update item_template set spellid_1 = 57158 where entry = 60788; -- Sandals of Inner Peace
update item_template set spellid_2 = 57158 where entry = 65103; -- Shell of the Great Sleeper
update item_template set spellid_3 = 57158 where entry = 61208; -- Staff of the Dreamer
update item_template set spellid_2 = 57158 where entry = 65021; -- Verdant Dreamer's Breastplate
update item_template set spellid_2 = 57158 where entry = 61193; -- Verdant Eye Necklace
update item_template set spellid_2 = 57158 where entry = 51737; -- Vestments of Eternal Autumn
update item_template set spellid_2 = 57158 where entry = 83451; -- Cowl of Mivax
update item_template set spellid_2 = 57158 where entry = 9402; -- Earthborn Kilt
update item_template set spellid_1 = 57158 where entry = 60564; -- Empowered Power Core
update item_template set spellid_1 = 57158 where entry = 83207; -- Feymist Robe
update item_template set spellid_1 = 57158 where entry = 15045; -- Green Dragonscale Breastplate
update item_template set spellid_1 = 57158 where entry = 20296; -- Green Dragonscale Gauntlets
update item_template set spellid_1 = 57158 where entry = 15046; -- Green Dragonscale Leggings
update item_template set spellid_1 = 57158 where entry = 60798; -- Loop of the Forgotten
update item_template set spellid_1 = 57158 where entry = 60790; -- Memento of the Lost
update item_template set spellid_1 = 57158 where entry = 60809; -- Remains of the Lost
update item_template set spellid_1 = 57158 where entry = 60735; -- Obsidian Gem Choker
update item_template set spellid_1 = 57158 where entry = 2043; -- Ring of Forlorn Spirits
update item_template set spellid_3 = 57158 where entry = 83465; -- Shroud of Haunted Torment
update item_template set spellid_1 = 57158 where entry = 60590; -- Isle Watcher's Sash
update item_template set spellid_1 = 57159 where entry = 60558; -- Cloudweaver Gloves
update item_template set spellid_1 = 57159 where entry = 84032; -- Kilt of the Devoted

-- Fixed Stormwind Vault graveyard attachment:

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (106, 5087, 469);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (854, 5087, 67);

-- Add hidden sholders:


REPlACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (80463, 4, 1, 'Hidden Cloth Belt', '', 33247, 0, 0, 1, 11389, 2277, 6, -1, -1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPlACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (80464, 4, 2, 'Hidden Leather Belt', '', 10066, 0, 0, 1, 11389, 2277, 6, -1, -1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPlACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (80465, 4, 3, 'Hidden Mail Belt', '', 21092, 0, 0, 1, 11389, 2277, 6, -1, -1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPlACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (80466, 4, 4, 'Hidden Plate Belt', '', 14439, 0, 0, 1, 11389, 2277, 6, -1, -1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 83540;
UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 83541;
UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 83542;
UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 83543;
UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 80463;
UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 80464;
UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 80465;
UPDATE `item_template` SET `item_level` = 22 WHERE `entry` = 80466;

UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 83540;
UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 83541;
UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 83542;
UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 83543;
UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 80463;
UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 80464;
UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 80465;
UPDATE `item_template` SET `required_level` = 15 WHERE `entry` = 80466;

REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51293, 0, 80463, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51293, 0, 80464, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51293, 0, 80465, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51293, 0, 80466, 0, 0, 0, 0);

REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51292, 0, 80463, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51292, 0, 80464, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51292, 0, 80465, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51292, 0, 80466, 0, 0, 0, 0);

-- fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/5153 and https://github.com/slowtorta/turtlewow-bug-tracker/issues/6041

update item_template set sheath = 1 where entry = 61523; -- Crystal Sword of the Blossom
update item_template set class = 4, subclass = 0 where entry = 18634; -- Gyrofreeze Ice Reflector

-- Cherry

REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (90990, 15396, 0, 0, 0, 0, 'Cherry', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Unmerged stuff from PTR:

DELETE FROM gameobject WHERE guid = '5017939';
DELETE FROM game_event_gameobject WHERE guid = '5017939';
DELETE FROM gameobject_battleground WHERE guid = '5017939';
DELETE FROM gameobject WHERE guid = '5017928';
DELETE FROM game_event_gameobject WHERE guid = '5017928';
DELETE FROM gameobject_battleground WHERE guid = '5017928';
DELETE FROM gameobject WHERE guid = '5017929';
DELETE FROM game_event_gameobject WHERE guid = '5017929';
DELETE FROM gameobject_battleground WHERE guid = '5017929';
DELETE FROM gameobject WHERE guid = '5017938';
DELETE FROM game_event_gameobject WHERE guid = '5017938';
DELETE FROM gameobject_battleground WHERE guid = '5017938';
DELETE FROM gameobject WHERE guid = '5017940';
DELETE FROM game_event_gameobject WHERE guid = '5017940';
DELETE FROM gameobject_battleground WHERE guid = '5017940';
DELETE FROM gameobject WHERE guid = '5017920';
DELETE FROM game_event_gameobject WHERE guid = '5017920';
DELETE FROM gameobject_battleground WHERE guid = '5017920';
DELETE FROM gameobject WHERE guid = '5017927';
DELETE FROM game_event_gameobject WHERE guid = '5017927';
DELETE FROM gameobject_battleground WHERE guid = '5017927';
DELETE FROM gameobject WHERE guid = '5017921';
DELETE FROM game_event_gameobject WHERE guid = '5017921';
DELETE FROM gameobject_battleground WHERE guid = '5017921';
DELETE FROM gameobject WHERE guid = '5017931';
DELETE FROM game_event_gameobject WHERE guid = '5017931';
DELETE FROM gameobject_battleground WHERE guid = '5017931';
DELETE FROM gameobject WHERE guid = '5017930';
DELETE FROM game_event_gameobject WHERE guid = '5017930';
DELETE FROM gameobject_battleground WHERE guid = '5017930';
DELETE FROM gameobject WHERE guid = '5017943';
DELETE FROM game_event_gameobject WHERE guid = '5017943';
DELETE FROM gameobject_battleground WHERE guid = '5017943';
DELETE FROM gameobject WHERE guid = '5017946';
DELETE FROM game_event_gameobject WHERE guid = '5017946';
DELETE FROM gameobject_battleground WHERE guid = '5017946';
DELETE FROM gameobject WHERE guid = '5017942';
DELETE FROM game_event_gameobject WHERE guid = '5017942';
DELETE FROM gameobject_battleground WHERE guid = '5017942';
DELETE FROM gameobject WHERE guid = '5017932';
DELETE FROM game_event_gameobject WHERE guid = '5017932';
DELETE FROM gameobject_battleground WHERE guid = '5017932';
DELETE FROM gameobject WHERE guid = '5017933';
DELETE FROM game_event_gameobject WHERE guid = '5017933';
DELETE FROM gameobject_battleground WHERE guid = '5017933';
DELETE FROM gameobject WHERE guid = '5017945';
DELETE FROM game_event_gameobject WHERE guid = '5017945';
DELETE FROM gameobject_battleground WHERE guid = '5017945';
DELETE FROM gameobject WHERE guid = '5017944';
DELETE FROM game_event_gameobject WHERE guid = '5017944';
DELETE FROM gameobject_battleground WHERE guid = '5017944';
DELETE FROM gameobject WHERE guid = '5017941';
DELETE FROM game_event_gameobject WHERE guid = '5017941';
DELETE FROM gameobject_battleground WHERE guid = '5017941';
DELETE FROM gameobject WHERE guid = '5017922';
DELETE FROM game_event_gameobject WHERE guid = '5017922';
DELETE FROM gameobject_battleground WHERE guid = '5017922';
DELETE FROM gameobject WHERE guid = '5017923';
DELETE FROM game_event_gameobject WHERE guid = '5017923';
DELETE FROM gameobject_battleground WHERE guid = '5017923';
DELETE FROM gameobject WHERE guid = '5017934';
DELETE FROM game_event_gameobject WHERE guid = '5017934';
DELETE FROM gameobject_battleground WHERE guid = '5017934';
DELETE FROM gameobject WHERE guid = '5017948';
DELETE FROM game_event_gameobject WHERE guid = '5017948';
DELETE FROM gameobject_battleground WHERE guid = '5017948';
DELETE FROM gameobject WHERE guid = '5017947';
DELETE FROM game_event_gameobject WHERE guid = '5017947';
DELETE FROM gameobject_battleground WHERE guid = '5017947';
DELETE FROM gameobject WHERE guid = '5017924';
DELETE FROM game_event_gameobject WHERE guid = '5017924';
DELETE FROM gameobject_battleground WHERE guid = '5017924';
DELETE FROM gameobject WHERE guid = '5017949';
DELETE FROM game_event_gameobject WHERE guid = '5017949';
DELETE FROM gameobject_battleground WHERE guid = '5017949';
DELETE FROM gameobject WHERE guid = '5017935';
DELETE FROM game_event_gameobject WHERE guid = '5017935';
DELETE FROM gameobject_battleground WHERE guid = '5017935';
DELETE FROM gameobject WHERE guid = '5017925';
DELETE FROM game_event_gameobject WHERE guid = '5017925';
DELETE FROM gameobject_battleground WHERE guid = '5017925';
DELETE FROM gameobject WHERE guid = '5017950';
DELETE FROM game_event_gameobject WHERE guid = '5017950';
DELETE FROM gameobject_battleground WHERE guid = '5017950';
DELETE FROM gameobject WHERE guid = '5017926';
DELETE FROM game_event_gameobject WHERE guid = '5017926';
DELETE FROM gameobject_battleground WHERE guid = '5017926';
DELETE FROM gameobject WHERE guid = '5017936';
DELETE FROM game_event_gameobject WHERE guid = '5017936';
DELETE FROM gameobject_battleground WHERE guid = '5017936';
DELETE FROM gameobject WHERE guid = '5017937';
DELETE FROM game_event_gameobject WHERE guid = '5017937';
DELETE FROM gameobject_battleground WHERE guid = '5017937';
REPLACE INTO `gameobject` VALUES ( 5018088, 3000309, 1, 16214.7, 16197.4, -1.5918, 2.05454, 0, 0, 0.85589, 0.517157, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5018088';
DELETE FROM game_event_gameobject WHERE guid = '5018088';
DELETE FROM gameobject_battleground WHERE guid = '5018088';
REPLACE INTO `gameobject` VALUES ( 5018089, 3000310, 1, 16214.7, 16197.4, -1.53559, 2.05454, 0, 0, 0.85589, 0.517157, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5018089';
DELETE FROM game_event_gameobject WHERE guid = '5018089';
DELETE FROM gameobject_battleground WHERE guid = '5018089';
REPLACE INTO `gameobject` VALUES ( 5018090, 3000310, 1, 16214.3, 16197.2, -1.53559, 3.60178, 0, 0, 0.973646, -0.228066, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370434099621958122, 5.000000);
REPLACE INTO `gameobject` VALUES ( 5018090, 3000310, 1, 16214.3, 16197.2, -1.53559, 3.60178, 0, 0, 0.973646, -0.228066, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018090, 3000310, 1, 16214.2, 16197.2, 0, 3.60178, 0, 0, 0.973646, -0.228066, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017953';
DELETE FROM game_event_gameobject WHERE guid = '5017953';
DELETE FROM gameobject_battleground WHERE guid = '5017953';
DELETE FROM gameobject WHERE guid = '5017952';
DELETE FROM game_event_gameobject WHERE guid = '5017952';
DELETE FROM gameobject_battleground WHERE guid = '5017952';
REPLACE INTO `gameobject` VALUES ( 5018091, 3000311, 1, 16222.4, 16196.9, -0.32968, 3.57744, 0, 0, 0.976349, -0.216201, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018091, 3000311, 1, 16222.4, 16196.9, 1, 3.57744, 0, 0, 0.976349, -0.216201, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018091, 3000311, 1, 16222.4, 16196.9, -0.1, 3.57744, 0, 0, 0.976349, -0.216201, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018092, 3000309, 1, 16217.5, 16202.3, -2.19617, 3.68741, 0, 0, 0.962991, -0.269532, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018092, 3000309, 1, 16217.4, 16202.3, -1, 3.68741, 0, 0, 0.962991, -0.269532, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018092, 3000309, 1, 16217.4, 16202.3, -0.3, 3.68741, 0, 0, 0.962991, -0.269532, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370434099605180908, 2.000000);
REPLACE INTO `gameobject` VALUES ( 5018092, 3000309, 1, 16217.4, 16202.3, -0.3, 3.68741, 0, 0, 0.962991, -0.269532, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018092, 3000309, 1, 16217.4, 16202.3, -0.2, 3.68741, 0, 0, 0.962991, -0.269532, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16213.2, 16199.1, 6.08338, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16213, 16199, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16214, 16199, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16212.5, 16199, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16210, 16199, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16209, 16199, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16209, 16198, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16209, 16200, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16210, 16200, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16212, 16200, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018094, 3000314, 1, 16205.9, 16218.2, 1.11114, 4.23719, 0, 0, 0.853674, -0.520808, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5018094';
DELETE FROM game_event_gameobject WHERE guid = '5018094';
DELETE FROM gameobject_battleground WHERE guid = '5018094';
REPLACE INTO `gameobject` VALUES ( 5018095, 3000314, 1, 16206.3, 16218, 1.10525, 5.82844, 0, 0, 0.225419, -0.974262, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370434099689066991, 4.000000);
REPLACE INTO `gameobject` VALUES ( 5018095, 3000314, 1, 16206.3, 16218, 1.10525, 5.82844, 0, 0, 0.225419, -0.974262, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16200, 16200, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16200, 16206, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16200, 16220, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16200, 16215, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16200, 16216, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16203, 16216, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16204, 16216, 6.2, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16204, 16216, 7, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16204, 16217, 7, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16204, 16215, 7, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16205, 16215, 7, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16205, 16215, 6.5, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16205, 16215, 6.7, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018093, 2005033, 1, 16205, 16215, 6.76, 1.87314, 0, 0, 0.805529, 0.592556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018096, 2005032, 1, 16208.7, 16217.1, 1.07654, 4.26342, 0, 0, 0.84677, -0.53196, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018096, 2005032, 1, 16100, 16100, -20, 4.26342, 0, 0, 0.84677, -0.53196, 300, 300, 100, 1, 0, 0);
