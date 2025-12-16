-- Set GUID 2578190 and 2578191 to play emote 333 TATE_READY1H.
REPLACE INTO `creature_addon` (`guid`, `display_id`, `mount_display_id`, `equipment_id`, `stand_state`, `sheath_state`, `emote_state`, `auras`) VALUES
(2578190, 0, 0, -1, 0, 1, 333, NULL),
(2578191, 0, 0, -1, 0, 1, 333, NULL);
-- Enable displayids 20439-20455 (Melanastrasza turned into a wisp so her display is still broken).
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(19120, 0, 0, 0, 0),
(19121, 0, 0, 0, 0),
(20439, 0, 0, 0, 0),
(20440, 0, 0, 0, 0),
(20441, 0, 0, 0, 0),
(20442, 0, 0, 0, 0),
(20443, 0, 0, 0, 0),
(20444, 0, 0, 0, 0),
(20445, 0, 0, 0, 0),
(20446, 0, 0, 0, 0),
(20447, 0, 0, 0, 0),
(20448, 0, 0, 0, 0),
(20449, 0, 0, 0, 0),
(20450, 0, 0, 0, 0),
(20451, 0, 0, 0, 0),
(20452, 0, 0, 0, 0),
(20453, 0, 0, 0, 0),
(20454, 0, 0, 0, 0),
(20455, 0, 0, 0, 0);
-- NPC Lord Xanvarak is unattackable, his faction seems correct but he is in a state of standing still not doing anything and cannot be aggroed.
update creature_template set unit_flags = 0 where entry = 61609;
-- Change NPC scale of Firstborn of Arugal to 2.
update creature_template set scale = 2 where entry = 61558;
-- NPC Haunted Stable Tender and Haunted Blacksmith change damage to 389-512.
update creature_template set dmg_min = 389, dmg_max = 512 where entry in (61201,61202); 
-- Create the following dummy item: "Monster - Kamio Fan", sword, 1h, displayid: 32596
-- Npc entry 61410 and 61414 equip item: "Monster - Kamio Fan". 
set @equip_template = 20428; set @weapon_1 = 61773; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61410;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20428; set @weapon_1 = 61773; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61414;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- NPC ID 61487 should drop Item ID 84507 with a 100% chance from a new loottable.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61487, 84507, 100, 0, 1, 1, 0);
-- NPC Lord Blackwald II (creature Entry 61222), add item drop Entry 61184 (The Scythe of Elune) on its own loot table with a 0.85% drop chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61222, 61184, 0.85, 10, 1, 1, 0);
-- Add the following items in their own loot group:
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30590, 84500, 0, 4, 1, 1, 0),
(30590, 84501, 0, 4, 1, 1, 0),
(30590, 84502, 0, 4, 1, 1, 0),
(30590, 84503, 0, 4, 1, 1, 0),
(30590, 84504, 0, 4, 1, 1, 0),
(30590, 84505, 0, 4, 1, 1, 0),
(30590, 84506, 0, 4, 1, 1, 0),
(30590, 84509, 0, 4, 1, 1, 0);
-- To the following creatures: 60742, 60743, 60744, 60745, 60746, 61212, with a drop chance of 0.13%.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60742, 30590, 0.13, 4, -30590, 1, 0),
(60743, 30590, 0.13, 4, -30590, 1, 0),
(60744, 30590, 0.13, 4, -30590, 1, 0),
(60745, 30590, 0.13, 4, -30590, 1, 0),
(60746, 30590, 0.13, 4, -30590, 1, 0),
(61212, 30590, 0.13, 4, -30590, 1, 0);
-- Add item 61733 (Formula: Eternal Dreamstone Shard) to the loot table of Solnius (Creature Entry 60748) on its own loot table with a drop chance of 0.85%.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61733, 0.85, 12, 1, 1, 0),
-- NPC Solnius, add loot 61198 to its own loot table with a 100% drop chance to drop between 6-10 of the item.
(60748, 61198, 100, 13, 6, 10, 0);
-- NPC Erennius add loot 61198 to its own loot table with a 100% drop chance to drop between 2-5 of the item.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60747, 61198, 100, 13, 2, 5, 0);
-- Remove any green or blue item drops from Firstborn of Arugal, and make a new loottable that drops one of these items with the listed chances:
delete from creature_loot_template where entry = 61558 and item in (8028 ,51764,51765,5758 ,7909 ,7910 ,12689,15731,20400);
delete from creature_loot_template where entry = 61558 and item in (30045,30043,30046,30584);
-- Old Hunter's Boots 40%
-- Explorer's Pauldron 40%
-- Arugal Family Seal 20%
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30591, 61587, 40, 10, 1, 1, 0),
(30591, 61586, 40, 10, 1, 1, 0),
(30591, 61588, 20, 10, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61558, 30591, 100, 10, -30591, 1, 0);
-- Create object called 'The Orb of Pyforos' which uses the model 'BE_ScryingOrb' with a scale of 1.4, this orb should have quest/gossip text, when interacted use the following gossip text: <The orb glows with an intensity of dark energy. Fire can be seen tracing along its surface. Any attempt to get close to the orb causes it to fade away, becoming translucent, making material objects pass through it. It would appear powerful magic is present here.>
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020052, 2, 29623, 'The Orb of Pyforos', 0, 32, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_the_orb_of_pyforos');
replace into broadcast_text (entry, Male_Text) values (30133, '<The orb glows with an intensity of dark energy. Fire can be seen tracing along its surface. Any attempt to get close to the orb causes it to fade away, becoming translucent, making material objects pass through it. It would appear powerful magic is present here.>');
replace into npc_text (ID, BroadcastTextID0) values (30133, 30133);
-- Object Strange Marble Bust make scale 2.2.
update gameobject_template set size = 2.2 where entry = 2020051;
-- Change the displayid of gameobject 3000208 to 33182.
update gameobject_template set displayid = 33182 where entry = 3000208;
-- Quest 41062 and 41067 label as a raid quest.
update quest_template set type = 62 where entry in (41062,41067);
-- Quest The Deed to Ravenshire change money reward to 12 silver (It is currently 12g).
update quest_template set reworreqmoney = 1200 where entry = 40966;
-- Quest Suitable Accomodations and Quest Spectral Wine make RAID quest.
update quest_template set type = 62 where entry in (41083,41085);
-- Create the following dummy item: "Monster - Kamio Fan", sword, 1h, displayid: 32596.
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (61773, 2, 7, 'Monster - Kamio Fan', '', 32596, 0, 0, 1, 1, 1, 13, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
-- Revert flarecore fire res values
update item_template set armor = 61, stat_value1 = 10, fire_res = 25, spellid_1 = 9345, allowable_class = -1, set_id = 629 where entry = 16979; -- Flarecore Gloves 63
update item_template set stat_value1 = 14, fire_res = 24, spellid_1 = 9346, set_id = 629 where entry = 16980; -- Flarecore Mantle 66
update item_template set stat_value1 = 25, fire_res = 20, spellid_1 = 17367, set_id = 629 where entry = 19156; -- Flarecore Robe
update item_template set item_level = 65, armor = 44, stat_type1 = 7, stat_value1 = 14, fire_res = 12, spellid_1 = 9345, set_id = 629 where entry = 18263; -- Flarecore Wraps
update item_template set set_id = 629 where entry = 19165; -- Flarecore Leggings
update item_template set set_id = 629 where entry = 65035; -- Flarecore Boots
-- Brawling Trophy should be Bind on Equip.
update item_template set bonding = 2 where entry = 61585;
-- Change the displayid of Trak'Nal's dummy sword to 50514.
update item_template set display_id = 50514 where entry = 61752;
-- Hyperchromatic Deflector should be a shield and not a buckler.
update item_template set subclass = 6, sheath = 4 where entry = 61276;
-- Postworker Albertus Manethas, display ID 19120, faction 35, level 50, humanoid, scale 1, gossip/quest flags, gossip text : "Can I help you with something?".
REPLACE INTO creature_template VALUES
(61611, 19120, 0, 0, 0, 0, 'Postworker Albertus Manethas', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
set @gossip_menu_id = 41519; set @magic_number = 61611;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Can I help you with something?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Postworker Katya Hastings, display ID 19121, faction 35, level 50, humanoid, scale 1, gossip/quest flags, gossip text : "What, do you have a letter or something?".
REPLACE INTO creature_template VALUES
(61612, 19121, 0, 0, 0, 0, 'Postworker Katya Hastings', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
set @gossip_menu_id = 41520; set @magic_number = 61612;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What, do you have a letter or something?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;