-- Events list for Shellcoin Promoter
DELETE FROM `creature_ai_events` WHERE `creature_id`=51237;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (5123701, 51237, 85, 10, 0, 100, 1, 1, 20, 60000, 120000, 5123701, 0, 0, 'Shellcoin Promoter - Follow Player in LoS');
