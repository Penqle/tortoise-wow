REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6361, 0.3212, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6356, 1.6914, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6308, 0.3671, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6303, 0, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6291, 12.5606, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6289, 8.5945, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6292, 0.1381, 1, 1, 1, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/5969

UPDATE `quest_template` SET `OfferRewardText` = '<Wide eyes and an extreme expression of bewilderment can be seen on Ranala\'s face.>$B$BI can\'t believe my eyes! My gold pouch, it\'s... it\'s here! But... it seems to have lost some coins through this hole here. Regardless, most of it is still here. $n, thank you so much. Here, this is for your troubles. When we get back, we\'ll tell the superiors of what you did here.' WHERE `entry` = 41160;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/5762

DELETE FROM `fishing_loot_template` WHERE `entry` = 2040;
DELETE FROM `fishing_loot_template` WHERE `entry` = 5225;

REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2040, 6361, 0.3212, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2040, 6356, 1.6914, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2040, 6308, 0.3671, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2040, 6303, 0, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2040, 6291, 12.5606, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2040, 6289, 8.5945, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2040, 6292, 0.1381, 1, 1, 1, 0);

REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5225, 6361, 0.3212, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5225, 6356, 1.6914, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5225, 6308, 0.3671, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5225, 6303, 0, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5225, 6291, 12.5606, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5225, 6289, 8.5945, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5225, 6292, 0.1381, 1, 1, 1, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3960

UPDATE `creature_template` SET `skinning_loot_id` = 1191 WHERE `entry` = 60980;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/5298

UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 3512;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/5679

UPDATE `broadcast_text` SET `male_text` = 'Hey, hey, heyyyyy! Wake up Booty Bay, it is time to invest!' WHERE `entry` = 47020;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/4110

REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (951, 3.8);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (951, 15, 67);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/4338

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (5541, 179945, 1, -3018.72, -4345.71, 6.77611, 5.36293, 0, 0, 0.444061, -0.895996, 300, 300, 100, 1, 0, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/4932

UPDATE `item_template` SET `sheath` = 2 WHERE `entry` = 61454;