
-- Changes by TORTA
REPLACE INTO `creature` VALUES (2583648,60392,0,0,0,0,-1425.85,-1580.75,36.8757,5.92912,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583648;
DELETE FROM creature_addon WHERE guid=2583648;
DELETE FROM creature_movement WHERE id=2583648;
DELETE FROM game_event_creature WHERE guid=2583648;
DELETE FROM game_event_creature_data WHERE guid=2583648;
DELETE FROM creature_battleground WHERE guid=2583648;
REPLACE INTO `creature` VALUES (2583649,50516,0,0,0,0,-1425.85,-1580.75,36.8757,5.92912,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 0.500000 where entry = 50516;
UPDATE `creature_template` set `scale` = 1.000000 where entry = 50516;

-- Changes by GHEOR
REPLACE INTO `gameobject` VALUES ( 5019636, 2020112, 814, -11165.5, -1572.3, 279.601, 1.63329, 0, 0, 0.728855, 0.684669, 300, 300, 100, 1, 0, 0);
