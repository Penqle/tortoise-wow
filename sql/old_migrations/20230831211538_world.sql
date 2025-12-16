-- Fix issues with Winterfall Runners post completion script.
DELETE FROM `quest_end_scripts` WHERE `id`=5087;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(5087, 0, 0, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Winterfall Runners - Donova Snowden: Remove Flag Questgiver'),
(5087, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 6231, 0, 0, 0, 0, 0, 0, 0, 0, 'Winterfall Runners - Donova Snowden: Emote text 1'),
(5087, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6232, 0, 0, 0, 0, 0, 0, 0, 0, 'Winterfall Runners - Donova Snowden: Say text 2'),
(5087, 7, 0, 61, 5087, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Winterfall Runners - Donova Snowden: Start Map Event'),
(5087, 7, 0, 60, 3, 0, 0, 0, 0, 0, 0, 0, 0, 9298, 0, 0, 0, 0, 0, 0, 0, 'Winterfall Runners - Donova Snowden: Start Waypoint');
DELETE FROM `generic_scripts` WHERE `id`=14372;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(14372, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Winterfall Ambusher - Set Run'),
(14372, 0, 1, 60, 3, 0, 0, 0, 0, 0, 0, 0, 0, 14372, 0, 0, 0, 0, 0, 0, 0, 'Winterfall Ambusher - Start Waypoints');
