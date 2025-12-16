-- Fix Cannon for quest Death From Below.
DELETE FROM `spell_effect_mod` WHERE `id`=4170;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (4170, 0, -2143, -1983, 13, 0);
