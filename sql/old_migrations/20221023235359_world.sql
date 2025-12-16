
-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5010995, 2010939, 1, 16226.2, 16257, 13.2022, 4.49635, 0, 0, 0.779218, -0.626753, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010995';
DELETE FROM game_event_gameobject WHERE guid = '5010995';
DELETE FROM gameobject_battleground WHERE guid = '5010995';
REPLACE INTO `gameobject` VALUES ( 5010996, 2010940, 1, 16225, 16257.7, 13.156, 1.82207, 0, 0, 0.790138, 0.612929, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010996';
DELETE FROM game_event_gameobject WHERE guid = '5010996';
DELETE FROM gameobject_battleground WHERE guid = '5010996';
