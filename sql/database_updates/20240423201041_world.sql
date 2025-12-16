
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583252,1808,0,0,0,451,15645.2,16559.7,48.611,3.36528,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583252;
DELETE FROM creature_addon WHERE guid=2583252;
DELETE FROM creature_movement WHERE id=2583252;
DELETE FROM game_event_creature WHERE guid=2583252;
DELETE FROM game_event_creature_data WHERE guid=2583252;
DELETE FROM creature_battleground WHERE guid=2583252;

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2583253,61939,0,0,0,532,-11139.1,-1885.34,165.766,3.77896,120,120,0,100,100,0,1,200);
DELETE FROM creature WHERE guid=2583253;
DELETE FROM creature_addon WHERE guid=2583253;
DELETE FROM creature_movement WHERE id=2583253;
DELETE FROM game_event_creature WHERE guid=2583253;
DELETE FROM game_event_creature_data WHERE guid=2583253;
DELETE FROM creature_battleground WHERE guid=2583253;
