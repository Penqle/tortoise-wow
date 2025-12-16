-- Make Mordresh Fire Eye call for help on aggro.
DELETE FROM `creature_ai_scripts` WHERE `id`=735702;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(735702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6184, 0, 0, 0, 0, 0, 0, 0, 0, 'Mordresh Fire Eye - Say Text'),
(735702, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 'Mordresh Fire Eye - Call for Help');
