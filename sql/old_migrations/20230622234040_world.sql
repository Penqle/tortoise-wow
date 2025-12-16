
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577523,17003,0,0,0,1,5486.67,-3752.42,1598.49,2.23044,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2577523;
DELETE FROM creature_addon WHERE guid=2577523;
DELETE FROM creature_movement WHERE id=2577523;
DELETE FROM game_event_creature WHERE guid=2577523;
DELETE FROM game_event_creature_data WHERE guid=2577523;
DELETE FROM creature_battleground WHERE guid=2577523;
