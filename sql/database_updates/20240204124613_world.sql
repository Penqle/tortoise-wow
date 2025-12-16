-- Delete all empty pools.
DELETE FROM `pool_template` WHERE `entry` IN (1140, 1204, 1206, 1207, 1210, 1211, 1217, 1220, 1232, 1233, 1235, 1245, 1246, 1257, 1263, 1264, 1273, 1274, 1280, 1295, 1298, 1299, 1319, 2783, 9003, 22908);

-- Pool all Small Thorium Veins and Rich Thorium Veins together.

DELETE FROM `pool_gameobject` WHERE `guid`=127;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5000, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (127, 5000, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59202, 5000, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59202, 175404, 0, -11810, -3080, 8.136, 6.001, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=128;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5001, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (128, 5001, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59203, 5001, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59203, 175404, 1, 6286.92, -1682, 497.613, 4.097, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=129;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5002, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (129, 5002, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59204, 5002, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59204, 175404, 0, -11479, -3273, 13.183, 3.098, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=130;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5003, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (130, 5003, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59205, 5003, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59205, 175404, 0, -8078, -2229, 157.616, 3.976, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=131;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5004, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (131, 5004, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59206, 5004, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59206, 175404, 0, 53.294, -4195, 119.175, 1.762, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=132;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5005, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (132, 5005, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59207, 5005, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59207, 175404, 1, 4728.88, -4661, 878.264, 3.185, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=134;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5006, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (134, 5006, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59208, 5006, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59208, 175404, 1, -7815.13, 1130.62, 0.376494, 5.57008, 0, 0, 0.349047, -0.937105, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=135;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5007, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (135, 5007, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59209, 5007, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59209, 175404, 1, -7781.07, 1016.61, -1.82523, 5.04779, 0, 0, 0.579162, -0.815213, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=136;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5008, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (136, 5008, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59210, 5008, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59210, 175404, 1, -7904.21, 1413.31, -7.34191, 2.48346, 0, 0, 0.946345, 0.323158, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=137;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5009, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (137, 5009, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59211, 5009, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59211, 175404, 1, -8311, -2296, 17.682, 3.705, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=139;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5010, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (139, 5010, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59212, 5010, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59212, 175404, 1, -7516.65, 1096.89, -1.2315, 5.76093, 0, 0, 0.258171, -0.966099, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=140;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5011, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (140, 5011, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59213, 5011, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59213, 175404, 1, -7378.69, 1225.8, -1.42026, 1.38233, 0, 0, 0.637437, 0.770503, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=141;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5012, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (141, 5012, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59214, 5012, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59214, 175404, 1, -6454, 432.045, 0.975, 0.496, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=142;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5013, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (142, 5013, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59215, 5013, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59215, 175404, 1, -7396.35, 858.115, -0.711069, 4.47288, 0, 0, 0.786519, -0.617566, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=143;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5014, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (143, 5014, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59216, 5014, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59216, 175404, 1, -7467.94, 259.752, 20.9368, 4.8852, 0, 0, 0.643445, -0.765492, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=144;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5015, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (144, 5015, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59217, 5015, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59217, 175404, 1, 6387.59, -1651, 436.753, 4.613, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=145;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5016, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (145, 5016, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59218, 5016, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59218, 175404, 1, -8999, -2266, 21.23, 0.314, 0, 0, 0.156434, 0.987688, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=146;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5017, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (146, 5017, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59219, 5017, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59219, 175404, 0, 2764.64, -1833, 69.507, 0.494, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=147;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5018, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (147, 5018, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59220, 5018, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59220, 175404, 1, -7769, 156.652, 12.101, 5.781, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=148;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5019, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (148, 5019, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59221, 5019, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59221, 175404, 1, -7799, -4917, 15.45, 3.729, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=149;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5020, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (149, 5020, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59222, 5020, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59222, 175404, 1, -7460, -3895, 11.628, 2.863, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=150;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5021, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (150, 5021, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59223, 5021, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59223, 175404, 0, -8122, -2457, 143.844, 5.389, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=151;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5022, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (151, 5022, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59224, 5022, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59224, 175404, 0, -7640, -2077, 124.164, 3.876, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=152;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5023, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (152, 5023, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59225, 5023, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59225, 175404, 1, -6461, 264.959, 3.706, 0.047, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=153;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5024, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (153, 5024, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59226, 5024, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59226, 175404, 0, -11538, -2875, 12.861, 0, 0, 0, -0.069756, 0.997564, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=154;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5025, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (154, 5025, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59227, 5025, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59227, 175404, 0, -7261.74, -780.343, 298.363, -1, 0, 0, 0.461749, -0.887011, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=155;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5026, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (155, 5026, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59228, 5026, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59228, 175404, 0, 2684.19, -1675, 134.234, 1.486, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=156;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5027, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (156, 5027, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59229, 5027, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59229, 175404, 0, 2337.71, -1630, 116.583, 2.423, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=157;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5028, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (157, 5028, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59230, 5028, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59230, 175404, 1, -8067, 551.654, -18, 4.496, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=158;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5029, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (158, 5029, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59231, 5029, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59231, 175404, 1, 6149.47, -1659, 493.686, 5.071, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=159;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5030, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (159, 5030, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59232, 5030, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59232, 175404, 0, -7909, -2642, 181.644, 4.008, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=160;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5031, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (160, 5031, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59233, 5031, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59233, 175404, 0, -328, -3803, 238.895, 1.524, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5032, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (161, 5032, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59234, 5032, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59234, 175404, 0, -10538, -3252, 23.838, 2.618, 0, 0, 0.965926, 0.258819, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=162;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5033, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (162, 5033, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59235, 5033, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59235, 175404, 1, -8095, -4436, 11.999, 2.912, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=163;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5034, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (163, 5034, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59236, 5034, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59236, 175404, 1, -7937, -2399, -27, 4.281, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=164;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5035, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (164, 5035, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59237, 5035, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59237, 175404, 0, 2528.2, -4356, 67.028, 3.016, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=165;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5036, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (165, 5036, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59238, 5036, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59238, 175404, 0, 2308.46, -1462, 100.692, 0.55, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=166;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5037, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (166, 5037, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59239, 5037, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59239, 175404, 1, 6420.98, -4358, 669.887, 0.219, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=167;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5038, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (167, 5038, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59240, 5038, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59240, 175404, 1, 6435.36, -4274, 665.463, 0.604, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=168;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5039, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (168, 5039, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59241, 5039, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59241, 175404, 1, -7393, -2737, 9.045, 1.113, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=169;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5040, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (169, 5040, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59242, 5040, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59242, 175404, 1, -6279, -1266, -262, 5.01, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=170;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5041, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (170, 5041, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59243, 5041, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59243, 175404, 0, -7858, -1963, 142.479, 2.914, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=171;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5042, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (171, 5042, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59244, 5042, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59244, 175404, 1, -7977, 834.356, 4.233, 3.723, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=172;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5043, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (172, 5043, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59245, 5043, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59245, 175404, 1, 5138.68, -533, 332.698, 0.218, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=173;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5044, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (173, 5044, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59246, 5044, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59246, 175404, 0, -10875, -2785, 55.716, 1.524, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=174;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5045, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (174, 5045, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59247, 5045, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59247, 175404, 0, 2258.52, -2379, 59.662, 2.566, 0, 0, 0.95882, 0.284015, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=175;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5046, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (175, 5046, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59248, 5046, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59248, 175404, 0, -6681, -1227, 181.705, 0.14, 0, 0, 0.069756, 0.997564, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=176;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5047, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (176, 5047, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59249, 5047, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59249, 175404, 1, -7691, -2212, -256, 3, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=177;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5048, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (177, 5048, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59250, 5048, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59250, 175404, 0, -7978, -2662, 168.815, 4.546, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=179;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5049, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (179, 5049, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59251, 5049, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59251, 175404, 1, -7890, -3749, 53.205, 4.991, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=180;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5050, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (180, 5050, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59252, 5050, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59252, 175404, 1, -8845, -2374, 17.68, -1, 0, 0, -0.275637, 0.961262, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=181;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5051, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (181, 5051, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59253, 5051, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59253, 175404, 0, -8023, -1659, 137.824, 4.565, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=182;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5052, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (182, 5052, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59254, 5052, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59254, 175404, 1, -7897, -2356, -22, -1, 0, 0, -0.559193, 0.829038, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=183;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5053, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (183, 5053, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59255, 5053, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59255, 175404, 0, -7857, -876, 149.883, 1.866, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=184;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5054, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (184, 5054, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59256, 5054, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59256, 175404, 1, -8221, -4445, 10.156, 3.167, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=185;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5055, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (185, 5055, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59257, 5055, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59257, 175404, 1, 6467.91, -4259, 664.492, 5.24, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=186;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5056, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (186, 5056, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59258, 5056, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59258, 175404, 1, -6370, 805.383, 2.811, 2.729, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=187;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5057, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (187, 5057, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59259, 5057, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59259, 175404, 1, -7817, -5054, 5.017, 5.228, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=188;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5058, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (188, 5058, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59260, 5058, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59260, 175404, 0, -8136, -1329, 137.026, 5.912, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=189;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5059, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (189, 5059, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59261, 5059, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59261, 175404, 1, -7823, -5129, 2.468, 4.178, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=190;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5060, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (190, 5060, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59262, 5060, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59262, 175404, 0, -7878, -1906, 138.02, 1.557, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=191;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5061, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (191, 5061, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59263, 5061, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59263, 175404, 1, 6883.33, -2062, 595.659, 4.325, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=192;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5062, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (192, 5062, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59264, 5062, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59264, 175404, 1, -8834, -2249, 12.215, 5.688, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=193;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5063, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (193, 5063, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59265, 5063, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59265, 175404, 1, -7409, -4807, 9.071, 3.5, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=194;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5064, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (194, 5064, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59266, 5064, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59266, 175404, 0, -8130, -2317, 153.774, 5.279, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=195;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5065, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (195, 5065, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59267, 5065, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59267, 175404, 1, -7724, 405.934, -34, 6.177, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=196;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5066, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (196, 5066, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59268, 5066, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59268, 175404, 1, -7554, -4147, 17.502, 4.742, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=197;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5067, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (197, 5067, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59269, 5067, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59269, 175404, 0, 2669.38, -4230, 86.882, 2.375, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=198;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5068, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (198, 5068, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59270, 5068, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59270, 175404, 1, -7133, -4205, 9.11, 0.419, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=199;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5069, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (199, 5069, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59271, 5069, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59271, 175404, 1, -6931, -4517, 10.941, 4.955, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=200;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5070, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (200, 5070, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59272, 5070, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59272, 175404, 1, -6233, 1073.57, -26, 1.492, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=201;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5071, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (201, 5071, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59273, 5071, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59273, 175404, 0, 1960.68, -4019, 111.555, 3.302, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=202;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5072, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (202, 5072, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59274, 5072, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59274, 175404, 1, -7888, -5207, 1.518, 4.178, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=203;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5073, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (203, 5073, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59275, 5073, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59275, 175404, 0, -8284, -1058, 150.047, 0.541, 0, 0, 0.267238, 0.96363, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=204;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5074, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (204, 5074, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59276, 5074, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59276, 175404, 1, -6641, 78.241, 8.539, 1.536, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5075, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (205, 5075, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59277, 5075, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59277, 175404, 0, -10536, -3170, 21.756, 2.862, 0, 0, 0.990268, 0.139173, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=206;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5076, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (206, 5076, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59278, 5076, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59278, 175404, 1, -7606, -1802, -260, 2.321, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=207;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5077, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (207, 5077, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59279, 5077, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59279, 175404, 0, -8283, -2375, 177.354, 1.361, 0, 0, 0.62932, 0.777146, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=208;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5078, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (208, 5078, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59280, 5078, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59280, 175404, 1, -7885, -2429, -23, 0, 0, 0, -0.147809, 0.989016, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5079, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (209, 5079, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59281, 5079, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59281, 175404, 1, -8253, -1538, -215, 2.519, 0, 0, 0.951991, 0.306127, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=210;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5080, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (210, 5080, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59282, 5080, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59282, 175404, 1, 4371.08, -4549, 907.065, 3.028, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=211;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5081, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (211, 5081, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59283, 5081, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59283, 175404, 1, -8340, -3975, 9.852, 0.315, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=212;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5082, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (212, 5082, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59284, 5082, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59284, 175404, 1, -7832, -1335, -272, 4.522, 0, 0, 0.771186, -0.63661, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=213;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5083, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (213, 5083, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59285, 5083, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59285, 175404, 1, -6929, -2390, -198, -3, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=214;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5084, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (214, 5084, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59286, 5084, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59286, 175404, 1, -8310, -2774, 22.309, 4.818, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=215;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5085, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (215, 5085, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59287, 5085, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59287, 175404, 0, -7823, -1564, 132.76, 1.647, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=216;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5086, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (216, 5086, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59288, 5086, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59288, 175404, 0, -10996, -2718, 7.762, 2.327, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=217;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5087, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (217, 5087, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59289, 5087, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59289, 175404, 1, -6949, -4303, 9.723, 4.443, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=218;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5088, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (218, 5088, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59290, 5088, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59290, 175404, 0, 1680.83, -1840, 71.193, 0.56, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=219;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5089, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (219, 5089, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59291, 5089, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59291, 175404, 0, -7964, -2606, 171.355, 3.666, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=220;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5090, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (220, 5090, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59292, 5090, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59292, 175404, 1, 6509.89, -4329, 669.425, 0.219, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=221;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5091, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (221, 5091, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59293, 5091, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59293, 175404, 0, -10878, -2725, 8.883, -1, 0, 0, -0.366501, 0.930418, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=222;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5092, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (222, 5092, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59294, 5092, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59294, 175404, 1, -6733, 1614.84, 11.051, 1.438, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=223;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5093, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (223, 5093, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59295, 5093, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59295, 175404, 1, -6512, 757.002, 5.303, 5.623, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=224;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5094, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (224, 5094, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59296, 5094, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59296, 175404, 1, 5355.33, -600, 345.306, 4.258, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=225;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5095, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (225, 5095, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59297, 5095, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59297, 175404, 1, 4765.79, -353, 366.307, 2.656, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=226;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5096, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (226, 5096, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59298, 5096, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59298, 175404, 0, -10851, -3175, 46.779, 3.551, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5097, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (227, 5097, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59299, 5097, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59299, 175404, 0, -10710, -3634, -11, -1, 0, 0, -0.438371, 0.898794, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=228;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5098, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (228, 5098, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59300, 5098, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59300, 175404, 1, 6589, -1109, 461.496, 2.063, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=229;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5099, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (229, 5099, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59301, 5099, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59301, 175404, 1, -7997, -2625, -46, 0, 0, 0, -0.173648, 0.984808, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=230;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5100, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (230, 5100, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59302, 5100, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59302, 175404, 0, -11220, -2781, 42.796, -2, 0, 0, -0.829038, 0.559193, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=231;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5101, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (231, 5101, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59303, 5101, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59303, 175404, 0, 1630.23, -3793, 142.25, 4.429, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=232;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5102, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (232, 5102, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59304, 5102, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59304, 175404, 0, 2327.64, -1934, 114.465, -3, 0, 0, -0.999657, 0.026177, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=233;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5103, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (233, 5103, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59305, 5103, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59305, 175404, 0, -8228, -2947, 159.878, 0, 0, 0, 0, 1, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=234;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5104, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (234, 5104, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59306, 5104, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59306, 175404, 1, -6312, 928.91, 6.873, 2.494, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=235;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5105, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (235, 5105, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59307, 5105, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59307, 175404, 1, -6358, 1112.31, 9.303, 1.928, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=236;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5106, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (236, 5106, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59308, 5106, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59308, 175404, 0, -11902, -3140, -18, 2.088, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=237;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5107, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (237, 5107, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59309, 5107, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59309, 175404, 0, -8165, -762, 132.859, -3, 0, 0, 0.987688, -0.156434, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=238;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5108, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (238, 5108, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59310, 5108, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59310, 175404, 1, 4619.51, -4749, 896.157, 4.108, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=239;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5109, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (239, 5109, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59311, 5109, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59311, 175404, 1, 4339.73, -4504, 906.655, 2.324, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=241;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5110, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (241, 5110, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59312, 5110, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59312, 175404, 1, -7977, -3884, 10.642, 3.992, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=242;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5111, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (242, 5111, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59313, 5111, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59313, 175404, 0, -7868, -1741, 127.237, 1.557, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=243;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5112, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (243, 5112, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59314, 5112, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59314, 175404, 1, -6611, 1404.56, 6.793, 3.377, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=245;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5113, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (245, 5113, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59315, 5113, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59315, 175404, 0, -11263, -3452, 8.089, 0.086, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=246;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5114, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (246, 5114, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59316, 5114, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59316, 175404, 1, 4802.39, -4596, 875.652, 3.684, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=247;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5115, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (247, 5115, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59317, 5115, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59317, 175404, 0, -7890, -2712, 168.084, 0.271, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=248;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5116, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (248, 5116, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59318, 5116, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59318, 175404, 1, -7582, -1666, -265, -2, 0, 0, -0.87462, 0.48481, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=249;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5117, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (249, 5117, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59319, 5117, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59319, 175404, 1, -7538, -2265, -249, 3.113, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=250;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5118, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (250, 5118, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59320, 5118, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59320, 175404, 1, 6213.51, -1974.14, 578.086, 5.082, 0, 0, 0.565132, -0.825001, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=251;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5119, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (251, 5119, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59321, 5119, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59321, 175404, 1, 5851.91, -539, 422.192, 2.921, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=252;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5120, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (252, 5120, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59322, 5120, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59322, 175404, 0, -11279, -2972, 24.948, 0.055, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=253;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5121, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (253, 5121, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59323, 5121, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59323, 175404, 0, 1632.35, -2386, 73.885, 0.559, 0, 0, 0.275637, 0.961262, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=254;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5122, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (254, 5122, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59324, 5122, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59324, 175404, 1, -7155, 496.514, 5.635, 5.756, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=255;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5123, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (255, 5123, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59325, 5123, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59325, 175404, 0, 2208.09, -1719, 82.644, 1.501, 0, 0, 0.681998, 0.731354, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=256;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5124, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (256, 5124, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59326, 5124, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59326, 175404, 0, -11341, -2513, 106.287, 0.575, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=257;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5125, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (257, 5125, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59327, 5125, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59327, 175404, 1, -6645, 828.397, 2.542, 1.426, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=258;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5126, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (258, 5126, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59328, 5126, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59328, 175404, 0, -6717, -1253, 183.796, 0.14, 0, 0, 0.069756, 0.997564, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=259;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5127, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (259, 5127, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59329, 5127, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59329, 175404, 1, 6253.8, -1826, 590.326, 2.685, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=260;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5128, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (260, 5128, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59330, 5128, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59330, 175404, 0, 1716.23, -1965, 68.456, 2.589, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=261;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5129, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (261, 5129, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59331, 5129, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59331, 175404, 1, -9183, -2180, 19.823, 5.901, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=262;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5130, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (262, 5130, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59332, 5130, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59332, 175404, 0, -8192, -1650, 147.321, 0, 0, 0, -0.173648, 0.984808, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=263;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5131, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (263, 5131, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59333, 5131, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59333, 175404, 1, 5054.98, -514, 313.221, 2.586, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=264;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5132, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (264, 5132, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59334, 5132, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59334, 175404, 0, 1647.41, -3962, 139.644, 4.665, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=265;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5133, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (265, 5133, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59335, 5133, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59335, 175404, 1, -7932, -2360, 9.681, 0.002, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=266;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5134, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (266, 5134, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59336, 5134, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59336, 175404, 1, -7311, -4764, 10.918, 4.832, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=267;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5135, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (267, 5135, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59337, 5135, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59337, 175404, 0, -7229, -1024, 242.4, 1.708, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=268;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5136, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (268, 5136, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59338, 5136, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59338, 175404, 0, 1859.17, -2508, 70.143, 3.623, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=269;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5137, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (269, 5137, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59339, 5137, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59339, 175404, 1, 6729.17, -2060, 608.117, 0.184, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=270;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5138, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (270, 5138, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59340, 5138, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59340, 175404, 0, -7570, -2137, 137.734, 5.845, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=271;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5139, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (271, 5139, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59341, 5139, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59341, 175404, 0, -7514, -2145, 135.585, 6.201, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=272;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5140, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (272, 5140, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59342, 5140, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59342, 175404, 1, -7998, -4557, 9.453, 2.159, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=273;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5141, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (273, 5141, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59343, 5141, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59343, 175404, 1, -8216, -5199, 3.911, 3.534, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=274;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5142, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (274, 5142, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59344, 5142, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59344, 175404, 0, -11304, -2867, 29.373, 4.552, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=275;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5143, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (275, 5143, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59345, 5143, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59345, 175404, 1, -7268, -4637, 10.277, 2.693, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=276;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5144, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (276, 5144, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59346, 5144, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59346, 175404, 0, -11759, -3110, 0, 0.126, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=277;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5145, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (277, 5145, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59347, 5145, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59347, 175404, 1, -7660, -4809, 7.771, 3.029, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=278;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5146, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (278, 5146, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59348, 5146, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59348, 175404, 1, 6642.8, -2058, 588.384, 0.184, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=279;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5147, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (279, 5147, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59349, 5147, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59349, 175404, 1, 5911.52, -1231, 397.735, 6.104, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=280;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5148, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (280, 5148, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59350, 5148, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59350, 175404, 1, -6350, -1896, -259, 0.35, 0, 0, 0.174214, 0.984708, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=281;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5149, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (281, 5149, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59351, 5149, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59351, 175404, 0, -11220, -2532, 96.329, 0.042, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=282;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5150, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (282, 5150, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59352, 5150, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59352, 175404, 1, -7703, -2189, -257, -3, 0, 0, -0.994522, 0.104529, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=283;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5151, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (283, 5151, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59353, 5151, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59353, 175404, 0, 1615.41, -1904, 76.634, 1.42, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=284;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5152, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (284, 5152, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59354, 5152, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59354, 175404, 1, -7859, -5166, 1.305, 4.178, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=285;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5153, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (285, 5153, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59355, 5153, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59355, 175404, 0, -7560, -2098, 125.378, 1.625, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=286;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5154, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (286, 5154, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59356, 5154, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59356, 175404, 1, -6960, -2291, -257, 3.53, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=287;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5155, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (287, 5155, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59357, 5155, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59357, 175404, 1, 4298.21, -4370, 912.071, 1.052, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=288;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5156, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (288, 5156, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59358, 5156, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59358, 175404, 1, -9118, -2158, 14.643, 0.636, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=289;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5157, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (289, 5157, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59359, 5157, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59359, 175404, 0, -11639, -2896, 12.701, -1, 0, 0, -0.309017, 0.951056, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=290;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5158, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (290, 5158, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59360, 5158, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59360, 175404, 1, -8251, -3848, 11.246, 1.201, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=291;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5159, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (291, 5159, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59361, 5159, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59361, 175404, 1, 5200.52, -550, 331.147, 1.377, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=292;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5160, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (292, 5160, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59362, 5160, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59362, 175404, 1, 6417.55, -4285, 665.534, 4.316, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=293;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5161, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (293, 5161, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59363, 5161, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59363, 175404, 1, 5758.97, -4952, 828.546, 3.704, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=294;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5162, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (294, 5162, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59364, 5162, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59364, 175404, 1, -7789, 350.248, -34, 0.761, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=295;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5163, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (295, 5163, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59365, 5163, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59365, 175404, 0, 1951.01, -2193, 67.428, 5.693, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=296;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5164, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (296, 5164, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59366, 5164, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59366, 175404, 0, 183.248, -4630, 130.768, 6.24, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=297;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5165, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (297, 5165, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59367, 5165, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59367, 175404, 0, 2610.35, -1885, 92.823, 0.23, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5166, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (298, 5166, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59368, 5166, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59368, 175404, 0, -10622, -3298, -6, 4.729, 0, 0, 0, 0, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=299;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5167, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (299, 5167, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59369, 5167, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59369, 175404, 1, -6366, -1830, -260, -2, 0, 0, -0.731354, 0.681998, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=300;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5168, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (300, 5168, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59370, 5168, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59370, 175404, 1, -7020, -2424, -213, 3.445, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=301;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5169, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (301, 5169, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59371, 5169, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59371, 175404, 1, 6299.41, -1868, 562.982, 2.685, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=302;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5170, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (302, 5170, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59372, 5170, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59372, 175404, 1, -8307, -2488, 16.566, 5.434, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=303;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5171, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (303, 5171, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59373, 5171, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59373, 175404, 0, -7819, -2650, 223.965, 0, 0, 0, 0, 1, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=304;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5172, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (304, 5172, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59374, 5172, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59374, 175404, 1, -7935, -4640, 11.203, 2.781, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=305;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5173, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (305, 5173, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59375, 5173, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59375, 175404, 0, -7922, -2597, 123.734, 1.117, 0, 0, 0.529919, 0.848048, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=306;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5174, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (306, 5174, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59376, 5174, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59376, 175404, 1, 6349.99, -627, 485.861, 1.696, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=307;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5175, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (307, 5175, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59377, 5175, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59377, 175404, 0, 2269.31, -1637, 101.745, 2.423, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=308;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5176, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (308, 5176, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59378, 5176, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59378, 175404, 1, -6978, -2354, -222, 3.078, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=309;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5177, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (309, 5177, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59379, 5177, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59379, 175404, 1, 4247.25, -718, 287.047, 2.784, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=310;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5178, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (310, 5178, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59380, 5178, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59380, 175404, 1, -8249, -2821, 20.754, 0.043, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=311;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5179, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (311, 5179, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59381, 5179, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59381, 175404, 1, 5333.21, -527, 349.851, 5.765, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=312;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5180, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (312, 5180, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59382, 5180, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59382, 175404, 1, -8200, -2696, 14.847, 5.33, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5181, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (313, 5181, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59383, 5181, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59383, 175404, 1, -8142, 316.634, -35, 5.514, 0, 0, 0, 0, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=314;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5182, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (314, 5182, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59384, 5182, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59384, 175404, 1, 6459.91, -1601, 434.656, 4.082, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=315;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5183, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (315, 5183, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59385, 5183, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59385, 175404, 1, -6791, -1799, -260, -1, 0, 0, -0.34202, 0.939693, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=316;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5184, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (316, 5184, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59386, 5184, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59386, 175404, 1, -6919, -4463, 9.676, 5.207, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=317;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5185, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (317, 5185, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59387, 5185, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59387, 175404, 1, -7212, -2300, -264, 3.603, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=318;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5186, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (318, 5186, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59388, 5186, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59388, 175404, 0, -11106, -2653, 44.622, 1.667, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=319;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5187, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (319, 5187, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59389, 5187, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59389, 175404, 1, -6468, 770.821, 5.647, 2.993, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=320;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5188, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (320, 5188, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59390, 5188, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59390, 175404, 0, -8113, -2504, 140.2, 4.724, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=321;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5189, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (321, 5189, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59391, 5189, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59391, 175404, 1, -7737, -4866, 8.929, 4.087, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=322;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5190, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (322, 5190, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59392, 5190, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59392, 175404, 1, -7105, -3078, 9.449, 4.907, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=323;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5191, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (323, 5191, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59393, 5191, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59393, 175404, 1, -8306, -4636, 2.798, 3.124, 0, 0, 0.999962, 0.008727, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=324;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5192, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (324, 5192, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59394, 5192, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59394, 175404, 0, -6892, -852, 260.805, 2.81, 0, 0, 0.986286, 0.165048, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=325;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5193, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (325, 5193, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59395, 5193, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59395, 175404, 0, -7905, -876, 130.99, 2.705, 0, 0, 0.976296, 0.21644, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=326;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5194, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (326, 5194, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59396, 5194, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59396, 175404, 1, -6383, 1262.93, 5.038, 2.786, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=327;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5195, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (327, 5195, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59397, 5195, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59397, 175404, 1, -7923, -5279, 0.569, 4.178, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=328;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5196, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (328, 5196, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59398, 5196, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59398, 175404, 0, 2570.69, -1621, 95.411, -1, 0, 0, -0.636078, 0.771625, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=329;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5197, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (329, 5197, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59399, 5197, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59399, 175404, 0, -7815, -2650, 174.152, 1.757, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=330;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5198, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (330, 5198, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59400, 5198, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59400, 175404, 1, -8175, -5282, 0.569, 3.534, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=331;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5199, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (331, 5199, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59401, 5199, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59401, 175404, 0, 394.262, -4106, 120.235, 0.323, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=332;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5200, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (332, 5200, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59402, 5200, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59402, 175404, 0, -252, -3793, 237.848, 0.637, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=333;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5201, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (333, 5201, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59403, 5201, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59403, 175404, 1, -9226, -2118, 35.091, 0.623, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=335;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5202, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (335, 5202, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59404, 5202, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59404, 175404, 1, -6314, 507.647, 7.651, 0.496, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=336;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5203, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (336, 5203, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59405, 5203, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59405, 175404, 1, -6835, -1519, -263, -2, 0, 0, -0.878817, 0.477159, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=337;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5204, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (337, 5204, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59406, 5204, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59406, 175404, 0, 2786.06, -1680, 136.821, 6.054, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=338;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5205, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (338, 5205, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59407, 5205, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59407, 175404, 1, -7845, -1330, -264, 0.419, 0, 0, 0.207912, 0.978148, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=339;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5206, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (339, 5206, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59408, 5206, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59408, 175404, 1, -7974, -2347, 8.89, 2.81, 0, 0, 0.986286, 0.165048, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=340;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5207, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (340, 5207, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59409, 5207, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59409, 175404, 1, 4541.62, -4654, 890.982, 1.598, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=341;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5208, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (341, 5208, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59410, 5208, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59410, 175404, 1, -6496, 1414.35, 4.811, 2.183, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=342;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5209, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (342, 5209, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59411, 5209, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59411, 175404, 0, -7761, -1515, 131.932, -1, 0, 0, -0.258819, 0.965926, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=343;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5210, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (343, 5210, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59412, 5210, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59412, 175404, 1, -7357, 641.365, -4, 0.296, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5211, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (344, 5211, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59413, 5211, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59413, 175404, 0, -10619, -3384, -14, 4.565, 0, 0, 0, 0, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=345;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5212, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (345, 5212, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59414, 5212, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59414, 175404, 1, -8061, -1751, -245, -2, 0, 0, -0.737277, 0.67559, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=346;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5213, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (346, 5213, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59415, 5213, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59415, 175404, 1, -8042, -4472, 10.012, 2.159, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=347;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5214, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (347, 5214, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59416, 5214, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59416, 175404, 0, -11032, -2690, 24.649, 2.327, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=348;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5215, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (348, 5215, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59417, 5215, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59417, 175404, 1, 4331.35, -4464, 904.255, 0.804, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=349;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5216, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (349, 5216, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59418, 5216, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59418, 175404, 0, -59, -3888, 198.748, 2.909, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=350;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5217, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (350, 5217, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59419, 5217, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59419, 175404, 1, -6975, -4110, 11.39, 0.365, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=353;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5218, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (353, 5218, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59420, 5218, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59420, 175404, 1, -6772, -2271, -243, 5.793, 0, 0, 0.242409, -0.970174, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=354;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5219, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (354, 5219, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59421, 5219, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59421, 175404, 0, -232, -4336, 113.978, 4.688, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=355;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5220, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (355, 5220, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59422, 5220, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59422, 175404, 1, 5590.56, -820, 355.945, 4.885, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=356;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5221, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (356, 5221, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59423, 5221, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59423, 175404, 0, -11245, -2613, 92.481, 4.16, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=357;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5222, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (357, 5222, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59424, 5222, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59424, 175404, 1, -7426, -3885, 13.47, 3.036, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=358;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5223, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (358, 5223, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59425, 5223, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59425, 175404, 1, 5506, -4658, 792.844, 1.777, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=359;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5224, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (359, 5224, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59426, 5224, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59426, 175404, 1, -7948, -1271, -275, 2.621, 0, 0, 0.966329, 0.25731, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=360;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5225, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (360, 5225, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59427, 5225, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59427, 175404, 0, -285, -3736, 238.048, 1.055, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=361;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5226, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (361, 5226, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59428, 5226, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59428, 175404, 0, -8125, -2470, 143.304, 3.302, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=362;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5227, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (362, 5227, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59429, 5227, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59429, 175404, 0, -11386, -3165, 19.232, 2.775, 0, 0, 0.983255, 0.182235, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=363;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5228, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (363, 5228, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59430, 5228, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59430, 175404, 0, -7041, -1181, 252.946, 0.559, 0, 0, 0.275637, 0.961262, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=364;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5229, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (364, 5229, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59431, 5229, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59431, 175404, 0, -11512, -2964, 35.444, -3, 0, 0, -0.989016, 0.147809, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=365;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5230, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (365, 5230, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59432, 5230, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59432, 175404, 0, -8131, -2444, 134.669, 4.579, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=366;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5231, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (366, 5231, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59433, 5231, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59433, 175404, 1, -9035, -2107, 18.84, 0.636, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=367;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5232, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (367, 5232, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59434, 5232, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59434, 175404, 1, -7187, -2310, -246, -2, 0, 0, -0.824126, 0.566406, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=368;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5233, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (368, 5233, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59435, 5233, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59435, 175404, 0, 1830.54, -1949, 80.514, 0.805, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=369;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5234, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (369, 5234, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59436, 5234, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59436, 175404, 1, -8119, -4545, 13.075, -1, 0, 0, -0.275637, 0.961262, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=370;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5235, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (370, 5235, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59437, 5235, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59437, 175404, 0, -7765, -1955, 133.44, 2.317, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=372;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5236, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (372, 5236, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59438, 5236, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59438, 175404, 1, 4663.58, -643, 285.911, 1.851, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=373;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5237, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (373, 5237, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59439, 5237, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59439, 175404, 0, -6645, -859, 244.144, 0.908, 0, 0, 0.438371, 0.898794, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=374;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5238, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (374, 5238, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59440, 5238, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59440, 175404, 1, -6947, -2263, -270, 6.094, 0, 0, 0.094273, -0.995546, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=375;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5239, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (375, 5239, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59441, 5239, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59441, 175404, 1, 6081.91, -1196, 372.143, 0.251, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=376;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5240, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (376, 5240, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59442, 5240, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59442, 175404, 1, -7881, -2323, 27.173, 5.286, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=377;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5241, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (377, 5241, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59443, 5241, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59443, 175404, 1, -6403, -2018, -264, -2, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=378;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5242, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (378, 5242, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59444, 5242, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59444, 175404, 1, -7064, -4155, 8.877, 1.92, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=379;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5243, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (379, 5243, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59445, 5243, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59445, 175404, 0, -8162, -2170, 148.555, 0, 0, 0, -0.052336, 0.99863, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=380;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5244, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (380, 5244, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59446, 5244, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59446, 175404, 0, -11851, -3076, -2, 0.409, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=381;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5245, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (381, 5245, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59447, 5245, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59447, 175404, 1, 5114.13, -527, 333.121, 0.726, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=382;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5246, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (382, 5246, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59448, 5246, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59448, 175404, 1, 4009.54, -721, 294.358, 2.461, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=383;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5247, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (383, 5247, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59449, 5247, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59449, 175404, 1, -6256, -1561, -220, 1.798, 0, 0, 0.782608, 0.622515, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=384;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5248, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (384, 5248, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59450, 5248, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59450, 175404, 1, 5532.42, -4548, 789.692, 4.29, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=385;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5249, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (385, 5249, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59451, 5249, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59451, 175404, 1, -7068, -3260, 9.727, 4.907, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=386;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5250, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (386, 5250, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59452, 5250, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59452, 175404, 1, -7504, 1915.57, -57, 2.839, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=387;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5251, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (387, 5251, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59453, 5251, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59453, 175404, 0, -7838, -2563, 125.854, 0.646, 0, 0, 0.317305, 0.948324, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=13212;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5252, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (13212, 5252, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59454, 5252, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59454, 175404, 0, -6551, -836, 301.182, -3, 0, 0, -0.965926, 0.258819, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=13213;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5253, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (13213, 5253, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59455, 5253, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59455, 175404, 0, -6560, -825, 297.716, -3, 0, 0, 0.965926, -0.258819, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17596;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5254, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17596, 5254, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59456, 5254, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59456, 175404, 1, -7565.65, -1149.59, -262.336, 1.41372, 0, 0, 0.649448, 0.760406, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17595;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5255, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17595, 5255, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59457, 5255, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59457, 175404, 1, -6834.64, -1146.74, -262.943, 2.46091, 0, 0, 0.942641, 0.333807, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17594;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5256, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17594, 5256, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59458, 5256, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59458, 175404, 1, -7947.2, -1863.77, -249.187, -2.09439, 0, 0, 0.866025, -0.5, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17593;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5257, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17593, 5257, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59459, 5257, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59459, 175404, 1, -6381.24, -1972.22, -257.093, 1.32645, 0, 0, 0.615662, 0.788011, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17592;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5258, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17592, 5258, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59460, 5258, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59460, 175404, 1, -6301.7, -1961.99, -268.694, 0.523599, 0, 0, 0.258819, 0.965926, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17315;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5259, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17315, 5259, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59461, 5259, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59461, 175404, 1, -7901.32, -2439.83, -31.0405, 1.09956, 0, 0, 0.522499, 0.85264, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17314;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5260, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17314, 5260, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59462, 5260, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59462, 175404, 1, -8854.05, -2247.24, 10.9005, -1.32645, 0, 0, 0.615661, -0.788011, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17313;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5261, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17313, 5261, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59463, 5261, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59463, 175404, 1, -9234.02, -4041.78, -39.3105, -2.23402, 0, 0, 0.898794, -0.438371, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17312;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5262, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17312, 5262, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59464, 5262, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59464, 175404, 1, -8327.19, -4634.65, 14.1491, 3.12414, 0, 0, 0.999962, 0.008727, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=40017;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5263, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (40017, 5263, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59465, 5263, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59465, 175404, 0, -11203, -2555.16, 108.173, -2.46091, 0, 0, 0.942641, -0.333807, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=13980;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5264, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (13980, 5264, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59466, 5264, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59466, 175404, 0, -11234.1, -3451.77, 8.38004, -1.41372, 0, 0, 0.649448, -0.760406, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=29289;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5265, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (29289, 5265, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59467, 5265, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59467, 175404, 0, -7284.3, -803.928, 298.656, -0.959931, 0, 0, 0.461749, -0.887011, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=29656;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5266, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (29656, 5266, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59468, 5266, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59468, 175404, 0, -8102.72, -2087.92, 141.207, 2.82743, 0, 0, 0.987688, 0.156434, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=30350;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5267, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30350, 5267, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59469, 5267, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59469, 175404, 0, -11219.8, -3391.64, 22.8582, 0.715585, 0, 0, 0.350207, 0.936672, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=32132;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5268, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32132, 5268, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59470, 5268, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59470, 175404, 0, -11685.6, -3412.33, 18.409, 3.08923, 0, 0, 0.999657, 0.026177, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=32295;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5269, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32295, 5269, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59471, 5269, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59471, 175404, 0, -11270.4, -3305.36, 28.3876, 0.453786, 0, 0, 0.224951, 0.97437, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=10165;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5270, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10165, 5270, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59472, 5270, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59472, 175404, 0, -6463.52, -824.624, 336.551, 0.994838, 0, 0, 0.477159, 0.878817, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=10103;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5271, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10103, 5271, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59473, 5271, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59473, 175404, 0, -6727.07, -1085.87, 185.576, 0.994838, 0, 0, 0.477159, 0.878817, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=10092;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5272, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10092, 5272, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59474, 5272, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59474, 175404, 0, -6749.6, -843.777, 251.203, -2.94961, 0, 0, 0.995396, -0.095846, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5273, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10072, 5273, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59475, 5273, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59475, 175404, 0, -6581.75, -672.116, 241.635, 1.90241, 0, 0, 0.814116, 0.580703, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=10007;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5274, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10007, 5274, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59476, 5274, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59476, 175404, 0, -7084.92, -914.239, 285.95, 0.855211, 0, 0, 0.414693, 0.909961, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=33863;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5275, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33863, 5275, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59477, 5275, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59477, 175404, 0, 1797, -4342.57, 101.442, 1.11701, 0, 0, 0.529919, 0.848048, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=6812;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5276, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (6812, 5276, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59478, 5276, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59478, 175404, 0, -7889.31, -2160.1, 131.521, -2.02458, 0, 0, 0.848048, -0.529919, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=34864;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5277, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (34864, 5277, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59479, 5277, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59479, 175404, 1, -8042.74, -4665.4, 30.8037, 1.43117, 0, 0, 0.656059, 0.75471, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=4597;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5278, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4597, 5278, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59480, 5278, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59480, 175404, 0, -7978.63, -2637.21, 170.892, -0.226893, 0, 0, 0.113203, -0.993572, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=4595;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5279, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4595, 5279, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59481, 5279, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59481, 175404, 0, -7890.75, -2537.32, 129.288, 1.53589, 0, 0, 0.694658, 0.71934, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=35311;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5280, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (35311, 5280, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59482, 5280, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59482, 175404, 0, -11909.2, -3171.1, -18.7142, 2.26893, 0, 0, 0.906308, 0.422618, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=39944;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5281, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (39944, 5281, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59483, 5281, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59483, 175404, 1, -6379.43, -1967.41, -166.9, 0, 0, 0, 0, 0, 2700, 2700, 1, 0, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=39998;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5282, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (39998, 5282, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59484, 5282, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59484, 175404, 0, -11307.5, -2520.43, 93.8103, 1.15192, 0, 0, 0.544639, 0.838671, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45497;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5283, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45497, 5283, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59485, 5283, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59485, 175404, 0, 1705.69, -1814.1, 80.3206, -1.25664, 0, 0, 0.587785, -0.809017, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45498;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5284, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45498, 5284, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59486, 5284, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59486, 175404, 0, 2149.09, -1501.81, 73.08, 0.785398, 0, 0, 0.382683, 0.92388, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45499;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5285, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45499, 5285, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59487, 5285, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59487, 175404, 0, 2778.65, -1672.19, 134.643, -0.994838, 0, 0, 0.477159, -0.878817, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45505;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5286, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45505, 5286, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59488, 5286, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59488, 175404, 0, 2318.85, -2372.06, 54.5187, -0.802851, 0, 0, 0.390731, -0.920505, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45551;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5287, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45551, 5287, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59489, 5287, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59489, 175404, 0, 1593.42, -2215.51, 63.8084, -2.56563, 0, 0, 0.95882, -0.284015, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45560;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5288, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45560, 5288, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59490, 5288, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59490, 175404, 0, 2654.89, -1740.8, 115.441, 1.41372, 0, 0, 0.649448, 0.760406, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45561;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5289, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45561, 5289, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59491, 5289, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59491, 175404, 0, 1813.05, -2458.89, 72.8594, 1.53589, 0, 0, 0.694658, 0.71934, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45880;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5290, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45880, 5290, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59492, 5290, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59492, 175404, 0, 2689.7, -3443, 111.633, -1.72788, 0, 0, 0.760406, -0.649448, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45893;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5291, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45893, 5291, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59493, 5291, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59493, 175404, 0, 3026.88, -3283.43, 147.889, -1.78024, 0, 0, 0.777146, -0.62932, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45956;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5292, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45956, 5292, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59494, 5292, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59494, 175404, 0, 2525.59, -4421.11, 91.7682, -0.872665, 0, 0, 0.422618, -0.906308, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45960;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5293, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45960, 5293, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59495, 5293, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59495, 175404, 0, 1622.84, -3992.93, 145.296, -1.58825, 0, 0, 0.71325, -0.700909, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45961;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5294, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45961, 5294, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59496, 5294, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59496, 175404, 0, 1730.36, -5110.25, 83.807, -2.33874, 0, 0, 0.920505, -0.390731, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45969;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5295, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45969, 5295, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59497, 5295, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59497, 175404, 0, 1614.08, -4747.79, 97.7026, -0.750491, 0, 0, 0.366501, -0.930418, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45970;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5296, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45970, 5296, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59498, 5296, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59498, 175404, 0, 2143.88, -3365.99, 135.058, -2.3911, 0, 0, 0.930418, -0.366501, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=46320;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5297, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46320, 5297, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59499, 5297, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59499, 175404, 0, 121.811, -4147.39, 157.877, 0.244346, 0, 0, 0.121869, 0.992546, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5298, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46438, 5298, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59500, 5298, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59500, 175404, 0, -671.735, -3811.95, 223.037, -2.28638, 0, 0, 0.909961, -0.414693, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=49079;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5299, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49079, 5299, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59501, 5299, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59501, 175404, 1, 5256.66, -5014.92, 867.899, -2.18166, 0, 0, 0.887011, -0.461749, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5300, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49080, 5300, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59502, 5300, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59502, 175404, 1, 6650.88, -5297.41, 753.44, 2.86234, 0, 0, 0.990268, 0.139173, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=49081;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5301, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49081, 5301, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59503, 5301, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59503, 175404, 1, 6217.66, -4274.55, 658.453, 3.07178, 0, 0, 0.999391, 0.034899, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49082;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5302, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49082, 5302, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59504, 5302, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59504, 175404, 1, 4651.27, -4620.2, 888.455, 0.750492, 0, 0, 0.366501, 0.930418, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49083;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5303, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49083, 5303, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59505, 5303, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59505, 175404, 1, 5641.72, -4419.73, 800.441, -2.11185, 0, 0, 0.870356, -0.492423, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49084;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5304, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49084, 5304, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59506, 5304, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59506, 175404, 1, 7781.68, -4619.14, 695.573, -1.06465, 0, 0, 0.507538, -0.861629, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49085;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5305, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49085, 5305, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59507, 5305, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59507, 175404, 1, 5102.72, -4388.88, 918.337, 2.18166, 0, 0, 0.887011, 0.461749, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49322;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5306, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49322, 5306, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59508, 5306, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59508, 175404, 1, -7851.56, 207.997, 12.9926, 0.226893, 0, 0, 0.113203, 0.993572, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49323;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5307, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49323, 5307, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59509, 5307, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59509, 175404, 1, -6484.37, 1534.94, 18.1788, 1.39626, 0, 0, 0.642788, 0.766044, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49324;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5308, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49324, 5308, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59510, 5308, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59510, 175404, 1, -6425.44, 1448.17, -1.46714, 0.331613, 0, 0, 0.165048, 0.986286, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49325;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5309, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49325, 5309, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59511, 5309, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59511, 175404, 1, -6453.39, 506.931, 0.376089, 2.04204, 0, 0, 0.85264, 0.522499, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49326;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5310, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49326, 5310, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59512, 5310, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59512, 175404, 1, -7608.42, 1251.54, -1.78993, -0.349066, 0, 0, 0.173648, -0.984808, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49327;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5311, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49327, 5311, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59513, 5311, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59513, 175404, 1, -8065.33, 1130.68, 20.2217, 1.39626, 0, 0, 0.642788, 0.766044, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49328;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5312, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49328, 5312, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59514, 5312, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59514, 175404, 1, -7725.71, 1852.76, 22.6919, -0.034907, 0, 0, 0.017452, -0.999848, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49329;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5313, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49329, 5313, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59515, 5313, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59515, 175404, 1, -6890.71, 198.715, -1.48214, 1.27409, 0, 0, 0.594823, 0.803857, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49330;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5314, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49330, 5314, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59516, 5314, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59516, 175404, 1, -6927.77, 1375.2, 0.115259, 0.523599, 0, 0, 0.258819, 0.965926, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49331;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5315, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49331, 5315, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59517, 5315, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59517, 175404, 1, -7769.69, 998.732, -2.36412, -2.33874, 0, 0, 0.920505, -0.390731, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5316, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (50009, 5316, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59518, 5316, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59518, 175404, 1, -5582.61, 2287.96, 9.67933, 0.226893, 0, 0, 0.113203, 0.993572, 2700, 2700, 1, 100, 2);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5317, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (50010, 5317, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59519, 5317, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59519, 175404, 1, -5575.68, 1104.02, 17.9483, -1.51844, 0, 0, 0.688354, -0.725374, 2700, 2700, 1, 100, 2);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5318, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016406, 5318, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59520, 5318, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59520, 175404, 1, 4723.36, -3915.3, 964.889, 6.04342, 0, 0, 0.119597, -0.992822, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5319, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016401, 5319, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59521, 5319, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59521, 175404, 1, 4761.68, -3752.95, 968.748, 3.21627, 0, 0, 0.999303, -0.0373317, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5320, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016400, 5320, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59522, 5320, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59522, 175404, 1, 4667.1, -3592.07, 981.183, 4.63548, 0, 0, 0.733769, -0.679399, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5321, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016396, 5321, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59523, 5321, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59523, 175404, 1, 5052.95, -3145.91, 1058.31, 5.80736, 0, 0, 0.235676, -0.971832, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5322, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016390, 5322, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59524, 5322, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59524, 175404, 1, 4653.52, -2919.61, 1096.92, 4.40691, 0, 0, 0.806458, -0.591291, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5323, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016386, 5323, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59525, 5323, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59525, 175404, 1, 4768.05, -3150.49, 1089.1, 2.85104, 0, 0, 0.989466, 0.144765, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5324, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016384, 5324, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59526, 5324, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59526, 175404, 1, 4737.33, -3324.4, 1065.25, 2.5675, 0, 0, 0.959085, 0.283119, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5325, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016381, 5325, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59527, 5325, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59527, 175404, 1, 4597.09, -3328.61, 1002.9, 2.8911, 0, 0, 0.992167, 0.12492, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5326, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016378, 5326, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59528, 5326, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59528, 175404, 1, 4414.42, -2960.37, 1034.21, 4.76841, 0, 0, 0.687026, -0.726633, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5327, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016377, 5327, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59529, 5327, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59529, 175404, 1, 4630.67, -3133.79, 1003.86, 3.26437, 0, 0, 0.998116, -0.0613494, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5328, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016375, 5328, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59530, 5328, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59530, 175404, 1, 4322.48, -3056.93, 1065.65, 4.40634, 0, 0, 0.806626, -0.591062, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5329, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016373, 5329, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59531, 5329, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59531, 175404, 1, 4244.07, -2869.59, 1098.04, 2.98947, 0, 0, 0.997109, 0.0759879, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5330, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016369, 5330, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59532, 5330, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59532, 175404, 1, 4576.15, -2621.48, 1133.54, 1.78232, 0, 0, 0.777801, 0.62851, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5331, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016367, 5331, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59533, 5331, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59533, 175404, 1, 4445.04, -2566.51, 1130.03, 4.23041, 0, 0, 0.855434, -0.517912, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5332, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016366, 5332, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59534, 5332, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59534, 175404, 1, 4543.12, -2509.78, 1138.15, 0.104702, 0, 0, 0.052327, 0.99863, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5333, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016365, 5333, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59535, 5333, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59535, 175404, 1, 4551.41, -2383.47, 1096.8, 4.21783, 0, 0, 0.858675, -0.51252, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5334, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016361, 5334, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59536, 5334, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59536, 175404, 1, 4591.43, -1781.39, 1150.29, 4.78429, 0, 0, 0.681233, -0.732067, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5335, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016355, 5335, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59537, 5335, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59537, 175404, 1, 5573.72, -1528.77, 1397.84, 5.07495, 0, 0, 0.568036, -0.823004, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5336, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016354, 5336, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59538, 5336, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59538, 175404, 1, 5523.52, -1610.24, 1392.79, 0.175614, 0, 0, 0.0876941, 0.996147, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5337, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016353, 5337, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59539, 5337, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59539, 175404, 1, 5391.03, -1528.72, 1401.07, 1.12232, 0, 0, 0.532168, 0.846639, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5338, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016330, 5338, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59540, 5338, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59540, 175404, 1, 5137.97, -1312.02, 1369.47, 4.92593, 0, 0, 0.627727, -0.778434, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5339, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016327, 5339, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59541, 5339, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59541, 175404, 1, 4881.84, -1479.55, 1350.68, 5.83228, 0, 0, 0.223549, -0.974693, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5340, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016326, 5340, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59542, 5340, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59542, 175404, 1, 5201.82, -1757.21, 1347.23, 1.99639, 0, 0, 0.840494, 0.541821, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5341, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016324, 5341, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59543, 5341, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59543, 175404, 1, 4941.5, -1826.06, 1333.55, 5.55014, 0, 0, 0.358369, -0.93358, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5342, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016323, 5342, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59544, 5342, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59544, 175404, 1, 5216.79, -1921.33, 1372.55, 4.5629, 0, 0, 0.757935, -0.65233, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5343, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016322, 5343, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59545, 5343, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59545, 175404, 1, 5200.84, -2293.83, 1291.42, 2.00485, 0, 0, 0.84278, 0.538258, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5344, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016318, 5344, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59546, 5344, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59546, 175404, 1, 5153.97, -2077.56, 1302.85, 5.36323, 0, 0, 0.443926, -0.896063, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5345, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016316, 5345, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59547, 5345, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59547, 175404, 1, 5083.92, -2040.14, 1385.82, 5.29725, 0, 0, 0.473243, -0.880932, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5346, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016314, 5346, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59548, 5346, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59548, 175404, 1, 5051.08, -2192.15, 1396.34, 0.244768, 0, 0, 0.122079, 0.99252, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5347, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016307, 5347, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59549, 5347, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59549, 175404, 1, 4872.78, -2846.78, 1454.6, 2.11857, 0, 0, 0.872006, 0.489496, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5348, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016305, 5348, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59550, 5348, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59550, 175404, 1, 4997.17, -2751.94, 1438.46, 4.5219, 0, 0, 0.771147, -0.636657, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5349, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016303, 5349, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59551, 5349, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59551, 175404, 1, 5054.98, -2515.77, 1439.31, 5.8618, 0, 0, 0.209136, -0.977887, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5350, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016301, 5350, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59552, 5350, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59552, 175404, 1, 5465.68, -2459.66, 1482.71, 5.35457, 0, 0, 0.447805, -0.894131, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5351, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016298, 5351, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59553, 5351, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59553, 175404, 1, 5629.63, -2755.55, 1515.99, 3.6055, 0, 0, 0.973219, -0.229879, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5352, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016297, 5352, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59554, 5352, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59554, 175404, 1, 5485.62, -2576.73, 1493.69, 4.57547, 0, 0, 0.753819, -0.657082, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5353, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016296, 5353, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59555, 5353, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59555, 175404, 1, 5243.86, -2593.82, 1517.29, 0.94302, 0, 0, 0.454232, 0.890883, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5354, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016294, 5354, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59556, 5354, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59556, 175404, 1, 5452.88, -3178.51, 1588.67, 2.88344, 0, 0, 0.991681, 0.12872, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5355, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016292, 5355, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59557, 5355, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59557, 175404, 1, 5189.41, -3256.78, 1666.53, 1.76664, 0, 0, 0.77285, 0.634588, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5356, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016291, 5356, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59558, 5356, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59558, 175404, 1, 5081.37, -3346.45, 1650.78, 6.21121, 0, 0, 0.0359793, -0.999353, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5357, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016290, 5357, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59559, 5357, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59559, 175404, 1, 5362.46, -3428.92, 1584.41, 1.54745, 0, 0, 0.698806, 0.715311, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5358, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016286, 5358, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59560, 5358, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59560, 175404, 1, 5636.15, -3326.46, 1599.39, 0.0513589, 0, 0, 0.0256766, 0.99967, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5359, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013461, 5359, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59561, 5359, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59561, 175404, 0, -12403.6, 3128.25, 43.5294, 3.31534, 0, 0, 0.996229, -0.0867634, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5360, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5017124, 5360, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59562, 5360, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59562, 175404, 0, 2483.07, -2934.39, 197.723, 2.63057, 0, 0, 0.967534, 0.252739, 2700, 2700, 1, 100, 0);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5361, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5017122, 5361, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59563, 5361, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59563, 175404, 0, 2527.52, -2970.7, 202.723, 0.580685, 0, 0, 0.28628, 0.958146, 2700, 2700, 1, 100, 0);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5362, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5017121, 5362, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59564, 5362, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59564, 175404, 0, 2537.42, -2903.41, 198.245, 4.34669, 0, 0, 0.823895, -0.566743, 2700, 2700, 1, 100, 0);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5363, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5017120, 5363, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59565, 5363, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59565, 175404, 0, 2692.55, -2608.96, 225.518, 0.800643, 0, 0, 0.389715, 0.920936, 2700, 2700, 1, 100, 0);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5364, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013439, 5364, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59566, 5364, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59566, 175404, 0, -12164.3, 3604.4, 53.4716, 3.57603, 0, 0, 0.9765, -0.215516, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5365, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013460, 5365, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59567, 5365, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59567, 175404, 0, -12446.4, 3145.36, 42.5138, 1.16727, 0, 0, 0.55106, 0.834465, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5366, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013456, 5366, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59568, 5366, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59568, 175404, 0, -12204.7, 2828.48, 6.49858, 2.19844, 0, 0, 0.890854, 0.45429, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5367, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013448, 5367, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59569, 5367, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59569, 175404, 0, -11545.8, 3929.47, 99.8263, 5.30288, 0, 0, 0.470763, -0.88226, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5368, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013465, 5368, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59570, 5368, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59570, 175404, 0, -12469.2, 3078.87, 38.7692, 3.40618, 0, 0, 0.991262, -0.131907, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5369, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013464, 5369, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59571, 5369, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59571, 175404, 0, -12442.3, 3101.76, 40.3212, 1.39949, 0, 0, 0.644022, 0.765007, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5370, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013467, 5370, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59572, 5370, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59572, 175404, 0, -12426.6, 3039.14, 37.4281, 2.63747, 0, 0, 0.9684, 0.249402, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5371, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013488, 5371, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59573, 5371, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59573, 175404, 0, -14362.6, 3618.79, 13.4597, 0.587309, 0, 0, 0.289452, 0.957192, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5372, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013489, 5372, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59574, 5372, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59574, 175404, 0, -14346.3, 3598.89, 14.9522, 4.62817, 0, 0, 0.736246, -0.676714, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5373, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013498, 5373, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59575, 5373, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59575, 175404, 0, -13807.5, 3123.77, 31.6789, 1.31595, 0, 0, 0.611518, 0.791231, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5374, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013500, 5374, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59576, 5374, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59576, 175404, 0, -13575.9, 2961.21, 7.32391, 2.64876, 0, 0, 0.969793, 0.243929, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5375, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013501, 5375, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59577, 5375, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59577, 175404, 0, -13557.8, 2916.77, 4.17091, 3.73304, 0, 0, 0.956591, -0.291433, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5376, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013502, 5376, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59578, 5376, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59578, 175404, 0, -13444.3, 2924.06, 7.42199, 0.0102575, 0, 0, 0.00512872, 0.999987, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5377, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013511, 5377, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59579, 5377, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59579, 175404, 0, -14032.3, 2297.39, 9.76937, 2.07416, 0, 0, 0.860922, 0.508738, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5378, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013513, 5378, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59580, 5378, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59580, 175404, 0, -13982.9, 2370.66, -4.05964, 1.383, 0, 0, 0.637693, 0.770291, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5379, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (4013514, 5379, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59581, 5379, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59581, 175404, 0, -13953, 2285.62, 8.55435, 4.54423, 0, 0, 0.763993, -0.645224, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5380, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5008095, 5380, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59582, 5380, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59582, 175404, 0, -8357.7, -2886.51, 225.077, 0.299995, 0, 0, 0.149436, 0.988771, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5381, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5008096, 5381, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59583, 5381, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59583, 175404, 0, -8267.41, -2927.36, 208.219, 2.75754, 0, 0, 0.98162, 0.190846, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5382, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5008097, 5382, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59584, 5382, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59584, 175404, 0, -8324.58, -2945.13, 206.937, 2.58121, 0, 0, 0.961002, 0.276541, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5383, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5008100, 5383, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59585, 5383, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59585, 175404, 0, -8415.42, -2881.56, 188.797, 3.85206, 0, 0, 0.937564, -0.347812, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5384, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5008103, 5384, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59586, 5384, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59586, 175404, 0, -7957.83, -3102.86, 208.93, 0.693224, 0, 0, 0.339713, 0.940529, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5385, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012215, 5385, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59587, 5385, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59587, 175404, 1, -8317.77, -6962.87, 80.046, 3.23251, 0, 0, 0.998967, -0.0454426, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5386, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012213, 5386, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59588, 5386, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59588, 175404, 1, -8367.8, -6942.3, 46.2577, 2.9806, 0, 0, 0.996762, 0.0804109, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5387, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012212, 5387, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59589, 5387, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59589, 175404, 1, -8257.47, -7036.61, 79.1697, 5.0325, 0, 0, 0.585374, -0.810763, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5388, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012211, 5388, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59590, 5388, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59590, 175404, 1, -7957.12, -7220.68, 13.8631, 0.592679, 0, 0, 0.292021, 0.956412, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5389, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012206, 5389, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59591, 5389, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59591, 175404, 1, -7594.38, -6753.81, 19.7238, 5.73264, 0, 0, 0.27181, -0.962351, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5390, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012198, 5390, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59592, 5390, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59592, 175404, 1, -8709.03, -7146.3, 27.4254, 2.27066, 0, 0, 0.906674, 0.421832, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5391, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012197, 5391, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59593, 5391, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59593, 175404, 1, -8713.28, -7065.33, 31.3818, 1.64234, 0, 0, 0.731943, 0.681366, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5392, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012196, 5392, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59594, 5392, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59594, 175404, 1, -8639.82, -7095.82, 33.1098, 1.71774, 0, 0, 0.757104, 0.653295, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5393, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012192, 5393, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59595, 5393, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59595, 175404, 1, -8082.76, -6815.42, 45.734, 2.03268, 0, 0, 0.850188, 0.526479, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5394, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012185, 5394, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59596, 5394, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59596, 175404, 1, -8363.71, -6861.95, 142.228, 0.879422, 0, 0, 0.425678, 0.904875, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5395, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012184, 5395, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59597, 5395, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59597, 175404, 1, -8381.67, -6871.86, 143.284, 2.7274, 0, 0, 0.978632, 0.205618, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5396, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012179, 5396, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59598, 5396, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59598, 175404, 1, -8262.3, -6644.55, 39.0081, 0.0823314, 0, 0, 0.0411541, 0.999153, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5397, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012176, 5397, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59599, 5397, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59599, 175404, 1, -8300.11, -6489.9, 46.1916, 2.37423, 0, 0, 0.927292, 0.374339, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5398, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012217, 5398, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59600, 5398, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59600, 175404, 1, -8342.08, -7000.28, 65.1073, 1.07875, 0, 0, 0.5136, 0.858029, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5399, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012218, 5399, 90, 'Small Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59601, 5399, 10, 'Rich Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59601, 175404, 1, -8697.5, -6926.4, 45.9049, 2.54432, 0, 0, 0.955738, 0.294219, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=17508;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5400, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17508, 5400, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59602, 5400, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59602, 324, 1, -7810.16, -601.741, -265.945, 1.8326, 0, 0, 0.793353, 0.608761, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18306;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5401, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18306, 5401, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59603, 5401, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59603, 324, 1, 4448.51, -6137, 102.395, 2.09, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18307;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5402, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18307, 5402, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59604, 5402, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59604, 324, 0, -8283, -938, 168.414, 3.536, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18308;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5403, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18308, 5403, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59605, 5403, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59605, 324, 0, 3063.69, -5007, 100.441, 4.727, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18309;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5404, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18309, 5404, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59606, 5404, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59606, 324, 1, 3851.76, -7040, 0, 3.927, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18310;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5405, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18310, 5405, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59607, 5405, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59607, 324, 0, -7619, -1433, 144.374, 6.022, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18311;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5406, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18311, 5406, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59608, 5406, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59608, 324, 1, -7074, -1191, -249, -3, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18312;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5407, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18312, 5407, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59609, 5407, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59609, 324, 0, -8301, -1020, 169.532, 4.29, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18313;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5408, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18313, 5408, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59610, 5408, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59610, 324, 1, -7294, -1193, -255, 5.798, 0, 0, 0.240389, -0.970677, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18314;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5409, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18314, 5409, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59611, 5409, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59611, 324, 1, 6675.58, -4232, 671.242, 5.828, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18315;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5410, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18315, 5410, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59612, 5410, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59612, 324, 0, -7523, -1980, 190.506, 0.21, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18316;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5411, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18316, 5411, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59613, 5411, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59613, 324, 0, 3084.9, -4285, 110.143, 4.667, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18317;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5412, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18317, 5412, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59614, 5412, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59614, 324, 1, 4534.6, -4125, 935.633, 2.138, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18318;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5413, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18318, 5413, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59615, 5413, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59615, 324, 1, -7891, -886, -272, 4.081, 0, 0, 0.891676, -0.452675, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18319;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5414, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18319, 5414, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59616, 5414, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59616, 324, 1, -7450, -276, -212, 3.872, 0, 0, 0.933994, -0.357288, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18320;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5415, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18320, 5415, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59617, 5415, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59617, 324, 0, -8253, -1696, 157.937, -1, 0, 0, -0.284016, 0.95882, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18321;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5416, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18321, 5416, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59618, 5416, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59618, 324, 0, -7686, -1651, 144.924, 0.297, 0, 0, 0.147809, 0.989016, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18322;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5417, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18322, 5417, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59619, 5417, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59619, 324, 1, 7654.09, -3976, 703.508, 4.91, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18323;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5418, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18323, 5418, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59620, 5418, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59620, 324, 1, 8202.19, -3942, 706.008, 4.423, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18324;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5419, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18324, 5419, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59621, 5419, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59621, 324, 0, -8395, -904, 226.44, 4.017, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18325;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5420, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18325, 5420, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59622, 5420, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59622, 324, 0, 2066.22, -4357, 14.418, 0.118, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18326;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5421, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18326, 5421, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59623, 5421, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59623, 324, 1, -7116, -1463, -244, 1.431, 0, 0, 0.656059, 0.75471, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18327;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5422, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18327, 5422, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59624, 5422, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59624, 324, 0, -7617, -1882, 150.716, 2.204, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18328;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5423, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18328, 5423, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59625, 5423, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59625, 324, 1, 4258.43, -6701, 2.534, 4.375, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18329;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5424, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18329, 5424, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59626, 5424, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59626, 324, 0, -8408, -1149, 189.524, 1.711, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18330;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5425, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18330, 5425, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59627, 5425, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59627, 324, 1, 5993.62, -4111, 887.008, 0.455, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18331;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5426, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18331, 5426, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59628, 5426, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59628, 324, 1, 6088.6, -4111, 876.196, 6.183, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18332;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5427, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18332, 5427, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59629, 5427, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59629, 324, 1, 6091.56, -4269, 752.951, 6.117, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18333;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5428, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18333, 5428, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59630, 5428, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59630, 324, 1, 4810.66, -4697, 871.996, 4.035, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18334;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5429, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18334, 5429, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59631, 5429, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59631, 324, 1, 4448.43, -4533, 909.704, 5.375, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18335;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5430, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18335, 5430, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59632, 5430, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59632, 324, 0, -7925, -1032, 135.583, 5.296, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18336;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5431, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18336, 5431, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59633, 5431, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59633, 324, 0, 2013.31, -4387.05, 29.4598, 3.26377, 0, 0, -0.998135, 0.0610518, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18337;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5432, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18337, 5432, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59634, 5432, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59634, 324, 1, 4374.35, -7344, 97.459, 1.679, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18338;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5433, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18338, 5433, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59635, 5433, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59635, 324, 0, -7837, -1429, 149.231, 3.251, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18339;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5434, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18339, 5434, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59636, 5434, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59636, 324, 1, 6726.77, -5284, 780.411, 5.036, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18340;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5435, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18340, 5435, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59637, 5435, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59637, 324, 1, 3405.14, -5357, 115.393, 2.845, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18341;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5436, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18341, 5436, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59638, 5436, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59638, 324, 0, -7779, -1412, 145.943, 3.251, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18342;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5437, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18342, 5437, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59639, 5437, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59639, 324, 0, 3229.56, -4845, 187.63, 4.705, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18343;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5438, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18343, 5438, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59640, 5438, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59640, 324, 0, -7898, -2251, 130.633, 2.799, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18344;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5439, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18344, 5439, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59641, 5439, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59641, 324, 0, -8244, -1502, 143.712, 3.53, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18345;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5440, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18345, 5440, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59642, 5440, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59642, 324, 1, 6763.31, -5184, 747.824, 3.742, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18346;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5441, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18346, 5441, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59643, 5441, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59643, 324, 1, 4151.98, -7854, 9.318, 4.953, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18348;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5442, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18348, 5442, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59644, 5442, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59644, 324, 0, 2100.48, -5042, 50.667, 2.594, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18349;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5443, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18349, 5443, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59645, 5443, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59645, 324, 0, -7749, -2147, 130.838, 5.287, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18350;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5444, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18350, 5444, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59646, 5444, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59646, 324, 0, -7588, -1434, 167.053, 1.001, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18351;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5445, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18351, 5445, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59647, 5445, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59647, 324, 0, -7873, -1506, 142.387, 4.268, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18352;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5446, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18352, 5446, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59648, 5446, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59648, 324, 0, 2538.26, -4956, 92.761, 4.202, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18353;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5447, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18353, 5447, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59649, 5447, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59649, 324, 1, 4679.48, -6822, 153.123, 1.575, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18354;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5448, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18354, 5448, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59650, 5448, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59650, 324, 0, -8176, -1155, 145.782, -1, 0, 0, -0.275637, 0.961262, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18355;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5449, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18355, 5449, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59651, 5449, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59651, 324, 1, 8221.88, -3709, 730.952, 5.719, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18356;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5450, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18356, 5450, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59652, 5450, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59652, 324, 1, 4171.92, -7807, 15.076, 1.987, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18357;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5451, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18357, 5451, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59653, 5451, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59653, 324, 1, 6431.27, -4066, 660.155, 3.654, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18358;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5452, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18358, 5452, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59654, 5452, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59654, 324, 1, 4480.98, -4024, 944.566, 1.679, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18359;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5453, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18359, 5453, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59655, 5453, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59655, 324, 0, -7474, -2193, 165.399, 0.514, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18360;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5454, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18360, 5454, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59656, 5454, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59656, 324, 0, -7585, -1413, 166.112, 0.574, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18361;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5455, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18361, 5455, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59657, 5455, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59657, 324, 0, -8390, -1300, 226.345, 4.689, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18362;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5456, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18362, 5456, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59658, 5456, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59658, 324, 1, 4538.1, -4507, 890.827, 1.93, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18363;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5457, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18363, 5457, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59659, 5457, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59659, 324, 1, -6947.94, -411.617, -268.135, 2.93214, 0, 0, 0.994521, 0.104535, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18364;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5458, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18364, 5458, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59660, 5458, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59660, 324, 1, -7376, -349, -251, 3.063, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18365;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5459, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18365, 5459, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59661, 5459, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59661, 324, 1, 4427.41, -4133, 950.8, 2.138, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18366;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5460, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18366, 5460, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59662, 5460, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59662, 324, 1, 6460.43, -4134, 661.69, 2.794, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18367;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5461, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18367, 5461, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59663, 5461, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59663, 324, 0, 2988.13, -1654, 157.122, 0.27, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18368;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5462, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18368, 5462, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59664, 5462, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59664, 324, 0, -7619, -1397, 139.907, 6.022, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18369;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5463, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18369, 5463, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59665, 5463, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59665, 324, 0, -8340, -952, 192.988, 2.283, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18371;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5464, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18371, 5464, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59666, 5464, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59666, 324, 1, 6710.13, -5246.41, 780.909, 1.85005, 0, 0, 0.798635, 0.601815, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18372;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5465, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18372, 5465, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59667, 5465, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59667, 324, 1, 4452.72, -6417, 138.061, 6.036, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18373;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5466, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18373, 5466, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59668, 5466, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59668, 324, 1, 8097.35, -3744, 725.025, 0.209, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18374;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5467, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18374, 5467, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59669, 5467, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59669, 324, 1, 6588.5, -4077, 658.43, 4.681, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18375;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5468, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18375, 5468, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59670, 5468, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59670, 324, 1, 4279.52, -4350, 917.696, 3.944, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18376;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5469, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18376, 5469, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59671, 5469, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59671, 324, 1, -7567, -837, -270, 4.452, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18377;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5470, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18377, 5470, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59672, 5470, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59672, 324, 1, -7733, -615, -265, 5.203, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18378;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5471, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18378, 5471, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59673, 5471, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59673, 324, 0, 2637.88, -5343, 160.707, 3.787, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18379;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5472, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18379, 5472, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59674, 5472, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59674, 324, 0, -7509, -2105, 130.276, 2.409, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18380;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5473, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18380, 5473, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59675, 5473, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59675, 324, 1, 3166.08, -5141, 132.286, 3.884, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18381;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5474, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18381, 5474, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59676, 5474, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59676, 324, 1, -7349, -1242, -273, 1.556, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18382;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5475, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18382, 5475, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59677, 5475, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59677, 324, 0, -8145, -2009, 129.835, 5.286, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18383;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5476, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18383, 5476, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59678, 5476, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59678, 324, 1, 5298.63, -4613, 702.009, 1.385, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5477, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18384, 5477, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59679, 5477, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59679, 324, 1, -5717, 3690.75, -10, 3.444, 0, 0, 0, 0, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=18385;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5478, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18385, 5478, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59680, 5478, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59680, 324, 0, 3238.17, -4762, 167.673, 2.786, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18386;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5479, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18386, 5479, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59681, 5479, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59681, 324, 0, 3195.56, -4706, 115.458, 0.272, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5480, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18387, 5480, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59682, 5480, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59682, 324, 0, 3475.26, -4889, 178.533, 2.534, 0, 0, 0, 0, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=18388;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5481, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18388, 5481, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59683, 5481, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59683, 324, 1, 5916.34, -4371, 752.483, 1.517, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18389;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5482, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18389, 5482, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59684, 5482, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59684, 324, 1, -7223, -1171, -249, 4.833, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18390;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5483, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18390, 5483, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59685, 5483, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59685, 324, 0, -7565, -2388, 145.91, 1.152, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18391;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5484, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18391, 5484, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59686, 5484, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59686, 324, 0, 3337.24, -5032, 180.539, 4.039, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18392;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5485, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18392, 5485, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59687, 5485, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59687, 324, 0, -7816, -2376, 148.039, 2.799, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18393;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5486, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18393, 5486, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59688, 5486, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59688, 324, 1, 3239.56, -5208, 92.67, 1.861, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18394;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5487, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18394, 5487, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59689, 5487, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59689, 324, 1, -7564, -981, -260, -1, 0, 0, -0.414694, 0.909961, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18395;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5488, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18395, 5488, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59690, 5488, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59690, 324, 0, -7809, -2059, 134.034, 4.457, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18396;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5489, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18396, 5489, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59691, 5489, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59691, 324, 1, 6182.17, -4203, 755.085, 0.555, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18397;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5490, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18397, 5490, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59692, 5490, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59692, 324, 1, 6400.92, -3956, 673.104, 1.316, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18398;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5491, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18398, 5491, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59693, 5491, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59693, 324, 1, 4230.15, -5266, 124.357, 0.247, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18400;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5492, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18400, 5492, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59694, 5492, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59694, 324, 0, 2518.35, -5008, 84.315, 4.833, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18401;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5493, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18401, 5493, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59695, 5493, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59695, 324, 0, 3257.45, -4868, 189.238, 5.547, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18402;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5494, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18402, 5494, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59696, 5494, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59696, 324, 0, 3028.59, -1400, 152.435, 0.474, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18403;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5495, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18403, 5495, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59697, 5495, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59697, 324, 1, 7735.07, -3887, 692.712, 0.847, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18405;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5496, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18405, 5496, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59698, 5496, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59698, 324, 0, -7905, -1491, 155.858, 0.227, 0, 0, 0.113203, 0.993572, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18406;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5497, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18406, 5497, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59699, 5497, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59699, 324, 0, -7806, -2044, 132.982, 5.717, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18407;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5498, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18407, 5498, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59700, 5498, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59700, 324, 0, 2791.67, -1367, 145.214, 3.141, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18408;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5499, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18408, 5499, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59701, 5499, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59701, 324, 0, -8167, -1331, 136.796, -2, 0, 0, -0.87462, 0.48481, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18409;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5500, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18409, 5500, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59702, 5500, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59702, 324, 0, 3025.51, -4654, 102.757, 3.272, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18410;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5501, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18410, 5501, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59703, 5501, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59703, 324, 1, 8232.67, -3771, 721.022, 5.719, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18411;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5502, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18411, 5502, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59704, 5502, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59704, 324, 1, 6592.31, -3858, 658.55, 5.978, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18412;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5503, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18412, 5503, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59705, 5503, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59705, 324, 1, -7220, -1476, -239, 1.471, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18413;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5504, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18413, 5504, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59706, 5504, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59706, 324, 0, -7728, -2132, 131.229, 0.009, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18414;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5505, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18414, 5505, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59707, 5505, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59707, 324, 0, -8460, -940, 228.085, 4.017, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18415;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5506, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18415, 5506, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59708, 5506, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59708, 324, 0, -7730, -1637, 135.96, 1.403, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18416;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5507, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18416, 5507, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59709, 5507, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59709, 324, 0, -8101.87, -1042.32, 141.002, 4.24115, 0, 0, -0.85264, 0.522499, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18417;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5508, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18417, 5508, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59710, 5508, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59710, 324, 1, -7210, -1486, -248, 2.228, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18418;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5509, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18418, 5509, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59711, 5509, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59711, 324, 0, -8195, -1543, 135.283, 5.99, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18419;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5510, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18419, 5510, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59712, 5510, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59712, 324, 0, 3079.61, -4495, 109.571, 4.667, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18420;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5511, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18420, 5511, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59713, 5511, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59713, 324, 1, 3782.76, -5355, 89.898, 5.075, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18421;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5512, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18421, 5512, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59714, 5512, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59714, 324, 1, -7700, -520, -267, -1, 0, 0, -0.333807, 0.942641, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18422;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5513, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18422, 5513, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59715, 5513, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59715, 324, 1, -7136, -1216, -215, 4.456, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18423;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5514, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18423, 5514, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59716, 5514, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59716, 324, 1, 6480.99, -3872, 664.57, 6.167, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18424;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5515, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18424, 5515, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59717, 5515, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59717, 324, 1, -7214, -1396, -232, 0.347, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18425;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5516, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18425, 5516, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59718, 5516, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59718, 324, 0, -8329, -912, 206.618, 6.05, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18426;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5517, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18426, 5517, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59719, 5517, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59719, 324, 1, -7681, -728, -271, 5.242, 0, 0, 0.497205, -0.867633, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18427;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5518, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18427, 5518, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59720, 5518, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59720, 324, 0, -8020, -744, 142.428, 2.042, 0, 0, 0.85264, 0.522499, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18428;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5519, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18428, 5519, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59721, 5519, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59721, 324, 1, -7453, -288, -211, 4.501, 0, 0, 0.777848, -0.628452, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18429;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5520, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18429, 5520, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59722, 5520, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59722, 324, 0, -8251, -925, 147.468, 3.536, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18430;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5521, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18430, 5521, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59723, 5521, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59723, 324, 1, -8223, -1041, -184, 2.481, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18431;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5522, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18431, 5522, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59724, 5522, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59724, 324, 0, 3004.66, -4556, 104.206, 1.796, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18432;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5523, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18432, 5523, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59725, 5523, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59725, 324, 1, -7265, -1324, -239, 2.15, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=32823;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5524, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32823, 5524, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59726, 5524, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59726, 324, 0, -7616.39, -705.041, 181.31, 0.977384, 0, 0, 0.469472, 0.882948, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=39937;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5525, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (39937, 5525, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59727, 5525, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59727, 324, 1, 2454.85, -6524.62, 13.1702, 0, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=39945;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5526, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (39945, 5526, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59728, 5526, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59728, 324, 1, -7247.48, -1466.81, -227.61, 0, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=39969;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5527, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (39969, 5527, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59729, 5527, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59729, 324, 0, 2581.64, -5454.68, 167.821, 0, 0, 0, 0, 0, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45501;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5528, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45501, 5528, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59730, 5528, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59730, 324, 0, 2955.94, -1341.01, 151.267, -1.23918, 0, 0, 0.580703, -0.814116, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45503;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5529, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45503, 5529, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59731, 5529, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59731, 324, 0, 3025.7, -1567.14, 150.424, 0.558505, 0, 0, 0.275637, 0.961262, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5530, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45504, 5530, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59732, 5530, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59732, 324, 0, 2406.24, -2344.45, 53.6882, -0.750491, 0, 0, 0.366501, -0.930418, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=45909;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5531, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45909, 5531, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59733, 5531, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59733, 324, 0, 3145.16, -4577.05, 122.343, 0.034907, 0, 0, 0.017452, 0.999848, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45916;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5532, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45916, 5532, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59734, 5532, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59734, 324, 0, 3333.25, -5021.9, 182.399, -1.23918, 0, 0, 0.580703, -0.814116, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45917;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5533, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45917, 5533, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59735, 5533, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59735, 324, 0, 2626.81, -4947.16, 94.3404, 0.296706, 0, 0, 0.147809, 0.989016, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45959;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5534, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45959, 5534, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59736, 5534, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59736, 324, 0, 2667.06, -5584.07, 166.33, 1.16937, 0, 0, 0.551937, 0.833886, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45962;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5535, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45962, 5535, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59737, 5535, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59737, 324, 0, 2129.13, -4399.78, 28.4801, -2.9147, 0, 0, 0.993572, -0.113203, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45967;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5536, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45967, 5536, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59738, 5536, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59738, 324, 0, 2581.59, -3742.31, 185.101, 2.87979, 0, 0, 0.991445, 0.130526, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=45968;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5537, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45968, 5537, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59739, 5537, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59739, 324, 0, 2145.79, -4311.39, 23.1987, 2.46091, 0, 0, 0.942641, 0.333807, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48285;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5538, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48285, 5538, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59740, 5538, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59740, 324, 1, 3259.22, -5155.35, 94.4296, -2.25148, 0, 0, 0.902585, -0.430511, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48286;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5539, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48286, 5539, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59741, 5539, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59741, 324, 1, 4813.78, -7218.07, 101.907, -0.925024, 0, 0, 0.446198, -0.894934, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48287;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5540, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48287, 5540, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59742, 5540, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59742, 324, 1, 2419.03, -6999.06, 108.771, -2.02458, 0, 0, 0.848048, -0.529919, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48288;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5541, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48288, 5541, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59743, 5541, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59743, 324, 1, 4689.64, -5369.46, 118.006, -0.279253, 0, 0, 0.139173, -0.990268, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48289;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5542, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48289, 5542, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59744, 5542, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59744, 324, 1, 3827.91, -6155.92, 4.86859, 1.91986, 0, 0, 0.819152, 0.573576, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48290;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5543, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48290, 5543, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59745, 5543, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59745, 324, 1, 4451.39, -6452.65, 138.367, 1.8326, 0, 0, 0.793353, 0.608761, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48296;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5544, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48296, 5544, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59746, 5544, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59746, 324, 1, 4702.94, -6731.23, 131.381, -1.85005, 0, 0, 0.798635, -0.601815, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48297;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5545, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48297, 5545, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59747, 5545, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59747, 324, 1, 4382.33, -6121.17, 123.339, 2.96706, 0, 0, 0.996195, 0.087156, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=48298;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5546, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48298, 5546, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59748, 5546, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59748, 324, 1, 3217.87, -5454.92, 103.901, 1.02974, 0, 0, 0.492424, 0.870356, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49004;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5547, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49004, 5547, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59749, 5547, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59749, 324, 1, 4860.99, -4333.66, 912.453, -0.855212, 0, 0, 0.414693, -0.909961, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49005;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5548, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49005, 5548, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59750, 5548, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59750, 324, 1, 5686.63, -5050.94, 808.882, 1.50098, 0, 0, 0.681998, 0.731354, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49007;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5549, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49007, 5549, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59751, 5549, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59751, 324, 1, 6664.74, -4017.12, 666.367, -1.65806, 0, 0, 0.737277, -0.67559, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49008;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5550, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49008, 5550, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59752, 5550, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59752, 324, 1, 4858.89, -4540.23, 888.01, 0.680678, 0, 0, 0.333807, 0.942641, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49009;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5551, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49009, 5551, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59753, 5551, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59753, 324, 1, 4312.08, -4112.96, 951.446, 0.663225, 0, 0, 0.325568, 0.945519, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49010;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5552, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49010, 5552, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59754, 5552, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59754, 324, 1, 5328.29, -4807.32, 704.26, -0.244346, 0, 0, 0.121869, -0.992546, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49011;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5553, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49011, 5553, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59755, 5553, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59755, 324, 1, 5896.12, -4029.86, 597.128, 0.872665, 0, 0, 0.422618, 0.906308, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49012;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5554, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49012, 5554, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59756, 5554, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59756, 324, 1, 8035.92, -4208.95, 709.697, -2.04204, 0, 0, 0.85264, -0.522498, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=49013;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5555, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49013, 5555, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59757, 5555, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59757, 324, 1, 6706.28, -5120.3, 744.64, 0.523599, 0, 0, 0.258819, 0.965926, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5556, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016402, 5556, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59758, 5556, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59758, 324, 1, 4708.47, -3769.68, 946.854, 2.43478, 0, 0, 0.938199, 0.346096, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5557, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016398, 5557, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59759, 5557, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59759, 324, 1, 4843.47, -3046.73, 1075.74, 0.080225, 0, 0, 0.0401017, 0.999196, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5558, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016397, 5558, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59760, 5558, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59760, 324, 1, 4858.22, -3156.11, 1079.81, 3.98524, 0, 0, 0.912344, -0.409424, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5559, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016394, 5559, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59761, 5559, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59761, 324, 1, 4948.06, -3059.59, 1066.62, 0.67393, 0, 0, 0.330624, 0.943762, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5560, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016392, 5560, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59762, 5560, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59762, 324, 1, 4938.07, -3156.22, 1067.56, 5.97298, 0, 0, 0.154482, -0.987996, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5561, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016382, 5561, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59763, 5561, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59763, 324, 1, 4621.17, -3481.06, 1031.61, 2.10963, 0, 0, 0.86981, 0.493388, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5562, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016371, 5562, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59764, 5562, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59764, 324, 1, 4699.02, -2705.83, 1188.25, 2.34543, 0, 0, 0.921806, 0.387652, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5563, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016363, 5563, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59765, 5563, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59765, 324, 1, 4802.46, -2324.84, 1230.93, 2.83396, 0, 0, 0.988194, 0.15321, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5564, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016360, 5564, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59766, 5564, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59766, 324, 1, 4624.95, -1987.07, 1165.18, 3.6274, 0, 0, 0.970644, -0.24052, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5565, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016350, 5565, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59767, 5565, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59767, 324, 1, 5433.38, -1595.08, 1399.95, 0.320385, 0, 0, 0.159508, 0.987197, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5566, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016349, 5566, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59768, 5566, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59768, 324, 1, 5395.03, -1455.17, 1406.8, 4.83562, 0, 0, 0.662223, -0.749307, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5567, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016348, 5567, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59769, 5567, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59769, 324, 1, 5475.84, -1494, 1405.38, 5.46787, 0, 0, 0.396458, -0.918053, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5568, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016347, 5568, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59770, 5568, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59770, 324, 1, 5526.18, -1564.3, 1401.24, 4.59294, 0, 0, 0.748053, -0.663638, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5569, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016345, 5569, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59771, 5569, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59771, 324, 1, 5350.65, -1607.06, 1373.57, 0.693315, 0, 0, 0.339756, 0.940514, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5570, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016331, 5570, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59772, 5570, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59772, 324, 1, 5231.71, -1212.43, 1368.71, 0.892896, 0, 0, 0.431764, 0.901986, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5571, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016325, 5571, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59773, 5571, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59773, 324, 1, 5148.18, -1636.9, 1366.34, 4.8268, 0, 0, 0.665523, -0.746377, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5572, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016320, 5572, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59774, 5572, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59774, 324, 1, 5393.91, -2199.52, 1327.5, 2.72508, 0, 0, 0.978393, 0.206754, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5573, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016312, 5573, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59775, 5573, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59775, 324, 1, 4900.72, -2662.86, 1437, 2.58226, 0, 0, 0.961148, 0.276035, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5574, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5016295, 5574, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59776, 5574, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59776, 324, 1, 5723.42, -3067.1, 1573.54, 5.27262, 0, 0, 0.484053, -0.875039, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=397179;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5575, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (397179, 5575, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59777, 5575, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59777, 324, 0, 1878.26, -5440.92, 101.205, 5.76414, 0, 0, 0.25662, -0.966512, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=397178;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5576, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (397178, 5576, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59778, 5576, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59778, 324, 0, 1788.24, -5233.42, 107.012, 6.02727, 0, 0, 0.127609, -0.991825, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=397177;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5577, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (397177, 5577, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59779, 5577, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59779, 324, 0, 1522.82, -5415.89, 100.902, 1.91256, 0, 0, 0.817054, 0.576562, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5578, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (397162, 5578, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59780, 5578, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59780, 324, 1, -3584.18, 841.875, 137.485, 2.77776, 0, 0, 0.983498, 0.180917, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=397176;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5579, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (397176, 5579, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59781, 5579, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59781, 324, 0, 1722.95, -5542.35, 109.343, 0.286794, 0, 0, 0.142906, 0.989736, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5580, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (397163, 5580, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59782, 5580, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59782, 324, 1, -3612.56, 896.86, 149.372, 1.81407, 0, 0, 0.787681, 0.616084, 2700, 2700, 1, 100, 2);

DELETE FROM `pool_gameobject` WHERE `guid`=18347;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5581, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18347, 5581, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59783, 5581, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59783, 324, 1, 5199.74, -4899.9, 698.408, 5.48033, 0, 0, -0.390731, 0.920505, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18370;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5582, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18370, 5582, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59784, 5582, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59784, 324, 1, 4769.44, -4965.14, 895.611, 3.9619, 0, 0, -0.91706, 0.39875, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18399;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5583, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18399, 5583, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59785, 5583, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59785, 324, 1, 5166.9, -4775.03, 701.027, 4.46804, 0, 0, -0.788011, 0.615662, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18404;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5584, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18404, 5584, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59786, 5584, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59786, 324, 1, 6466.51, -3884.6, 663.217, 4.81711, 0, 0, -0.66913, 0.743145, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18433;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5585, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18433, 5585, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59787, 5585, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59787, 324, 1, 6556.81, -5255.44, 754.396, 4.20625, 0, 0, -0.861628, 0.507539, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18503;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5586, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18503, 5586, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59788, 5586, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59788, 324, 1, 6756.85, -5040.41, 730.881, 4.71239, 0, 0, -0.707107, 0.707107, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18504;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5587, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18504, 5587, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59789, 5587, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59789, 324, 1, 6849.58, -5146.53, 703.295, 4.18879, 0, 0, -0.866025, 0.500001, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18514;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5588, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18514, 5588, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59790, 5588, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59790, 324, 1, 5654.18, -4905.9, 806.267, 4.90438, 0, 0, -0.636078, 0.771625, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18515;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5589, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18515, 5589, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59791, 5589, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59791, 324, 1, 6654.32, -5345.31, 771.254, 5.89921, 0, 0, -0.190808, 0.981627, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18516;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5590, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18516, 5590, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59792, 5590, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59792, 324, 0, 2285.39, -2334.25, 63.6795, 4.25861, 0, 0, -0.848047, 0.529921, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18517;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5591, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18517, 5591, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59793, 5591, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59793, 324, 0, 2284.89, -2227.45, 56.8073, 4.95674, 0, 0, -0.615661, 0.788011, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18518;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5592, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18518, 5592, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59794, 5592, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59794, 324, 0, 2166.57, -4987.38, 56.6599, 4.15388, 0, 0, -0.874619, 0.48481, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18519;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5593, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18519, 5593, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59795, 5593, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59795, 324, 0, 2864.45, -5423.49, 173.813, 5.3058, 0, 0, -0.469471, 0.882948, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18520;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5594, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18520, 5594, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59796, 5594, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59796, 324, 0, 2733.85, -5332.87, 164.487, 2.53072, 0, 0, 0.953716, 0.300708, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18521;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5595, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18521, 5595, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59797, 5595, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59797, 324, 0, 2216.45, -5171.12, 55.044, 4.85202, 0, 0, -0.656058, 0.75471, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18522;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5596, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18522, 5596, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59798, 5596, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59798, 324, 0, 2636.65, -5313.67, 167.467, 4.25861, 0, 0, -0.848047, 0.529921, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18523;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5597, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18523, 5597, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59799, 5597, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59799, 324, 0, 3215.79, -4715.01, 154.944, 6.05629, 0, 0, -0.113203, 0.993572, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18524;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5598, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18524, 5598, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59800, 5598, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59800, 324, 0, 2482.73, -3862.86, 182.901, 4.79966, 0, 0, -0.67559, 0.737278, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18525;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5599, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18525, 5599, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59801, 5599, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59801, 324, 0, 3116.54, -4833.71, 108.094, 1.06465, 0, 0, 0.507538, 0.861629, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18533;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5600, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18533, 5600, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59802, 5600, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59802, 324, 0, 2139.89, -5152.19, 59.9362, 1.43117, 0, 0, 0.656058, 0.75471, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18555;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5601, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18555, 5601, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59803, 5601, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59803, 324, 1, 3648.63, -6378.19, -52.0457, 3.94445, 0, 0, -0.920505, 0.390732, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18557;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5602, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18557, 5602, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59804, 5602, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59804, 324, 1, 4210.82, -5213.95, 116.943, 4.67748, 0, 0, -0.719339, 0.694659, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18563;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5603, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18563, 5603, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59805, 5603, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59805, 324, 0, -7832, -1379.85, 159.736, 5.2709, 0, 0, -0.484809, 0.87462, 2700, 2700, 1, 100, 12);

DELETE FROM `pool_gameobject` WHERE `guid`=18566;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5604, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18566, 5604, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59806, 5604, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59806, 324, 1, -7013.39, -237.771, -214.978, 4.17134, 0, 0, -0.870356, 0.492424, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5605, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5017123, 5605, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59807, 5605, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59807, 324, 0, 2439.45, -2985.88, 196.693, 2.68556, 0, 0, 0.974117, 0.226044, 2700, 2700, 1, 100, 0);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5606, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012216, 5606, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59808, 5606, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59808, 324, 1, -8237.38, -6859.78, 76.8462, 1.22486, 0, 0, 0.574858, 0.818253, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5607, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012214, 5607, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59809, 5607, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59809, 324, 1, -8253.32, -6887.99, 41.5111, 1.33834, 0, 0, 0.620336, 0.784337, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5608, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012208, 5608, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59810, 5608, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59810, 324, 1, -7699.72, -7141.23, 16.8222, 0.687943, 0, 0, 0.337229, 0.941423, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5609, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012201, 5609, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59811, 5609, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59811, 324, 1, -8998.21, -7181.17, 12.6543, 1.73994, 0, 0, 0.764309, 0.64485, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5610, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012189, 5610, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59812, 5610, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59812, 324, 1, -8026.37, -7021.24, 48.1217, 3.38346, 0, 0, 0.992696, -0.12064, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5611, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012187, 5611, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59813, 5611, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59813, 324, 1, -8317.56, -7174.85, 21.749, 2.15413, 0, 0, 0.880571, 0.473913, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5612, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012181, 5612, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59814, 5612, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59814, 324, 1, -8227.53, -7014.87, 131.071, 5.939, 0, 0, 0.171243, -0.985229, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5613, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012175, 5613, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59815, 5613, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59815, 324, 1, -8420.87, -6766.39, 67.561, 5.1859, 0, 0, 0.52153, -0.853233, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5614, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5012171, 5614, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59816, 5614, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59816, 324, 1, -8613.8, -6576.49, 11.6164, 4.78261, 0, 0, 0.681849, -0.731493, 2700, 2700, 1, 100, 12);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5615, 1, 'Small Thorium Vein / Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (5018078, 5615, 10, 'Rich Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (59817, 5615, 90, 'Small Thorium Vein');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`, `spawn_flags`) VALUES (59817, 324, 1, 16246.8, 16384, -64.3803, 2.44646, 0, 0, 0.940205, 0.340609, 300, 300, 1, 100, 0);


