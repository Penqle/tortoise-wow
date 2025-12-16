-- Delete Item ID 51265, 51269, 51265, 51286, 51285, 51277 from all mob loottables.
DELETE FROM `creature_loot_template` WHERE `item` IN (30599, 30600);
DELETE FROM `creature_loot_template` WHERE `entry` IN (51265, 51269, 51286, 51285, 51277);
DELETE FROM `reference_loot_template` WHERE `entry` IN (30599, 30600);
DELETE FROM `reference_loot_template` WHERE `item` IN (51265, 51269, 51286, 51285, 51277);

-- Add Item ID 51286, 51285, 51277 to NPC ID 61781, 61782, 61784, 61780, 61788 in a loottable with a 2% drop chance each. So every item should have a 2% chance each to drop, totalling to 6%.
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30599, 51286, 0, 1, 1, 1, 0);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30599, 51285, 0, 1, 1, 1, 0);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30599, 51277, 0, 1, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61780, 30599, 6, 0, -30599, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61781, 30599, 6, 0, -30599, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61782, 30599, 6, 0, -30599, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61784, 30599, 6, 0, -30599, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61788, 30599, 6, 0, -30599, 1, 0);

-- Add Item ID 51286, 51285, 51277 to NPC ID 61791 in a loottable with a 34% drop chance each, totalling to 100%.
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61791, 30599, 100, 0, -30599, 1, 0);

-- Add Item ID 51265, 51269, 51265 to NPC ID 61673, 61674, 61672, 61795, 61670 in a loottable with a 2% drop chance each. So every item should have a 2% chance each to drop, totalling to 6%.
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30600, 51265, 66, 1, 1, 1, 0);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30600, 51269, 0, 1, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61670, 30600, 6, 0, -30600, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61672, 30600, 6, 0, -30600, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61673, 30600, 6, 0, -30600, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61674, 30600, 6, 0, -30600, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61795, 30600, 6, 0, -30600, 1, 0);

-- Add Item ID 51265, 51269, 51265 to NPC ID 61794 in a loottable with a 34% drop chance each. So every item should have a 34% chance each to drop instead of in total, totalling to 100%.
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61794, 30600, 100, 0, -30600, 1, 0);



