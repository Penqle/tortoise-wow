-- Areatriggers for Karazhan Crypt.
UPDATE `map_template` SET `ghost_entrance_map`=0, `ghost_entrance_x`=-11068.4, `ghost_entrance_y`=-1811.69 WHERE `entry`=800;
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES (10000, 0, -11068.4, -1811.69, 52.8856, 20, 0, 0, 0, 0);
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES (10001, 800, -11068.3, -1814.06, 53.9778, 20, 0, 0, 0, 0);
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (10000, 'Karazhan Crypt - Entrance', 'You must be at least level 55 to enter.', 55, 0, 800, -11068.1, -1806.4, 52.7, 1.5);
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (10001, 'Karazhan Crypt - Exit', '', 0, 0, 0, -11068.9, -1828.6, 60.26, 3.1);

-- Areatriggers for Hateforge Quarry.
UPDATE `map_template` SET `ghost_entrance_map`=0, `ghost_entrance_x`=-8173, `ghost_entrance_y`=-3114.57 WHERE `entry`=808;
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES (10002, 0, -8173, -3114.57, 201.218, 20, 0, 0, 0, 0);
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES (10003, 808, -8172.85, -3114.18, 200.625, 20, 0, 0, 0, 0);
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (10002, 'Hateforge Quarry - Entrance', 'You must be at least level 48 to enter.', 48, 0, 808, -8173.9, -3120.6, 199.8, 4.7);
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (10003, 'Hateforge Quarry - Exit', '', 0, 0, 0, -8169.2, -3106.7, 200.4, 1.1);

-- Areatriggers for The Crescent Grove.
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES (10004, 1, 1689.78, -1272.15, 161.678, 20, 0, 0, 0, 0);
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES (10005, 802, 585, 97, 276, 20, 0, 0, 0, 0);
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (10004, 'The Crescent Grove - Entrance', 'You must be at least level 32 to enter.', 32, 0, 802, 579.13, 90.7, 276.11, 3.4);
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (10005, 'The Crescent Grove - Exit', '', 0, 0, 1, 1722, -1272.6, 163.26, 5.8);
