
-- Changes by DRAGU
UPDATE `creature` SET `position_x` = 2.080214, `position_y` = -68.620117, `position_z` = -65.979927, `orientation` = 1.647748 WHERE `guid` = 517;
UPDATE `creature` SET `position_x` = -6.649607, `position_y` = -53.047974, `position_z` = -65.562035, `orientation` = 0.772029 WHERE `guid` = 85958;
UPDATE `creature` SET `position_x` = 1.870460, `position_y` = -58.758999, `position_z` = -66.050453, `orientation` = 1.345370 WHERE `guid` = 85959;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (85959, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (85958, 45);
REPLACE INTO `creature` VALUES (2582985,61967,0,0,0,43,7.02236,-36.668,-63.3573,3.94111,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582986,61967,0,0,0,43,12.1489,-42.5436,-63.5067,3.93014,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2582986, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2582986, 27);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2582986, 0);
REPLACE INTO `creature` VALUES (2582987,61966,0,0,0,43,31.0324,-33.3166,-65.7882,2.25017,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 30.334200, `position_y` = -29.720264, `position_z` = -65.771217, `orientation` = 5.085454 WHERE `guid` = 2582987;
REPLACE INTO `creature` VALUES (2582987,61966,0,0,0,43,30.3342,-29.7203,-65.7712,5.08545,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582988,6196,0,0,0,43,36.8185,-18.6482,-65.9602,4.3786,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2582988;
DELETE FROM creature_addon WHERE guid=2582988;
DELETE FROM creature_movement WHERE id=2582988;
DELETE FROM game_event_creature WHERE guid=2582988;
DELETE FROM game_event_creature_data WHERE guid=2582988;
DELETE FROM creature_battleground WHERE guid=2582988;
REPLACE INTO `creature` VALUES (2582989,61967,0,0,0,43,37.1227,-18.7537,-65.9678,4.3786,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 97.113754, `position_y` = -3.386233, `position_z` = -67.158142, `orientation` = 6.245934 WHERE `guid` = 2582953;
REPLACE INTO `creature` VALUES (2582953,61967,0,0,0,43,97.1138,-3.38623,-67.1581,6.24593,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582990,61966,0,0,0,43,74.2049,9.04894,-66.6951,0.159851,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582991,61967,0,0,0,43,91.9622,21.06,-67.0442,4.10255,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 29.970226, `position_y` = -36.024773, `position_z` = -65.758354, `orientation` = 2.704540 WHERE `guid` = 2582987;
REPLACE INTO `creature` VALUES (2582987,61966,0,0,0,43,29.9702,-36.0248,-65.7584,2.70454,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582992,61966,0,0,0,43,13.9985,-36.334,-63.577,3.79164,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582992,61966,0,0,0,43,13.9985,-36.334,-63.577,3.79164,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2582992;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582992,1, 13.998463,-36.333996,-63.576992, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582992,2, 33.108150,-23.437519,-65.871498, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582992,3, 57.812019,-24.420040,-66.381981, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582992,4, 88.716606,7.676856,-66.986389, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582992,5, 53.953430,-23.838900,-66.304825, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582992,6, 29.149548,-24.787146,-65.755783, 100);
REPLACE INTO `creature` VALUES (2582992,61966,0,0,0,43,13.9985,-36.334,-63.577,3.79164,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2582993,61967,0,0,0,43,27.5164,-19.2132,-65.7338,4.78202,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 27.669357, `position_y` = -19.303303, `position_z` = -65.738792, `orientation` = 4.750600 WHERE `guid` = 2582993;
UPDATE `creature` SET `position_x` = 27.624489, `position_y` = -18.129660, `position_z` = -65.744041, `orientation` = 4.750600 WHERE `guid` = 2582993;
REPLACE INTO `creature` VALUES (2582994,61967,0,0,0,43,70.494,23.6342,-66.614,2.70114,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 68.234627, `position_y` = 20.612043, `position_z` = -66.571396, `orientation` = 3.376580 WHERE `guid` = 2582994;
UPDATE `creature` SET `position_x` = 66.342186, `position_y` = -30.524380, `position_z` = -66.554497, `orientation` = 1.667552 WHERE `guid` = 2582952;
REPLACE INTO `creature` VALUES (2582952,61966,0,0,0,43,66.3422,-30.5244,-66.5545,1.66755,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582953,61967,0,0,0,43,97.1138,-3.38623,-67.1581,6.24593,120,120,4,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582995,61967,0,0,0,43,98.0935,-28.8217,-67.1263,6.23621,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582996,61966,0,0,0,43,64.8156,-6.74506,-66.5144,2.53461,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582996,61966,0,0,0,43,64.8156,-6.74506,-66.5144,2.53461,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582997,3641,0,0,0,43,111.243,-7.35518,-68.8619,5.04159,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2582997;
DELETE FROM creature_addon WHERE guid=2582997;
DELETE FROM creature_movement WHERE id=2582997;
DELETE FROM game_event_creature WHERE guid=2582997;
DELETE FROM game_event_creature_data WHERE guid=2582997;
DELETE FROM creature_battleground WHERE guid=2582997;
REPLACE INTO `creature` VALUES (2582998,3641,0,0,0,43,-518.842,-120.124,-71.259,5.14123,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582998,3641,0,0,0,43,-518.842,-120.124,-71.259,5.14123,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582999,3641,0,0,0,43,-532.585,-119.24,-71.7753,0.725719,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582999,3641,0,0,0,43,-532.585,-119.24,-71.7753,0.725719,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582998,3641,0,0,0,43,-518.842,-120.124,-71.259,5.14123,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582999,3641,0,0,0,43,-532.585,-119.24,-71.7753,0.725719,300,300,8,100,100,1,0,0);
UPDATE `creature` SET `position_x` = -518.865112, `position_y` = -119.182823, `position_z` = -71.929657, `orientation` = 4.773755 WHERE `guid` = 2582998;
UPDATE `creature` SET `position_x` = -530.013977, `position_y` = -119.222473, `position_z` = -72.494308, `orientation` = 5.144126 WHERE `guid` = 2582999;
UPDATE `creature` SET `position_x` = -256.684479, `position_y` = 2312.507324, `position_z` = 95.866310, `orientation` = 4.377760 WHERE `guid` = 16318;
UPDATE `creature` SET `position_x` = -246.525330, `position_y` = 2308.045654, `position_z` = 95.866310, `orientation` = 4.754752 WHERE `guid` = 16439;
REPLACE INTO `creature` VALUES (2583000,3877,0,0,0,33,-248.222,2338.72,97.0334,4.39266,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583000,3877,0,0,0,33,-248.222,2338.72,97.0334,4.39266,300,300,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -248.610535, `position_y` = 2337.954102, `position_z` = 96.822647, `orientation` = 4.314120 WHERE `guid` = 2583000;
REPLACE INTO `creature` VALUES (2583001,3877,0,0,0,33,-243.468,2335.79,96.8226,4.31412,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583001,3877,0,0,0,33,-243.468,2335.79,96.8226,4.31412,300,300,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582886;
DELETE FROM creature_addon WHERE guid=2582886;
DELETE FROM creature_movement WHERE id=2582886;
DELETE FROM game_event_creature WHERE guid=2582886;
DELETE FROM game_event_creature_data WHERE guid=2582886;
DELETE FROM creature_battleground WHERE guid=2582886;
REPLACE INTO `creature` VALUES (2583002,61970,0,0,0,33,-229.969,2375.14,96.893,4.11331,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -226.141098, `position_y` = 2369.634277, `position_z` = 97.437561, `orientation` = 1.238754 WHERE `guid` = 2583002;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 7);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 6);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 4);
UPDATE `creature` SET `position_x` = -226.221573, `position_y` = 2369.151367, `position_z` = 96.822662, `orientation` = 1.241893 WHERE `guid` = 2583002;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 4);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 7);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 6);
UPDATE `creature` SET `position_x` = -226.077896, `position_y` = 2369.388184, `position_z` = 97.096680, `orientation` = 1.158639 WHERE `guid` = 2583002;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 6);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 1);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583002, 5);
REPLACE INTO `creature` VALUES (2583003,61970,0,0,0,33,-224.315,2362.71,97.0434,1.28585,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583003, 7);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583003, 6);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583003, 5);
REPLACE INTO `creature` VALUES (2583004,61970,0,0,0,33,-239.725,2371.8,97.004,1.18718,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583004, 5);
REPLACE INTO `gameobject` VALUES ( 5018533, 75293, 33, -251.863, 2390.93, 96.8227, 0.189749, 0, 0, 0.0947323, 0.995503, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583005;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583005,1, -254.706863,2355.570801,96.822670, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583005,2, -239.082214,2396.484863,96.822670, 100);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583005;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583005,1, -254.706863,2355.570801,96.822670, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583005,2, -239.621826,2395.074463,96.822784, 100);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583006,3877,0,0,0,33,-226.017,2344.94,96.8225,4.37199,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583006,3877,0,0,0,33,-226.017,2344.94,96.8225,4.37199,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583006,3877,0,0,0,33,-226.017,2344.94,96.8225,4.37199,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583006;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583006,1, -226.017044,2344.936279,96.822517, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583006,2, -211.026794,2384.014404,96.822517, 100);
REPLACE INTO `creature` VALUES (2583006,3877,0,0,0,33,-226.017,2344.94,96.8225,4.37199,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583005;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583005,1, -254.706863,2355.570801,96.822670, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583005,2, -239.955780,2394.248779,96.822708, 100);
REPLACE INTO `creature` VALUES (2583005,3877,0,0,0,33,-254.707,2355.57,96.8227,1.19113,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583007,61960,0,0,0,36,-76.5659,-435.547,56.7098,5.61932,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583007, 68);
REPLACE INTO `creature` VALUES (79134,598,0,0,0,36,-57.0594,-406.745,55.1336,5.06145,18000,18000,0,100,0,0,0,0);
REPLACE INTO `creature` VALUES (2583008,598,0,0,0,36,-86.5891,-421.948,55.7416,2.94703,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583008,598,0,0,0,36,-86.5891,-421.948,55.7416,2.94703,300,300,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -87.398544, `position_y` = -421.765808, `position_z` = 56.057213, `orientation` = 2.860638 WHERE `guid` = 2583008;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583008, 233);
REPLACE INTO `creature` VALUES (2583009,598,0,0,0,36,-96.4333,-442.155,55.8174,3.20621,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583009,598,0,0,0,36,-96.4333,-442.155,55.8174,3.20621,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583009, 233);
REPLACE INTO `creature` VALUES (2583010,598,0,0,0,36,-83.5214,-445.519,56.1838,5.41318,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583010,598,0,0,0,36,-83.5214,-445.519,56.1838,5.41318,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583010, 233);
UPDATE `creature` SET `position_x` = -83.995872, `position_y` = -445.068542, `position_z` = 56.044937, `orientation` = 5.491717 WHERE `guid` = 2583010;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583010, 233);
REPLACE INTO `creature` VALUES (2583011,634,0,0,0,36,-72.0739,-411.361,55.0383,4.24058,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583011,634,0,0,0,36,-72.0739,-411.361,55.0383,4.24058,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583011;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583011,1, -72.073868,-411.361328,55.038311, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583011,2, -87.887367,-442.063782,55.680115, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583011,3, -96.860268,-453.749237,55.059860, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583011,4, -90.667778,-475.713898,55.557838, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583011,5, -97.151840,-451.521240,55.390965, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583011,6, -88.039375,-442.315613,55.612411, 100);
REPLACE INTO `creature` VALUES (2583011,634,0,0,0,36,-72.0739,-411.361,55.0383,4.24058,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583012,598,0,0,0,36,-91.2473,-459.754,56.0719,0.193411,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583012,598,0,0,0,36,-91.2473,-459.754,56.0719,0.193411,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583012, 233);
REPLACE INTO `creature` VALUES (2583013,598,0,0,0,36,-97.8326,-469.499,56.1964,3.53921,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583013,598,0,0,0,36,-97.8326,-469.499,56.1964,3.53921,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583013, 233);
UPDATE `creature` SET `position_x` = -98.416557, `position_y` = -469.801910, `position_z` = 56.231777, `orientation` = 3.570624 WHERE `guid` = 2583013;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583013, 233);
REPLACE INTO `gameobject` VALUES ( 5018534, 1731, 36, -99.6299, -444.599, 56.6783, 2.50798, 0, 0, 0.950235, 0.311535, 300, 300, 100, 1, 0, 0);
UPDATE `creature` SET `position_x` = -90.491020, `position_y` = -505.257812, `position_z` = 54.351685, `orientation` = 4.989831 WHERE `guid` = 2582920;
REPLACE INTO `creature` VALUES (2583014,61959,0,0,0,36,-86.9286,-502.915,54.429,5.87105,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583014, 28);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583014, 69);
UPDATE `creature` SET `position_x` = -108.696098, `position_y` = -506.088409, `position_z` = 53.993252, `orientation` = 4.429709 WHERE `guid` = 2582922;
UPDATE `creature_addon` SET `emote_state`=68 WHERE `guid`=2582922;
REPLACE INTO `creature` VALUES (2583015,634,0,0,0,36,-110.612,-491.497,54.0125,4.11241,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583015, 6);
UPDATE `creature` SET `position_x` = -79.866173, `position_y` = -487.795959, `position_z` = 54.612480, `orientation` = 4.163870 WHERE `guid` = 2583014;
UPDATE `creature` SET `position_x` = -87.111595, `position_y` = -503.658264, `position_z` = 54.424679, `orientation` = 5.758229 WHERE `guid` = 2583014;
UPDATE `creature` SET `position_x` = -79.804810, `position_y` = -487.666077, `position_z` = 54.614197, `orientation` = 4.332731 WHERE `guid` = 2583014;
UPDATE `creature` SET `position_x` = -79.809235, `position_y` = -488.098938, `position_z` = 54.616276, `orientation` = 4.159990 WHERE `guid` = 2583014;
REPLACE INTO `creature` VALUES (2583016,61960,0,0,0,36,-86.7989,-503.043,54.4325,5.80147,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583016, 69);
REPLACE INTO `creature` VALUES (2583017,598,0,0,0,36,-102.796,-477.032,54.4928,2.11795,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583017,598,0,0,0,36,-102.796,-477.032,54.4928,2.11795,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583017, 233);
REPLACE INTO `creature` VALUES (2583018,598,0,0,0,36,-82.5628,-484.323,54.5806,0.69638,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583018,598,0,0,0,36,-82.5628,-484.323,54.5806,0.69638,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583018, 233);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583014, 68);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583014, 68);
DELETE FROM creature WHERE guid=2583014;
DELETE FROM creature_addon WHERE guid=2583014;
DELETE FROM creature_movement WHERE id=2583014;
DELETE FROM game_event_creature WHERE guid=2583014;
DELETE FROM game_event_creature_data WHERE guid=2583014;
DELETE FROM creature_battleground WHERE guid=2583014;
REPLACE INTO `creature` VALUES (2583019,61959,0,0,0,36,-79.6703,-488.18,54.6211,4.12265,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583019, 68);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583019, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583019, 133);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583019, 68);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583019, 69);
REPLACE INTO `creature` VALUES (2583020,598,0,0,0,36,-121.005,-489.494,53.7982,2.8291,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583020,598,0,0,0,36,-121.005,-489.494,53.7982,2.8291,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583020, 233);
REPLACE INTO `creature` VALUES (2583021,61959,0,0,0,36,-104.982,-509.419,54.0568,3.08043,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583021, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583021, 68);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583021, 16);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583021, 68);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583021, 68);
REPLACE INTO `creature` VALUES (2583022,4075,0,0,0,36,-97.7203,-521.359,54.1671,4.56239,120,120,5,100,100,1,0,0);
UPDATE `creature` SET `position_x` = -97.649429, `position_y` = -521.634521, `position_z` = 54.168724, `orientation` = 4.582808 WHERE `guid` = 2583022;
REPLACE INTO `creature` VALUES (2583022,4075,0,0,0,36,-97.8307,-521.785,54.2304,-2.45012,300,300,5,100,100,1,128,0);
UPDATE `creature` SET `position_x` = -97.751511, `position_y` = -521.888916, `position_z` = 54.166904, `orientation` = 1.459083 WHERE `guid` = 2583022;
REPLACE INTO `creature` VALUES (2583022,4075,0,0,0,36,-97.6494,-521.635,54.1687,4.58281,300,300,5,100,100,1,0,0);
UPDATE `gameobject` SET `spawntimesecsmin`=99999999, `spawntimesecsmax`=99999999 WHERE `guid`=5018534;
REPLACE INTO `creature` VALUES (2583022,4075,0,0,0,36,-97.7515,-521.889,54.1669,1.45908,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583022,4075,0,0,0,36,-97.7515,-521.889,54.1669,1.45908,300,300,0,100,100,0,128,0);
REPLACE INTO `creature` VALUES (2583023,4075,0,0,0,36,-85.6158,-495.846,54.4736,4.711,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583023,4075,0,0,0,36,-85.6158,-495.846,54.4736,4.711,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583023,4075,0,0,0,36,-85.6158,-495.846,54.4736,4.711,300,300,0,100,100,0,128,0);
UPDATE `creature` SET `position_x` = -82.041679, `position_y` = -494.258179, `position_z` = 54.550140, `orientation` = 2.425492 WHERE `guid` = 2583023;
REPLACE INTO `creature` VALUES (2583023,4075,0,0,0,36,-85.6158,-495.846,54.4736,4.711,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583023,4075,0,0,0,36,-82.0417,-494.258,54.5501,2.42549,300,300,0,100,100,0,128,0);
REPLACE INTO `creature` VALUES (2583024,4075,0,0,0,36,-89.0536,-494.947,54.399,3.80598,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583024,4075,0,0,0,36,-89.0536,-494.947,54.399,3.80598,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583024,4075,0,0,0,36,-89.0536,-494.947,54.399,3.80598,300,300,0,100,100,0,128,0);
REPLACE INTO `creature` VALUES (2583025,61960,0,0,0,36,-108.612,-520.61,53.9543,3.79106,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583026,634,0,0,0,36,-209.76,-548.723,51.2297,4.79342,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583027,634,0,0,0,36,-200.395,-549.262,51.2297,4.68582,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -200.907089, `position_y` = -549.191040, `position_z` = 51.229656, `orientation` = 4.662259 WHERE `guid` = 2583027;
UPDATE `creature` SET `position_x` = -200.859482, `position_y` = -548.915588, `position_z` = 51.229656, `orientation` = 4.670112 WHERE `guid` = 2583027;
REPLACE INTO `creature` VALUES (2583028,622,0,0,0,36,-183.656,-522.897,51.2297,1.14053,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583028,622,0,0,0,36,-183.656,-522.897,51.2297,1.14053,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583028, 68);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583028, 233);
UPDATE `creature` SET `position_x` = -183.643677, `position_y` = -522.736389, `position_z` = 51.229656, `orientation` = 1.230067 WHERE `guid` = 2583028;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583028, 233);
REPLACE INTO `creature` VALUES (2583029,1731,0,0,0,36,-178.691,-539.769,51.2296,3.94098,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583029,1731,0,0,0,36,-178.691,-539.769,51.2296,3.94098,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583030,622,0,0,0,36,-170.372,-535.159,51.2296,0.469526,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583030,622,0,0,0,36,-170.372,-535.159,51.2296,0.469526,300,300,6,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583030,622,0,0,0,36,-170.372,-535.159,51.2296,0.469526,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583030, 233);
REPLACE INTO `creature` VALUES (2583031,61962,0,0,0,36,-188.527,-532.75,51.2296,1.15675,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -188.355026, `position_y` = -533.296936, `position_z` = 51.229610, `orientation` = 1.455202 WHERE `guid` = 2583031;
UPDATE `creature` SET `position_x` = -188.011246, `position_y` = -532.935913, `position_z` = 51.229610, `orientation` = 1.391884 WHERE `guid` = 2583031;
REPLACE INTO `creature` VALUES (2583032,1731,0,0,0,36,-205.669,-531.166,51.2296,0.91321,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583033,622,0,0,0,36,-199.466,-529.171,51.2296,1.63578,120,120,5,100,100,1,0,0);
UPDATE `creature` SET `position_x` = -200.510056, `position_y` = -535.268005, `position_z` = 51.229637, `orientation` = 4.313985 WHERE `guid` = 2583033;
REPLACE INTO `creature` VALUES (2583034,622,0,0,0,36,-163.582,-552.5,51.2296,5.78758,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583035,1731,0,0,0,36,-160.796,-558.182,51.2296,5.2755,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583036,622,0,0,0,36,-152.739,-570.464,51.2296,4.45622,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583036,622,0,0,0,36,-152.739,-570.464,51.2296,4.45622,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583036, 233);
REPLACE INTO `creature` VALUES (2582934,61962,0,0,0,36,-118.781,-569.111,51.2296,6.26818,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2582934;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582934,1, -118.780998,-569.111023,51.229599, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582934,2, -77.148857,-569.687561,51.229637, 100);
REPLACE INTO `creature` VALUES (2582934,61962,0,0,0,36,-118.781,-569.111,51.2296,6.26818,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2582934;
DELETE FROM creature_addon WHERE guid=2582934;
DELETE FROM creature_movement WHERE id=2582934;
DELETE FROM game_event_creature WHERE guid=2582934;
DELETE FROM game_event_creature_data WHERE guid=2582934;
DELETE FROM creature_battleground WHERE guid=2582934;
REPLACE INTO `creature` VALUES (2583037,622,0,0,0,36,-110.42,-571.037,51.2296,4.77666,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583037;
DELETE FROM creature_addon WHERE guid=2583037;
DELETE FROM creature_movement WHERE id=2583037;
DELETE FROM game_event_creature WHERE guid=2583037;
DELETE FROM game_event_creature_data WHERE guid=2583037;
DELETE FROM creature_battleground WHERE guid=2583037;
REPLACE INTO `creature` VALUES (2583038,1731,0,0,0,36,-119.83,-564.627,51.2296,0.0126224,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583038,1731,0,0,0,36,-119.83,-564.627,51.2296,0.0126224,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583038, 173);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583038, 69);
REPLACE INTO `creature` VALUES (2583039,1731,0,0,0,36,-120.177,-573.446,51.2296,0.051454,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583039,1731,0,0,0,36,-120.177,-573.446,51.2296,0.051454,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583039, 173);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583039, 69);
REPLACE INTO `creature` VALUES (2583040,634,0,0,0,36,-74.7533,-569.877,51.2296,3.12236,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583040,634,0,0,0,36,-74.7533,-569.877,51.2296,3.12236,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583040;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,1, -74.753311,-569.876831,51.229614, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,2, -119.301262,-569.364624,51.229614, 100);
REPLACE INTO `creature` VALUES (2583040,634,0,0,0,36,-74.7533,-569.877,51.2296,3.12236,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583040,634,0,0,0,36,-74.7533,-569.877,51.2296,3.12236,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583040;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,1, -74.753311,-569.876831,51.229614, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,2, -79.467712,-569.780273,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,3, -82.966362,-569.683044,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,4, -87.668549,-569.552429,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,5, -93.028481,-569.403503,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,6, -93.028481,-569.403503,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,7, -99.069115,-569.236389,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,8, -104.095085,-569.254700,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,9, -110.003044,-569.276184,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,10, -118.749268,-569.097046,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,11, -109.909477,-569.132202,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,12, -102.364975,-569.282532,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,13, -95.149406,-569.426270,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,14, -88.696693,-569.554810,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,15, -82.665962,-569.643066,51.229645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,16, -78.725746,-569.721558,51.229645, 100);
REPLACE INTO `creature` VALUES (2583040,634,0,0,0,36,-74.7533,-569.877,51.2296,3.12236,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583040,634,0,0,0,36,-74.7533,-569.877,51.2296,3.12236,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583040;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,1, -74.753311,-569.876831,51.229614, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583040,2, -95.219383,-569.511902,51.229645, 100);
REPLACE INTO `creature` VALUES (2583040,634,0,0,0,36,-74.7533,-569.877,51.2296,3.12236,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583041,622,0,0,0,36,-88.1863,-579.469,51.2296,4.23222,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583042,1731,0,0,0,36,-92.5465,-578.331,51.2296,4.23222,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583043,622,0,0,0,36,-92.2286,-559.99,51.2296,1.8217,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583044,1731,0,0,0,36,-90.182,-558.897,51.2296,2.16649,120,120,5,100,100,1,0,0);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583045,10940,0,0,0,451,16350,-16054.4,40.4165,2.62579,120,120,0,100,100,0,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583046,622,0,0,0,36,-64.7351,-559.033,51.2297,0.98839,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583046,622,0,0,0,36,-64.7351,-559.033,51.2297,0.98839,300,300,0,100,100,0,0,0);

