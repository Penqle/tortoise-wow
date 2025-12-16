
-- Changes by WOJI
REPLACE INTO `creature` VALUES (2583547,1024,0,0,0,814,-11080.2,-1877.93,220.668,4.16851,120,120,5,100,100,1,0,0);

-- Changes by LUKE
REPLACE INTO `creature` VALUES (2583548,1,0,0,0,0,-8529.16,848.963,106.519,3.76319,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583548;
DELETE FROM creature_addon WHERE guid=2583548;
DELETE FROM creature_movement WHERE id=2583548;
DELETE FROM game_event_creature WHERE guid=2583548;
DELETE FROM game_event_creature_data WHERE guid=2583548;
DELETE FROM creature_battleground WHERE guid=2583548;

-- Changes by WOJI
DELETE FROM creature WHERE guid=2583547;
DELETE FROM creature_addon WHERE guid=2583547;
DELETE FROM creature_movement WHERE id=2583547;
DELETE FROM game_event_creature WHERE guid=2583547;
DELETE FROM game_event_creature_data WHERE guid=2583547;
DELETE FROM creature_battleground WHERE guid=2583547;
