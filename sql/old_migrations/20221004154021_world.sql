-- Periodically remove PvP flag from Helboar. No idea how it gets flagged.
DELETE FROM `creature_ai_events` WHERE `creature_id`=5993;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (599301, 5993, 0, 4, 0, 50, 0, 0, 0, 0, 0, 599301, 0, 0, 'Helboar - Cast Rushing Charge on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (599302, 5993, 0, 1, 0, 50, 1, 1000, 1000, 1000, 1000, 599302, 0, 0, 'Helboar - Remove PvP Flag OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=599302;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(599302, 0, 0, 4, 46, 4096, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Helboar - Remove PvP Flag');
