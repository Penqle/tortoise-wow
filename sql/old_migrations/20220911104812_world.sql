-- Restore original Vaelastrasz the Corrupt spawn.
DELETE FROM `creature` WHERE `id`=13020;
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (84512, 13020, 0, 0, 0, 469, -7482.26, -1017.31, 408.567, 5.33713, 604800, 604800, 0, 29, 100, 0, 0, 0);

-- Restore original Lethon spawn.
DELETE FROM `creature` WHERE `id`=14888;
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (52359, 14888, 0, 0, 0, 1, -2872.66, 1884.25, 52.7336, 2.6529, 999999999, 999999999, 0, 100, 0, 0, 0, 0);
