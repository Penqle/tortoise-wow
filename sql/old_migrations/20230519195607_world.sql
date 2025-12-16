-- Boss Genn Greymane (Entry 61418), at 50% hp say the following line : "Our nation stands strong! I did what was neccesary." (Play sound file 60389):

REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (899705, 61418, 0, 2, 0, 100, 0, 50, 1, 0, 0, 899705, 0, 0, 'Genn Greymane - Say at 50% HP');

DELETE FROM `creature_ai_scripts` WHERE `id` = 899705;

REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (899705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81055, 0, 0, 0, 0, 0, 0, 0, 0, 'Genn Greymane - Say at 50% HP');

REPLACE INTO  `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (81055, 'Our nation stands strong! I did what was neccesary.', NULL, 0, 60389, 0, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61418;

REPLACE INTO `sound_entries` (`id`, `name`) VALUES (60389, 'GennGreymaneMidFIghtTalk');