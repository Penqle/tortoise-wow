
-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5018339, 2003493, 0, -8802.48, 627.743, 94.7289, 0.735482, 0, 0, 0.359508, 0.933142, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5018339';
DELETE FROM game_event_gameobject WHERE guid = '5018339';
DELETE FROM gameobject_battleground WHERE guid = '5018339';
