
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583252,11189,0,0,0,0,-429.374,-619.109,54.5123,5.28277,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583252;
DELETE FROM creature_addon WHERE guid=2583252;
DELETE FROM creature_movement WHERE id=2583252;
DELETE FROM game_event_creature WHERE guid=2583252;
DELETE FROM game_event_creature_data WHERE guid=2583252;
DELETE FROM creature_battleground WHERE guid=2583252;
