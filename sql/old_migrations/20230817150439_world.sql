-- Add a 0.2% chance to get Item ID 12363 from Object ID 324, 123848, 150082, 176643, 165658.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ( 9597, 12363, 0.2, 1, 1, 1, 0);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (11213, 12363, 0.2, 1, 1, 1, 0);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (13960, 12363, 0.2, 1, 1, 1, 0);
-- Increase the chance to get Item ID 12363 from Object ID 181068 to 2%.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (181068, 12363, 2, 1, 1, 1, 0);
-- Increase the chance to get Item ID 12363 from Object ID 181069 to 3%.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (181069, 12363, 3, 1, 1, 1, 0);
-- Fishing lootables in gillijim and lapidis may have shorter than normal respawn rates.
update gameobject set spawntimesecsmin = 1800, spawntimesecsmax = 3600 where guid BETWEEN 5012804 AND 5012980;
-- The Key to Karazhan VI should require completion of The Key to Karazhan V.
update quest_template set prevquestid = 40824 where entry = 40825;