-- Cross faction fix for Sorcerer Ashcrombe's gossip script.
DELETE FROM `gossip_scripts` WHERE `id`=21213;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(21213, 0, 0, 4, 147, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerer Ashcrombe - Remove Gossip Flag'),
(21213, 0, 1, 4, 46, 768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerer Ashcrombe - Add Immune Flag'),
(21213, 0, 2, 60, 3, 0, 4000, 0, 0, 0, 0, 0, 1, 3850, 0, 0, 0, 0, 0, 0, 0, 'Sorcerer Ashcrombe - Start Waypoints'),
(21213, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1331, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerer Ashcrombe - Say Text'),
(21213, 0, 4, 4, 147, 1, 2, 0, 3849, 50, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathstalker Adamant - Remove Gossip Flag');

-- Cross faction fix for Deathstalker Adamant's gossip script.
DELETE FROM `gossip_scripts` WHERE `id`=21214;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(21214, 0, 0, 4, 147, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathstalker Adamant - Remove Gossip Flag'),
(21214, 0, 1, 4, 46, 768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathstalker Adamant - Add Immune Flag'),
(21214, 0, 2, 60, 3, 0, 4000, 0, 0, 0, 0, 0, 1, 3849, 0, 0, 0, 0, 0, 0, 0, 'Deathstalker Adamant - Start Waypoints'),
(21214, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1320, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathstalker Adamant - Say Text'),
(21214, 0, 4, 4, 147, 1, 2, 0, 3850, 50, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerer Ashcrombe - Remove Gossip Flag ');
