-- Summon Azotha Shade when looting Ancient Dirt Mound.
UPDATE `gameobject_template` SET `data6`=61118 WHERE `entry`=2010977;
DELETE FROM `event_scripts` WHERE `id`=61118;
INSERT INTO `event_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(61118, 0, 0, 10, 61118, 60000, 1, 30, 0, 0, 0, 1, 8, 0, 0, 2, 0, 0, 0, 0, 0, 'Ancient Dirt Mound - Summon Creature Azotha Shade');
