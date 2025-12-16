-- Remove XP from Tomb Bats:
update creature_template set flags_extra = 64 where entry = 91921;
-- Doomcaller Staff needs a sell value added to it, make it 6 gold 74 silver, 8 copper:
update item_template set buy_price = 269920, sell_price = 67480 where entry = 60546;
-- Remove casttimeindex from Illusions:
update spell_template set castingtimeindex = 0 where entry = 46003;
-- Remove cooldown from functional companions:
update spell_template set recoverytime = 0 where entry in (46460, 46472, 46457);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1733
update item_template set allowable_race = -1 where entry = 5415;
update item_template set allowable_race = -1 where entry = 5416;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1726
update creature set position_x = -10035.79, position_y = 1980.40, position_z = 0 where guid = 89490;
-- Fix Infinite Dragonspawns in Black Morass randomly respawn in seconds:
update creature set spawntimesecsmin = 14400, spawntimesecsmax = 14400 where id in (65100, 65123, 65127);
-- Remove charge from Tempest's Rage:
update item_template set spellcharges_1 = 0 where entry = 83564;
-- Some item fix:
update item_template set spellid_1 = 9394 where entry = 60690;
-- Fix Ritual of Refreshment:
update item_template set script_name = '' where entry = 83002;
-- Set the graveyard in Crescent Grove to be in Ashenvale:
replace into custom_graveyards (id, name, map_id, zone_id, area_id, max_level, map_gy_alliance, gy_x_alliance, gy_y_alliance, gy_z_alliance, orientation_alliance, map_gy_horde, gy_x_horde, gy_y_horde, gy_z_horde, orientation_horde) values (32, 'Crescent Grove', 802, 5077, 5077, 60, 1,2633.4, -629.7, 107.58, 1.8, 1, 2421.7, -2953.6, 123.4, 0.05);
-- Fix Lapidis Isle's graveyard:
replace into custom_graveyards (id, name, map_id, zone_id, area_id, max_level, map_gy_alliance, gy_x_alliance, gy_y_alliance, gy_z_alliance, orientation_alliance, map_gy_horde, gy_x_horde, gy_y_horde, gy_z_horde, orientation_horde) values 
(13, 'Lapidis Isle', 0, 409, 5047, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04),
(33, 'Lapidis Isle', 0, 409, 409, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04),
(34, 'Lapidis Isle', 0, 409, 5050, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04),
(35, 'Lapidis Isle', 0, 409, 5051, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04),
(36, 'Lapidis Isle', 0, 409, 5048, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04),
(37, 'Lapidis Isle', 0, 409, 5046, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04);
-- Delete the following duplicates from live:
delete from item_template where entry in (83580, 83581, 83582, 83583);
-- Change NPC Young Blackrock Worg's faction:
update creature_template set faction = 35 where entry = 60873;