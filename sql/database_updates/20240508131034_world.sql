
-- Changes by GHEOR
REPLACE INTO `gameobject` VALUES ( 5018612, 2003129, 429, 181.348, 508.997, -48.467, 4.83962, 0, 0, 0.660726, -0.750628, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5018612';
DELETE FROM game_event_gameobject WHERE guid = '5018612';
DELETE FROM gameobject_battleground WHERE guid = '5018612';
