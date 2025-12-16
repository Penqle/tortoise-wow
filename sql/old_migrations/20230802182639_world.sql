
-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578573,11500,0,0,0,1,-1026.82,306.372,135.74,0.302227,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578573;
DELETE FROM creature_addon WHERE guid=2578573;
DELETE FROM creature_movement WHERE id=2578573;
DELETE FROM game_event_creature WHERE guid=2578573;
DELETE FROM game_event_creature_data WHERE guid=2578573;
DELETE FROM creature_battleground WHERE guid=2578573;
