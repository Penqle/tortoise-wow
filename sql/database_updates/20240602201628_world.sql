
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583541,59963,0,0,0,1,5049.9,-6620.67,2.29956,4.8117,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583541;
DELETE FROM creature_addon WHERE guid=2583541;
DELETE FROM creature_movement WHERE id=2583541;
DELETE FROM game_event_creature WHERE guid=2583541;
DELETE FROM game_event_creature_data WHERE guid=2583541;
DELETE FROM creature_battleground WHERE guid=2583541;
