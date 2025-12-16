
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583605,62025,0,0,0,1,-1649.66,-4285.17,16.9131,3.76912,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583605;
DELETE FROM creature_addon WHERE guid=2583605;
DELETE FROM creature_movement WHERE id=2583605;
DELETE FROM game_event_creature WHERE guid=2583605;
DELETE FROM game_event_creature_data WHERE guid=2583605;
DELETE FROM creature_battleground WHERE guid=2583605;

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2583606,620,0,0,0,0,-10651.9,-1164.99,26.0337,3.93728,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583607,2673,0,0,0,0,-10651.2,-1168.34,26.3693,1.76173,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583607;
DELETE FROM creature_addon WHERE guid=2583607;
DELETE FROM creature_movement WHERE id=2583607;
DELETE FROM game_event_creature WHERE guid=2583607;
DELETE FROM game_event_creature_data WHERE guid=2583607;
DELETE FROM creature_battleground WHERE guid=2583607;
REPLACE INTO `creature` VALUES (2583608,50517,0,0,0,0,-10673.2,-1178.92,24.7554,2.93277,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583608;
DELETE FROM creature_addon WHERE guid=2583608;
DELETE FROM creature_movement WHERE id=2583608;
DELETE FROM game_event_creature WHERE guid=2583608;
DELETE FROM game_event_creature_data WHERE guid=2583608;
DELETE FROM creature_battleground WHERE guid=2583608;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583555,62014,0,0,0,0,2050.4,2426.86,130.784,3.80753,120,120,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583555;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,1, 2050.399902,2426.860107,130.783997, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,2, 2048.348145,2425.109619,130.698196, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,3, 2031.875122,2346.318359,131.510147, 100);
REPLACE INTO `creature` VALUES (2583555,62014,0,0,0,0,2050.4,2426.86,130.784,3.80753,120,120,0,100,100,2,0,0);

-- Changes by WOJI
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,4, 2046.727051,2406.431641,129.730743, 100);
REPLACE INTO `creature` VALUES (2583555,62014,0,0,0,0,2050.4,2426.86,130.784,3.80753,120,120,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583555;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,1, 2050.399902,2426.860107,130.783997, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,2, 2049.650635,2420.963379,131.119186, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,3, 2049.628174,2409.917480,129.951294, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,4, 2048.470215,2399.705322,129.931595, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,5, 2046.621338,2397.409912,129.773666, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,6, 2029.809814,2380.387695,130.716858, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,7, 2020.902832,2371.699707,129.118835, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,8, 2024.259033,2365.066406,130.530243, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,9, 2029.097412,2355.503906,131.251556, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,10, 2033.907227,2348.233887,131.918869, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,11, 2039.423950,2334.352783,133.754776, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,12, 2034.695068,2343.735596,131.658066, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,13, 2032.084595,2353.784180,131.450424, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,14, 2032.342285,2365.737061,131.640915, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,15, 2034.331421,2378.353027,131.253922, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,16, 2036.056885,2384.572021,131.236160, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,17, 2042.572510,2392.097168,130.226959, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,18, 2047.760498,2399.739502,129.831924, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,19, 2050.580566,2407.027344,130.022659, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,20, 2050.784668,2414.969482,130.603012, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,21, 2050.572754,2424.816162,130.950912, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,22, 2055.039307,2429.242432,131.912506, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,23, 2060.502686,2431.129150,133.061508, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,24, 2069.716797,2432.162109,131.860077, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,25, 2065.031494,2432.028809,132.806091, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,26, 2053.163818,2430.903320,131.274094, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,27, 2050.876221,2428.306152,130.807327, 100);
REPLACE INTO `creature` VALUES (2583555,62014,0,0,0,0,2050.4,2426.86,130.784,3.80753,120,120,0,100,100,2,0,0);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583609,62007,0,0,0,0,2050.39,2426.2,130.819,4.73376,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583609;
DELETE FROM creature_addon WHERE guid=2583609;
DELETE FROM creature_movement WHERE id=2583609;
DELETE FROM game_event_creature WHERE guid=2583609;
DELETE FROM game_event_creature_data WHERE guid=2583609;
DELETE FROM creature_battleground WHERE guid=2583609;
REPLACE INTO `creature` VALUES (2583610,62007,0,0,0,1,6422.52,-4306.43,666.744,0.30828,120,120,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5019634, 2020109, 1, 5927.61, -4013.45, 598.208, 4.12611, 0, 0, 0.881268, -0.472616, 300, 300, 100, 1, 0, 0);
