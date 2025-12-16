-- Respawn Baron Geddon with correct guid and add always run flag.
DELETE FROM `creature` WHERE `id`=12056;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
(56655, 12056, 0, 0, 0, 409, 614.043, -806.284, -207.001, 6.26522, 604800, 604800, 5, 100, 100, 2, 1, 0);
DELETE FROM `creature_movement` WHERE `id`=56655;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(56655, 1, 614.043, -806.284, -207.001, 6.26522, 0, 0, 0),
(56655, 2, 606.315, -827.917, -207.079, 4.61197, 0, 0, 0),
(56655, 3, 643.941, -841.626, -208.476, 6.17097, 0, 0, 0),
(56655, 4, 665.05, -860.516, -207.939, 5.55442, 0, 0, 0),
(56655, 5, 683.156, -868.305, -205.859, 5.54656, 0, 0, 0),
(56655, 6, 698.49, -894.048, -198.829, 5.22062, 0, 0, 0),
(56655, 7, 709.458, -916.388, -193.367, 5.2324, 0, 0, 0),
(56655, 8, 723.664, -936.216, -189.509, 5.3502, 0, 0, 0),
(56655, 9, 738.198, -952.407, -186.415, 5.46408, 0, 0, 0),
(56655, 10, 723.774, -921.482, -190.889, 2.0044, 0, 0, 0),
(56655, 11, 715.838, -904.765, -194.093, 1.98869, 0, 0, 0),
(56655, 12, 704.041, -882.184, -200.104, 2.0476, 0, 0, 0),
(56655, 13, 683.195, -852.756, -207.596, 2.00047, 0, 0, 0),
(56655, 14, 666.402, -823.465, -208.744, 2.03189, 0, 0, 0),
(56655, 15, 654.615, -775.426, -208.851, 1.6981, 0, 0, 0),
(56655, 16, 626.08, -780.433, -208.263, 3.34743, 0, 0, 0);
UPDATE `creature_template` SET `speed_run`=2.28571, `flags_extra`=(`flags_extra` | 33554432) WHERE `entry`=12056;


