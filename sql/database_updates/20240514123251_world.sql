-- Readd missing Love is in the Air post event npcs.
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (2355, 110);
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (2356, 111);
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (2357, 112);
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (2358, 113);
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (2359, 114);
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (2360, 115);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2355, 16075, 0, 0, 0, 1, 9666.29, 2518.08, 1360.08, 0.610865, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2356, 16075, 0, 0, 0, 0, -4866.89, -1030.8, 502.273, 5.48033, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2357, 16075, 0, 0, 0, 0, -8444.45, 334.545, 122.246, 2.26893, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2358, 16075, 0, 0, 0, 1, 1918.24, -4139.84, 40.4727, 4.85202, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2359, 16075, 0, 0, 0, 1, -1213.54, -101.545, 162.865, 1.20428, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2360, 16075, 0, 0, 0, 0, 1296.95, 331.865, -59.9998, 1.20428, 120, 120, 0, 100, 100, 0, 0, 0);

-- Remove duplicate spawns.
DELETE FROM `creature` WHERE `guid` IN (3500, 3503);
DELETE FROM `game_event_creature` WHERE `guid` IN (3500, 3503);
