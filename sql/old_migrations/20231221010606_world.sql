-- Make all Flee events trigger only when not casting.
UPDATE `creature_ai_events` SET `event_flags` = (`event_flags` | 4) WHERE (`comment` LIKE "%Flee%") && `event_type` = 2;

-- Events list for Azshir the Sleepless
DELETE FROM `creature_ai_events` WHERE `creature_id`=6490;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (649003, 6490, 0, 2, 0, 100, 1, 50, 0, 20000, 20000, 649003, 0, 0, 'Azshir the Sleepless - Cast Spell Soul Siphon below 50% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (649004, 6490, 0, 2, 0, 100, 4, 15, 0, 0, 0, 649004, 0, 0, 'Azshir the Sleepless - Flee at 15% HP');

-- Events list for Skum
DELETE FROM `creature_ai_events` WHERE `creature_id`=3674;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (367401, 3674, 0, 9, 0, 100, 1, 0, 30, 4000, 7000, 367401, 0, 0, 'Skum - Cast Chained Bolt');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (367402, 3674, 0, 2, 0, 100, 4, 15, 0, 0, 0, 367402, 0, 0, 'Skum - Flee at 15% HP');

-- Events list for Swiftmane
DELETE FROM `creature_ai_events` WHERE `creature_id`=5831;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (583102, 5831, 0, 2, 0, 100, 4, 15, 0, 0, 0, 583102, 0, 0, 'Swiftmane - Flee at 15% HP');

