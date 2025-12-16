-- Prevent interacting with Durnan Furcutter while Scalding Mornbrew Delivery quest turn in event is running.
DELETE FROM `quest_end_scripts` WHERE `id`=3364;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3364, 0, 0, 4, 147, 16391, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnan Furcutter - Remove NPC Flags'),
(3364, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4377, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnan Furcutter - Say Text'),
(3364, 6, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnan Furcutter - Emote Eat'),
(3364, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4378, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnan Furcutter - Say Text'),
(3364, 10, 0, 4, 147, 16391, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnan Furcutter - Add NPC Flags');
