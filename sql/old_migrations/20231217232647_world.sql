DELETE FROM `areatrigger_template` WHERE `id` In (5020, 5021, 2708);

REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES 
(5020, 1, -344.599, -7465.134, 80.323, 20, 0, 0, 0, 0),
(2708, 0, 3169.57, -2530.020, 110.90, 30, 0, 0, 0, 0);

REPLACE INTO `areatrigger_tavern` (`id`, `name`) VALUES (5020, 'Blackstone Island - Rustgate Inn');
REPLACE INTO `areatrigger_tavern` (`id`, `name`) VALUES (2708, 'Thalassian Highlands - Brinthilien Inn');
