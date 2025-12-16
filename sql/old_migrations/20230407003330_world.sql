-- Restore original spawn of Lord Condar.
DELETE FROM `creature` WHERE `id`=14268;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `movement_type`) VALUES (8690, 14268, 0, -5865.87, -4138.18, 387.28, 0.43605, 14400, 21600, 5, 1);
