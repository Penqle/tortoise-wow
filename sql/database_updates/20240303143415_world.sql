-- deleting Darnassus and Thinder Bluff's jewelcrafting gossip menu.
delete from gossip_menu_option where action_menu_id in (41618,41623);
delete from gossip_menu where entry in (41618,41619,41620,41621,41622,41623,41624);
delete from broadcast_text where entry in (30176,30177,30178,30179,30180,30181,30182);
delete from npc_text where ID in (30176,30177,30178,30179,30180,30181,30182);
-- Marks on mini map added:
-- Ironforge POI Jewelcrafting.
update gossip_menu_option set action_poi_id = 2000, action_menu_id = -1 where menu_id = 2168 and action_menu_id = 41622;
REPLACE INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
(2000, -4701.22, -1177.14, 6, 99, 0, 'Ironforge Jewelcrafting Trainer');
-- Undercity POI Jewelcrafting.
update gossip_menu_option set action_poi_id = 2001, action_menu_id = -1 where menu_id = 2847 and action_menu_id = 41620;
REPLACE INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
(2001, 1388.57, 129.20, 6, 99, 0, 'Ironforge Jewelcrafting Trainer');
-- Stormwind POI Jewelcrafting.
update gossip_menu_option set action_poi_id = 2002, action_menu_id = -1 where menu_id = 421 and action_menu_id = 41621;
REPLACE INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
(2002, -8857.52, 858.05, 6, 99, 0, 'Ironforge Jewelcrafting Trainer');
-- Alah'Thalas POI Jewelcrafting.
update gossip_menu_option set action_poi_id = 2003, action_menu_id = -1 where menu_id = 61772 and action_menu_id = 41624;
REPLACE INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
(2003, 4381.41, -2961.99, 6, 99, 0, 'Alah\'Thalas Jewelcrafting Trainer');
-- Orgrimmar POI Jewelcrafting.
update gossip_menu_option set action_poi_id = 2004, action_menu_id = -1 where menu_id = 1942 and action_menu_id = 41619;
REPLACE INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
(2004, 1891.96, -4324.20, 6, 99, 0, 'Orgrimmar Jewelcrafting Trainer');
