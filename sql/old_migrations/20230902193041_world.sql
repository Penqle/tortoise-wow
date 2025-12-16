DELETE FROM `gameobject_scripts` WHERE `id`=49376;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(49376, 0, 0, 10, 13301, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Hive\'Ashi Pod - Summon Creature Hive\'Ashi Ambusher');
DELETE FROM `creature` WHERE `guid` IN (348245, 348246);
