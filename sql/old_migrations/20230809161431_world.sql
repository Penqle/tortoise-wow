
-- Changes by VOJI
REPLACE INTO `creature` VALUES (2578641,80241,0,0,0,0,4087.21,-2761.96,-2.02972,2.97464,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2578641;
DELETE FROM creature_addon WHERE guid=2578641;
DELETE FROM creature_movement WHERE id=2578641;
DELETE FROM game_event_creature WHERE guid=2578641;
DELETE FROM game_event_creature_data WHERE guid=2578641;
DELETE FROM creature_battleground WHERE guid=2578641;
