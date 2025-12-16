UPDATE `spell_template` SET `name` = 'Guardbreaker Charm' WHERE `entry` = 41797;
UPDATE `spell_template` SET `name` = 'Guardbreaker Charm' WHERE `entry` = 41798;

-- item 56102 should drop from all the same creatures as 61790, copy the % values as well.

SET @loot_item = 56102;

DELETE FROM `creature_loot_template` WHERE `item` = @loot_item;
DELETE FROM `item_loot_template` WHERE `item` = @loot_item;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(5273, @loot_item, 0.03, 6, 1, 1, 0), (5256, @loot_item, 0.03, 6, 1, 1, 0), (5267, @loot_item, 0.03, 6, 1, 1, 0), (5270, @loot_item, 0.03, 6, 1, 1, 0), (5259, @loot_item, 0.03, 6, 1, 1, 0), (5243, @loot_item, 0.03, 6, 1, 1, 0), (8497, @loot_item, 0.03, 6, 1, 1, 0), (5280, @loot_item, 0.03, 6, 1, 1, 0), (5277, @loot_item, 0.03, 6, 1, 1, 0), (8903, @loot_item, 0.03, 6, 1, 1, 0), (8898, @loot_item, 0.03, 6, 1, 1, 0), (8895, @loot_item, 0.03, 6, 1, 1, 0), (8893, @loot_item, 0.03, 6, 1, 1, 0), (8889, @loot_item, 0.03, 6, 1, 1, 0), (8890, @loot_item, 0.03, 6, 1, 1, 0), (8891, @loot_item, 0.03, 6, 1, 1, 0), (8899, @loot_item, 0.03, 6, 1, 1, 0), (10489, @loot_item, 0.03, 6, 1, 1, 0), (10469, @loot_item, 0.03, 6, 1, 1, 0), (10470, @loot_item, 0.03, 6, 1, 1, 0), (10471, @loot_item, 0.03, 6, 1, 1, 0), (10472, @loot_item, 0.03, 6, 1, 1, 0), (10476, @loot_item, 0.03, 6, 1, 1, 0), (10477, @loot_item, 0.03, 6, 1, 1, 0), (11257, @loot_item, 0.03, 6, 1, 1, 0), (10418, @loot_item, 0.03, 6, 1, 1, 0), (10419, @loot_item, 0.03, 6, 1, 1, 0), (10420, @loot_item, 0.03, 6, 1, 1, 0), (10421, @loot_item, 0.03, 6, 1, 1, 0), (10422, @loot_item, 0.03, 6, 1, 1, 0), (10423, @loot_item, 0.03, 6, 1, 1, 0), (10424, @loot_item, 0.03, 6, 1, 1, 0), (10425, @loot_item, 0.03, 6, 1, 1, 0), (10426, @loot_item, 0.03, 6, 1, 1, 0);
UPDATE `creature_loot_template` SET `groupid` = 5 WHERE `item` = @loot_item;
