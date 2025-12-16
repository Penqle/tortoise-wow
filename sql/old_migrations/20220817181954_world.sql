-- Remove duplicate Taelan spawn.
DELETE FROM `creature` WHERE `guid`=2567991;

-- Increase respawn time for Taelan to prevent him from respawning prematurely due to dynamic respawns.
UPDATE `creature` SET `spawntimesecsmin`=3600, `spawntimesecsmax`=3600 wHERE `guid`=45436;

-- Respawn Taelan on event completion.
DELETE FROM `generic_scripts` WHERE `id`=6611;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6611, 0, 0, 7, 5944, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'In Dreams: Complete Quest'),
(6611, 0, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'In Dreams: Highlord Taelan Fordring - Respawn');
