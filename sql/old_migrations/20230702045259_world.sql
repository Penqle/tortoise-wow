-- Add spoken texts.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (51696, 'I yield, fine! Tell him I\'ll keep out of trouble then, I got the lesson.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (51697, 'Check in on me? What does he think he can control me here, and who are you, some worthless constable?', NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0);

-- 40660: Target Has Incomplete Quest 40660 In Log
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (40660, 9, 40660, 1, 0, 0, 0);

-- Add gossip option and script.
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (41248, 0, 0, 'Petty Officer Milldough has asked me to check in on you.', 0, 1, 1, -1, 0, 41248, 0, 0, '', 0, 40660);
DELETE FROM `gossip_scripts` WHERE `id`=41248;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(41248, 0, 0, 4, 147, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Remove Gossip Flag'),
(41248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51697, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Say Text'),
(41248, 3, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Emote Attack 1H'),
(41248, 6, 0, 22, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Set Faction to Monster');

-- Events list for Sailor Pardol
DELETE FROM `creature_ai_events` WHERE `creature_id`=61016;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (6101601, 61016, 0, 2, 0, 100, 0, 50, 1, 0, 0, 6101601, 0, 0, 'Sailor Pardol - Evade at 50% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (6101602, 61016, 0, 7, 0, 100, 0, 0, 0, 0, 0, 6101602, 0, 0, 'Sailor Pardol - Add Gossip Flag on Evade');
DELETE FROM `creature_ai_scripts` WHERE `id`=6101601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6101601, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Evade'),
(6101601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51696, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Say Text'),
(6101601, 0, 0, 8, 60397, 1, 0, 0, 30, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Grant Kill Credit');
DELETE FROM `creature_ai_scripts` WHERE `id`=6101602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6101602, 0, 0, 4, 147, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sailor Pardol - Add Gossip Flag');
UPDATE `creature_template` SET `ai_name`='EventAI', `script_name`='' WHERE `entry`=61016;



