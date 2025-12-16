-- Fix Blastenheimer 5000 Ultra Cannon.
DELETE FROM `spell_mod` WHERE `id`=24742;
INSERT INTO `spell_mod` (`Id`, `AttributesEx2`, `Comment`) VALUES (24742, 4, 'Magic Wings - Ignore LoS');
UPDATE `gameobject_template` SET `data10`=24832 WHERE `entry`=180515;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (24730, 1, -1327.66, 85.9815, 134.169, 3.559);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (24831, 0, -9569.18, -16.108, 68.2725, 4.9);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id`=180515);
DELETE FROM `gameobject` WHERE `id`=180515;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (8658, 180515, 0, -9569.68, -13.0052, 63.4714, 4.92183, 0, 0, -0.62932, 0.777146, 25, 25, 100, 1, 0, 0);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (8658, 4);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (7705, 180452, 1, -1324.73, 87.0376, 129.707, 3.50812, 0, 0, -0.983254, 0.182238, 25, 25, 100, 1, 0, 0);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (7705, 5);
DELETE FROM `gameobject_scripts` WHERE `id`=8658;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8658, 0, 15, 24831, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Elwynn) - Cast Spell Cannon Prep (Teleport)');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8658, 0, 15, 24754, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Elwynn) - Cast Spell Cannon Prep (Stun)');
DELETE FROM `gameobject_scripts` WHERE `id`=7705;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7705, 0, 15, 24730, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Mulgore) - Cast Spell Cannon Prep (Teleport)');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7705, 0, 15, 24754, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Mulgore) - Cast Spell Cannon Prep (Stun)');
DELETE FROM `creature` WHERE `guid` IN (12436, 12437);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (12436, 15218, 0, 0, 0, 0, -9570.28, -9.95068, 63.5196, 6.12611, 120, 120, 0, 100, 100, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (12437, 15218, 0, 0, 0, 1, -1324.94, 87.0497, 129.79, 4.85202, 120, 120, 0, 100, 100, 0, 0, 0);
DELETE FROM `game_event_creature` WHERE `guid` IN (12436, 12437);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (12436, 4);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (12437, 5);
UPDATE `creature_template` SET `faction`=114, `level_min`=60, `level_max`=60, `health_min`=4120, `health_max`=4120, `unit_flags`=33555200, `speed_walk`=1, `speed_run`=1.14286, `base_attack_time`=2000 WHERE `entry`=15218;
UPDATE `creature_template` SET `display_id1`=15435, `display_id2`=0 WHERE `entry`=15214;

