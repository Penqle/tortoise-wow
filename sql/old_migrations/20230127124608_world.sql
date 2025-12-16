-- GUID 2565558 set respawn to 3 days (PTR)
update creature set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where guid = 2565558;
-- change the damage of NPC Sanctum Scalebane to copy NPC Death Talon Captain.
update creature_template set dmg_min = 3107, dmg_max = 4122 where entry = 60746;
-- Sanctum Supressor, display ID 7863, level 63 elite, faction 44, dragonkin, 112401 HP, 28312 MANA, 3320, 100 shadow resistance, 50 nature resistance.
REPLACE INTO creature_template VALUES
(61191, 7863, 0, 0, 0, 0, 'Sanctum Supressor', '', 0, 63, 63, 112401, 112401, 28312, 28312, 3320, 44, 0, 1, 1.14286, 1.6, 20, 5, 0, 1, 1, 3107, 4122, 0, 284, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 2, 0, 61191, 0, 0, 0, 0, 50, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 2142, 2803, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
