-- Fixed a bug with empty "Brightly Colored Egg".
replace INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4984,  6833,  1.8, 0, 1, 1, 0),
(4984,  6835,  1.8, 0, 1, 1, 0),
(4984, 19028,  1.8, 0, 1, 1, 0),
(4984,  7806, 33.3, 1, 1, 1, 0),
(4984,  7807, 33.3, 1, 1, 1, 0),
(4984,  7808, 33.4, 1, 1, 1, 0);