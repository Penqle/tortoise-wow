-- Removing unused script actions.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (599302);

-- Events list for Helboar
DELETE FROM `creature_ai_events` WHERE `creature_id`=5993;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (599301, 5993, 0, 4, 0, 50, 0, 0, 0, 0, 0, 599301, 0, 0, 'Helboar - Cast Rushing Charge on Aggro');
