
-- Changes by DRAGUNOVI
DELETE FROM creature WHERE guid=2577011;
DELETE FROM creature_addon WHERE guid=2577011;
DELETE FROM creature_movement WHERE id=2577011;
DELETE FROM game_event_creature WHERE guid=2577011;
DELETE FROM game_event_creature_data WHERE guid=2577011;
DELETE FROM creature_battleground WHERE guid=2577011;
REPLACE INTO `creature` VALUES (2577212,61533,0,0,0,1,5164.11,-1347.01,1357.58,4.96539,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 5175.625488, `position_y` = -1393.601318, `position_z` = 1355.679932, `orientation` = 0.775270 WHERE `guid` = 2577212;
REPLACE INTO `creature` VALUES (2577212,61533,0,0,0,1,5175.63,-1393.6,1355.68,0.77527,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577212;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,1, 5175.625488,-1393.601318,1355.679932, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,2, 5181.490723,-1458.329712,1349.840210, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,3, 5142.272461,-1452.146484,1346.249023, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,4, 5113.335449,-1463.651001,1343.621216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,5, 5105.263184,-1373.206177,1348.120117, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,6, 5166.043457,-1335.825928,1359.046387, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,7, 5211.960938,-1256.336792,1371.696899, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,8, 5161.615723,-1338.726074,1358.527710, 100);
REPLACE INTO `creature` VALUES (2577212,61533,0,0,0,1,5175.63,-1393.6,1355.68,0.77527,300,300,0,100,100,2,0,0);

-- Changes by TORTA
REPLACE INTO `gameobject` VALUES ( 5015492, 2005047, 1, 2910.17, -3248.18, 161.334, 4.30707, 0, 0, 0.834959, -0.550313, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015492';
DELETE FROM game_event_gameobject WHERE guid = '5015492';
DELETE FROM gameobject_battleground WHERE guid = '5015492';
REPLACE INTO `gameobject` VALUES ( 5015493, 2005043, 1, 2910.21, -3248.15, 161.347, 3.19023, 0, 0, 0.999704, -0.0243167, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401812518853, 0.300000);
REPLACE INTO `gameobject` VALUES ( 5015493, 2005043, 1, 2910.21, -3248.15, 161.347, 3.19023, 0, 0, 0.999704, -0.0243167, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401812518853, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5015493, 2005043, 1, 2910.21, -3248.15, 161.347, 3.19023, 0, 0, 0.999704, -0.0243167, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401812518853, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5015493, 2005043, 1, 2910.21, -3248.15, 161.347, 3.19023, 0, 0, 0.999704, -0.0243167, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015493, 2005043, 1, 2910.2, -3248.14, 160, 3.19023, 0, 0, 0.999704, -0.0243167, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015493, 2005043, 1, 2912.6, -3248.6, 160, 3.19023, 0, 0, 0.999704, -0.0243167, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577213,61457,0,0,0,0,-2147.39,1159.58,25.5197,1.79855,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574681;
DELETE FROM creature_addon WHERE guid=2574681;
DELETE FROM creature_movement WHERE id=2574681;
DELETE FROM game_event_creature WHERE guid=2574681;
DELETE FROM game_event_creature_data WHERE guid=2574681;
DELETE FROM creature_battleground WHERE guid=2574681;

-- Changes by VOJI
DELETE FROM gameobject WHERE guid = '5012058';
DELETE FROM game_event_gameobject WHERE guid = '5012058';
DELETE FROM gameobject_battleground WHERE guid = '5012058';

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577214,61393,0,0,0,0,-1948.84,2537.43,30.6805,4.68299,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577214;
DELETE FROM creature_addon WHERE guid=2577214;
DELETE FROM creature_movement WHERE id=2577214;
DELETE FROM game_event_creature WHERE guid=2577214;
DELETE FROM game_event_creature_data WHERE guid=2577214;
DELETE FROM creature_battleground WHERE guid=2577214;
REPLACE INTO `creature` VALUES (2577215,61513,0,0,0,0,-1535.18,1411.26,77.428,0.125484,120,120,0,100,100,0,0,0);

-- Changes by VOJI
UPDATE `creature` SET `position_x` = 5644.852051, `position_y` = -1121.827271, `position_z` = 380.961029, `orientation` = 2.299642 WHERE `guid` = 2573858;
UPDATE `creature` SET `position_x` = 5641.056152, `position_y` = -1125.104248, `position_z` = 380.961060, `orientation` = 0.933048 WHERE `guid` = 2573857;
UPDATE `creature` SET `position_x` = 5626.300781, `position_y` = -1105.061401, `position_z` = 381.811920, `orientation` = 4.624416 WHERE `guid` = 2573860;
