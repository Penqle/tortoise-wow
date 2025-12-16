UPDATE creature_loot_template SET ChanceOrQuestChance = 4 WHERE entry = 13022 AND item IN (13464,8836,2452,13463,4625,8846,8838);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(13022, 13465 , 4, 0, 1, 1, 0),
(13022, 13466 , 4, 0, 1, 1, 0),
(13022, 13467 , 4, 0, 1, 1, 0);



