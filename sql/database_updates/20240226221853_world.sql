
-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5018385, 179862, 0, -4709.41, -1174.03, 505.269, 2.66482, 0, 0, 0.971721, 0.236133, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5018385';
DELETE FROM game_event_gameobject WHERE guid = '5018385';
DELETE FROM gameobject_battleground WHERE guid = '5018385';
UPDATE `creature` SET `position_x` = 1432.624756, `position_y` = 123.465935, `position_z` = -62.289360, `orientation` = 2.931251 WHERE `guid` = 32040;
