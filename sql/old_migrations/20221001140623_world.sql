-- Move Quilguard Legguards to Loot Group 1 for Overlord Ramtusk.
DELETE FROM `creature_loot_template` WHERE `item`=80734 && `entry`=4420;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30143, 80734, 0, 1, 1, 1, 0);

-- Move Warded Boarleather Belt and Rageboar Harness to Loot Group 1 for Agathelos the Raging.
DELETE FROM `creature_loot_template` WHERE `item`=80735 && `entry`=4422;
DELETE FROM `creature_loot_template` WHERE `item`=80736 && `entry`=4422;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30145, 80735, 0, 1, 1, 1, 0);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30145, 80736, 0, 1, 1, 1, 0);
