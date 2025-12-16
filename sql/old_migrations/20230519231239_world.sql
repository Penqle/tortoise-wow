-- Change completion script of Making Sense of It into start script.
UPDATE `quest_template` SET `StartScript`=4321, `CompleteScript`=0 WHERE `entry`=4321;
DELETE FROM `quest_end_scripts` WHERE `id`=4321;
DELETE FROM `quest_start_scripts` WHERE `id`=4321;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(4321, 0, 0, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Remove Gossip and Quest flags'),
(4321, 0, 0, 9, 63180, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Spawn Gameobject J.D.\'s Manual'),
(4321, 1, 0, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'J.D. Collie - Face J.D.\'s Manual'),
(4321, 2, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Emote Cheer'),
(4321, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5287, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Say Text 1'),
(4321, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5288, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Say Text 2'),
(4321, 9, 0, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.872, 0, 'J.D. Collie - Reset Orientation'),
(4321, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5289, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Say Text 3'),
(4321, 11, 0, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Add Gossip and Quest flags');
