
-- Changes by SHANG
DELETE FROM gameobject WHERE guid = '4007523';
DELETE FROM game_event_gameobject WHERE guid = '4007523';
DELETE FROM gameobject_battleground WHERE guid = '4007523';
DELETE FROM gameobject WHERE guid = '4009379';
DELETE FROM game_event_gameobject WHERE guid = '4009379';
DELETE FROM gameobject_battleground WHERE guid = '4009379';
DELETE FROM gameobject WHERE guid = '5014334';
DELETE FROM game_event_gameobject WHERE guid = '5014334';
DELETE FROM gameobject_battleground WHERE guid = '5014334';
DELETE FROM gameobject WHERE guid = '4006144';
DELETE FROM game_event_gameobject WHERE guid = '4006144';
DELETE FROM gameobject_battleground WHERE guid = '4006144';

-- Changes by ZORIZAR
REPLACE INTO `gameobject` VALUES ( 5018590, 24498, 451, 15688.5, 16555.6, 48.6115, 2.71575, 0, 0, 0.977418, 0.211314, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5018591, 179781, 451, 15618.2, 16252.5, 69.4452, 4.63289, 0, 0, 0.734646, -0.67845, 300, 300, 100, 1, 0, 0);
