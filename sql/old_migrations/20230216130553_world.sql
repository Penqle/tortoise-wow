-- Dont spawn Nightlash multiple times.
DELETE FROM `creature_ai_scripts` WHERE `id`=177202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(177202, 0, 0, 10, 1983, 150000, 1, 300, 0, 0, 0, 0, 8, 0, -1, 1, 1078.49, 1541.23, 28.9379, 0.113425, 0, 'Rot Hide Gladerunner - Summon Creature Nightlash');
DELETE FROM `creature_ai_scripts` WHERE `id`=177301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(177301, 0, 0, 10, 1983, 150000, 1, 300, 0, 0, 0, 0, 8, 0, -1, 1, 1078.49, 1541.23, 28.9379, 0.113425, 0, 'Rot Hide Mystic - Summon Creature Nightlash');
