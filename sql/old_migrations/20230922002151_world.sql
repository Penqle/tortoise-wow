
-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -1249.143311, `position_y` = 1509.311401, `position_z` = 81.748268, `orientation` = 6.000592 WHERE `guid` = 2575109;

-- Changes by GHEOR
REPLACE INTO `gameobject` VALUES ( 5016750, 2000255, 451, 16754.5, 15901, 47.128, 4.77508, 0, 0, 0.6846, -0.728919, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016750';
DELETE FROM game_event_gameobject WHERE guid = '5016750';
DELETE FROM gameobject_battleground WHERE guid = '5016750';
REPLACE INTO `gameobject` VALUES ( 5016751, 2003803, 451, 16754.4, 15899.3, 47.0947, 1.88559, 0, 0, 0.809205, 0.587527, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016751';
DELETE FROM game_event_gameobject WHERE guid = '5016751';
DELETE FROM gameobject_battleground WHERE guid = '5016751';
REPLACE INTO `gameobject` VALUES ( 5016752, 2003840, 451, 16757.7, 15901.7, 47.4866, 4.6769, 0, 0, 0.719543, -0.694448, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016752';
DELETE FROM game_event_gameobject WHERE guid = '5016752';
DELETE FROM gameobject_battleground WHERE guid = '5016752';
REPLACE INTO `gameobject` VALUES ( 5016753, 2004610, 451, 16759.7, 15901.3, 47.7686, 4.43814, 0, 0, 0.797129, -0.603809, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016753';
DELETE FROM game_event_gameobject WHERE guid = '5016753';
DELETE FROM gameobject_battleground WHERE guid = '5016753';
REPLACE INTO `gameobject` VALUES ( 5016754, 2002773, 451, 16760.7, 15898.8, 47.7204, 2.91839, 0, 0, 0.993779, 0.111368, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016754';
DELETE FROM game_event_gameobject WHERE guid = '5016754';
DELETE FROM gameobject_battleground WHERE guid = '5016754';
