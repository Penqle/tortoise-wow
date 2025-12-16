-- Fix Omen quest credit.
DELETE FROM `spell_scripts` WHERE `id`=26393;
INSERT INTO `spell_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(26393, 0, 0, 15, 26394, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elune\'s Blessing: Target - Cast Elune\'s BLessing (quest credit)');
