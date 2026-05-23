-- ==============================================
-- FILE: areatrigger_teleport.sql
-- GENERATED: 20260517121832
-- ==============================================

REPLACE INTO `areatrigger_teleport` (
    `id`,
    `name`,
    `message`,
    `required_level`,
    `required_condition`,
    `required_phase`,
    `target_map`,
    `target_position_x`,
    `target_position_y`,
    `target_position_z`,
    `target_orientation`
) VALUES
(5343, 'Dragonmaw Retreat – Front Entrance', 'You must be at least level 25 to enter.', 25, 0, 0, 816, -6105.44, -3629.89, 242.478, 3.23467),
(5344, 'Dragonmaw Retreat – Front Exit', '', 0, 0, 0, 0, -3813.14, -3587.64, -48.1468, 1.3701),
(5345, 'Dragonmaw Retreat – Back Exit', '', 0, 0, 0, 0, -3813.14, -3587.64, -48.1468, 1.3701),
(5347, 'Stormwrought Ruins – Front Entrance', 'You must be at least level 35 to enter.', 35, 0, 0, 818, -5632.67, -4393.33, 249.982, 3.18238),
(5348, 'Stormwrought Ruins – Front Exit', '', 0, 0, 0, 0, -8821.21, 2900.45, 135.492, 5.2558),
(5605, 'Stormwrought Ruins – Back Entrance', 'You must be at least level 35 to enter.', 35, 0, 0, 818, -6391.73, -3836.82, 218.569, 1.5896),
(5606, 'Stormwrought Ruins – Back Exit', '', 0, 0, 0, 0, -9283.12, 2994.62, 147, 3.2672),
(5611, 'Windhorn Canyon – Entrance', 'You must be at least level 26 to enter.', 26, 0, 0, 820, -8025.66, -3510.34, 158.096, 0.4845),
(5612, 'Windhorn Canyon – Exit', '', 0, 0, 0, 1, -5126.21, -3532.49, 4.5422, 4.542),
(5613, 'Timbermaw Hold – Entrance', 'You must be at least level 60 to enter.', 60, 0, 0, 819, -8133.95, -3450.47, 224.748, 0.31096),
(5614, 'Timbermaw Hold – Front Exit', '', 0, 0, 0, 1, 4724.58, -4911.79, 134.967, 4.2285),
(5662, 'Frostmane Hollow – Entrance', 'You must be at least level 13 to enter.', 13, 0, 0, 822, -7522.73, -3588.76, 199.981, 2.2022),
(5663, 'Frostmane Hollow – Exit', '', 0, 0, 0, 0, -5023.99, -1443.13, 499.816, 2.0891),
(5665, 'Timbermaw Hold – Back Exit', '', 0, 0, 0, 1, 4724.58, -4911.79, 134.967, 4.2285);