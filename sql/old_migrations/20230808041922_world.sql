
-- Changes by VOJI
REPLACE INTO `creature` VALUES (2578640,80241,0,0,0,0,4108.87,-2746.19,-0.701256,5.19197,120,120,5,100,100,1,0,0);

-- Changes by SHANG
DELETE FROM creature WHERE guid=2577926;
DELETE FROM creature_addon WHERE guid=2577926;
DELETE FROM creature_movement WHERE id=2577926;
DELETE FROM game_event_creature WHERE guid=2577926;
DELETE FROM game_event_creature_data WHERE guid=2577926;
DELETE FROM creature_battleground WHERE guid=2577926;

-- Changes by VOJI
DELETE FROM creature WHERE guid=2578640;
DELETE FROM creature_addon WHERE guid=2578640;
DELETE FROM creature_movement WHERE id=2578640;
DELETE FROM game_event_creature WHERE guid=2578640;
DELETE FROM game_event_creature_data WHERE guid=2578640;
DELETE FROM creature_battleground WHERE guid=2578640;

-- Changes by JOE
UPDATE `creature` SET `position_x` = -649.921814, `position_y` = 1912.587402, `position_z` = -1.153339, `orientation` = 4.586152 WHERE `guid` = 17670;
