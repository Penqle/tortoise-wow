-- Disable interaction with Chromie after turning in The Annals of Darrowshire.
DELETE FROM `quest_end_scripts` WHERE `id`=5154;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(5154, 0, 0, 4, 147, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Annals of Darrowshire - Remove Quest Giver Flag'),
(5154, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Annals of Darrowshire - Chromie: Emote talk'),
(5154, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6418, 0, 0, 0, 0, 0, 0, 0, 0, 'The Annals of Darrowshire - Chromie: Say text 1'),
(5154, 2, 0, 15, 17285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Annals of Darrowshire - Chromie: Cast spell "Enchant Annals of Darrowshire"'),
(5154, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6419, 0, 0, 0, 0, 0, 0, 0, 0, 'The Annals of Darrowshire - Chromie: Say text 2'),
(5154, 8, 0, 4, 147, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Annals of Darrowshire - Add Quest Giver Flag');
