
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573030,61099,0,0,0,1,-8949.85,-6874.78,21.2954,3.94407,300,300,4,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573030,61099,0,0,0,1,-8949.85,-6874.78,21.2954,3.94407,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573169,61083,0,0,0,1,-8925.1,-6935.13,8.28551,2.35279,120,120,5,100,100,1,0,0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2573766,61096,0,0,0,1,-7643.61,-6722.32,4.58924,5.44124,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573767,61096,0,0,0,1,-7637.58,-6799.35,2.30557,2.49993,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573768,61096,0,0,0,1,-7595.4,-6705.03,12.8403,1.12548,120,120,0,100,100,0,0,0);
UPDATE creature SET spawntimesecsmin=5 WHERE guid=2573768;
UPDATE creature SET spawntimesecsmin=5 WHERE guid=2573766;
UPDATE creature SET spawntimesecsmin=5 WHERE guid=2573767;
REPLACE INTO `creature` VALUES (2573769,61096,0,0,0,1,-7623.22,-6715.6,6.44536,4.36918,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573770,61096,0,0,0,1,-7583.09,-6773.91,24.7895,2.42924,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-8898.800781', position_y = '-6498.705078', position_z = '10.656863', orientation = '0.000325' WHERE guid = '2573765';
UPDATE creature SET position_x = '-8898.745117', position_y = '-6498.552246', position_z = '10.731578', orientation = '0.071796' WHERE guid = '2573765';
UPDATE creature SET position_x = '-2696.239746', position_y = '1107.256104', position_z = '55.199841', orientation = '1.525953' WHERE guid = '2573543';
UPDATE creature SET position_x = '-2696.604736', position_y = '1106.720703', position_z = '55.388016', orientation = '1.443485' WHERE guid = '2573543';
UPDATE creature SET position_x = '-2696.268799', position_y = '1106.670532', position_z = '55.437447', orientation = '1.950069' WHERE guid = '2573543';
UPDATE creature SET position_x = '-2695.802734', position_y = '1106.812012', position_z = '55.477787', orientation = '2.385504' WHERE guid = '2573543';
