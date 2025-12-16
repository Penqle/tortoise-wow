
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578414,61200,0,0,0,0,-13239.9,210.776,30.8072,4.24306,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578414;
DELETE FROM creature_addon WHERE guid=2578414;
DELETE FROM creature_movement WHERE id=2578414;
DELETE FROM game_event_creature WHERE guid=2578414;
DELETE FROM game_event_creature_data WHERE guid=2578414;
DELETE FROM creature_battleground WHERE guid=2578414;
