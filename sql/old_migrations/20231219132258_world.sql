
-- Changes by DRAGU
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.78, 287.418, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.78, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.98, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.58, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.58, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.38, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.58, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.38, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.18, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.38, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.14, -3427.38, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.34, -3427.38, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.54, -3427.38, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.54, -3427.18, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017741, 2020088, 0, -3983.54, -3427.38, 287.218, 3.4307, 0, 0, 0.98957, -0.144051, 300, 300, 100, 1, 0, 0);

-- Changes by WOJI
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,1, 3381.803711,-2819.983398,110.329361, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,2, 3388.733643,-2818.477051,107.402275, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,3, 3396.883545,-2815.875488,105.069557, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,4, 3373.746338,-2815.792969,112.219460, 100);
REPLACE INTO `creature` VALUES (2582210,8523,0,0,0,0,3369.74,-2817.26,112.517,3.25246,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2582210;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,1, 3369.739990,-2817.260010,112.516998, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,2, 3375.372070,-2818.322266,112.294273, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,3, 3379.326416,-2818.164307,111.002510, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,4, 3386.373291,-2817.589355,108.094910, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,5, 3397.611816,-2815.839111,104.931725, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582210,6, 3402.272949,-2813.989258,103.655136, 100);
REPLACE INTO `creature` VALUES (2582210,8523,0,0,0,0,3369.74,-2817.26,112.517,3.25246,300,300,5,100,100,2,0,0);
