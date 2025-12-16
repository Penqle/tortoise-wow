-- NPC GUID 2577212 should respawn every 48-72 hours.
update creature set spawntimesecsmin = 172800, spawntimesecsmax = 259200 where guid = 2577212;
-- All NPCs found in Emerald Sanctum should have a 7 day respawn timer.
update creature set spawntimesecsmin = 604800, spawntimesecsmax = 604800 where map = 807;
-- Npc Greymane Enforcer, change display id to 20269, 20270.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20269, 0, 0, 0, 0),
(20270, 0, 0, 0, 0);
update creature_template set display_id1 = 20269, display_id2 = 20270 where entry = 61397;
-- Add Item ID 80813 to all the mobs that drop https://database.turtle-wow.org/?item=4562 with the same drop chances.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30019, 80813, 0, 1, 1, 1, 0);
-- Add Item ID 80814 to all the mobs that drop https://database.turtle-wow.org/?item=1417 with the same drop chances.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30017, 80814, 0, 1, 1, 1, 0);
