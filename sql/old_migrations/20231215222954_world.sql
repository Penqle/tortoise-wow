
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582250,61891,0,0,0,0,-4118.95,-3714.1,200.092,1.9429,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582250;
DELETE FROM creature_addon WHERE guid=2582250;
DELETE FROM creature_movement WHERE id=2582250;
DELETE FROM game_event_creature WHERE guid=2582250;
DELETE FROM game_event_creature_data WHERE guid=2582250;
DELETE FROM creature_battleground WHERE guid=2582250;

-- Changes by JOE
UPDATE `creature` SET `position_x` = 3399.516846, `position_y` = -2632.122314, `position_z` = 133.426254, `orientation` = 3.248074 WHERE `guid` = 2581125;
UPDATE `creature` SET `position_x` = 3407.392822, `position_y` = -2620.117920, `position_z` = 133.874344, `orientation` = 3.768794 WHERE `guid` = 2581124;
UPDATE `creature` SET `position_x` = 3416.546875, `position_y` = -2645.054932, `position_z` = 132.350388, `orientation` = 3.281840 WHERE `guid` = 2581123;
UPDATE `creature` SET `position_x` = 3414.681396, `position_y` = -2643.349121, `position_z` = 132.532349, `orientation` = 3.065855 WHERE `guid` = 2581123;
UPDATE `creature` SET `position_x` = 3423.572754, `position_y` = -2646.075195, `position_z` = 132.104767, `orientation` = 3.185236 WHERE `guid` = 2581123;
UPDATE `creature` SET `position_x` = 3412.291504, `position_y` = -2644.167725, `position_z` = 132.590134, `orientation` = 3.143611 WHERE `guid` = 2581123;
UPDATE `creature` SET `position_x` = 3396.685791, `position_y` = -2635.473145, `position_z` = 133.385025, `orientation` = 3.116119 WHERE `guid` = 2581125;
UPDATE `creature` SET `position_x` = 3400.666748, `position_y` = -2620.182617, `position_z` = 133.947769, `orientation` = 2.880502 WHERE `guid` = 2581124;
UPDATE `creature` SET `position_x` = 3402.313477, `position_y` = -2617.576660, `position_z` = 134.048126, `orientation` = 2.550635 WHERE `guid` = 2581124;
UPDATE `creature` SET `position_x` = 3422.009277, `position_y` = -2644.609375, `position_z` = 132.220993, `orientation` = 3.057214 WHERE `guid` = 2581123;
UPDATE `creature` SET `position_x` = 3418.624512, `position_y` = -2646.963135, `position_z` = 132.117691, `orientation` = 2.997524 WHERE `guid` = 2581123;
