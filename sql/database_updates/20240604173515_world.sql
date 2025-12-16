
-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2583546,9987,0,0,0,1,16229.1,16268.4,13.1582,5.00529,120,120,0,100,100,0,0,0);

-- Changes by COCELY
DELETE FROM gameobject WHERE guid = '5003329';
DELETE FROM game_event_gameobject WHERE guid = '5003329';
DELETE FROM gameobject_battleground WHERE guid = '5003329';
DELETE FROM gameobject WHERE guid = '5001441';
DELETE FROM game_event_gameobject WHERE guid = '5001441';
DELETE FROM gameobject_battleground WHERE guid = '5001441';
DELETE FROM gameobject WHERE guid = '5003330';
DELETE FROM game_event_gameobject WHERE guid = '5003330';
DELETE FROM gameobject_battleground WHERE guid = '5003330';
DELETE FROM gameobject WHERE guid = '5001433';
DELETE FROM game_event_gameobject WHERE guid = '5001433';
DELETE FROM gameobject_battleground WHERE guid = '5001433';
DELETE FROM gameobject WHERE guid = '5000512';
DELETE FROM game_event_gameobject WHERE guid = '5000512';
DELETE FROM gameobject_battleground WHERE guid = '5000512';
DELETE FROM gameobject WHERE guid = '5001437';
DELETE FROM game_event_gameobject WHERE guid = '5001437';
DELETE FROM gameobject_battleground WHERE guid = '5001437';
DELETE FROM gameobject WHERE guid = '5001434';
DELETE FROM game_event_gameobject WHERE guid = '5001434';
DELETE FROM gameobject_battleground WHERE guid = '5001434';

-- Changes by DRAGU
DELETE FROM `npc_vendor` WHERE `entry`='91959' AND `item`='9260';
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`) VALUES('91959','4595','0','0','0');
UPDATE `creature` SET `position_x` = -14005.245117, `position_y` = 2282.107422, `position_z` = 59.547104, `orientation` = 6.035007 WHERE `guid` = 2567326;
UPDATE `creature` SET `position_x` = -13998.135742, `position_y` = 2272.729004, `position_z` = 60.405087, `orientation` = 6.208764 WHERE `guid` = 2567327;
UPDATE `creature` SET `position_x` = -13997.411133, `position_y` = 2282.439209, `position_z` = 59.784691, `orientation` = 6.208764 WHERE `guid` = 2567326;
UPDATE `creature` SET `position_x` = -13997.948242, `position_y` = 2274.141602, `position_z` = 59.914036, `orientation` = 6.229970 WHERE `guid` = 2567327;
UPDATE `creature` SET `position_x` = -14011.561523, `position_y` = 2273.181152, `position_z` = 59.753796, `orientation` = 6.237825 WHERE `guid` = 2567327;
UPDATE `creature` SET `position_x` = -14011.022461, `position_y` = 2281.850830, `position_z` = 59.279408, `orientation` = 6.214263 WHERE `guid` = 2567326;
REPLACE INTO `gameobject` VALUES ( 5019607, 2004031, 0, -14089.1, 2271.81, 66.7103, 6.09724, 0, 0, 0.0928383, -0.995681, 300, 300, 100, 1, 0, 0);
