-- Events list for Tortured Sentinel
DELETE FROM `creature_ai_events` WHERE `creature_id`=12179;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217901, 12179, 0, 11, 0, 100, 0, 0, 0, 0, 0, 1217901, 0, 0, 'Tortured Sentinel - Set Random Phase on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217902, 12179, 0, 6, 6, 50, 0, 0, 0, 0, 0, 1217902, 0, 0, 'Tortured Sentinel - Cast Summon 1 Hive\'Ashi Drones on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217903, 12179, 0, 6, 5, 50, 0, 0, 0, 0, 0, 1217903, 0, 0, 'Tortured Sentinel - Cast Summon 2 Hive\'Ashi Drones on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217904, 12179, 0, 6, 3, 50, 0, 0, 0, 0, 0, 1217904, 0, 0, 'Tortured Sentinel - Cast Summon 3 Hive\'Ashi Drones on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217901;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217901, 0, 0, 45, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Set Random Phase 1-3');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217902;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217902, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Cast Spell Summon Hive Ashi Drones'),
(1217902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8619, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217903;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217903, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Cast Spell Summon Hive Ashi Drones'),
(1217903, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Cast Spell Summon Hive Ashi Drones'),
(1217903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8619, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217904;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217904, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Cast Spell Summon Hive Ashi Drones'),
(1217904, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Cast Spell Summon Hive Ashi Drones'),
(1217904, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Cast Spell Summon Hive Ashi Drones'),
(1217904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8619, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Sentinel - Say Text');

-- Events list for Tortured Druid
DELETE FROM `creature_ai_events` WHERE `creature_id`=12178;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217801, 12178, 0, 11, 0, 100, 0, 0, 0, 0, 0, 1217801, 0, 0, 'Tortured Druid - Set Random Phase on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217802, 12178, 0, 6, 6, 50, 0, 0, 0, 0, 0, 1217802, 0, 0, 'Tortured Druid - Cast Summon 1 Hive\'Ashi Drones on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217803, 12178, 0, 6, 5, 50, 0, 0, 0, 0, 0, 1217803, 0, 0, 'Tortured Druid - Cast Summon 2 Hive\'Ashi Drones on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1217804, 12178, 0, 6, 3, 50, 0, 0, 0, 0, 0, 1217804, 0, 0, 'Tortured Druid - Cast Summon 3 Hive\'Ashi Drones on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217801, 0, 0, 45, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Set Random Phase 1-3');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217802;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217802, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Cast Spell Summon Hive Ashi Drones'),
(1217802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8619, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217803;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217803, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Cast Spell Summon Hive Ashi Drones'),
(1217803, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Cast Spell Summon Hive Ashi Drones'),
(1217803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8619, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=1217804;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1217804, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Cast Spell Summon Hive Ashi Drones'),
(1217804, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Cast Spell Summon Hive Ashi Drones'),
(1217804, 0, 0, 15, 21327, 7, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Cast Spell Summon Hive Ashi Drones'),
(1217804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8619, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Druid - Say Text');
