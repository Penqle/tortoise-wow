-- Remove teleport to Isillien from In Dreams script.
DELETE FROM `creature_ai_events` WHERE `creature_id`=1840;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (184001, 1840, 0, 0, 5, 100, 0, 10000, 15000, 0, 0, 184001, 0, 0, 'Grand Inquisitor Isillien - Cast Dominate Mind (Phase 1)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (184002, 1840, 0, 31, 0, 100, 0, 5944, 1, 0, 0, 184002, 0, 0, 'Grand Inquisitor Isillien - Begin Battle on Map Event');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (184003, 1840, 0, 0, 6, 100, 1, 1000, 1000, 1000, 1000, 184003, 0, 0, 'Grand Inquisitor Isillien - Keep Attacking Taelan (Phase 0)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (184004, 1840, 0, 21, 5, 100, 0, 0, 0, 0, 0, 184004, 0, 0, 'Grand Inquisitor Isillien - Attack Players on Reached Home (Phase 1)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (184005, 1840, 0, 6, 3, 100, 0, 0, 0, 0, 0, 184005, 0, 0, 'Grand Inquisitor Isillien - Set Phase on Death (Phase 2)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (184006, 1840, 84, 9, 5, 100, 1, 20, 999, 10000, 10000, 184006, 0, 0, 'Grand Inquisitor Isillien - Summon Player if Not Reachable');
DELETE FROM `creature_ai_scripts` WHERE `id`=184004;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(184004, 0, 1, 4, 46, 131970, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grand Inquisitor Isillien - Remove Flags'),
(184004, 0, 2, 26, 30, 0, 0, 0, 5944, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grand Inquisitor Isillien - Attack Player for In Dreams Event');
-- Instead spawns guards in tower to prevent players from going there and breaking the quest.
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2699.06, -1925.7, 72.144, 4.72, 0, 'In Dreams: Spawn Crimson Elite 3'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2713.72, -1933.7, 72.14, 4.02, 0, 'In Dreams: Spawn Crimson Elite 4'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2674.69, -1940.83, 72.14, 5.92, 0, 'In Dreams: Spawn Crimson Elite 5'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2675.06, -1956.2, 72.14, 0.37, 0, 'In Dreams: Spawn Crimson Elite 6'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2688.435, -1948.59, 80.03, 0, 0, 'In Dreams: Spawn Crimson Elite 7'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2699.16, -1942.92, 85.86, 4.28, 0, 'In Dreams: Spawn Crimson Elite 8'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2699.31, -1954.16, 91.46, 2.11, 0, 'In Dreams: Spawn Crimson Elite 9'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2700.12, -1940.91, 107.24, 4.3, 0, 'In Dreams: Spawn Crimson Elite 10'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2704.67, -1946.04, 107.24, 3.5, 0, 'In Dreams: Spawn Crimson Elite 11'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2704.01, -1952.73, 107.24, 2.73, 0, 'In Dreams: Spawn Crimson Elite 12'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2699.15, -1957.12, 107.24, 1.95, 0, 'In Dreams: Spawn Crimson Elite 13'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2693.51, -1940.67, 107.24, 5.1, 0, 'In Dreams: Spawn Crimson Elite 14'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2688.45, -1945.12, 107.24, 5.83, 0, 'In Dreams: Spawn Crimson Elite 15'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2713.65, -1985.63, 78.31, 1.54, 0, 'In Dreams: Spawn Crimson Elite 16'),
(184232, 2, 0, 10, 12128, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2733.17, -1956.63, 69.17, 3.45, 0, 'In Dreams: Spawn Crimson Elite 17');
