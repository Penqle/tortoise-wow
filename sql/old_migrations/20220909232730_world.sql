-- Make Abyssal Scepter always drop. 
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `item`=20515;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (15305, 20515, 100, 0, 1, 1, 0);
