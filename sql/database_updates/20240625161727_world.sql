-- Events list for Void Zone
DELETE FROM `creature_ai_events` WHERE `creature_id`=16697;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1669701, 16697, 0, 11, 0, 100, 1, 0, 0, 0, 0, 1669701, 0, 0, 'Void Zone - Disable Melee Attack and Combat Movement on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1669702, 16697, 0, 7, 0, 100, 1, 0, 0, 0, 0, 1669701, 0, 0, 'Void Zone - Disable Melee Attack and Combat Movement on Evade');
DELETE FROM `creature_ai_scripts` WHERE `id`=1669701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1669701, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Void Zone - Disable Melee Attack'),
(1669701, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Void Zone - Disable Combat Movement');
UPDATE `creature_template` SET `auras`='28874', `unit_flags`=33554496 WHERE `entry`=16697;
