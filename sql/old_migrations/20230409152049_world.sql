UPDATE quest_template SET RewRepValue1 = 100 WHERE entry = 40794;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3226

DELETE FROM `creature_loot_template` WHERE `entry` = 1138 AND `item` = 10305;
DELETE FROM `creature_loot_template` WHERE `entry` = 1138 AND `item` = 10307;