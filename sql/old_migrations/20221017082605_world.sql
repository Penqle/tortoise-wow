-- Ferocious Rage Scar shouldn't cast Rend Flesh on far away targets.
DELETE FROM `creature_ai_scripts` WHERE `id`=529901;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(529901, 0, 0, 15, 3147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ferocious Rage Scar - Cast Spell Rend Flesh');
