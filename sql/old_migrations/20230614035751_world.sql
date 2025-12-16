
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577476,10987,0,0,0,0,-1168.27,1504.88,70.9742,2.50661,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577476;
DELETE FROM creature_addon WHERE guid=2577476;
DELETE FROM creature_movement WHERE id=2577476;
DELETE FROM game_event_creature WHERE guid=2577476;
DELETE FROM game_event_creature_data WHERE guid=2577476;
DELETE FROM creature_battleground WHERE guid=2577476;

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -1426.187500, `position_y` = 1575.896484, `position_z` = 142.726318, `orientation` = 2.417884 WHERE `guid` = 2576370;
REPLACE INTO `gameobject` VALUES ( 5015548, 2002563, 1, 7691.41, -2960.8, 465.855, 3.6313, 0, 0, 0.970173, -0.242414, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417360205023228, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5015548, 2002563, 1, 7691.41, -2960.8, 465.855, 3.6313, 0, 0, 0.970173, -0.242414, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417360205023228, 1.800000);
REPLACE INTO `gameobject` VALUES ( 5015548, 2002563, 1, 7691.41, -2960.8, 465.855, 3.6313, 0, 0, 0.970173, -0.242414, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015548, 2002563, 1, 7691.41, -2960.8, 465.455, 3.6313, 0, 0, 0.970173, -0.242414, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015548, 2002563, 1, 7691.41, -2960.8, 465.055, 3.6313, 0, 0, 0.970173, -0.242414, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015548, 2002563, 1, 7691.41, -2961.2, 465.055, 3.6313, 0, 0, 0.970173, -0.242414, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015548, 2002563, 1, 7691.41, -2961.6, 465.055, 3.6313, 0, 0, 0.970173, -0.242414, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015548';
DELETE FROM game_event_gameobject WHERE guid = '5015548';
DELETE FROM gameobject_battleground WHERE guid = '5015548';
REPLACE INTO `gameobject` VALUES ( 5015549, 2002563, 1, 7689.84, -2961.29, 465.785, 3.65879, 0, 0, 0.96675, -0.255724, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015549';
DELETE FROM game_event_gameobject WHERE guid = '5015549';
DELETE FROM gameobject_battleground WHERE guid = '5015549';

-- Changes by SHANG
UPDATE `creature` SET `position_x` = -947.607056, `position_y` = 2948.833252, `position_z` = 145.549789, `orientation` = 4.229321 WHERE `guid` = 2576136;
UPDATE `creature` SET `position_x` = -947.374329, `position_y` = 2948.945557, `position_z` = 144.993607, `orientation` = 4.169495 WHERE `guid` = 2576136;
UPDATE `creature` SET `position_x` = -947.571472, `position_y` = 2949.020996, `position_z` = 144.993942, `orientation` = 4.126302 WHERE `guid` = 2576136;
