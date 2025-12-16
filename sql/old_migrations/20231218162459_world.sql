
-- Changes by WOJI
REPLACE INTO `creature` VALUES (2582663,40004,0,0,0,0,4383.72,-2924.01,7.39395,5.08814,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582663;
DELETE FROM creature_addon WHERE guid=2582663;
DELETE FROM creature_movement WHERE id=2582663;
DELETE FROM game_event_creature WHERE guid=2582663;
DELETE FROM game_event_creature_data WHERE guid=2582663;
DELETE FROM creature_battleground WHERE guid=2582663;
REPLACE INTO `creature` VALUES (2582664,80258,0,0,0,0,4384.48,-2925.94,7.38351,5.07636,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2582664;
DELETE FROM creature_addon WHERE guid=2582664;
DELETE FROM creature_movement WHERE id=2582664;
DELETE FROM game_event_creature WHERE guid=2582664;
DELETE FROM game_event_creature_data WHERE guid=2582664;
DELETE FROM creature_battleground WHERE guid=2582664;
