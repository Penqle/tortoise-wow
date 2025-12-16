
-- Changes by VOJI
REPLACE INTO `creature` VALUES (2578250,61593,0,0,0,1,-4451.92,-781.543,-44.4869,1.7505,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578250;
DELETE FROM creature_addon WHERE guid=2578250;
DELETE FROM creature_movement WHERE id=2578250;
DELETE FROM game_event_creature WHERE guid=2578250;
DELETE FROM game_event_creature_data WHERE guid=2578250;
DELETE FROM creature_battleground WHERE guid=2578250;
UPDATE `creature` SET `position_x` = -4509.064453, `position_y` = -765.335571, `position_z` = -37.964344, `orientation` = 3.185412 WHERE `guid` = 2578238;
