-- Fix quest Thandol Span.
UPDATE `gameobject_template` SET `script_name`='go_scarlet_attack_trigger' WHERE  `entry`=1000169;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=50674;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (50673, 53002, -100, 0, 1, 1, 0);
