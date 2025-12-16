
-- Changes by TORTA
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61180;

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2573931,61175,0,0,0,813,-2647.04,1117.79,54.9182,1.97757,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573932,61174,0,0,0,813,-2605.99,1211.93,60.2108,4.31175,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573933,61177,0,0,0,813,-2684.27,1157.58,51.0331,3.9434,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2683.995361', position_y = '1157.793823', position_z = '51.022907', orientation = '4.548163' WHERE guid = '2573933';
REPLACE INTO `creature` VALUES (2573934,61183,0,0,0,813,-2684.08,1156,51.1154,1.58721,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573935,61176,0,0,0,813,-2642.18,1140.92,54.4651,6.031,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2657.460449', position_y = '1115.522827', position_z = '54.950851', orientation = '4.275641' WHERE guid = '2573931';
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (867,-4099.364746,101.069916,76.281075,5.216433,1,'larisspavillon');
REPLACE INTO `creature` VALUES (2573936,14355,0,0,0,1,-4098.64,106.229,76.2811,4.9219,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573936;
DELETE FROM creature_addon WHERE guid=2573936;
DELETE FROM creature_movement WHERE id=2573936;
DELETE FROM game_event_creature WHERE guid=2573936;
DELETE FROM game_event_creature_data WHERE guid=2573936;
DELETE FROM creature_battleground WHERE guid=2573936;
