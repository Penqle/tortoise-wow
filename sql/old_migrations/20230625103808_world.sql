-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3785

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 91762;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3747

UPDATE `item_template` SET `disenchant_id` = 7 WHERE `entry` = 7925;