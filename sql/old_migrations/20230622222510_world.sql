
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577523,60919,0,0,0,0,-6390.57,-2963.7,400.818,4.50771,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577523;
DELETE FROM creature_addon WHERE guid=2577523;
DELETE FROM creature_movement WHERE id=2577523;
DELETE FROM game_event_creature WHERE guid=2577523;
DELETE FROM game_event_creature_data WHERE guid=2577523;
DELETE FROM creature_battleground WHERE guid=2577523;
REPLACE INTO `creature` VALUES (2577524,7397,0,0,0,0,-6368.65,-2953.49,406.198,0.575223,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2577524;
DELETE FROM creature_addon WHERE guid=2577524;
DELETE FROM creature_movement WHERE id=2577524;
DELETE FROM game_event_creature WHERE guid=2577524;
DELETE FROM game_event_creature_data WHERE guid=2577524;
DELETE FROM creature_battleground WHERE guid=2577524;
