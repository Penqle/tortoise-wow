
-- Changes by VOJI
REPLACE INTO `creature` VALUES (2578573,61623,0,0,0,1,877.541,-831.099,169.447,3.77833,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578376;
DELETE FROM creature_addon WHERE guid=2578376;
DELETE FROM creature_movement WHERE id=2578376;
DELETE FROM game_event_creature WHERE guid=2578376;
DELETE FROM game_event_creature_data WHERE guid=2578376;
DELETE FROM creature_battleground WHERE guid=2578376;
UPDATE `creature` SET `position_x` = 878.038757, `position_y` = -830.533020, `position_z` = 169.445648, `orientation` = 0.279377 WHERE `guid` = 2578573;
REPLACE INTO `gameobject` VALUES ( 5016579, 2003330, 1, 876.672, -828.844, 169.451, 0.364981, 0, 0, 0.181479, 0.983395, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016579, 2003330, 1, 876.672, -828.844, 169.051, 0.364981, 0, 0, 0.181479, 0.983395, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016579, 2003330, 1, 876.672, -828.844, 168.651, 0.364981, 0, 0, 0.181479, 0.983395, 300, 300, 100, 1, 0, 0);
UPDATE `creature` SET `position_x` = 877.534790, `position_y` = -831.786804, `position_z` = 169.442627, `orientation` = 0.164698 WHERE `guid` = 2578573;
