
-- Changes by GHEOR
REPLACE INTO `gameobject` VALUES ( 5019637, 2020111, 814, -11216.9, -1734.32, 137.354, 4.65235, 0, 0, 0.728013, -0.685563, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5019638, 2003563, 814, -11118.6, -1861.84, 165.767, 0.81096, 0, 0, 0.39446, 0.918913, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5019638';
DELETE FROM game_event_gameobject WHERE guid = '5019638';
DELETE FROM gameobject_battleground WHERE guid = '5019638';

-- Changes by ZAAS
REPLACE INTO `creature` VALUES (2583650,50515,0,0,0,1,16275.9,16319.7,13.6291,1.55136,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583651,50516,0,0,0,1,16273.2,16318.1,13.8698,6.27946,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583651;
DELETE FROM creature_addon WHERE guid=2583651;
DELETE FROM creature_movement WHERE id=2583651;
DELETE FROM game_event_creature WHERE guid=2583651;
DELETE FROM game_event_creature_data WHERE guid=2583651;
DELETE FROM creature_battleground WHERE guid=2583651;
DELETE FROM creature WHERE guid=2583650;
DELETE FROM creature_addon WHERE guid=2583650;
DELETE FROM creature_movement WHERE id=2583650;
DELETE FROM game_event_creature WHERE guid=2583650;
DELETE FROM game_event_creature_data WHERE guid=2583650;
DELETE FROM creature_battleground WHERE guid=2583650;
REPLACE INTO `creature` VALUES (2583652,50516,0,0,0,1,16271.4,16318.1,14.059,6.20275,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583653,50514,0,0,0,1,16271.3,16316.1,13.9898,6.21008,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583654,50516,0,0,0,1,16271.6,16320.2,14.116,6.21008,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583652;
DELETE FROM creature_addon WHERE guid=2583652;
DELETE FROM creature_movement WHERE id=2583652;
DELETE FROM game_event_creature WHERE guid=2583652;
DELETE FROM game_event_creature_data WHERE guid=2583652;
DELETE FROM creature_battleground WHERE guid=2583652;
REPLACE INTO `creature` VALUES (2583655,50514,0,0,0,1,16271.4,16318.1,14.0611,6.21008,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583653;
DELETE FROM creature_addon WHERE guid=2583653;
DELETE FROM creature_movement WHERE id=2583653;
DELETE FROM game_event_creature WHERE guid=2583653;
DELETE FROM game_event_creature_data WHERE guid=2583653;
DELETE FROM creature_battleground WHERE guid=2583653;
REPLACE INTO `creature` VALUES (2583656,50514,0,0,0,1,16271.3,16316.1,13.991,6.21008,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583656;
DELETE FROM creature_addon WHERE guid=2583656;
DELETE FROM creature_movement WHERE id=2583656;
DELETE FROM game_event_creature WHERE guid=2583656;
DELETE FROM game_event_creature_data WHERE guid=2583656;
DELETE FROM creature_battleground WHERE guid=2583656;
REPLACE INTO `creature` VALUES (2583657,50516,0,0,0,1,16271.3,16316.1,13.991,6.21008,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583658,50516,0,0,0,1,16270.2,16318.2,14.1126,6.21008,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583659,50516,0,0,0,1,16272.7,16318,13.9236,6.21008,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583655;
DELETE FROM creature_addon WHERE guid=2583655;
DELETE FROM creature_movement WHERE id=2583655;
DELETE FROM game_event_creature WHERE guid=2583655;
DELETE FROM game_event_creature_data WHERE guid=2583655;
DELETE FROM creature_battleground WHERE guid=2583655;
REPLACE INTO `creature` VALUES (2583660,50516,0,0,0,1,16271.5,16318.1,14.0556,3.07154,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583660;
DELETE FROM creature_addon WHERE guid=2583660;
DELETE FROM creature_movement WHERE id=2583660;
DELETE FROM game_event_creature WHERE guid=2583660;
DELETE FROM game_event_creature_data WHERE guid=2583660;
DELETE FROM creature_battleground WHERE guid=2583660;
REPLACE INTO `creature` VALUES (2583661,50514,0,0,0,1,16271.4,16318.1,14.0603,3.09074,120,120,0,100,100,0,0,0);

-- Changes by MEFLOR
DELETE FROM creature WHERE guid=2583548;
DELETE FROM creature_addon WHERE guid=2583548;
DELETE FROM creature_movement WHERE id=2583548;
DELETE FROM game_event_creature WHERE guid=2583548;
DELETE FROM game_event_creature_data WHERE guid=2583548;
DELETE FROM creature_battleground WHERE guid=2583548;
DELETE FROM gameobject WHERE guid = '5019624';
DELETE FROM game_event_gameobject WHERE guid = '5019624';
DELETE FROM gameobject_battleground WHERE guid = '5019624';
DELETE FROM gameobject WHERE guid = '5019625';
DELETE FROM game_event_gameobject WHERE guid = '5019625';
DELETE FROM gameobject_battleground WHERE guid = '5019625';
DELETE FROM gameobject WHERE guid = '5019623';
DELETE FROM game_event_gameobject WHERE guid = '5019623';
DELETE FROM gameobject_battleground WHERE guid = '5019623';

-- Changes by DRAGU
DELETE FROM gameobject WHERE guid = '4007138';
DELETE FROM game_event_gameobject WHERE guid = '4007138';
DELETE FROM gameobject_battleground WHERE guid = '4007138';
