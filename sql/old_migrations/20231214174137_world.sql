
-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017673, 2020087, 0, 4314.45, -3090.64, 36.4831, 4.79108, 0, 0, 0.678744, -0.734375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017674, 2020086, 0, 4309.97, -3045.79, 147.838, 1.71216, 0, 0, 0.755281, 0.655402, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017674';
DELETE FROM game_event_gameobject WHERE guid = '5017674';
DELETE FROM gameobject_battleground WHERE guid = '5017674';
REPLACE INTO `gameobject` VALUES ( 5017675, 2020086, 0, 4306.05, -3043.15, 147.844, 3.33795, 0, 0, 0.995184, -0.0980194, 300, 300, 100, 1, 0, 0);
UPDATE `creature` SET `position_x` = 4291.625488, `position_y` = -2097.460938, `position_z` = 16.458199, `orientation` = 4.877319 WHERE `guid` = 2582220;

-- Changes by VOLCA
REPLACE INTO `creature` VALUES (2582221,521,0,0,0,1,-207.873,-920.006,20.0747,4.60933,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582222,1131,0,0,0,1,-207.935,-922.841,19.4685,1.48133,120,120,5,100,100,1,0,0);
UPDATE `creature_template` set `scale` = 0.500000 where entry = 521;
UPDATE `creature_template` set `scale` = 1.000000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.800000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
REPLACE INTO `creature` VALUES (2582223,521,0,0,0,0,-11831.3,3165.75,19.42,5.5534,120,120,5,100,100,1,0,0);
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2582224,80208,0,0,0,0,3177.39,-2405.08,121.373,5.79176,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2582224, 3);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2582224, 5);
REPLACE INTO `creature` VALUES (2582225,80209,0,0,0,0,3180.35,-2406.57,121.369,2.70513,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2582225, 5);
UPDATE `creature` SET `position_x` = 3180.220947, `position_y` = -2406.519531, `position_z` = 121.368713, `orientation` = 2.701098 WHERE `guid` = 2582225;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2582225, 5);
UPDATE `creature` SET `position_x` = 3180.118408, `position_y` = -2406.430908, `position_z` = 121.368523, `orientation` = 2.679895 WHERE `guid` = 2582225;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2582225, 5);

-- Changes by VOLCA
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;

-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017676, 2020084, 0, 3781.29, -2368.01, 47.6186, 3.75025, 0, 0, 0.954048, -0.299653, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017677, 2020084, 0, 3915.58, -2373.82, 10.8502, 5.16789, 0, 0, 0.529191, -0.848503, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017677';
DELETE FROM game_event_gameobject WHERE guid = '5017677';
DELETE FROM gameobject_battleground WHERE guid = '5017677';

-- Changes by DRAGU
REPLACE INTO `gameobject` VALUES ( 5017678, 2000468, 0, -3697.1, -3356.44, 267.147, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017678';
DELETE FROM game_event_gameobject WHERE guid = '5017678';
DELETE FROM gameobject_battleground WHERE guid = '5017678';
REPLACE INTO `gameobject` VALUES ( 5017679, 2000288, 0, -3697.1, -3356.44, 267.147, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017679';
DELETE FROM game_event_gameobject WHERE guid = '5017679';
DELETE FROM gameobject_battleground WHERE guid = '5017679';
REPLACE INTO `gameobject` VALUES ( 5017680, 2002565, 0, -3697.1, -3356.44, 267.147, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017680';
DELETE FROM game_event_gameobject WHERE guid = '5017680';
DELETE FROM gameobject_battleground WHERE guid = '5017680';
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 268.713, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417360238579793, 2.000000);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 268.713, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417360238579793, 1.600000);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 268.713, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 268.313, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 267.913, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 267.513, 5.02015, 0, 0, 0.590371, -0.807132, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 267.513, 1.89936, 0, 0, 0.813231, 0.581941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 267.513, 1.87894, 0, 0, 0.807246, 0.590215, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017681, 2002565, 0, -3696.57, -3358.11, 267.513, 1.8868, 0, 0, 0.809558, 0.58704, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017682, 2010866, 0, -3696.32, -3359.77, 267.147, 1.87109, 0, 0, 0.804922, 0.59338, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017682';
DELETE FROM game_event_gameobject WHERE guid = '5017682';
DELETE FROM gameobject_battleground WHERE guid = '5017682';
REPLACE INTO `gameobject` VALUES ( 5017683, 2010866, 0, -3696.86, -3356.75, 267.147, 5.08326, 0, 0, 0.564613, -0.825356, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017683';
DELETE FROM game_event_gameobject WHERE guid = '5017683';
DELETE FROM gameobject_battleground WHERE guid = '5017683';
REPLACE INTO `gameobject` VALUES ( 5017684, 180322, 0, -3697.04, -3356.24, 267.147, 5.01413, 0, 0, 0.592796, -0.805353, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017684';
DELETE FROM game_event_gameobject WHERE guid = '5017684';
DELETE FROM gameobject_battleground WHERE guid = '5017684';
DELETE FROM gameobject WHERE guid = '5017681';
DELETE FROM game_event_gameobject WHERE guid = '5017681';
DELETE FROM gameobject_battleground WHERE guid = '5017681';
REPLACE INTO `gameobject` VALUES ( 5017685, 2002565, 0, -3696.83, -3357.05, 267.147, 5.02276, 0, 0, 0.589315, -0.807904, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417360238579797, 1.800000);
REPLACE INTO `gameobject` VALUES ( 5017685, 2002565, 0, -3696.83, -3357.05, 267.147, 5.02276, 0, 0, 0.589315, -0.807904, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417360238579797, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5017685, 2002565, 0, -3696.83, -3357.05, 267.147, 5.02276, 0, 0, 0.589315, -0.807904, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417360238579797, 1.600000);
REPLACE INTO `gameobject` VALUES ( 5017685, 2002565, 0, -3696.83, -3357.05, 267.147, 5.02276, 0, 0, 0.589315, -0.807904, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017686, 2010866, 0, -3697.35, -3355.51, 267.148, 5.02355, 0, 0, 0.588998, -0.808135, 300, 300, 100, 1, 0, 0);
