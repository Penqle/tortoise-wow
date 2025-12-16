
-- Changes by SHANG
DELETE FROM creature WHERE guid=2562940;
DELETE FROM creature_addon WHERE guid=2562940;
DELETE FROM creature_movement WHERE id=2562940;
DELETE FROM game_event_creature WHERE guid=2562940;
DELETE FROM game_event_creature_data WHERE guid=2562940;
DELETE FROM creature_battleground WHERE guid=2562940;
DELETE FROM creature WHERE guid=2563153;
DELETE FROM creature_addon WHERE guid=2563153;
DELETE FROM creature_movement WHERE id=2563153;
DELETE FROM game_event_creature WHERE guid=2563153;
DELETE FROM game_event_creature_data WHERE guid=2563153;
DELETE FROM creature_battleground WHERE guid=2563153;
REPLACE INTO `gameobject` VALUES ( 5000014, 180322, 269, -1431.64, 7002.81, -15.2, 1.03652, 0, 0, 0.495371, 0.868681, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5000014';
DELETE FROM game_event_gameobject WHERE guid = '5000014';
DELETE FROM gameobject_battleground WHERE guid = '5000014';
REPLACE INTO `creature` VALUES (2577351,61318,0,0,0,269,-1424.57,7063.18,-2.25193,2.24479,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2563674;
DELETE FROM creature_addon WHERE guid=2563674;
DELETE FROM creature_movement WHERE id=2563674;
DELETE FROM game_event_creature WHERE guid=2563674;
DELETE FROM game_event_creature_data WHERE guid=2563674;
DELETE FROM creature_battleground WHERE guid=2563674;
REPLACE INTO `gameobject` VALUES ( 5015507, 144131, 0, -2056.55, 1111.3, 32.8398, 5.1131, 0, 0, 0.552234, -0.833689, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015507, 144131, 0, -2056.55, 1111.3, 32.6398, 5.1131, 0, 0, 0.552234, -0.833689, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015507, 144131, 0, -2056.55, 1111.3, 32.6398, 3.53966, 0, 0, 0.980258, -0.197724, 300, 300, 100, 1, 0, 0);
