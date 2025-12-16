
-- Gaston!

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (400179, 8, 0, 0, 0, 1, -911.062, -3743.12, 9.63662, 4.00079, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2582211, 8, 0, 0, 0, 1, -916.811, -3734.8, 9.5317, 3.3418, 120, 120, 0, 100, 100, 0, 0, 0);

-- Fix reputation exploit:

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 10482;

-- Longer Winterveil!

UPDATE `game_event` SET `start_time` = '2020-12-11 12:00:00', `length` = '44640' WHERE (`entry` = '2');