
-- Changes by SHANG
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (909,3321.969971,-2447.813721,107.181198,3.472816,0,'highelf');
REPLACE INTO `creature` VALUES (2582199,81030,0,0,0,1,-255.141,-7146.49,15.8751,1.89213,120,120,5,100,100,2,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2582200,50514,0,0,0,1,1869.03,-4664.03,34.6025,2.5148,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582201,50514,0,0,0,1,1872.11,-4661.72,34.3805,2.16923,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582201;
DELETE FROM creature_addon WHERE guid=2582201;
DELETE FROM creature_movement WHERE id=2582201;
DELETE FROM game_event_creature WHERE guid=2582201;
DELETE FROM game_event_creature_data WHERE guid=2582201;
DELETE FROM creature_battleground WHERE guid=2582201;
DELETE FROM creature WHERE guid=2582200;
DELETE FROM creature_addon WHERE guid=2582200;
DELETE FROM creature_movement WHERE id=2582200;
DELETE FROM game_event_creature WHERE guid=2582200;
DELETE FROM game_event_creature_data WHERE guid=2582200;
DELETE FROM creature_battleground WHERE guid=2582200;

-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017491, 2020072, 0, 3337.9, -2480.62, 105.091, 0.0361054, 0, 0, 0.0180517, 0.999837, 300, 300, 100, 1, 0, 0);

-- Changes by REN
UPDATE `creature` SET `position_x` = 4310.803711, `position_y` = -3040.788574, `position_z` = 22.923267, `orientation` = 4.277101 WHERE `guid` = 2581570;
UPDATE `creature_addon` SET `stand_state`=1 WHERE `guid`=2581570;
UPDATE `creature_addon` SET `stand_state`=0 WHERE `guid`=2581570;
UPDATE `creature` SET `position_x` = 4310.140137, `position_y` = -3040.454102, `position_z` = 23.829506, `orientation` = 5.141034 WHERE `guid` = 2581910;
UPDATE `creature_addon` SET `stand_state`=1 WHERE `guid`=2581910;
UPDATE `creature` SET `position_x` = 4310.026855, `position_y` = -3040.573242, `position_z` = 23.829655, `orientation` = 5.423780 WHERE `guid` = 2581910;
UPDATE `creature` SET `position_x` = 4310.768066, `position_y` = -3040.598145, `position_z` = 22.926102, `orientation` = 4.092525 WHERE `guid` = 2581570;
UPDATE `creature` SET `position_x` = 4310.079590, `position_y` = -3040.593018, `position_z` = 23.829184, `orientation` = 4.316359 WHERE `guid` = 2581910;
UPDATE `creature_template` set `scale` = 0.100000 where entry = 7383;
UPDATE `creature_template` set `scale` = 0.400000 where entry = 7383;
UPDATE `creature_template` set `scale` = 0.300000 where entry = 7383;
UPDATE `creature_template` set `scale` = 0.400000 where entry = 7383;
UPDATE `creature` SET `position_x` = 4310.024902, `position_y` = -3040.473389, `position_z` = 23.829084, `orientation` = 5.600483 WHERE `guid` = 2581910;
REPLACE INTO `gameobject` VALUES ( 5017492, 2003260, 0, 4310.13, -3040.71, 23.8293, 0.326529, 0, 0, 0.16254, 0.986702, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017492';
DELETE FROM game_event_gameobject WHERE guid = '5017492';
DELETE FROM gameobject_battleground WHERE guid = '5017492';
REPLACE INTO `gameobject` VALUES ( 5017493, 2003261, 0, 4309.9, -3040.66, 23.83, 0.354021, 0, 0, 0.176087, 0.984375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371915521941, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5017493, 2003261, 0, 4309.9, -3040.66, 23.83, 0.354021, 0, 0, 0.176087, 0.984375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371915521941, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5017493, 2003261, 0, 4309.9, -3040.66, 23.83, 0.354021, 0, 0, 0.176087, 0.984375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017493, 2003261, 0, 4309.7, -3040.66, 23.83, 0.354021, 0, 0, 0.176087, 0.984375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017493, 2003261, 0, 4309.9, -3040.66, 23.83, 0.354021, 0, 0, 0.176087, 0.984375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017493, 2003261, 0, 4310.1, -3040.66, 23.83, 0.354021, 0, 0, 0.176087, 0.984375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371915521941, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5017493, 2003261, 0, 4310.1, -3040.66, 23.83, 0.354021, 0, 0, 0.176087, 0.984375, 300, 300, 100, 1, 0, 0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2582202,8523,0,0,0,0,3406.54,-2811.73,101.819,1.65208,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582203,8523,0,0,0,0,3442.42,-2807.05,94.0688,5.86574,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582204,8523,0,0,0,0,3436.63,-2781.41,93.1829,2.44534,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2582202;
DELETE FROM creature_addon WHERE guid=2582202;
DELETE FROM creature_movement WHERE id=2582202;
DELETE FROM game_event_creature WHERE guid=2582202;
DELETE FROM game_event_creature_data WHERE guid=2582202;
DELETE FROM creature_battleground WHERE guid=2582202;
REPLACE INTO `creature` VALUES (2582205,8523,0,0,0,0,3261.66,-2909.47,120.02,4.48344,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582206,8523,0,0,0,0,3281.7,-2891.99,122.002,0.894167,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582207,8523,0,0,0,0,3297.07,-2859.54,122.155,0.68211,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582208,8523,0,0,0,0,3334.23,-2845.52,121.555,0.360097,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582209,8523,0,0,0,0,3276.1,-2882,121.835,3.79229,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582210,8523,0,0,0,0,3359.81,-2824.3,115.722,1.07088,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582211,8523,0,0,0,0,3442.24,-2800.86,94.486,4.35974,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2582204;
DELETE FROM creature_addon WHERE guid=2582204;
DELETE FROM creature_movement WHERE id=2582204;
DELETE FROM game_event_creature WHERE guid=2582204;
DELETE FROM game_event_creature_data WHERE guid=2582204;
DELETE FROM creature_battleground WHERE guid=2582204;
DELETE FROM creature WHERE guid=2582211;
DELETE FROM creature_addon WHERE guid=2582211;
DELETE FROM creature_movement WHERE id=2582211;
DELETE FROM game_event_creature WHERE guid=2582211;
DELETE FROM game_event_creature_data WHERE guid=2582211;
DELETE FROM creature_battleground WHERE guid=2582211;
DELETE FROM creature WHERE guid=2582203;
DELETE FROM creature_addon WHERE guid=2582203;
DELETE FROM creature_movement WHERE id=2582203;
DELETE FROM game_event_creature WHERE guid=2582203;
DELETE FROM game_event_creature_data WHERE guid=2582203;
DELETE FROM creature_battleground WHERE guid=2582203;

-- Changes by DRAGU
UPDATE `creature_addon` SET `stand_state`=5 WHERE `guid`=2581921;
UPDATE `creature_addon` SET `stand_state`=1 WHERE `guid`=2581921;

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5017494, 2020075, 1, 243.346, -7635.81, 87.1001, 5.59018, 0, 0, 0.339609, -0.940567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017495, 2020075, 1, 306.406, -7668.27, 87.1006, 0.967336, 0, 0, 0.465029, 0.885295, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017496, 2020075, 1, 259.862, -7639.23, 87.5799, 1.10635, 0, 0, 0.525391, 0.850861, 300, 300, 100, 1, 0, 0);
