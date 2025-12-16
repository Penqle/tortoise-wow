
-- Changes by GHEOR
DELETE FROM creature WHERE guid=2583547;
DELETE FROM creature_addon WHERE guid=2583547;
DELETE FROM creature_movement WHERE id=2583547;
DELETE FROM game_event_creature WHERE guid=2583547;
DELETE FROM game_event_creature_data WHERE guid=2583547;
DELETE FROM creature_battleground WHERE guid=2583547;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583561,61792,0,0,0,451,15684.3,16579.3,48.6117,3.14301,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583561;
DELETE FROM creature_addon WHERE guid=2583561;
DELETE FROM creature_movement WHERE id=2583561;
DELETE FROM game_event_creature WHERE guid=2583561;
DELETE FROM game_event_creature_data WHERE guid=2583561;
DELETE FROM creature_battleground WHERE guid=2583561;

-- Changes by MEFLOR
REPLACE INTO `gameobject` VALUES ( 5019634, 180691, 1, 16237.6, 16291.9, 22.9298, 4.62752, 0, 0, 0.736466, -0.676474, 300, 300, 100, 1, 0, 0);