-- Changes by GHEOR
DELETE FROM creature WHERE guid=2583045;
DELETE FROM creature_addon WHERE guid=2583045;
DELETE FROM creature_movement WHERE id=2583045;
DELETE FROM game_event_creature WHERE guid=2583045;
DELETE FROM game_event_creature_data WHERE guid=2583045;
DELETE FROM creature_battleground WHERE guid=2583045;

-- Changes by DRAGU
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583046, 233);
UPDATE `creature` SET `position_x` = -63.793381, `position_y` = -559.285217, `position_z` = 51.229664, `orientation` = 5.865713 WHERE `guid` = 2583046;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583047,3056,0,0,0,451,16347.9,-16055.7,40.398,0.641874,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583047;
DELETE FROM creature_addon WHERE guid=2583047;
DELETE FROM creature_movement WHERE id=2583047;
DELETE FROM game_event_creature WHERE guid=2583047;
DELETE FROM game_event_creature_data WHERE guid=2583047;
DELETE FROM creature_battleground WHERE guid=2583047;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583048,622,0,0,0,36,-67.4032,-584.422,51.2297,4.8447,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583048,622,0,0,0,36,-67.4032,-584.422,51.2297,4.8447,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583048, 233);
UPDATE `creature` SET `position_x` = -67.497833, `position_y` = -584.516602, `position_z` = 51.229664, `orientation` = 4.850746 WHERE `guid` = 2583048;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583049,6118,0,0,0,451,16341.9,-16060.4,40.3844,0.546056,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583049;
DELETE FROM creature_addon WHERE guid=2583049;
DELETE FROM creature_movement WHERE id=2583049;
DELETE FROM game_event_creature WHERE guid=2583049;
DELETE FROM game_event_creature_data WHERE guid=2583049;
DELETE FROM creature_battleground WHERE guid=2583049;
REPLACE INTO `creature` VALUES (2583050,8154,0,0,0,451,16343.6,-16059.4,40.38,0.301011,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583050;
DELETE FROM creature_addon WHERE guid=2583050;
DELETE FROM creature_movement WHERE id=2583050;
DELETE FROM game_event_creature WHERE guid=2583050;
DELETE FROM game_event_creature_data WHERE guid=2583050;
DELETE FROM creature_battleground WHERE guid=2583050;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583051,634,0,0,0,36,-92.5058,-583.909,57.8392,0.00484037,120,120,0,100,100,0,0,0);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583052,16419,0,0,0,451,16343.1,-16053.1,40.3793,4.72752,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583052;
DELETE FROM creature_addon WHERE guid=2583052;
DELETE FROM creature_movement WHERE id=2583052;
DELETE FROM game_event_creature WHERE guid=2583052;
DELETE FROM game_event_creature_data WHERE guid=2583052;
DELETE FROM creature_battleground WHERE guid=2583052;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583051,634,0,0,0,36,-92.5058,-583.909,57.8392,0.00484037,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583051;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583051,1, -92.505829,-583.908569,57.839195, 100);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583053,12861,0,0,0,451,16343.7,-16051.7,40.3796,3.92955,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583053;
DELETE FROM creature_addon WHERE guid=2583053;
DELETE FROM creature_movement WHERE id=2583053;
DELETE FROM game_event_creature WHERE guid=2583053;
DELETE FROM game_event_creature_data WHERE guid=2583053;
DELETE FROM creature_battleground WHERE guid=2583053;
REPLACE INTO `creature` VALUES (2583054,60952,0,0,0,451,16346.2,-16049.1,40.3835,4.03008,120,120,0,100,100,0,0,0);

