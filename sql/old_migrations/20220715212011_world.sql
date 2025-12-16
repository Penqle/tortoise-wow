update item_template set display_id = 4738 where entry = 51282;

update item_template set display_id = 23177 where entry = 83575;
update item_template set spellid_1 = 17991 where entry = 65006;
update item_template set name = 'Grimoire: Demon Portal', description = 'Dark rituals locked inside shadowy books.' where entry = 83572;
update item_template set name = 'Codex: Grace of the Sunwell' where entry = 81012;

-- New Hargesh Doomcaller Drops
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (83580, 'Toxic Talisman', '', 4, 0, 1, 3, 66201, 1, 54, 0, -1, -1, 51502, 12875, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 48, 0, 0, 10, 0, 0, 0, 5, 9, 9357, 1, 0, 0, -1, 0, -1, 21623, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (83581, 'Call of Shadow', '', 2, 7, 1, 3, 0, 1, 54, 0, -1, -1, 196412, 49103, 21, 3, 0, 0, 1, 1, 0, 74, 112, 2400, 0, 0, 90, 0, 0, 0, 59, 0, 48, 0, 0, 0, 0, 0, 0, 7, 8, 9413, 1, 0, 0, -1, 0, -1, 16409, 2, 0, 1.2, 3000, 0, -1, 0, 0, 0);
replace into item_template values
 ('83582', '4', '1', 'Sacrosanct Epaulets', '', '26504', '3', '0', '1', '67408', '16852', '3', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '11', '5', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '66', '0', '0', '0',
 '0', '0', '0', '9406', '1', '0', '0', '-1', '0', '-1', '21360', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83583', '4', '0', 'The Veil of Hatred', '', '66247', '3', '0', '1', '63860', '15965', '16', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '0', '0', '9326', '1', '0', '0', '-1', '0', '-1', '9296', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83584', '9', '0', 'Grimoire: Avoidance', '', '1246', '1', '0', '1', '20000', '4000', '0', '256', '-1', '40',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47310', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45967, 9912, 5176, 9, 0); -- Wrath Rank 9
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45969, 9830, 5221, 6, 0); -- Shred VI
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45968, 10934, 585, 9, 0); -- Smite IX

update creature_template set faction = 64 where entry = 60872;

update item_template set required_level = 54, item_level = 64 where entry = 60546;

-- set the respawn timer of the following creatures to 3hrs

-- Hateforge Chemist (60717)
-- Hateforge Cleric (60718)
-- Hateforge Craftsman (60719)
-- Hateforge Engineer (60720)
-- Hateforge Miner (60721)
-- Hateforge Overseer (60722)
-- Hateforge Taskmaster (60723)
-- Hateforge Warden (60724)

update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where id in (60717, 60718, 60719, 60720, 60721, 60722, 60723, 60724);

-- set the respawn timer of the following creatures to 48hrs

-- Engineer Figgles (60736)
-- High Foreman Bargul Blackhammer (60735)
-- Har'gesh Doomcaller (60737)
-- Hatereaver Annihilator (60734)
-- Corrosis (60829)

update creature set spawntimesecsmin = 172800, spawntimesecsmax = 172800 where id in (60736, 60735, 60737, 60734, 60829);

-- set the respawn timer of the following creatures to 8 minutes

-- Hateforge Excavator (60830)
-- Hateforge Geologist (60831)
-- Hateforge Watcher (60816) 

update creature set spawntimesecsmin = 480, spawntimesecsmax = 480 where id in (60830, 60831, 60816);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1573

update quest_template set questflags = 8 where entry = 60070;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1571

update creature_template set spell_id2 = 0 where entry = 9449;

-- Fix drop rate of item used in quest 443 (Rot Hide Ichor) in Silverpine Forest (credit cmangos)
-- https://github.com/vmangos/core/blob/1c7deee41dfefddea441b06ebc61020b6934223a/sql/migrations/20210810191400_world.sql
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1566
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3236;

-- https://github.com/vmangos/core/blob/141e7823003aea3fa0c20ae3bdd18762be4b5db5/sql/migrations/20211126195700_world.sql
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1584

