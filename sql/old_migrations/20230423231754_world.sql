-- Disable interacting with Zarlman Two-Moons during Rite of Vision.
DELETE FROM `quest_end_scripts` WHERE `id`=771;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(771, 0, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rite of Vision - Remove Quest Giver Flag'),
(771, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1011, 0, 0, 0, 0, 0, 0, 0, 0, 'Rite of Vision - Say Text 1 (emote)'),
(771, 0, 2, 15, 5026, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rite of Vision - Cast Create Water of the Seers'),
(771, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1012, 0, 0, 0, 0, 0, 0, 0, 0, 'Rite of Vision - Say Text 2'),
(771, 6, 1, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rite of Vision - Add Quest Giver Flag');
