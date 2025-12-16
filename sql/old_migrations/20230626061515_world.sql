-- Events list for Mercutio Filthgorger
DELETE FROM `creature_ai_events` WHERE `creature_id`=11886;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1188601, 11886, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1188601, 0, 0, 'Mercutio Filthgorger - Say Text on Aggro');
DELETE FROM `creature_ai_scripts` WHERE `id`=1188601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1188601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7261, 0, 0, 0, 0, 0, 0, 0, 0, 'Mercutio Filthgorger - Talk');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1188602, 1188603, 1188604, 1188605, 1188606, 1188607);
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (118860, 'Eastern Plaguelands - Mercutio Filthgorger', 11971, 100, 1, 0, 0, 0, 4, 12, 30, 50, 0, 12540, 100, 5, 0, 0, 0, 1, 12, 8, 16, 0, 14516, 100, 1, 0, 0, 0, 4, 8, 8, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_list_id`=118860, `movement_type` = 2 WHERE `entry`=11886;

-- Waypoints for Mercutio Filthgorger
DELETE FROM `creature_movement_template` WHERE `entry`=11886;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(11886, 1, 1571.387451, -3257.973877, 86.885139, 100.000000, 0, 0.000000, 0),
(11886, 2, 1570.015137, -3260.671143, 87.059097, 100.000000, 0, 0.000000, 0),
(11886, 3, 1564.624756, -3270.439209, 87.371590, 100.000000, 0, 0.000000, 0),
(11886, 4, 1563.820801, -3280.993408, 88.099808, 100.000000, 600000, 0.000000, 1188604);
DELETE FROM `creature_movement_scripts` WHERE `id`=1188604;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1188604, 0, 0, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 'Mercutio Filthgorger - Move Random');

-- Script upon interacting with the grave.
DELETE FROM `event_scripts` WHERE `id`=5759;
INSERT INTO `event_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(5759, 1, 0, 10, 11887, 600000, 3, 0, 0, 0, 0, 0, 8, 1188701, -1, 1, 1573.96, -3256.98, 86.7919, 4.03171, 0, 'Of Forgotten Memories - Summon Creature'),
(5759, 1, 0, 10, 11887, 600000, 3, 0, 0, 0, 0, 0, 8, 1188702, -1, 1, 1570.57, -3254.73, 86.7141, 4.50295, 0, 'Of Forgotten Memories - Summon Creature'),
(5759, 1, 0, 10, 11886, 600000, 1, 0, 0, 0, 0, 0, 8, 0, -1, 1, 1571.65, -3257.46, 86.8517, 4.38078, 0, 'Of Forgotten Memories - Summon Creature'),
(5759, 1, 0, 10, 11887, 600000, 3, 0, 0, 0, 0, 0, 8, 1188703, -1, 1, 1573.05, -3253.93, 86.7212, 4.34587, 0, 'Of Forgotten Memories - Summon Creature');

-- Spawn scripts for the Crypt Robbers.
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1188701, 0, 0, 78, 7, 0, 0, 0, 11886, 10, 8, 0, 0, 0, 0, 0, 2, 0, 0, 2.08, 0, 'Crypt Robber - Join Creature Group'),
(1188702, 0, 0, 78, 7, 0, 0, 0, 11886, 10, 8, 0, 0, 0, 0, 0, 2, 0, 0, 4.16, 0, 'Crypt Robber - Join Creature Group'),
(1188703, 0, 0, 78, 7, 0, 0, 0, 11886, 10, 8, 0, 0, 0, 0, 0, 3, 0, 0, 3.12, 0, 'Crypt Robber - Join Creature Group');
