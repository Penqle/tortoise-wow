
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582664,61889,0,0,0,0,-3972.44,-3496.29,285.42,5.50674,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582664,61889,0,0,0,0,-3972.44,-3496.29,285.42,5.50674,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582665,61892,0,0,0,0,-3914.12,-3480.91,285.429,0.961634,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582665,61892,0,0,0,0,-3914.12,-3480.91,285.429,0.961634,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582666,61890,0,0,0,0,-3934.22,-3418.9,285.425,1.99095,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582666,61890,0,0,0,0,-3934.22,-3418.9,285.425,1.99095,300,300,5,100,100,1,0,0);
UPDATE `creature` SET `position_x` = -3940.320557, `position_y` = -3404.906006, `position_z` = 284.233429, `orientation` = 1.721560 WHERE `guid` = 2582666;
REPLACE INTO `creature` VALUES (2582667,61889,0,0,0,0,-3945.06,-3316.54,289.05,2.10621,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582667,61889,0,0,0,0,-3945.06,-3316.54,289.05,2.10621,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582668,61889,0,0,0,0,-3927.44,-3338.15,278.482,3.98801,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582668,61889,0,0,0,0,-3927.44,-3338.15,278.482,3.98801,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582669,61893,0,0,0,0,-3901.09,-3347.12,267.2,0.936744,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582669,61893,0,0,0,0,-3901.09,-3347.12,267.2,0.936744,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582670,61890,0,0,0,0,-3915.43,-3399.18,268.072,2.93763,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582670,61890,0,0,0,0,-3915.43,-3399.18,268.072,2.93763,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582671,61892,0,0,0,0,-3871.34,-3451.31,267.202,5.77665,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582671,61892,0,0,0,0,-3871.34,-3451.31,267.202,5.77665,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582672,61889,0,0,0,0,-3846.21,-3497.99,267.219,5.98399,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582672;
DELETE FROM creature_addon WHERE guid=2582672;
DELETE FROM creature_movement WHERE id=2582672;
DELETE FROM game_event_creature WHERE guid=2582672;
DELETE FROM game_event_creature_data WHERE guid=2582672;
DELETE FROM creature_battleground WHERE guid=2582672;
REPLACE INTO `creature` VALUES (2582673,61889,0,0,0,0,-3869.5,-3483.66,276.084,5.04466,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582673,61889,0,0,0,0,-3869.5,-3483.66,276.084,5.04466,300,300,4,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582674,61890,0,0,0,0,-3843.41,-3496.81,267.225,2.88245,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582674,61890,0,0,0,0,-3843.41,-3496.81,267.225,2.88245,300,300,4,100,100,1,0,0);

-- Changes by TORTA
REPLACE INTO `creature` VALUES (2582675,61776,0,0,0,0,1912.25,2796.13,3.13782,3.72845,120,120,0,100,100,0,0,0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582676,61892,0,0,0,0,-3846.3,-3386.7,267.147,3.42359,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582676,61892,0,0,0,0,-3846.3,-3386.7,267.147,3.42359,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2582676;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,1, -3846.299561,-3386.699463,267.146942, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,2, -3858.079102,-3390.112061,269.684021, 100);

-- Changes by TORTA
DELETE FROM creature WHERE guid=2582675;
DELETE FROM creature_addon WHERE guid=2582675;
DELETE FROM creature_movement WHERE id=2582675;
DELETE FROM game_event_creature WHERE guid=2582675;
DELETE FROM game_event_creature_data WHERE guid=2582675;
DELETE FROM creature_battleground WHERE guid=2582675;

-- Changes by SHANG
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,3, -3871.526123,-3394.008057,269.929291, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,4, -3882.041748,-3397.054688,269.700226, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,5, -3898.016846,-3401.683105,267.201691, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,6, -3876.609863,-3395.142578,269.929352, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,7, -3860.160400,-3390.551514,269.929352, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,8, -3833.804443,-3383.336426,267.146759, 100);
REPLACE INTO `creature` VALUES (2582676,61892,0,0,0,0,-3846.3,-3386.7,267.147,3.42359,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2582677,61891,0,0,0,0,-3826.92,-3395.86,267.147,3.71026,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582677;
DELETE FROM creature_addon WHERE guid=2582677;
DELETE FROM creature_movement WHERE id=2582677;
DELETE FROM game_event_creature WHERE guid=2582677;
DELETE FROM game_event_creature_data WHERE guid=2582677;
DELETE FROM creature_battleground WHERE guid=2582677;
REPLACE INTO `creature` VALUES (2582678,61890,0,0,0,0,-3826.92,-3395.86,267.147,3.71026,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582678,61890,0,0,0,0,-3826.92,-3395.86,267.147,3.71026,300,300,8,100,100,1,0,0);

-- Changes by TORTA
REPLACE INTO `creature` VALUES (2582679,61700,0,0,0,0,-9535.04,83.419,58.891,2.91182,120,120,0,100,100,0,0,0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582680,61890,0,0,0,0,-3799.55,-3355.51,267.147,0.648782,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582680,61890,0,0,0,0,-3799.55,-3355.51,267.147,0.648782,300,300,8,100,100,1,0,0);

-- Changes by TORTA
DELETE FROM creature WHERE guid=2582679;
DELETE FROM creature_addon WHERE guid=2582679;
DELETE FROM creature_movement WHERE id=2582679;
DELETE FROM game_event_creature WHERE guid=2582679;
DELETE FROM game_event_creature_data WHERE guid=2582679;
DELETE FROM creature_battleground WHERE guid=2582679;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582681,61890,0,0,0,0,-3771.67,-3381.48,267.147,0.106856,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582681,61890,0,0,0,0,-3771.67,-3381.48,267.147,0.106856,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582682,61891,0,0,0,0,-3725.1,-3350.38,267.147,3.40396,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582682,61891,0,0,0,0,-3725.1,-3350.38,267.147,3.40396,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2582682;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,1, -3725.103760,-3350.381592,267.147095, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,2, -3761.646973,-3361.249512,267.147095, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,3, -3754.772461,-3379.925049,267.147095, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,4, -3737.393311,-3386.962402,267.147095, 100);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2582676,61892,0,0,0,0,-3846.3,-3386.7,267.147,3.42359,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2582676;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,1, -3846.299561,-3386.699463,267.146942, 100);

-- Changes by SHANG
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,5, -3725.072754,-3368.902588,267.147095, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,6, -3736.133301,-3336.432373,267.147095, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,7, -3748.467285,-3323.658203,267.147095, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,8, -3770.193359,-3328.679443,267.147095, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,9, -3772.396729,-3353.523682,267.147095, 100);

-- Changes by DRAGU
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582676,2, -3906.074707,-3404.401123,267.201660, 100);

-- Changes by SHANG
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582682,10, -3754.477539,-3358.926514,267.147095, 100);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2582676,61892,0,0,0,0,-3846.3,-3386.7,267.147,3.42359,300,300,0,100,100,2,0,0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582682,61891,0,0,0,0,-3725.1,-3350.38,267.147,3.40396,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2582683,61890,0,0,0,0,-3772.04,-3323.37,267.21,2.3488,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582683,61890,0,0,0,0,-3772.04,-3323.37,267.21,2.3488,300,300,8,100,100,1,0,0);
