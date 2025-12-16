
-- Changes by JOE
UPDATE `creature` SET `position_x` = -5207.291016, `position_y` = 1272.153564, `position_z` = 54.024601, `orientation` = 3.797226 WHERE `guid` = 51210;

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013567, 179945, 0, -1201.44, 2700.28, 32.4026, 5.18521, 0, 0, 0.521825, -0.853053, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2574976,70006,0,0,0,0,-1215.31,2702.14,32.267,1.49148,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574977,14355,0,0,0,0,-1211.49,2699.61,32.3306,2.59045,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574977;
DELETE FROM creature_addon WHERE guid=2574977;
DELETE FROM creature_movement WHERE id=2574977;
DELETE FROM game_event_creature WHERE guid=2574977;
DELETE FROM game_event_creature_data WHERE guid=2574977;
DELETE FROM creature_battleground WHERE guid=2574977;
REPLACE INTO `creature` VALUES (2574978,14355,0,0,0,0,-1210.28,2701.15,32.3702,3.48423,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574978;
DELETE FROM creature_addon WHERE guid=2574978;
DELETE FROM creature_movement WHERE id=2574978;
DELETE FROM game_event_creature WHERE guid=2574978;
DELETE FROM game_event_creature_data WHERE guid=2574978;
DELETE FROM creature_battleground WHERE guid=2574978;