-- Changes by DRAGU
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583051,2, -64.550682,-584.832397,57.839195, 100);
REPLACE INTO `creature` VALUES (2583051,634,0,0,0,36,-92.5058,-583.909,57.8392,0.00484037,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583055,634,0,0,0,36,-85.7173,-582.248,57.839,1.55993,120,120,0,100,100,0,0,0);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583056,60420,0,0,0,451,16346.9,-16053.2,40.3903,1.67782,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583056;
DELETE FROM creature_addon WHERE guid=2583056;
DELETE FROM creature_movement WHERE id=2583056;
DELETE FROM game_event_creature WHERE guid=2583056;
DELETE FROM game_event_creature_data WHERE guid=2583056;
DELETE FROM creature_battleground WHERE guid=2583056;
REPLACE INTO `creature` VALUES (2583057,51577,0,0,0,451,16349.3,-16055.9,40.407,2.61087,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583057;
DELETE FROM creature_addon WHERE guid=2583057;
DELETE FROM creature_movement WHERE id=2583057;
DELETE FROM game_event_creature WHERE guid=2583057;
DELETE FROM game_event_creature_data WHERE guid=2583057;
DELETE FROM creature_battleground WHERE guid=2583057;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583058,634,0,0,0,36,-107.638,-556.652,57.839,4.71831,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583059,634,0,0,0,36,-119.084,-556.587,57.839,4.72066,120,120,0,100,100,0,0,0);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583060,61308,0,0,0,451,16346.1,-16056.4,40.3843,2.31477,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583060;
DELETE FROM creature_addon WHERE guid=2583060;
DELETE FROM creature_movement WHERE id=2583060;
DELETE FROM game_event_creature WHERE guid=2583060;
DELETE FROM game_event_creature_data WHERE guid=2583060;
DELETE FROM creature_battleground WHERE guid=2583060;
DELETE FROM creature WHERE guid=2583054;
DELETE FROM creature_addon WHERE guid=2583054;
DELETE FROM creature_movement WHERE id=2583054;
DELETE FROM game_event_creature WHERE guid=2583054;
DELETE FROM game_event_creature_data WHERE guid=2583054;
DELETE FROM creature_battleground WHERE guid=2583054;

