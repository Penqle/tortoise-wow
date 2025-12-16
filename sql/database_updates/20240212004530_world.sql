DELETE FROM item_loot_template WHERE entry = 41303;


REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES

(41303, 51217, 100, 0, 15, 15, 0),
(41303, 68068, 100, 1, 1, 1, 0),
(41303, 68069, 100, 2, 1, 1, 0),
(41303, 81110, 100, 3, 1, 1, 0);
