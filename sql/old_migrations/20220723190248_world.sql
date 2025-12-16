-- Script when Final Message to the Wildhammer is used.
UPDATE `broadcast_text` SET `chat_type`=1 WHERE `entry`=10009;
DELETE FROM `event_scripts` WHERE `id`=8608;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8608, 0, 0, 0, 0, 0, 0, 92849, 0, 9, 2, 10009, 0, 0, 0, 0, 0, 0, 0, 0, 'Placing Message to the Wildhammer: Falstad Wildhammer - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8608, 0, 86, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Placing Message to the Wildhammer: Player - Set PvP');
