-- Fixed some items not playing sound in the player's inventory:

UPDATE `item_template` SET `material` = 1 WHERE `entry` = 61166;
UPDATE `item_template` SET `material` = 0 WHERE `entry` = 61157;
UPDATE `item_template` SET `display_id` = 7740, `material` = 8 WHERE `entry` = 60110;

UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Bleakheart Horn' WHERE `entry` = 61150;
UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Xavian Horn' WHERE `entry` = 61151;
UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Felmusk Horn'  WHERE `entry` = 61152;

-- 1	Metal
-- 2	Wood
-- 3	Liquid
-- 4	Jewelry
-- 5	Chain
-- 6	Salary
-- 7	Cloth
-- 8	Leather

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3531
-- Fixed a typo in Kelly Vaulstone's gossip.

UPDATE `broadcast_text` SET `male_text` = 'This harbor ain''t too shabby for fishing!', `female_text` = NULL, `chat_type` = 0, `sound_id` = 0, `language_id` = 0, `emote_id1` = 0, `emote_id2` = 0, `emote_id3` = 0, `emote_delay1` = 0, `emote_delay2` = 0, `emote_delay3` = 0 WHERE `entry` = 60928;

-- Reduced XP from killing Starving Bonepaw in Desolace.
-- In WoW classic, these mobs give reduced experience, since they have reduced hit points (they die in 2-3 spells).

UPDATE `creature_template` SET `xp_multiplier` = 0.3 WHERE `entry` = 4689;

-- Marked quest Treant Muisek as Elite.
-- Marked quest Army of the Black Dragon as Elite.

UPDATE `quest_template` SET `type` = 1 WHERE `entry` = 3126;
UPDATE `quest_template` SET `type` = 1 WHERE `entry` = 1168;

-- Custom cooking trigger for pre-baked fireplaces:

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (31445, 8, 0, 'Can Cook Here!', 0, 0, 1.11712, 4, 8, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3473
-- Caelan's Rest fireplace:

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (88098, 31445, 0, -11889.8, 3188.73, 17.4114, 1.62145, 0, 0, 0.724787, 0.688973, 300, 300, 100, 1, 0, 0);

-- Fixed Ivory Tallstrider getting dismounted in water.

DELETE FROM `spell_mod` WHERE `Id` = 8396;
UPDATE `spell_template` SET `castingTimeIndex` = 14 WHERE `entry`=8396;

-- Fixed Reindeer getting dismounted in water.

DELETE FROM `spell_mod` WHERE `Id` = 25675;
UPDATE `spell_template` SET `castingTimeIndex` = 14 WHERE `entry`= 25675;

-- Assigned correct faction to NPC Fellis Bander .

UPDATE `creature_template` SET `faction` = 1693 WHERE `entry` = 91873;