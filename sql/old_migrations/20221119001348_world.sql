REPLACE INTO `custom_graveyards` (`id`, `name`, `map_id`, `zone_id`, `area_id`, `max_level`, `map_gy_alliance`, `gy_x_alliance`, `gy_y_alliance`, `gy_z_alliance`, `orientation_alliance`, `map_gy_horde`, `gy_x_horde`, `gy_y_horde`, `gy_z_horde`, `orientation_horde`) VALUES 

(41, 'Tel\'Abim Island', 1,  5121, 5121, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(42, 'Tel\'Abim Island', 1,  5121, 5122, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(43, 'Tel\'Abim Island', 1,  5121, 5123, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(44, 'Tel\'Abim Island', 1,  5121, 5124, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(45, 'Tel\'Abim Island', 1,  5121, 5125, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(46, 'Tel\'Abim Island', 1,  5121, 5126, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(47, 'Tel\'Abim Island', 1,  5121, 5127, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(48, 'Tel\'Abim Island', 1,  5121, 5128, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0),
(49, 'Tel\'Abim Island', 1,  5121, 5129, 60, 1, -8924.63, -6625.92, 18.47, 6.0, 1, -8924.63, -6625.92, 18.47, 6.0);

DELETE FROM `custom_graveyards` WHERE `id` IN (39, 40);

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`) VALUES (928, 5130);
REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (928, 2.7);

-- Alah'Thalas:

DELETE FROM `custom_graveyards` WHERE `id` = 9;

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (934, 2037, 469);
REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (934, 5.6);
