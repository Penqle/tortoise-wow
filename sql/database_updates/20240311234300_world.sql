-- Events list for Jaedenar Adept
DELETE FROM `creature_ai_events` WHERE `creature_id`=7115;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (711501, 7115, 0, 9, 0, 100, 13, 0, 5, 16000, 21000, 711501, 0, 0, 'Jaedenar Adept - Cast Blink in Melee Range');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (711502, 7115, 0, 2, 0, 100, 4, 15, 0, 0, 0, 711502, 0, 0, 'Jaedenar Adept - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (711503, 7115, 0, 34, 0, 100, 13, 12, 0, 16000, 21000, 711503, 0, 0, 'Jaedenar Adept - Cast Blink when Stunned');
DELETE FROM `creature_ai_scripts` WHERE `id`=711503;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(711503, 0, 0, 15, 1953, 1, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jaedenar Adept - Cast Spell Blink');

-- Set Alliance race requirement on New Growth quest in Thalassian Highlands
UPDATE quest_template SET RequiredRaces = 589 WHERE entry = 41256;
