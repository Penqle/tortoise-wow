
-- Changes by DRAGU
REPLACE INTO `gameobject` VALUES ( 5017918, 2003428, 0, 4442.87, -2839.34, 10.3773, 4.39285, 0, 0, 0.810595, -0.585607, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017918';
DELETE FROM game_event_gameobject WHERE guid = '5017918';
DELETE FROM gameobject_battleground WHERE guid = '5017918';
DELETE FROM `npc_vendor` WHERE `entry`='80111' AND `item`='2101';
DELETE FROM `npc_vendor` WHERE `entry`='80111' AND `item`='2512';
