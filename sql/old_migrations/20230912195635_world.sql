
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578863,9816,0,0,0,0,-2170.85,2438.14,21.0693,0.863313,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2578863;
DELETE FROM creature_addon WHERE guid=2578863;
DELETE FROM creature_movement WHERE id=2578863;
DELETE FROM game_event_creature WHERE guid=2578863;
DELETE FROM game_event_creature_data WHERE guid=2578863;
DELETE FROM creature_battleground WHERE guid=2578863;
REPLACE INTO `creature` VALUES (2578864,10264,0,0,0,0,-2168.56,2440.82,20.7811,0.863313,120,120,5,100,100,2,1,200);
DELETE FROM creature WHERE guid=2578864;
DELETE FROM creature_addon WHERE guid=2578864;
DELETE FROM creature_movement WHERE id=2578864;
DELETE FROM game_event_creature WHERE guid=2578864;
DELETE FROM game_event_creature_data WHERE guid=2578864;
DELETE FROM creature_battleground WHERE guid=2578864;
