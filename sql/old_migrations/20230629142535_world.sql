-- Spectral Betrayer AI
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry` IN (11289, 11288);

-- Events list for Spectral Defender
DELETE FROM `creature_ai_events` WHERE `creature_id`=11289;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1128901, 11289, 0, 1, 0, 100, 1, 5000, 5000, 5000, 5000, 1128901, 0, 0, 'Spectral Defender - Summon Spectral Betrayer - OOC');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1128902, 11289, 0, 0, 0, 100, 3, 5000, 20000, 20000, 35000, 1128902, 1128903, 0, 'Spectral Defender - Talk - In Combat');
DELETE FROM `creature_ai_scripts` WHERE `id`=1128901;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1128901, 0, 10, 11288, 40000, 0, 0, 11289, 20, 8, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 'Spectral Defender - Summon Creature');
DELETE FROM `creature_ai_scripts` WHERE `id`=1128902;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1128902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6840, 6836, 6841, 6837, 0, 0, 0, 0, 0, 'Spectral Defender - Talk');
DELETE FROM `creature_ai_scripts` WHERE `id`=1128903;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1128903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6838, 6835, 6842, 6839, 0, 0, 0, 0, 0, 'Spectral Defender - Talk');

-- Events list for Spectral Betrayer
DELETE FROM `creature_ai_events` WHERE `creature_id`=11288;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1128801, 11288, 0, 0, 0, 100, 3, 5000, 20000, 20000, 35000, 1128801, 1128802, 0, 'Spectral Betrayer - Talk - In Combat');
DELETE FROM `creature_ai_scripts` WHERE `id`=1128801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1128801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6834, 6832, 6827, 6829, 0, 0, 0, 0, 0, 'Spectral Betrayer - Talk');
DELETE FROM `creature_ai_scripts` WHERE `id`=1128802;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1128802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6831, 6833, 6830, 6828, 0, 0, 0, 0, 0, 'Spectral Betrayer - Talk');
