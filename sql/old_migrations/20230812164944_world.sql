
-- Changes by JOE
DELETE FROM creature WHERE guid=2572289;
DELETE FROM creature_addon WHERE guid=2572289;
DELETE FROM creature_movement WHERE id=2572289;
DELETE FROM game_event_creature WHERE guid=2572289;
DELETE FROM game_event_creature_data WHERE guid=2572289;
DELETE FROM creature_battleground WHERE guid=2572289;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578665,50041,0,0,0,532,-11110.7,-1962.05,74.3892,5.87804,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -10932.880859, `position_y` = -1992.220215, `position_z` = 92.182457, `orientation` = 5.953417 WHERE `guid` = 2574312;
DELETE FROM creature WHERE guid=2574310;
DELETE FROM creature_addon WHERE guid=2574310;
DELETE FROM creature_movement WHERE id=2574310;
DELETE FROM game_event_creature WHERE guid=2574310;
DELETE FROM game_event_creature_data WHERE guid=2574310;
DELETE FROM creature_battleground WHERE guid=2574310;
REPLACE INTO `creature` VALUES (2578666,14337,0,0,0,532,-10962.2,-1969.11,79.9736,4.37008,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2578666;
DELETE FROM creature_addon WHERE guid=2578666;
DELETE FROM creature_movement WHERE id=2578666;
DELETE FROM game_event_creature WHERE guid=2578666;
DELETE FROM game_event_creature_data WHERE guid=2578666;
DELETE FROM creature_battleground WHERE guid=2578666;
