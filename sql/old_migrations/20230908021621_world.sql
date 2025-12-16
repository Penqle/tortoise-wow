
-- Changes by JAMEYBOOR
REPLACE INTO `creature` VALUES (2578856,80241,0,0,0,0,4139.8,-2728.99,3.11621,3.35125,120,120,5,100,100,1,0,0);

-- Changes by JOE
DELETE FROM creature WHERE guid=2578856;
DELETE FROM creature_addon WHERE guid=2578856;
DELETE FROM creature_movement WHERE id=2578856;
DELETE FROM game_event_creature WHERE guid=2578856;
DELETE FROM game_event_creature_data WHERE guid=2578856;
DELETE FROM creature_battleground WHERE guid=2578856;
