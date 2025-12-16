
-- Changes by DRAGU
UPDATE `creature_addon` SET `emote_state`=234 WHERE `guid`=2563266;
UPDATE `creature` SET `position_x` = 790.851013, `position_y` = -4939.147461, `position_z` = 19.106686, `orientation` = 3.050472 WHERE `guid` = 2563253;
UPDATE `creature` SET `position_x` = 854.378601, `position_y` = -4974.249023, `position_z` = 5.731066, `orientation` = 4.870193 WHERE `guid` = 2563249;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2563249, 28);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2563249, 69);
UPDATE `creature` SET `position_x` = 854.525879, `position_y` = -4974.645508, `position_z` = 5.731766, `orientation` = 4.790083 WHERE `guid` = 2563249;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2563249, 69);
DELETE FROM creature WHERE guid=2563248;
DELETE FROM creature_addon WHERE guid=2563248;
DELETE FROM creature_movement WHERE id=2563248;
DELETE FROM game_event_creature WHERE guid=2563248;
DELETE FROM game_event_creature_data WHERE guid=2563248;
DELETE FROM creature_battleground WHERE guid=2563248;
