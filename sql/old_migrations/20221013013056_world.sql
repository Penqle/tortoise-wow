-- Add skinning loot to Ishamuhale.
UPDATE `creature_template` SET `skinning_loot_id`=3257 WHERE `entry`=3257;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(3257, 2318, 73, 1, 1, 2, 0),
(3257, 2319, 25, 1, 1, 1, 0),
(3257, 783, 2, 1, 1, 1, 0);
