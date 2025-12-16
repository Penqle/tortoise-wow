/*
 Navicat MySQL Data Transfer

 Source Server         : _localhost
 Source Server Type    : MariaDB
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : tw_world

 Target Server Type    : MariaDB
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 11/01/2024 13:18:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for spell_target_position
-- ----------------------------
DROP TABLE IF EXISTS `spell_target_position`;
CREATE TABLE `spell_target_position`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `target_map` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `target_position_x` float NOT NULL DEFAULT 0,
  `target_position_y` float NOT NULL DEFAULT 0,
  `target_position_z` float NOT NULL DEFAULT 0,
  `target_orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `target_map`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Spell System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_target_position
-- ----------------------------
INSERT INTO `spell_target_position` VALUES (442, 129, 2592.55, 1107.5, 51.29, 4.74);
INSERT INTO `spell_target_position` VALUES (444, 1, -4658.12, -2526.35, 82.9671, 0);
INSERT INTO `spell_target_position` VALUES (446, 109, -319.24, 99.9, -131.85, 3.19);
INSERT INTO `spell_target_position` VALUES (3561, 0, -9003.46, 870.031, 29.6206, 5.28);
INSERT INTO `spell_target_position` VALUES (3562, 0, -4613.62, -915.38, 501.062, 3.88);
INSERT INTO `spell_target_position` VALUES (3563, 0, 1773.47, 61.121, -46.3207, 0.54);
INSERT INTO `spell_target_position` VALUES (3565, 1, 9660.81, 2513.64, 1331.66, 3.06);
INSERT INTO `spell_target_position` VALUES (3566, 1, -964.98, 283.433, 111.187, 3.02);
INSERT INTO `spell_target_position` VALUES (3567, 1, 1469.85, -4221.52, 58.9939, 5.98);
INSERT INTO `spell_target_position` VALUES (17334, 0, -9003.46, 870.031, 29.6206, 2.28);
INSERT INTO `spell_target_position` VALUES (17608, 1, 9660.81, 2513.64, 1331.66, 3.06);
INSERT INTO `spell_target_position` VALUES (17609, 1, 1469.85, -4221.52, 58.9939, 5.98);
INSERT INTO `spell_target_position` VALUES (17610, 1, -964.98, 283.433, 111.187, 3.02);
INSERT INTO `spell_target_position` VALUES (17611, 0, 1773.47, 61.121, -46.3207, 0.54);
INSERT INTO `spell_target_position` VALUES (18960, 1, 7991.88, -2679.84, 512.1, 0.034183);
INSERT INTO `spell_target_position` VALUES (23442, 1, 6755.33, -4658.09, 724.8, 3.4049);
INSERT INTO `spell_target_position` VALUES (12510, 1, 3778.74, -4611.78, 227.252, 4.23263);
INSERT INTO `spell_target_position` VALUES (29237, 533, 3005.8, -3434.3, 294, 0);
INSERT INTO `spell_target_position` VALUES (33, 0, -10643, 1052, 34, 0);
INSERT INTO `spell_target_position` VALUES (31, 0, -9464, 62, 56, 0);
INSERT INTO `spell_target_position` VALUES (34, 0, -10368, -422, 66, 0);
INSERT INTO `spell_target_position` VALUES (35, 0, -9104, -70, 83, 0);
INSERT INTO `spell_target_position` VALUES (427, 189, 1688.99, 1053.48, 18.6775, 0.00117);
INSERT INTO `spell_target_position` VALUES (428, 0, -11020, 1436, 44, 0);
INSERT INTO `spell_target_position` VALUES (445, 0, -10566, -1189, 28, 0);
INSERT INTO `spell_target_position` VALUES (4996, 1, 1552.5, -4420.66, 8.94802, 0);
INSERT INTO `spell_target_position` VALUES (4997, 0, -14457, 496.45, 39.1392, 0);
INSERT INTO `spell_target_position` VALUES (4998, 0, -12415, 207.618, 31.5017, 0.124875);
INSERT INTO `spell_target_position` VALUES (4999, 1, -998.359, -3827.52, 5.44507, 4.16654);
INSERT INTO `spell_target_position` VALUES (6348, 0, -3752.81, -851.558, 10.1153, 0);
INSERT INTO `spell_target_position` VALUES (6349, 1, 6581.05, 767.5, 5.78428, 6.01616);
INSERT INTO `spell_target_position` VALUES (6483, 1, 5483.9, -749.881, 334.621, 0);
INSERT INTO `spell_target_position` VALUES (6719, 1, -3615.49, -4467.34, 24.3141, 0);
INSERT INTO `spell_target_position` VALUES (8735, 48, -151.89, 106.96, -39.87, 4.53);
INSERT INTO `spell_target_position` VALUES (9268, 1, 8786.36, 967.445, 30.197, 3.39632);
INSERT INTO `spell_target_position` VALUES (11362, 0, -5100.3, 754.3, 260.55, 5.42);
INSERT INTO `spell_target_position` VALUES (11409, 0, -14462, 460, 16, 3.49);
INSERT INTO `spell_target_position` VALUES (447, 0, 16229, 16265, 14, 3.19);
INSERT INTO `spell_target_position` VALUES (3721, 0, 16229, 16265, 14, 3.19);
INSERT INTO `spell_target_position` VALUES (1936, 0, 16229, 16265, 14, 0);
INSERT INTO `spell_target_position` VALUES (443, 0, 16229, 16265, 14, 4.74);
INSERT INTO `spell_target_position` VALUES (4801, 531, -8330.1, 2122.84, 133.07, 5.04);
INSERT INTO `spell_target_position` VALUES (12520, 1, 3644.95, -4700.25, 120.81, 6.25);
INSERT INTO `spell_target_position` VALUES (12241, 1, -3282.15, 2062.17, 245.96, 4.15);
INSERT INTO `spell_target_position` VALUES (6766, 1, -2354.03, -1902.07, 95.78, 4.6);
INSERT INTO `spell_target_position` VALUES (12885, 0, -11235, -2834.75, 157.924, 4.71239);
INSERT INTO `spell_target_position` VALUES (13142, 0, -11235, -2834.75, 157.924, 4.71239);
INSERT INTO `spell_target_position` VALUES (25725, 509, -9717.2, 1517.81, 27.6, 5.4);
INSERT INTO `spell_target_position` VALUES (6714, 1, -4884.49, -1596.2, 101.2, 3.17);
INSERT INTO `spell_target_position` VALUES (23441, 1, -7109.1, -3825.21, 10.151, 2.8331);
INSERT INTO `spell_target_position` VALUES (21128, 349, 419.84, 11.3365, -131.079, 0);
INSERT INTO `spell_target_position` VALUES (17159, 1, 6106.4, -4191.1, 849.74, 0.0201);
INSERT INTO `spell_target_position` VALUES (17160, 1, 5904.2, -4045.9, 596.43, 0.0083);
INSERT INTO `spell_target_position` VALUES (23446, 1, -7109.1, -3825.21, 10.151, 2.8331);
INSERT INTO `spell_target_position` VALUES (22651, 429, -25.98, -448.24, -36.09, 3.13);
INSERT INTO `spell_target_position` VALUES (8995, 0, -2646.62, -2455.57, 80.87, 0);
INSERT INTO `spell_target_position` VALUES (8996, 0, -2645.25, -2449.5, 82.65, 0);
INSERT INTO `spell_target_position` VALUES (8997, 0, -2648.88, -2442.54, 80.71, 0);
INSERT INTO `spell_target_position` VALUES (12158, 90, -478.448, -89.3074, -146.602, 0);
INSERT INTO `spell_target_position` VALUES (12159, 90, -562.7, -121.674, -150.862, 0);
INSERT INTO `spell_target_position` VALUES (13912, 230, 1380.58, -819.48, -92.72, 4.69);
INSERT INTO `spell_target_position` VALUES (23460, 469, -7672.46, -1107.19, 396.65, 0.59);
INSERT INTO `spell_target_position` VALUES (24325, 309, -11682.8, -1713.37, 8.7727, 0.16);
INSERT INTO `spell_target_position` VALUES (24593, 309, -11726.3, -1777.38, 10.46, 0.16);
INSERT INTO `spell_target_position` VALUES (17607, 0, -4613.62, -915.38, 501.062, 3.88);
INSERT INTO `spell_target_position` VALUES (8606, 0, 325.8, -1481.47, 42.68, 0.47);
INSERT INTO `spell_target_position` VALUES (11012, 1, -9619.32, -2815.02, 10.89, 0.37);
INSERT INTO `spell_target_position` VALUES (13044, 0, -11235, -2834.75, 157.924, 4.71239);
INSERT INTO `spell_target_position` VALUES (13461, 0, -11235, -2834.75, 157.924, 4.71239);
INSERT INTO `spell_target_position` VALUES (22950, 429, -39.39, 812.47, -11.64, 4.77);
INSERT INTO `spell_target_position` VALUES (22951, 1, -3760.87, 1086.28, 131.96, 1.53);
INSERT INTO `spell_target_position` VALUES (22202, 249, -101.142, -176.662, -93.5392, 0);
INSERT INTO `spell_target_position` VALUES (22201, 249, -55.1297, -158.799, -94.2321, 0);
INSERT INTO `spell_target_position` VALUES (22200, 249, -54.4049, -146.587, -91.0617, 0);
INSERT INTO `spell_target_position` VALUES (22199, 249, -83.2411, -166.152, -93.9348, 0);
INSERT INTO `spell_target_position` VALUES (22198, 249, -101.142, -176.662, -93.5392, 0);
INSERT INTO `spell_target_position` VALUES (22197, 249, -107.224, -198.447, -94.0403, 0);
INSERT INTO `spell_target_position` VALUES (22196, 249, -107.857, -215.289, -96.1121, 0);
INSERT INTO `spell_target_position` VALUES (22195, 249, -106.001, -236.07, -94.474, 0);
INSERT INTO `spell_target_position` VALUES (22194, 249, -96.1528, -252.423, -93.7457, 0);
INSERT INTO `spell_target_position` VALUES (22193, 249, -82.0559, -263.803, -93.9232, 0);
INSERT INTO `spell_target_position` VALUES (22192, 249, -31.4963, -250.123, -65.1278, 0);
INSERT INTO `spell_target_position` VALUES (22191, 249, -52.5138, -277.729, -92.7831, 0);
INSERT INTO `spell_target_position` VALUES (17475, 329, 4017.4, -3339.7, 115.058, 5.48);
INSERT INTO `spell_target_position` VALUES (17476, 329, 4013.18, -3351.8, 115.052, 0.13);
INSERT INTO `spell_target_position` VALUES (17477, 329, 4017.73, -3363.47, 115.057, 0.72);
INSERT INTO `spell_target_position` VALUES (17478, 329, 4048.87, -3363.22, 115.054, 3.62);
INSERT INTO `spell_target_position` VALUES (17479, 329, 4051.77, -3350.89, 115.055, 3.06);
INSERT INTO `spell_target_position` VALUES (17480, 329, 4048.37, -3339.96, 115.055, 2.45);
INSERT INTO `spell_target_position` VALUES (8136, 43, 116.35, 239.8, -95.08, 3.1);
INSERT INTO `spell_target_position` VALUES (18576, 249, -37.7439, -243.668, -88.2177, 1.416);
INSERT INTO `spell_target_position` VALUES (18578, 249, -35.8053, -232.029, -87.7492, 1.416);
INSERT INTO `spell_target_position` VALUES (18579, 249, -34.0457, -224.715, -85.5295, 1.416);
INSERT INTO `spell_target_position` VALUES (18580, 249, -32.0816, -214.917, -88.3274, 1.416);
INSERT INTO `spell_target_position` VALUES (18581, 249, -36.6117, -202.685, -85.6538, 1.416);
INSERT INTO `spell_target_position` VALUES (18582, 249, -37.0673, -195.759, -87.7458, 1.416);
INSERT INTO `spell_target_position` VALUES (18583, 249, -37.7285, -188.617, -88.0749, 1.416);
INSERT INTO `spell_target_position` VALUES (18609, 249, -37.7285, -188.617, -88.0749, 4.526);
INSERT INTO `spell_target_position` VALUES (18611, 249, -37.0673, -195.759, -87.7458, 4.526);
INSERT INTO `spell_target_position` VALUES (18612, 249, -36.6117, -202.685, -85.6538, 4.526);
INSERT INTO `spell_target_position` VALUES (18613, 249, -32.0816, -214.917, -88.3274, 4.526);
INSERT INTO `spell_target_position` VALUES (18614, 249, -34.0457, -224.715, -85.5295, 4.526);
INSERT INTO `spell_target_position` VALUES (18615, 249, -35.8053, -232.029, -87.7492, 4.526);
INSERT INTO `spell_target_position` VALUES (18616, 249, -37.7439, -243.668, -88.2177, 4.526);
INSERT INTO `spell_target_position` VALUES (18584, 249, 6.01671, -181.306, -85.6546, 3.776);
INSERT INTO `spell_target_position` VALUES (18585, 249, 3.86022, -183.227, -86.3754, 3.776);
INSERT INTO `spell_target_position` VALUES (18586, 249, -2.52965, -188.69, -87.1729, 3.776);
INSERT INTO `spell_target_position` VALUES (18587, 249, -8.4493, -193.958, -87.565, 3.776);
INSERT INTO `spell_target_position` VALUES (18588, 249, -14.3212, -199.462, -87.9225, 3.776);
INSERT INTO `spell_target_position` VALUES (18589, 249, -15.6021, -216.894, -88.4032, 3.776);
INSERT INTO `spell_target_position` VALUES (18590, 249, -23.6503, -221.969, -89.1727, 3.776);
INSERT INTO `spell_target_position` VALUES (18591, 249, -29.4959, -213.014, -88.9104, 3.776);
INSERT INTO `spell_target_position` VALUES (18592, 249, -35.4399, -217.26, -87.3363, 3.776);
INSERT INTO `spell_target_position` VALUES (18593, 249, -41.7621, -221.897, -86.1141, 3.776);
INSERT INTO `spell_target_position` VALUES (18594, 249, -51.0675, -228.91, -85.7656, 3.776);
INSERT INTO `spell_target_position` VALUES (18595, 249, -56.5597, -241.224, -85.4236, 3.776);
INSERT INTO `spell_target_position` VALUES (18564, 249, -56.5597, -241.224, -85.4236, 0.666);
INSERT INTO `spell_target_position` VALUES (18565, 249, -51.0675, -228.91, -85.7656, 0.666);
INSERT INTO `spell_target_position` VALUES (18566, 249, -41.7621, -221.897, -86.1141, 0.666);
INSERT INTO `spell_target_position` VALUES (18567, 249, -35.4399, -217.26, -87.3363, 0.666);
INSERT INTO `spell_target_position` VALUES (18568, 249, -29.4959, -213.014, -88.9104, 0.666);
INSERT INTO `spell_target_position` VALUES (18569, 249, -23.6503, -221.969, -89.1727, 0.666);
INSERT INTO `spell_target_position` VALUES (18570, 249, -15.6021, -216.894, -88.4032, 0.666);
INSERT INTO `spell_target_position` VALUES (18571, 249, -14.3212, -199.462, -87.9225, 0.666);
INSERT INTO `spell_target_position` VALUES (18572, 249, -8.4493, -193.958, -87.565, 0.666);
INSERT INTO `spell_target_position` VALUES (18573, 249, -2.52965, -188.69, -87.1729, 0.666);
INSERT INTO `spell_target_position` VALUES (18574, 249, 3.86022, -183.227, -86.3754, 0.666);
INSERT INTO `spell_target_position` VALUES (18575, 249, 6.01671, -181.306, -85.6546, 0.666);
INSERT INTO `spell_target_position` VALUES (18596, 249, -58.2509, -189.02, -85.2923, 5.587);
INSERT INTO `spell_target_position` VALUES (18597, 249, -52.0063, -193.797, -85.8088, 5.587);
INSERT INTO `spell_target_position` VALUES (18598, 249, -46.1355, -198.549, -85.9018, 5.587);
INSERT INTO `spell_target_position` VALUES (18599, 249, -40.5002, -203.001, -85.5551, 5.587);
INSERT INTO `spell_target_position` VALUES (18600, 249, -30.9076, -211.058, -88.5921, 5.587);
INSERT INTO `spell_target_position` VALUES (18601, 249, -20.0981, -218.681, -88.9371, 5.587);
INSERT INTO `spell_target_position` VALUES (18602, 249, -12.2232, -224.666, -87.8563, 5.587);
INSERT INTO `spell_target_position` VALUES (18603, 249, -6.4753, -229.099, -87.0764, 5.587);
INSERT INTO `spell_target_position` VALUES (18604, 249, -2.01026, -232.542, -86.9951, 5.587);
INSERT INTO `spell_target_position` VALUES (18605, 249, 2.7363, -236.202, -86.7904, 5.587);
INSERT INTO `spell_target_position` VALUES (18606, 249, 7.19778, -239.643, -86.3073, 5.587);
INSERT INTO `spell_target_position` VALUES (18607, 249, 12.1209, -243.439, -85.8743, 5.587);
INSERT INTO `spell_target_position` VALUES (18617, 249, 12.1209, -243.439, -85.8743, 2.428);
INSERT INTO `spell_target_position` VALUES (18619, 249, 7.19778, -239.643, -86.3073, 2.428);
INSERT INTO `spell_target_position` VALUES (18620, 249, 2.7363, -236.202, -86.7904, 2.428);
INSERT INTO `spell_target_position` VALUES (18621, 249, -2.01026, -232.542, -86.9951, 2.428);
INSERT INTO `spell_target_position` VALUES (18622, 249, -6.4753, -229.099, -87.0764, 2.428);
INSERT INTO `spell_target_position` VALUES (18623, 249, -12.2232, -224.666, -87.8563, 2.428);
INSERT INTO `spell_target_position` VALUES (18624, 249, -20.0981, -218.681, -88.9371, 2.428);
INSERT INTO `spell_target_position` VALUES (18625, 249, -30.9076, -211.058, -88.5921, 2.428);
INSERT INTO `spell_target_position` VALUES (18626, 249, -40.5002, -203.001, -85.5551, 2.428);
INSERT INTO `spell_target_position` VALUES (18627, 249, -46.1355, -198.549, -85.9018, 2.428);
INSERT INTO `spell_target_position` VALUES (18628, 249, -52.0063, -193.797, -85.8088, 2.428);
INSERT INTO `spell_target_position` VALUES (18618, 249, -58.2509, -189.02, -85.2923, 2.428);
INSERT INTO `spell_target_position` VALUES (7587, 33, -102.933, 2124.29, 155.648, 1.08944);
INSERT INTO `spell_target_position` VALUES (7586, 33, -105.88, 2154.87, 156.445, 5.82146);
INSERT INTO `spell_target_position` VALUES (7136, 33, -85.767, 2150.22, 155.607, 3.97629);
INSERT INTO `spell_target_position` VALUES (20534, 409, 736.516, -1176.35, -119.006, 0);
INSERT INTO `spell_target_position` VALUES (20618, 409, 736.516, -1176.35, -119.006, 0);
INSERT INTO `spell_target_position` VALUES (25004, 1, 7734.58, -2312.12, 452.68, 0.068726);
INSERT INTO `spell_target_position` VALUES (17086, 249, 20.7305, -215.238, -85.2544, 3.142);
INSERT INTO `spell_target_position` VALUES (17087, 249, 7.47957, -215.208, -86.0755, 3.142);
INSERT INTO `spell_target_position` VALUES (17088, 249, -2.04741, -215.186, -86.2797, 3.142);
INSERT INTO `spell_target_position` VALUES (17089, 249, -11.1894, -215.166, -87.8171, 3.142);
INSERT INTO `spell_target_position` VALUES (17090, 249, -20.3244, -215.145, -88.964, 3.142);
INSERT INTO `spell_target_position` VALUES (17091, 249, -28.2483, -215.127, -89.1917, 3.142);
INSERT INTO `spell_target_position` VALUES (17092, 249, -35.8993, -215.11, -87.1965, 3.142);
INSERT INTO `spell_target_position` VALUES (17093, 249, -42.6193, -215.095, -86.6636, 3.142);
INSERT INTO `spell_target_position` VALUES (17094, 249, -53.3433, -215.071, -85.5972, 3.142);
INSERT INTO `spell_target_position` VALUES (17095, 249, -61.8343, -215.052, -84.6734, 3.142);
INSERT INTO `spell_target_position` VALUES (17097, 249, -68.8342, -215.036, -84.0189, 3.142);
INSERT INTO `spell_target_position` VALUES (22267, 249, -75.736, -214.985, -83.3942, 3.142);
INSERT INTO `spell_target_position` VALUES (22268, 249, -84.0876, -214.858, -82.6401, 3.142);
INSERT INTO `spell_target_position` VALUES (21132, 249, -90.4244, -214.602, -82.4827, 3.142);
INSERT INTO `spell_target_position` VALUES (21133, 249, -96.5724, -214.354, -82.24, 3.142);
INSERT INTO `spell_target_position` VALUES (21135, 249, -102.07, -214.132, -80.5712, 3.142);
INSERT INTO `spell_target_position` VALUES (21136, 249, -107.386, -213.917, -77.447, 3.142);
INSERT INTO `spell_target_position` VALUES (21137, 249, -114.281, -213.866, -73.8511, 3.142);
INSERT INTO `spell_target_position` VALUES (21138, 249, -123.329, -213.608, -71.5599, 3.142);
INSERT INTO `spell_target_position` VALUES (21139, 249, -130.788, -213.424, -70.751, 3.142);
INSERT INTO `spell_target_position` VALUES (18351, 249, -68.8342, -215.036, -84.0189, 6.28);
INSERT INTO `spell_target_position` VALUES (18352, 249, -61.8343, -215.052, -84.6734, 6.28);
INSERT INTO `spell_target_position` VALUES (18353, 249, -53.3433, -215.071, -85.5972, 6.28);
INSERT INTO `spell_target_position` VALUES (18354, 249, -42.6193, -215.095, -86.6636, 6.28);
INSERT INTO `spell_target_position` VALUES (18355, 249, -35.8993, -215.11, -87.1965, 6.28);
INSERT INTO `spell_target_position` VALUES (18356, 249, -28.2483, -215.127, -89.1917, 6.28);
INSERT INTO `spell_target_position` VALUES (18357, 249, -20.3244, -215.145, -88.964, 6.28);
INSERT INTO `spell_target_position` VALUES (18358, 249, -11.1894, -215.166, -87.8171, 6.28);
INSERT INTO `spell_target_position` VALUES (18359, 249, -2.04741, -215.186, -86.2797, 6.28);
INSERT INTO `spell_target_position` VALUES (18360, 249, 7.47957, -215.208, -86.0755, 6.28);
INSERT INTO `spell_target_position` VALUES (18361, 249, 20.7305, -215.238, -85.2544, 6.28);
INSERT INTO `spell_target_position` VALUES (28147, 0, -11123.3, -2014.44, 47.0927, 0.675977);
INSERT INTO `spell_target_position` VALUES (518, 531, -8076.53, 1120.37, -88.5, 0);
INSERT INTO `spell_target_position` VALUES (25831, 531, -8150.18, 1146.97, -87.45, 0);
INSERT INTO `spell_target_position` VALUES (25832, 531, -8023.31, 1242.42, -83.47, 0);
INSERT INTO `spell_target_position` VALUES (720, 531, -8043.01, 1254.21, -84.19, 1.46);
INSERT INTO `spell_target_position` VALUES (731, 531, -8003, 1222.9, -82.1, 0);
INSERT INTO `spell_target_position` VALUES (1121, 531, -8022.68, 1150.08, -89.33, 5.2);
INSERT INTO `spell_target_position` VALUES (26220, 531, -8563.56, 2040.69, -97, 4.9426);
INSERT INTO `spell_target_position` VALUES (29181, 531, -8971.81, 1321.47, -104.249, 0);
INSERT INTO `spell_target_position` VALUES (29190, 531, -8632.84, 2055.87, 108.86, 0);
INSERT INTO `spell_target_position` VALUES (22860, 429, 633.437, 482.309, 29.4653, 3.198);
INSERT INTO `spell_target_position` VALUES (17278, 329, 3538.09, -2963.12, 125.001, 0.592);
INSERT INTO `spell_target_position` VALUES (16572, 0, -6046.85, -207.329, 418.304, 0);
INSERT INTO `spell_target_position` VALUES (16767, 0, -6046.73, -207.159, 417.267, 0);
INSERT INTO `spell_target_position` VALUES (16768, 0, -6051.39, -206.749, 418.159, 0);
INSERT INTO `spell_target_position` VALUES (16772, 0, -6046.84, -204.535, 416.897, 0);
INSERT INTO `spell_target_position` VALUES (16775, 0, -6044.47, -205.783, 417.267, 0);
INSERT INTO `spell_target_position` VALUES (16776, 0, -6044.54, -205.562, 417.663, 0);
INSERT INTO `spell_target_position` VALUES (16777, 0, -6044.53, -202.912, 416.756, 0);
INSERT INTO `spell_target_position` VALUES (16778, 0, -6042.18, -204.949, 416.336, 0);
INSERT INTO `spell_target_position` VALUES (16779, 0, -6042.02, -204.134, 416.894, 0);
INSERT INTO `spell_target_position` VALUES (16780, 0, -6044.79, -196.959, 419.19, 0);
INSERT INTO `spell_target_position` VALUES (18634, 0, -6076, -215, 424, 6.06);
INSERT INTO `spell_target_position` VALUES (18907, 0, -6074, -215, 423, 6.06);
INSERT INTO `spell_target_position` VALUES (19723, 0, -6074, -215, 423, 6.06);
INSERT INTO `spell_target_position` VALUES (16786, 0, -6078.3, -211.89, 424.197, 0);
INSERT INTO `spell_target_position` VALUES (8195, 531, -8306.33, 2062.45, 133.07, 1.95);
INSERT INTO `spell_target_position` VALUES (20449, 531, -8349.43, 2080.26, 125.66, 0.407);
INSERT INTO `spell_target_position` VALUES (25182, 1, -8133.34, 1525.13, 17.1904, 0);
INSERT INTO `spell_target_position` VALUES (17167, 0, 1291.52, -2161.9, 200, 2.69407);
INSERT INTO `spell_target_position` VALUES (25865, 531, -7977.89, 975.764, -41.55, 5.376);
INSERT INTO `spell_target_position` VALUES (25866, 531, -7963.39, 968.378, -41.91, 6.2);
INSERT INTO `spell_target_position` VALUES (25867, 531, -7951.89, 956.874, -41.402, 1.417);
INSERT INTO `spell_target_position` VALUES (25868, 531, -7944.5, 942.378, -42.751, 2.148);
INSERT INTO `spell_target_position` VALUES (25869, 531, -7941.96, 926.309, -45.383, 3.078);
INSERT INTO `spell_target_position` VALUES (25870, 531, -7944.5, 910.24, -48.013, 3.962);
INSERT INTO `spell_target_position` VALUES (25871, 531, -7951.89, 895.744, -49.61, 4.896);
INSERT INTO `spell_target_position` VALUES (25872, 531, -7963.39, 884.24, -50.245, 6.024);
INSERT INTO `spell_target_position` VALUES (25873, 531, -7977.89, 876.854, -50.808, 1.103);
INSERT INTO `spell_target_position` VALUES (25874, 531, -7993.96, 874.309, -50.599, 1.5);
INSERT INTO `spell_target_position` VALUES (25875, 531, -8010.02, 876.854, -47.834, 2.43);
INSERT INTO `spell_target_position` VALUES (25876, 531, -8024.52, 884.24, -45.808, 3.718);
INSERT INTO `spell_target_position` VALUES (25877, 531, -8036.02, 895.744, -45.091, 4.417);
INSERT INTO `spell_target_position` VALUES (25878, 531, -8043.41, 910.24, -42.251, 5.595);
INSERT INTO `spell_target_position` VALUES (25879, 531, -8045.96, 926.309, -39.046, 0.675);
INSERT INTO `spell_target_position` VALUES (25880, 531, -8043.41, 942.378, -39.008, 1.664);
INSERT INTO `spell_target_position` VALUES (25881, 531, -8036.02, 956.874, -39.475, 2.36);
INSERT INTO `spell_target_position` VALUES (25882, 531, -8024.52, 968.378, -40.223, 3.306);
INSERT INTO `spell_target_position` VALUES (25883, 531, -8010.02, 975.764, -42.047, 4.087);
INSERT INTO `spell_target_position` VALUES (25884, 531, -7993.96, 978.309, -42, 4.947);
INSERT INTO `spell_target_position` VALUES (25904, 531, -7993.96, 926.309, -52.699, 1.68);
INSERT INTO `spell_target_position` VALUES (20682, 1, -4018.1, -4525.24, 12, 6.13);
INSERT INTO `spell_target_position` VALUES (28444, 533, 3005.8, -3434.3, 294, 0);
INSERT INTO `spell_target_position` VALUES (29273, 533, 3498.28, -5349.9, 144.968, 1.31324);
INSERT INTO `spell_target_position` VALUES (29318, 533, 3493.45, -5375.38, 138.168, 0);
INSERT INTO `spell_target_position` VALUES (28026, 533, 2692, -3399.27, 267.686, 1.54487);
INSERT INTO `spell_target_position` VALUES (28025, 533, 2692.65, -3321.06, 267.684, 4.70454);
INSERT INTO `spell_target_position` VALUES (30211, 533, 2793.86, -3707.38, 276.64, 2.32);
INSERT INTO `spell_target_position` VALUES (29268, 533, 2646.93, -3470.95, 262.427, 5.51363);
INSERT INTO `spell_target_position` VALUES (29256, 533, 2669.42, -3463.75, 262.63, 5.07774);
INSERT INTO `spell_target_position` VALUES (29239, 533, 2706.78, -3461.59, 262.517, 4.00358);
INSERT INTO `spell_target_position` VALUES (29226, 533, 2722.29, -3514.68, 262.431, 2.87018);
INSERT INTO `spell_target_position` VALUES (29267, 533, 2711.72, -3458.56, 262.384, 4.02864);
INSERT INTO `spell_target_position` VALUES (29262, 533, 2726.13, -3534.64, 262.31, 2.60314);
INSERT INTO `spell_target_position` VALUES (29258, 533, 2722.03, -3514.3, 262.354, 2.84269);
INSERT INTO `spell_target_position` VALUES (29257, 533, 2724.82, -3466.21, 262.622, 3.85584);
INSERT INTO `spell_target_position` VALUES (29255, 533, 2704.22, -3461.86, 262.546, 4.37027);
INSERT INTO `spell_target_position` VALUES (29238, 533, 2684.95, -3457.55, 262.578, 4.62159);
INSERT INTO `spell_target_position` VALUES (29227, 533, 2663.92, -3464.7, 262.574, 5.15958);
INSERT INTO `spell_target_position` VALUES (29225, 533, 2651.09, -3464.07, 262.112, 5.45017);
INSERT INTO `spell_target_position` VALUES (29224, 533, 2646.55, -3471.47, 262.413, 5.43839);
INSERT INTO `spell_target_position` VALUES (29217, 533, 2642.34, -3485.28, 262.273, 6.17666);
INSERT INTO `spell_target_position` VALUES (29249, 533, 2722.42, -3514.74, 262.467, 3.09084);
INSERT INTO `spell_target_position` VALUES (29248, 533, 2704.13, -3462.44, 262.403, 4.31236);
INSERT INTO `spell_target_position` VALUES (29247, 533, 2648.83, -3467.3, 262.399, 5.46297);
INSERT INTO `spell_target_position` VALUES (29216, 533, 2631.37, -3529.68, 274.04, 0);
INSERT INTO `spell_target_position` VALUES (29231, 533, 2684.8, -3502.52, 261.31, 0);
INSERT INTO `spell_target_position` VALUES (28280, 533, 3125.44, -3309.74, 293.251, 3.14929);
INSERT INTO `spell_target_position` VALUES (9002, 0, -2625, -2423, 79, 0);
INSERT INTO `spell_target_position` VALUES (9003, 0, -2607, -2434, 80, 0);
INSERT INTO `spell_target_position` VALUES (9004, 0, -2634, -2411, 81, 0);
INSERT INTO `spell_target_position` VALUES (14208, 1, -6025.75, -1021.17, -216, 0);
INSERT INTO `spell_target_position` VALUES (52005, 1, -8170.67, -4758.11, 33.33, 4.8);
INSERT INTO `spell_target_position` VALUES (21171, 30, 633.282, -67.7342, 81.4057, 0);
INSERT INTO `spell_target_position` VALUES (21425, 30, -1323.61, -289.991, 130.676, 0);
INSERT INTO `spell_target_position` VALUES (24466, 309, -11582.9, -1251.15, 90, 4.745);
INSERT INTO `spell_target_position` VALUES (46039, 0, -10859.8, 1866.09, 77.5, 4.34);
INSERT INTO `spell_target_position` VALUES (49358, 0, -10478.2, -3158.96, 21.04, 6.12);
INSERT INTO `spell_target_position` VALUES (49361, 1, -3749.39, -4440.7, 30.56, 3.88);
INSERT INTO `spell_target_position` VALUES (49359, 1, -3749.39, -4440.7, 30.56, 3.88);
INSERT INTO `spell_target_position` VALUES (49364, 0, -10478.2, -3158.96, 21.04, 6.12);
INSERT INTO `spell_target_position` VALUES (24730, 1, -1327.66, 85.9815, 134.169, 3.559);
INSERT INTO `spell_target_position` VALUES (24831, 0, -9569.18, -16.108, 68.2725, 4.9);
INSERT INTO `spell_target_position` VALUES (45302, 1, -964.98, 283.433, 111.187, 3.02);
INSERT INTO `spell_target_position` VALUES (45303, 0, -10823.6, 2284.68, 2.66, 4.63);
INSERT INTO `spell_target_position` VALUES (21648, 30, -221.051, -321.16, 7.55535, 2.0944);
INSERT INTO `spell_target_position` VALUES (21249, 30, -315.887, -174.13, 9.34234, 5.75959);
INSERT INTO `spell_target_position` VALUES (4170, 0, -2143, -1983, 13, 0);


SET FOREIGN_KEY_CHECKS = 1;
