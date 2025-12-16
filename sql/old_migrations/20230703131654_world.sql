
-- Changes by VOJI
DELETE FROM creature WHERE guid=2577928;
DELETE FROM creature_addon WHERE guid=2577928;
DELETE FROM creature_movement WHERE id=2577928;
DELETE FROM game_event_creature WHERE guid=2577928;
DELETE FROM game_event_creature_data WHERE guid=2577928;
DELETE FROM creature_battleground WHERE guid=2577928;

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2577929,61191,0,0,0,0,-11130.2,-2060.25,48.5869,1.36603,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577929;
DELETE FROM creature_addon WHERE guid=2577929;
DELETE FROM creature_movement WHERE id=2577929;
DELETE FROM game_event_creature WHERE guid=2577929;
DELETE FROM game_event_creature_data WHERE guid=2577929;
DELETE FROM creature_battleground WHERE guid=2577929;
