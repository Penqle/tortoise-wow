
-- Changes by JOE
UPDATE creature SET position_x = '-3579.982910', position_y = '-4084.886963', position_z = '-4.601640', orientation = '1.971700' WHERE guid = '18643';
REPLACE INTO `gameobject` VALUES ( 5012326, 144112, 1, -8872.5, -6537.74, 13.4056, 1.67519, 0, 0, 0.743034, 0.669253, 300, 300, 100, 1, 0, 0);
UPDATE creature SET position_x = '1284.117310', position_y = '-631.099731', position_z = '42.537022', orientation = '3.401522' WHERE guid = '29856';
REPLACE INTO `gameobject` VALUES ( 31401, 3662, 0, -8780.1, 454.366, 98.4461, 1.58825, 0, 0, 0.71325, 0.700909, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 31401, 3662, 0, -8779.62, 456.313, 98.3902, 1.58825, 0, 0, 0.71325, 0.700909, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 31401, 3662, 0, -8781.7, 455.731, 98.4322, 1.58825, 0, 0, 0.71325, 0.700909, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 32287, 3662, 0, -8823.47, 726.243, 98.4082, 2.18166, 0, 0, 0.887011, 0.461749, 180, 180, 100, 1, 0, 0);
UPDATE creature SET position_x = '-9483.416016', position_y = '-210.467697', position_z = '58.711956', orientation = '4.082064' WHERE guid = '2555624';
UPDATE creature SET position_x = '-9482.813477', position_y = '-212.385193', position_z = '58.914585', orientation = '3.979965' WHERE guid = '2555624';
DELETE FROM creature WHERE guid=1245767;
DELETE FROM creature_addon WHERE guid=1245767;
DELETE FROM creature_movement WHERE id=1245767;
DELETE FROM game_event_creature WHERE guid=1245767;
DELETE FROM game_event_creature_data WHERE guid=1245767;
DELETE FROM creature_battleground WHERE guid=1245767;
UPDATE creature SET position_x = '1959.112305', position_y = '1325.264526', position_z = '146.489288', orientation = '1.499259' WHERE guid = '2559944';
UPDATE creature SET position_x = '1951.568970', position_y = '1411.390869', position_z = '154.705658', orientation = '4.043185' WHERE guid = '2559965';
UPDATE creature SET position_x = '1864.135742', position_y = '1277.886963', position_z = '156.252380', orientation = '1.294277' WHERE guid = '2559966';

-- Changes by TORTA
DELETE FROM gameobject WHERE guid = '3996095';
DELETE FROM game_event_gameobject WHERE guid = '3996095';
DELETE FROM gameobject_battleground WHERE guid = '3996095';

-- Changes by JOE
REPLACE INTO `gameobject` VALUES ( 364882, 180905, 0, -8826.7, 632.808, 94.2572, 0.418879, 0, 0, 0.207912, 0.978148, 120, 120, 255, 1, 0, 0);
