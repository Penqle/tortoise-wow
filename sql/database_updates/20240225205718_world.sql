-- Update Klockmort Spannerspan's waypoints during quest Iron Coral.
DELETE FROM `quest_end_scripts` WHERE `id`=1708;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1708, 0, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - Remove Quest Giver Flag'),
(1708, 1, 0, 3, 0, 0, 65, 1, 0, 0, 0, 0, 0, 0, 0, 0, -4865.64, 573.733, 378.47, 6.22, 0, 'Iron Coral: Klockmort Spannerspan - Move point 1'),
(1708, 2, 0, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - State work mining'),
(1708, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2344, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - Emote text 1'),
(1708, 12, 0, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - State stand'),
(1708, 13, 0, 3, 0, 0, 65, 1, 0, 0, 0, 0, 0, 0, 0, 0, -4864.58, 575.45, 378.47, 0, 0, 'Iron Coral: Klockmort Spannerspan - Move point 2'),
(1708, 14, 0, 3, 0, 0, 65, 1, 0, 0, 0, 0, 0, 0, 0, 0, -4862.88, 574.89, 378.47, 3.92, 0, 'Iron Coral: Klockmort Spannerspan - Move point 3'),
(1708, 15, 0, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - State work mining'),
(1708, 24, 0, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - State stand'),
(1708, 25, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - Emote cheer'),
(1708, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2345, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - Say text 1'),
(1708, 27, 0, 3, 0, 0, 65, 1, 0, 0, 0, 0, 0, 0, 0, 0, -4864.58, 575.45, 378.47, 0, 0, 'Iron Coral: Klockmort Spannerspan - Move point 4'),
(1708, 28, 0, 3, 0, 0, 65, 1, 0, 0, 0, 0, 0, 0, 0, 0, -4867.2, 573.87, 378.47, 2.50219, 0, 'Iron Coral: Klockmort Spannerspan - Move point 5'),
(1708, 28, 0, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Coral: Klockmort Spannerspan - Add Quest Giver Flag');

-- Make Furen's Notes non-unique
UPDATE item_template SET Max_Count = 0, Stackable = 1 WHERE entry = 6926;

-- Remove BoP from Doomshot and Miniature Cannon Balls
UPDATE item_template SET Bonding = 0 WHERE entry IN (13377, 12654);
