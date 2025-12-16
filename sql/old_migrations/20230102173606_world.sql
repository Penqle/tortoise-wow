
-- Changes by JOE
UPDATE creature SET position_x = '1763.729614', position_y = '1330.931396', position_z = '154.791428', orientation = '0.400429' WHERE guid = '2559966';
REPLACE INTO `creature` VALUES (2573966,51299,0,0,0,0,-9376.06,-1342.96,54.6909,2.99065,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-9405.041016', position_y = '-1343.472534', position_z = '50.027763', orientation = '2.417308' WHERE guid = '2573966';
DELETE FROM creature WHERE guid=2573966;
DELETE FROM creature_addon WHERE guid=2573966;
DELETE FROM creature_movement WHERE id=2573966;
DELETE FROM game_event_creature WHERE guid=2573966;
DELETE FROM game_event_creature_data WHERE guid=2573966;
DELETE FROM creature_battleground WHERE guid=2573966;
