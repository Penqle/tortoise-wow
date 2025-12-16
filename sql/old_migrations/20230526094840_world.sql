REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (936, 3.7);

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES 
(936, 267, 0); -- Temp. before we have MMAPS, open world Gilneas

REPLACE INTO `map_template` (`entry`, `parent`, `map_type`, `linked_zone`, `player_limit`, `reset_delay`, `ghost_entrance_map`, `ghost_entrance_x`, `ghost_entrance_y`, `map_name`, `script_name`) VALUES (815, 0, 1, 0, 10, 0, 0, -1765.49, 1607.01, 'Gilneas City', 'instance_gilneas_city');

-- More fixes for new graveyards:

-- DROP TABLE IF EXISTS custom_graveyards;

-- DBC data:

-- "937","1","2947.03","2557.98","139.3","Amani'Alor","","","","","","","","4128894"
-- "938","0","-5653.6","-4181.4","391.9","Farstrider's Lodge","","","","","","","","4128894"
-- "939","813","-2629.27","1041.82","74.256","Winter Veil Vale","","","","","","","","4128894"
-- "940","0","2163.39","2811.55","22.93","Tirisfal Uplands","","","","","","","","4128894"
-- "941","1","-8924.63","-6625.92","18.47","Tel'Abim Island","","","","","","","","4128894"
-- "942","0","-11505.1","3509.7","66.1","Lapidis Isle","","","","","","","","4128894"
-- "943","0","-11111.5","-1832.2","71.8","Karazhan Crypt, Morgan's Plot","","","","","","","","4128894"
-- "944","1","1788.58","1335.74","7144.35","Venture Camp","","","","","","","","4128894"
-- "945","1","-8453.4","-4690.7","-202.9","Caverns of Time","","","","","","","","4128894"
-- "946","1","-13912","2350.9","28.57","Gilijim Isle","","","","","","","","4128894"

DELETE FROM `game_graveyard_zone` WHERE `id` BETWEEN 937 AND 945;
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES 
(937, 2041, 67), -- Amani'Alor
(938, 38, 469), -- Farstrider's Lodge
(939, 5130, 0), -- Winter Veil Vale
(940, 85, 0), -- Tirisfal Uplands
(941, 5121, 0), -- Tel'Abim Island
(944, 406, 67), -- Venture Camp
(945, 2366, 0), -- Black Morass
(945, 5204, 0), -- Black Morass
(946, 408, 0), -- Gilijim Isle
(942, 409,  0), -- Lapidis Isle
(632, 5098, 0), -- Hateforge Quarry, link with Burning Steppes, Flame Crest
(632, 5103, 0), -- Hateforge Quarry, link with Burning Steppes, Flame Crest
(92, 5077, 0); -- Crescent Grove, link with Ashenvale, Astranaar

-- Fix orientation:

REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES 
(937, 2.3),
(938, 1.0),
(939, 2.7),
(940, 3.37),
(941, 6.0),
(942, 2.04),
(943, 6.1),
(944, 4.0),
(945, 4.9),
(946, 5.14);