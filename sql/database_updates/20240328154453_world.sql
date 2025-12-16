
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582887,61422,0,0,0,0,-654.536,-170.536,42.7617,4.96004,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582887;
DELETE FROM creature_addon WHERE guid=2582887;
DELETE FROM creature_movement WHERE id=2582887;
DELETE FROM game_event_creature WHERE guid=2582887;
DELETE FROM game_event_creature_data WHERE guid=2582887;
DELETE FROM creature_battleground WHERE guid=2582887;