-- Add missing gameobject spawns.
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`) VALUES 
(14199, 2872, 1, -2369.22, -4091.97, 8.74555, 6.07375, 0, 0, -0.104528, 0.994522, -120, -120, 1, 100),
(14200, 2872, 1, -2370.43, -4092.22, 8.73379, 5.98648, 0, 0, -0.147809, 0.989016, -120, -120, 1, 100),
(14201, 2872, 1, -2370.81, -4091.5, 8.72544, 0.366518, 0, 0, 0.182235, 0.983255, -120, -120, 1, 100),
(14202, 2872, 1, -2369.27, -4090.82, 8.54136, 0, 0, 0, 0, 1, -120, -120, 1, 100),
(14203, 20917, 1, -2370.01, -4091.62, 9.75972, 0, 0, 0, 0, 1, -120, -120, 1, 100);

-- Update script which summons Dagun the Ravenous.
DELETE FROM `event_scripts` WHERE `id`=452;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES 
(452, 0, 10, 2937, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -2405.19, -4172.46, -7.055216, 0.977384, 0, 'Enchanted Sea Kelp - Summon Creature Dagun the Ravenous'),
(452, 0, 9, 14199, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14199)'),
(452, 0, 9, 14200, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14200)'),
(452, 0, 9, 14201, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14201)'),
(452, 0, 9, 14202, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14202)'),
(452, 0, 9, 14203, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Blue Aura (Guid: 14203)');

-- Waypoints for Dagun the Ravenous.
DELETE FROM `creature_movement_template` WHERE `entry` = 2937;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(2937, 1, -2404.259766, -4170.693359, -6.805216, 100.000000, 0, 0.000000, 0),
(2937, 2, -2394.033203, -4151.228516, -0.012980, 100.000000, 0, 0.000000, 0),
(2937, 3, -2389.862305, -4143.289551, 2.730242, 100.000000, 0, 0.000000, 0),
(2937, 4, -2380.409668, -4121.422852, 6.931906, 100.000000, 0, 0.000000, 0),
(2937, 5, -2377.267334, -4104.551758, 6.827217, 100.000000, 0, 0.000000, 0),
(2937, 6, -2373.932861, -4095.415771, 6.722568, 100.000000, 11000, 0.000000, 0),
(2937, 7, -2379.112793, -4091.868408, 6.722568, 100.000000, 120000, 3.000000, 0),
(2937, 8, -2378.163574, -4108.716797, 7.028881, 100.000000, 0, 0.000000, 0),
(2937, 9, -2381.520508, -4120.508789, 6.823725, 100.000000, 0, 0.000000, 0),
(2937, 10, -2387.505615, -4134.225098, 4.900465, 100.000000, 0, 0.000000, 0),
(2937, 11, -2394.902344, -4150.740234, 0.187639, 100.000000, 0, 0.000000, 0),
(2937, 12, -2404.299316, -4171.755371, -7.025187, 100.000000, 1000, 0.000000, 4),
(2937, 13, -2404.299316, -4171.755371, -7.025187, 100.000000, 0, 0.000000, 0);

-- Update comments for some generic waypoint scripts.
UPDATE `creature_movement_scripts` SET `comments` = 'Generic - Move Random at Current Position' WHERE `id`=2 && `command`=20;
UPDATE `creature_movement_scripts` SET `comments` = 'Generic - Set Home at Current Position' WHERE `id`=2 && `command`=34;
UPDATE `creature_movement_scripts` SET `comments` = 'Generic - Despawn Creature' WHERE `id`=4;
UPDATE `creature_movement_scripts` SET `comments` = 'Generic - Set Run' WHERE `id`=11;
UPDATE `creature_movement_scripts` SET `comments` = 'Generic - Set Walk' WHERE `id`=13;

-- Correct stats for Dagun the Ravenous.
UPDATE `creature_template` SET `dmg_min`=153.089, `dmg_max`=203.02, `attack_power`=162, `ranged_dmg_min`=60.8462, `ranged_dmg_max`=82.5551, `ranged_attack_power`=122, `armor`=2414 WHERE `entry`=2937;
-- Correct inhabit type and default movement type for Dagun the Ravenous.
UPDATE `creature_template` SET `movement_type`=2, `inhabit_type`=1 WHERE `entry`=2937;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1574

update quest_template set rewmoneymaxlevel = rewxp * 2.6 where zoneorsort = 408 and rewmoneymaxlevel = 0;

-- Hateforge Quarry meeting stone:

replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values (1772027, 23, 5495, 'Meeting Stone', 35, 0, 1, 52, 60, 5103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Remove DisenchantIDs from Dalaran reputation rewards: 
update item_template set disenchant_id = 0 where entry = 60724;
update item_template set disenchant_id = 0 where entry = 60725;
update item_template set disenchant_id = 0 where entry = 60726;
update item_template set disenchant_id = 0 where entry = 60727;
update item_template set disenchant_id = 0 where entry = 60728;
update item_template set disenchant_id = 0 where entry = 60729;
update item_template set disenchant_id = 0 where entry = 60730;
