
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578414,91835,0,0,0,0,-10590,-2770.38,27.7731,1.64425,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578414;
DELETE FROM creature_addon WHERE guid=2578414;
DELETE FROM creature_movement WHERE id=2578414;
DELETE FROM game_event_creature WHERE guid=2578414;
DELETE FROM game_event_creature_data WHERE guid=2578414;
DELETE FROM creature_battleground WHERE guid=2578414;
