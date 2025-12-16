-- Change respawn of https://database.turtle-wow.org/?object=178084,  https://database.turtle-wow.org/?object=148499, https://database.turtle-wow.org/?object=178085 to 5 seconds.

update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 30 where id in (178084, 148499, 178085);

-- https://database.turtle-wow.org/?search=mirefin#npcs  mirefin murlocs respawn timer is too short

update creature set spawntimesecsmin = 300, spawntimesecsmax = 360 where id in (4358, 4359, 4360, 4361, 4362, 4363);

-- change inhabit type of npc 91932 to 3
-- change scale of npc 91932 to 1

update creature_template set scale = 1, inhabit_type = 3 where entry = 91932;

update creature_template set display_id1 = 13459 where entry = 60887;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1981

update creature_template set xp_multiplier = 0, flags_extra = 0 where entry = 2673;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1139

replace into player_classlevelstats (class, level, basehp, basemana) VALUES
(11, 1, 34, 50),
(11, 2, 41, 57),
(11, 3, 58, 65),
(11, 4, 65, 74),
(11, 5, 82, 84),
(11, 6, 89, 95),
(11, 7, 96, 107),
(11, 8, 113, 120),
(11, 9, 120, 134),
(11, 10, 137, 149),
(11, 11, 144, 165),
(11, 12, 151, 182),
(11, 13, 168, 200),
(11, 14, 175, 219),
(11, 15, 182, 239),
(11, 16, 199, 260),
(11, 17, 206, 282),
(11, 18, 214, 305),
(11, 19, 233, 329),
(11, 20, 243, 354),
(11, 21, 254, 380),
(11, 22, 266, 392),
(11, 23, 289, 420),
(11, 24, 303, 449),
(11, 25, 318, 479),
(11, 26, 334, 509),
(11, 27, 361, 524),
(11, 28, 379, 554),
(11, 29, 398, 584),
(11, 30, 418, 614),
(11, 31, 439, 629),
(11, 32, 461, 659),
(11, 33, 494, 689),
(11, 34, 518, 704),
(11, 35, 543, 734),
(11, 36, 569, 749),
(11, 37, 596, 779),
(11, 38, 624, 809),
(11, 39, 653, 824),
(11, 40, 683, 854),
(11, 41, 714, 869),
(11, 42, 746, 899),
(11, 43, 779, 914),
(11, 44, 823, 944),
(11, 45, 858, 959),
(11, 46, 894, 989),
(11, 47, 921, 1004),
(11, 48, 959, 1019),
(11, 49, 998, 1049),
(11, 50, 1038, 1064),
(11, 51, 1079, 1079),
(11, 52, 1121, 1109),
(11, 53, 1164, 1124),
(11, 54, 1208, 1139),
(11, 55, 1253, 1154),
(11, 56, 1299, 1169),
(11, 57, 1346, 1199),
(11, 58, 1384, 1214),
(11, 59, 1433, 1229),
(11, 60, 1483, 1244);
