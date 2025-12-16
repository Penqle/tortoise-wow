
-- Changes by VOJI
UPDATE `creature` SET `position_x` = 5600.594238, `position_y` = -1079.593872, `position_z` = 379.418823, `orientation` = 5.595398 WHERE `guid` = 2573856;
UPDATE `creature` SET `position_x` = 5601.997070, `position_y` = -1083.684204, `position_z` = 379.986298, `orientation` = 1.483598 WHERE `guid` = 2573855;
UPDATE `creature` SET `position_x` = 5614.634277, `position_y` = -1081.928589, `position_z` = 379.817322, `orientation` = 0.702912 WHERE `guid` = 2573859;
UPDATE `creature` SET `position_x` = 5625.064453, `position_y` = -1097.005249, `position_z` = 379.875977, `orientation` = 5.012393 WHERE `guid` = 2573860;
UPDATE `creature` SET `position_x` = 5647.353027, `position_y` = -1100.140747, `position_z` = 380.610291, `orientation` = 3.440820 WHERE `guid` = 2573846;
REPLACE INTO `creature` VALUES (2577393,61162,0,0,0,1,5627.18,-1093.25,379.296,4.90244,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577394,61162,0,0,0,1,5621.55,-1093.08,379.735,5.0281,120,120,0,100,100,0,0,0);
DELETE FROM gameobject WHERE guid = '5012168';
DELETE FROM game_event_gameobject WHERE guid = '5012168';
DELETE FROM gameobject_battleground WHERE guid = '5012168';
REPLACE INTO `creature` VALUES (2573847,61162,0,0,0,1,5591.85,-1052.72,378.964,2.23408,300,300,10,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577395,61162,0,0,0,1,5617.45,-1056.91,378.406,2.38381,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577395,61162,0,0,0,1,5617.45,-1056.91,378.406,2.38381,300,300,5,100,100,1,0,0);
UPDATE `creature` SET `position_x` = 6226.369141, `position_y` = -1911.339478, `position_z` = 562.612549, `orientation` = 6.256870 WHERE `guid` = 39663;
