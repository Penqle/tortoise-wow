-- Deathguard Markus (Entry 91730) give quest flags and gossip flags, gossip text : "I would not disturb Duke Nargelas."
set @gossip_menu_id = 41635; set @magic_number = 91730;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I would not disturb Duke Nargelas.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set npc_flags = 3, gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Creature Deathguard Podrig give gossip flags and gossip text : "What is it that you want from me?"
set @gossip_menu_id = 41636; set @magic_number = 6389;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (30227, 'What is it that you want from me?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, 30227);
update creature_template set npc_flags = 3, gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Basil Frye (Entry 4605) give quest flags.
update creature_template set npc_flags = 19 where entry = 4605;
-- Private William, display ID 4392 , faction 534, level 18, humanoid, scale 1, weapon1: 1983.
REPLACE INTO creature_template VALUES
(62014, 4392, 0, 0, 0, 0, 'Private William', NULL, 0, 20, 20, 629, 629, 0, 0, 852, 534, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 2, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 62014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20535; set @weapon_1 = 1983; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 62014;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Loot table for NPC: Private William.
delete from creature_loot_template where entry = 62014;
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 30010, 0.01, 0, -30010, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 30023, 0.01, 0, -30023, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 6271, 0.03, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 2287, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 6348, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 5574, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 4409, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 4292, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 2409, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 6663, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 11039, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 15019, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 3610, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 56021, 0.04, 5, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 70141, 0.04, 5, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 4345, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 14169, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 14368, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 15496, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 4346, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 1206, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 6661, 0.11, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 6344, 0.12, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 81094, 0.16, 5, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 2657, 0.18, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 954, 0.22, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 3012, 0.22, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 818, 0.32, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 30011, 0.5, 0, -30011, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 30022, 0.5, 0, -30022, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 30009, 0.5, 0, -30009, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 30042, 0.5, 7, -30042, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 1210, 0.6, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 856, 0.75, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 1180, 0.76, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 2455, 0.9858, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 955, 1.06, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 858, 1.6429, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 30037, 2.5, 0, -30037, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 1179, 2.6287, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 5498, 2.8478, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 414, 4.6002, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 2589, 17.6342, 0, 1, 3, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62014, 2592, 20.0438, 0, 1, 2, 0);
