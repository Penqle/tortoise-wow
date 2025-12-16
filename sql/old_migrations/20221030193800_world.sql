-- Events list for Baron Charr
DELETE FROM `creature_ai_events` WHERE `creature_id`=14461;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1446101, 14461, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1446101, 0, 0, 'Baron Charr - Set Variable and Say On Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1446104, 14461, 0, 11, 0, 100, 1, 0, 0, 0, 0, 1446104, 0, 0, 'Baron Charr - Say On Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1446105, 14461, 0, 1, 0, 33, 1, 60000, 60000, 60000, 60000, 1446105, 0, 0, 'Baron Charr - Say OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1446101;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1446101, 0, 0, 54, 30008, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Charr - Set Variable Fire State to Boss Down'),
(1446101, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9661, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Charr - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1446106, 1446107);

-- Events list for The Windreaver
DELETE FROM `creature_ai_events` WHERE `creature_id`=14454;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1445401, 14454, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1445401, 0, 0, 'The Windreaver - Set Variable and Say On Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1445406, 14454, 0, 11, 0, 100, 1, 0, 0, 0, 0, 1445406, 0, 0, 'The Windreaver - Say On Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1445407, 14454, 0, 1, 0, 33, 1, 60000, 60000, 60000, 60000, 1445407, 0, 0, 'The Windreaver - Say OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1445401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1445401, 0, 0, 54, 30011, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Windreaver - Set Variable Air State to Boss Down'),
(1445401, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9668, 0, 0, 0, 0, 0, 0, 0, 0, 'The Windreaver - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1445408, 1445409);

-- Events list for Avalanchion
DELETE FROM `creature_ai_events` WHERE `creature_id`=14464;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1446401, 14464, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1446401, 0, 0, 'Avalanchion - Set Variable and Say On Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1446404, 14464, 0, 11, 0, 100, 1, 0, 0, 0, 0, 1446404, 0, 0, 'Avalanchion - Say On Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1446405, 14464, 0, 1, 0, 33, 1, 60000, 60000, 60000, 60000, 1446405, 0, 0, 'Avalanchion - Say OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1446401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1446401, 0, 0, 54, 30010, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Avalanchion - Set Variable Earth State to Boss Down'),
(1446401, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9660, 0, 0, 0, 0, 0, 0, 0, 0, 'Avalanchion - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1446407, 1446408);

-- Events list for Princess Tempestria
DELETE FROM `creature_ai_events` WHERE `creature_id`=14457;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1445701, 14457, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1445701, 0, 0, 'Princess Tempestria - Set Variable and Say On Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1445704, 14457, 0, 11, 0, 100, 1, 0, 0, 0, 0, 1445704, 0, 0, 'Princess Tempestria - Say On Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1445705, 14457, 0, 1, 0, 33, 1, 60000, 60000, 60000, 60000, 1445705, 0, 0, 'Princess Tempestria - Say OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1445701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1445701, 0, 0, 54, 30009, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Princess Tempestria - Set Variable Water State to Boss Down'),
(1445701, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9664, 0, 0, 0, 0, 0, 0, 0, 0, 'Princess Tempestria - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1445708, 1445709);

-- Reset event data.
UPDATE `variables` SET `value`=4 WHERE `index` IN (30008, 30009, 30010, 30011);
UPDATE `variables` SET `value`=49 WHERE `index` IN (30012, 30013, 30014, 30015);
UPDATE `variables` SET `value`=0 WHERE `index` IN (30017, 30018, 30019, 30020);
