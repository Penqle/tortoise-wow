-- Events list for Carver Molsen
DELETE FROM `creature_ai_events` WHERE `creature_id`=60878;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (6087801, 60878, 0, 4, 0, 100, 0, 0, 0, 0, 0, 6087801, 0, 0, 'Carver Molsen - Say Text on Aggro');
DELETE FROM `creature_ai_scripts` WHERE `id`=6087801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6087801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90320, 0, 0, 0, 0, 0, 0, 0, 0, 'Carver Molsen - Say Text');
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (90320, 'You were a fool to come here, this is Defias land now.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `ai_name`='EventAI', `script_name`='' WHERE `entry`=60878;
