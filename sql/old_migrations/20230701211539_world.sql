
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577923,60748,0,0,0,1,3095.27,-3388.17,143.576,1.89591,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577923;
DELETE FROM creature_addon WHERE guid=2577923;
DELETE FROM creature_movement WHERE id=2577923;
DELETE FROM game_event_creature WHERE guid=2577923;
DELETE FROM game_event_creature_data WHERE guid=2577923;
DELETE FROM creature_battleground WHERE guid=2577923;
REPLACE INTO `gameobject` VALUES ( 5015799, 2001828, 1, 5708.98, -2983.5, 1548.5, 4.69395, 0, 0, 0.713597, -0.700556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015799, 2001828, 1, 5708.98, -2983.5, 1548.1, 4.69395, 0, 0, 0.713597, -0.700556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015799, 2001828, 1, 5708.98, -2983.5, 1547.7, 4.69395, 0, 0, 0.713597, -0.700556, 300, 300, 100, 1, 0, 0);

-- Changes by VOJI
DELETE FROM gameobject WHERE guid = '4004969';
DELETE FROM game_event_gameobject WHERE guid = '4004969';
DELETE FROM gameobject_battleground WHERE guid = '4004969';
DELETE FROM gameobject WHERE guid = '4004965';
DELETE FROM game_event_gameobject WHERE guid = '4004965';
DELETE FROM gameobject_battleground WHERE guid = '4004965';
DELETE FROM gameobject WHERE guid = '4004967';
DELETE FROM game_event_gameobject WHERE guid = '4004967';
DELETE FROM gameobject_battleground WHERE guid = '4004967';

-- Changes by DRAGUNOVI
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (892,-5289.106934,-316.280518,36.149006,2.643448,1,'chimaeraroostvale');
