-- Reduce Marlos Catos spam.
DELETE FROM `creature_ai_events` WHERE `creature_id`=51252;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (5125201, 51252, 0, 1, 0, 100, 1, 10000, 30000, 900000, 1200000, 5125201, 0, 0, 'Marlos Catos - Say Text OOC');