-- Changes by DRAGU
UPDATE `creature` SET `position_x` = -119.054726, `position_y` = -555.108582, `position_z` = 57.839008, `orientation` = 4.752082 WHERE `guid` = 2583059;
REPLACE INTO `creature` VALUES (2583061,634,0,0,0,36,-68.4434,-556.349,57.8391,4.70348,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583062,634,0,0,0,36,-89.5856,-555.893,57.8391,4.68506,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583062;
DELETE FROM creature_addon WHERE guid=2583062;
DELETE FROM creature_movement WHERE id=2583062;
DELETE FROM game_event_creature WHERE guid=2583062;
DELETE FROM game_event_creature_data WHERE guid=2583062;
DELETE FROM creature_battleground WHERE guid=2583062;
REPLACE INTO `creature` VALUES (2583063,1731,0,0,0,36,-113.171,-571.365,51.2296,3.84131,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583063,1731,0,0,0,36,-113.171,-571.365,51.2296,3.84131,300,300,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -113.583778, `position_y` = -571.593201, `position_z` = 51.229633, `orientation` = 3.629257 WHERE `guid` = 2583063;
UPDATE `creature` SET `position_x` = -116.304314, `position_y` = -556.870789, `position_z` = 51.229618, `orientation` = 4.757991 WHERE `guid` = 2582932;
REPLACE INTO `creature` VALUES (2583064,61962,0,0,0,36,-110.918,-557.121,51.2296,4.72629,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583065,622,0,0,0,36,-112.874,-580.601,51.2297,3.66076,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583065,622,0,0,0,36,-112.874,-580.601,51.2297,3.66076,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2583065, 233);
DELETE FROM creature WHERE guid=2583063;
DELETE FROM creature_addon WHERE guid=2583063;
DELETE FROM creature_movement WHERE id=2583063;
DELETE FROM game_event_creature WHERE guid=2583063;
DELETE FROM game_event_creature_data WHERE guid=2583063;
DELETE FROM creature_battleground WHERE guid=2583063;
REPLACE INTO `creature` VALUES (2583066,634,0,0,0,36,-98.1704,-569.642,51.2297,6.26907,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583066,634,0,0,0,36,-98.1704,-569.642,51.2297,6.26907,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583066;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583066,1, -98.170387,-569.642334,51.229679, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583066,2, -119.589088,-569.052551,51.229679, 100);
REPLACE INTO `creature` VALUES (2583066,634,0,0,0,36,-98.1704,-569.642,51.2297,6.26907,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2583066,634,0,0,0,36,-98.1704,-569.642,51.2297,6.26907,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583066;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583066,1, -98.170387,-569.642334,51.229679, 100);
UPDATE `creature` SET `position_x` = -99.468163, `position_y` = -569.669556, `position_z` = 51.229679, `orientation` = 3.141798 WHERE `guid` = 2583066;
REPLACE INTO `creature` VALUES (2583066,634,0,0,0,36,-99.4682,-569.67,51.2297,3.1418,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583066;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583066,1, -99.468163,-569.669556,51.229679, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583066,2, -119.835678,-569.080017,51.229679, 100);
REPLACE INTO `creature` VALUES (2583066,634,0,0,0,36,-99.4682,-569.67,51.2297,3.1418,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2583066;
DELETE FROM creature_addon WHERE guid=2583066;
DELETE FROM creature_movement WHERE id=2583066;
DELETE FROM game_event_creature WHERE guid=2583066;
DELETE FROM game_event_creature_data WHERE guid=2583066;
DELETE FROM creature_battleground WHERE guid=2583066;
REPLACE INTO `creature` VALUES (2583067,61962,0,0,0,36,-108.535,-569.506,51.2298,3.14965,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -108.537567, `position_y` = -569.184265, `position_z` = 51.229778, `orientation` = 3.149654 WHERE `guid` = 2583067;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583068,61234,0,0,0,0,2028.1,302.793,49.7154,0.000562877,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583068;
DELETE FROM creature_addon WHERE guid=2583068;
DELETE FROM creature_movement WHERE id=2583068;
DELETE FROM game_event_creature WHERE guid=2583068;
DELETE FROM game_event_creature_data WHERE guid=2583068;
DELETE FROM creature_battleground WHERE guid=2583068;
REPLACE INTO `creature` VALUES (2583069,7343,0,0,0,0,2029.76,300.102,50.5908,0.0299917,120,120,5,100,100,1,0,0);

-- Changes by DRAGU
DELETE FROM creature WHERE guid=2583040;
DELETE FROM creature_addon WHERE guid=2583040;
DELETE FROM creature_movement WHERE id=2583040;
DELETE FROM game_event_creature WHERE guid=2583040;
DELETE FROM game_event_creature_data WHERE guid=2583040;
DELETE FROM creature_battleground WHERE guid=2583040;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583070,7343,0,0,0,0,2030.91,300.879,50.7151,3.67523,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583069;
DELETE FROM creature_addon WHERE guid=2583069;
DELETE FROM creature_movement WHERE id=2583069;
DELETE FROM game_event_creature WHERE guid=2583069;
DELETE FROM game_event_creature_data WHERE guid=2583069;
DELETE FROM creature_battleground WHERE guid=2583069;
DELETE FROM creature WHERE guid=2583070;
DELETE FROM creature_addon WHERE guid=2583070;
DELETE FROM creature_movement WHERE id=2583070;
DELETE FROM game_event_creature WHERE guid=2583070;
DELETE FROM game_event_creature_data WHERE guid=2583070;
DELETE FROM creature_battleground WHERE guid=2583070;
REPLACE INTO `creature` VALUES (2583071,6388,0,0,0,0,2032.22,300.107,51.1862,0.559552,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583071;
DELETE FROM creature_addon WHERE guid=2583071;
DELETE FROM creature_movement WHERE id=2583071;
DELETE FROM game_event_creature WHERE guid=2583071;
DELETE FROM game_event_creature_data WHERE guid=2583071;
DELETE FROM creature_battleground WHERE guid=2583071;
REPLACE INTO `creature` VALUES (2583072,8324,0,0,0,0,2033.76,299.008,51.7768,2.52305,120,120,5,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583073,4417,0,0,0,36,-95.9344,-569.47,51.2296,0.0156932,120,120,5,100,100,1,0,0);

-- Changes by GHEOR
DELETE FROM creature WHERE guid=2583072;
DELETE FROM creature_addon WHERE guid=2583072;
DELETE FROM creature_movement WHERE id=2583072;
DELETE FROM game_event_creature WHERE guid=2583072;
DELETE FROM game_event_creature_data WHERE guid=2583072;
DELETE FROM creature_battleground WHERE guid=2583072;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583073,4417,0,0,0,36,-95.9344,-569.47,51.2296,0.0156932,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583073,4417,0,0,0,36,-95.9344,-569.47,51.2296,0.0156932,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583073;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583073,1, -95.934441,-569.469788,51.229633, 100);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583074,7786,0,0,0,0,2036.17,297.295,52.7376,2.52305,120,120,5,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583073,2, -75.266273,-569.763062,51.229633, 100);
REPLACE INTO `creature` VALUES (2583073,4417,0,0,0,36,-95.9344,-569.47,51.2296,0.0156932,300,300,0,100,100,2,0,0);

-- Changes by GHEOR
DELETE FROM creature WHERE guid=2583074;
DELETE FROM creature_addon WHERE guid=2583074;
DELETE FROM creature_movement WHERE id=2583074;
DELETE FROM game_event_creature WHERE guid=2583074;
DELETE FROM game_event_creature_data WHERE guid=2583074;
DELETE FROM creature_battleground WHERE guid=2583074;
REPLACE INTO `creature` VALUES (2583075,1800,0,0,0,0,2082.39,311.334,57.6294,1.74641,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583075;
DELETE FROM creature_addon WHERE guid=2583075;
DELETE FROM creature_movement WHERE id=2583075;
DELETE FROM game_event_creature WHERE guid=2583075;
DELETE FROM game_event_creature_data WHERE guid=2583075;
DELETE FROM creature_battleground WHERE guid=2583075;
REPLACE INTO `creature` VALUES (2583076,11027,0,0,0,0,2085.31,313.914,57.2355,4.11889,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583076;
DELETE FROM creature_addon WHERE guid=2583076;
DELETE FROM creature_movement WHERE id=2583076;
DELETE FROM game_event_creature WHERE guid=2583076;
DELETE FROM game_event_creature_data WHERE guid=2583076;
DELETE FROM creature_battleground WHERE guid=2583076;
REPLACE INTO `creature` VALUES (2583077,1802,0,0,0,0,2089.06,314.657,57.5195,2.72167,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583077;
DELETE FROM creature_addon WHERE guid=2583077;
DELETE FROM creature_movement WHERE id=2583077;
DELETE FROM game_event_creature WHERE guid=2583077;
DELETE FROM game_event_creature_data WHERE guid=2583077;
DELETE FROM creature_battleground WHERE guid=2583077;
REPLACE INTO `creature` VALUES (2583078,1801,0,0,0,0,2090.1,310.911,57.5996,1.56949,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583078;
DELETE FROM creature_addon WHERE guid=2583078;
DELETE FROM creature_movement WHERE id=2583078;
DELETE FROM game_event_creature WHERE guid=2583078;
DELETE FROM game_event_creature_data WHERE guid=2583078;
DELETE FROM creature_battleground WHERE guid=2583078;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583079,1729,0,0,0,36,-112.887,-486.384,53.9647,3.48717,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583079,1729,0,0,0,36,-112.887,-486.384,53.9647,3.48717,300,300,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -113.362648, `position_y` = -488.707703, `position_z` = 55.129238, `orientation` = 0.233268 WHERE `guid` = 2583079;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2583079, 1);
REPLACE INTO `creature` VALUES (2583080,61959,0,0,0,36,-90.2254,-490.372,54.3986,5.8253,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583081,61960,0,0,0,36,-100.205,-521.418,54.1152,5.20878,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -99.916534, `position_y` = -521.855408, `position_z` = 54.119465, `orientation` = 5.285650 WHERE `guid` = 2583081;
REPLACE INTO `gameobject` VALUES ( 5018535, 1731, 36, -76.4647, -518.86, 55.6097, 6.1653, 0, 0, 0.058911, -0.998263, 300, 300, 100, 1, 0, 0);
UPDATE `gameobject` SET `spawntimesecsmin`=99999999, `spawntimesecsmax`=99999999 WHERE `guid`=5018535;
UPDATE `creature` SET `position_x` = -102.002525, `position_y` = -492.985626, `position_z` = 54.161251, `orientation` = 2.877623 WHERE `guid` = 2583080;
REPLACE INTO `creature` VALUES (2583080,61959,0,0,0,36,-102.003,-492.986,54.1613,2.87762,300,300,6,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583082,61960,0,0,0,36,-94.6191,-487.367,54.3214,2.43466,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583082,61960,0,0,0,36,-94.6191,-487.367,54.3214,2.43466,300,300,6,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583082,61960,0,0,0,36,-94.6191,-487.367,54.3214,2.43466,300,300,6,100,100,1,0,0);
UPDATE `creature` SET `position_x` = -97.254303, `position_y` = -489.711548, `position_z` = 54.262089, `orientation` = 1.663090 WHERE `guid` = 2583082;
REPLACE INTO `creature` VALUES (2583082,61960,0,0,0,36,-97.2543,-489.712,54.2621,1.66309,300,300,4,100,100,1,0,0);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583083,4543,0,0,0,0,2080.4,326.921,57.2609,2.97131,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583083;
DELETE FROM creature_addon WHERE guid=2583083;
DELETE FROM creature_movement WHERE id=2583083;
DELETE FROM game_event_creature WHERE guid=2583083;
DELETE FROM game_event_creature_data WHERE guid=2583083;
DELETE FROM creature_battleground WHERE guid=2583083;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583084,61959,0,0,0,36,-98.7702,-514.548,54.1626,5.31993,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583084,61959,0,0,0,36,-98.7702,-514.548,54.1626,5.31993,300,300,6,100,100,1,0,0);
UPDATE `creature` SET `position_x` = 2.742065, `position_y` = -67.518150, `position_z` = -65.917030, `orientation` = 2.700184 WHERE `guid` = 517;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583085,511,0,0,0,0,2072.9,328.687,56.5888,3.43758,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583085;
DELETE FROM creature_addon WHERE guid=2583085;
DELETE FROM creature_movement WHERE id=2583085;
DELETE FROM game_event_creature WHERE guid=2583085;
DELETE FROM game_event_creature_data WHERE guid=2583085;
DELETE FROM creature_battleground WHERE guid=2583085;

-- Changes by DRAGU
REPLACE INTO `gameobject` VALUES ( 5018536, 13891, 43, -392.994, -41.0232, -64.9318, 0.617329, 0, 0, 0.303786, 0.95274, 300, 300, 100, 1, 0, 0);
UPDATE `gameobject` SET `spawntimesecsmin`=99999999, `spawntimesecsmax`=99999999 WHERE `guid`=5018536;
REPLACE INTO `gameobject` VALUES ( 5018537, 13891, 43, -459.918, -0.555847, -66.5638, 2.71434, 0, 0, 0.977269, 0.212004, 300, 300, 100, 1, 0, 0);
UPDATE `gameobject` SET `spawntimesecsmin`=99999999, `spawntimesecsmax`=99999999 WHERE `guid`=5018537;
REPLACE INTO `gameobject` VALUES ( 5018538, 13891, 43, -529.71, -50.3724, -68.4097, 0.418625, 0, 0, 0.207787, 0.978174, 300, 300, 100, 1, 0, 0);
UPDATE `gameobject` SET `spawntimesecsmin`=99999999, `spawntimesecsmax`=99999999 WHERE `guid`=5018538;
REPLACE INTO `gameobject` VALUES ( 5018539, 13891, 43, -489.003, -178.489, -64.6514, 2.61774, 0, 0, 0.965892, 0.258943, 300, 300, 100, 1, 0, 0);
UPDATE `gameobject` SET `spawntimesecsmin`=99999999, `spawntimesecsmax`=99999999 WHERE `guid`=5018539;
REPLACE INTO `gameobject` VALUES ( 5018540, 13891, 43, -384.627, -197.716, -63.2526, 2.99223, 0, 0, 0.997213, 0.074612, 300, 300, 100, 1, 0, 0);
UPDATE `gameobject` SET `spawntimesecsmin`=99999999, `spawntimesecsmax`=99999999 WHERE `guid`=5018540;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583086,8545,0,0,0,0,2083.45,333.199,57.0315,0.847113,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583086;
DELETE FROM creature_addon WHERE guid=2583086;
DELETE FROM creature_movement WHERE id=2583086;
DELETE FROM game_event_creature WHERE guid=2583086;
DELETE FROM game_event_creature_data WHERE guid=2583086;
DELETE FROM creature_battleground WHERE guid=2583086;
REPLACE INTO `creature` VALUES (2583087,61236,0,0,0,0,2079.41,333.384,56.872,4.2618,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583087;
DELETE FROM creature_addon WHERE guid=2583087;
DELETE FROM creature_movement WHERE id=2583087;
DELETE FROM game_event_creature WHERE guid=2583087;
DELETE FROM game_event_creature_data WHERE guid=2583087;
DELETE FROM creature_battleground WHERE guid=2583087;
REPLACE INTO `creature` VALUES (2583088,61937,0,0,0,0,2078.08,330.35,57.0296,4.2728,120,120,0,100,100,0,1,200);
DELETE FROM creature WHERE guid=2583088;
DELETE FROM creature_addon WHERE guid=2583088;
DELETE FROM creature_movement WHERE id=2583088;
DELETE FROM game_event_creature WHERE guid=2583088;
DELETE FROM game_event_creature_data WHERE guid=2583088;
DELETE FROM creature_battleground WHERE guid=2583088;
REPLACE INTO `creature` VALUES (2583089,10678,0,0,0,1,5990.58,541.413,0.00765811,5.95404,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583089;
DELETE FROM creature_addon WHERE guid=2583089;
DELETE FROM creature_movement WHERE id=2583089;
DELETE FROM game_event_creature WHERE guid=2583089;
DELETE FROM game_event_creature_data WHERE guid=2583089;
DELETE FROM creature_battleground WHERE guid=2583089;

-- Changes by DRAGU
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (928,-11145.285156,-1889.476562,165.765564,0.642509,814,'keeper_gnarlmoon');
REPLACE INTO `creature` VALUES (2583090,61946,0,0,0,814,-11334.2,-1782.57,179.734,3.66393,120,120,0,100,100,0,1,200);
REPLACE INTO `creature` VALUES (2583091,61939,0,0,0,814,-11145.2,-1889.39,165.766,0.642509,120,120,0,100,100,0,1,200);
REPLACE INTO `creature` VALUES (2583092,61951,0,0,0,814,-11318.7,-1898.1,240.47,5.44207,120,120,0,100,100,0,1,200);
REPLACE INTO `creature` VALUES (2583093,61958,0,0,0,814,-11106.8,-1602.01,279.949,3.82427,120,120,0,100,100,0,1,200);
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (929,-11108.942383,-1603.509766,279.949677,3.862183,814,'echo_medivh');
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (930,-11313.150391,-1905.298950,240.469910,5.417272,814,'anomalus');
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (931,-11340.753906,-1787.068359,179.734344,0.618490,814,'ley_watcher');
