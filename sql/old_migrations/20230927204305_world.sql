-- REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (5017, 'Emerald Sanctum - Entrance', 'You must be at least level 60 to enter.', 60, 19000, 807, 2762.25, 2972.77, 26.903, 1.9);
-- REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (5018, 'Lower Karazhan Halls - Entrance', 'You must be at least level 60 to enter.', 60, 0, 532, -11104.3, -1999.42, 49.89, 0.6);

UPDATE `areatrigger_teleport` SET `required_level` = 61 WHERE `id` = 5017;
UPDATE `areatrigger_teleport` SET `required_level` = 61 WHERE `id` = 5018;

UPDATE `areatrigger_teleport` SET `message` = 'The doors of this raid will open on October 7th.' WHERE `id` = 5017;
UPDATE `areatrigger_teleport` SET `message` = 'The doors of this raid will open on October 7th.' WHERE `id` = 5018;