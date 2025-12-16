-- Remove Summon Remote-Controlled Golem from Goblin Craftsmen.
DELETE FROM `creature_ai_events` WHERE `creature_id`=1731;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(173101, 1731, 0, 2, 0, 100, 0, 15, 0, 0, 0, 173101, 0, 0, 'Goblin Craftsman - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=173101;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(173101, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Goblin Craftsman - Flee');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (173103);
