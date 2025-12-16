-- Increase Ratchet Bruiser detection range and add another spawn.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (20196, 3502, 0, 0, 0, 1, -952.768, -3759.08, 5.72484, 1.93125, 275, 275, 0, 100, 0, 0, 0, 0);
UPDATE `creature_template` SET `detection_range`=25 WHERE `entry`=3502;
