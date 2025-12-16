-- Shadeflayer Tribal Bracelet (61707) should drop w/o the quest too:

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10.4 WHERE `entry` = 61356;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10.4 WHERE `entry` = 61357;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10.4 WHERE `entry` = 61358;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10.4 WHERE `entry` = 61359;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6.3 WHERE  `entry` = 61367;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE  `entry` = 61533;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61338 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61339 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61340 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61341 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -18, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61354 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -18, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61349 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -18, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61350 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61352 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61353 AND `item` = 61706 AND `groupid` = 0;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -13.5, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61356 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -13.5, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61357 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -13.5, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61358 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -13.5, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61359 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -8.8, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61367 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100, `mincountOrRef` = 1, `maxcount` = 1 WHERE `entry` = 61533 AND `item` = 61707 AND `groupid` = 0;
