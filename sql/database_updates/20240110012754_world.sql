
-- Changes by WILLBERG
REPLACE INTO `creature` VALUES (2582785,7559,0,0,0,1,2954.62,-3217.54,169.205,2.61679,120,120,0,100,100,0,0,0);

-- Changes by WILL
DELETE FROM creature WHERE guid=2582785;
DELETE FROM creature_addon WHERE guid=2582785;
DELETE FROM creature_movement WHERE id=2582785;
DELETE FROM game_event_creature WHERE guid=2582785;
DELETE FROM game_event_creature_data WHERE guid=2582785;
DELETE FROM creature_battleground WHERE guid=2582785;

-- Changes by WILLBERG
REPLACE INTO `creature` VALUES (2582786,7559,0,0,0,0,-4148.09,-3325.52,232.535,5.60386,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582787,7559,0,0,0,0,-4145.23,-3326.92,232.41,2.90562,120,120,0,100,100,0,0,0);

-- Changes by WILL2
REPLACE INTO `creature` VALUES (2582788,61892,0,0,0,0,-4163.81,-3348.82,231.791,1.66314,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582788,1, -4163.810059,-3348.815186,231.791321, 100);

-- Changes by WILLBERG
DELETE FROM creature WHERE guid=2582788;
DELETE FROM creature_addon WHERE guid=2582788;
DELETE FROM creature_movement WHERE id=2582788;
DELETE FROM game_event_creature WHERE guid=2582788;
DELETE FROM game_event_creature_data WHERE guid=2582788;
DELETE FROM creature_battleground WHERE guid=2582788;
DELETE FROM creature WHERE guid=2582786;
DELETE FROM creature_addon WHERE guid=2582786;
DELETE FROM creature_movement WHERE id=2582786;
DELETE FROM game_event_creature WHERE guid=2582786;
DELETE FROM game_event_creature_data WHERE guid=2582786;
DELETE FROM creature_battleground WHERE guid=2582786;
DELETE FROM creature WHERE guid=2582787;
DELETE FROM creature_addon WHERE guid=2582787;
DELETE FROM creature_movement WHERE id=2582787;
DELETE FROM game_event_creature WHERE guid=2582787;
DELETE FROM game_event_creature_data WHERE guid=2582787;
DELETE FROM creature_battleground WHERE guid=2582787;
