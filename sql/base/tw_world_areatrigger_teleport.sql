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
-- Table structure for areatrigger_teleport
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_teleport`;
CREATE TABLE `areatrigger_teleport`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `required_level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `required_condition` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `required_phase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `target_map` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `target_position_x` float NOT NULL DEFAULT 0,
  `target_position_y` float NOT NULL DEFAULT 0,
  `target_position_z` float NOT NULL DEFAULT 0,
  `target_orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Trigger System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of areatrigger_teleport
-- ----------------------------
INSERT INTO `areatrigger_teleport` VALUES (45, 'Scarlet Monastery Graveyard - Entrance', 'You must be at least level 20 to enter.', 20, 0, 0, 189, 1687.27, 1050.09, 18.6773, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (78, 'Deadmines - Entrance', 'You must be at least level 10 to enter.', 10, 0, 0, 36, -14.5732, -385.475, 62.4561, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (101, 'Stormwind Stockades - Entrance', 'You must be at least level 15 to enter.', 15, 0, 0, 34, 48.9849, 0.483882, -16.3942, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (107, 'Stormwind Vault - Entrance', 'You must be at least level 58 to enter.', 58, 0, 0, 35, -0.91, 40.57, -24.23, 1.52);
INSERT INTO `areatrigger_teleport` VALUES (109, 'Stormwind Vault - Exit', '', 0, 0, 0, 0, -8679.12, 639.337, 95.819, 2.29017);
INSERT INTO `areatrigger_teleport` VALUES (119, 'Deadmines - Exit', '', 0, 0, 0, 0, -11208.7, 1675.9, 24.5733, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (121, 'Deadmines - Back Exit', '', 0, 0, 0, 0, -11339.9, 1572.45, 94.3916, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (145, 'Shadowfang Keep - Entrance', 'You must be at least level 10 to enter.', 10, 0, 0, 33, -228.191, 2111.41, 76.8904, 1.22173);
INSERT INTO `areatrigger_teleport` VALUES (194, 'Shadowfang Keep - Exit', '', 0, 0, 0, 0, -233.011, 1567.5, 76.8921, 4.27606);
INSERT INTO `areatrigger_teleport` VALUES (226, 'Wailing Caverns - Exit', '', 0, 0, 0, 1, -738.462, -2217.8, 16.919, 6.02139);
INSERT INTO `areatrigger_teleport` VALUES (228, 'Wailing Caverns - Entrance', 'You must be at least level 10 to enter.', 10, 0, 0, 43, -158.441, 131.601, -74.2552, 5.84685);
INSERT INTO `areatrigger_teleport` VALUES (242, 'Razorfen Kraul - Exit', '', 0, 0, 0, 1, -4463.32, -1664.29, 84.0489, 3.92699);
INSERT INTO `areatrigger_teleport` VALUES (244, 'Razorfen Kraul - Entrance', 'You must be at least level 15 to enter.', 15, 0, 0, 47, 1942.27, 1544.23, 83.3055, 1.309);
INSERT INTO `areatrigger_teleport` VALUES (257, 'Blackfathom Deeps - Entrance', 'You must be at least level 10 to enter.', 10, 0, 0, 48, -150.234, 106.594, -39.779, 4.45059);
INSERT INTO `areatrigger_teleport` VALUES (259, 'Blackfathom Deeps - Exit', '', 0, 0, 0, 1, 4246.68, 743.402, -24.8573, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (286, 'Uldaman - Entrance', 'You must be at least level 30 to enter.', 30, 0, 0, 70, -228.859, 46.1018, -46.0186, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (288, 'Uldaman - Exit', '', 0, 0, 0, 0, -6066.25, -2954.56, 209.772, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (322, 'Gnomeregan - Exit', '', 0, 0, 0, 0, -5162.57, 927.841, 257.177, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (324, 'Gnomeregan - Entrance', 'You must be at least level 15 to enter.', 15, 0, 0, 90, -329.098, -3.20722, -152.851, 2.96706);
INSERT INTO `areatrigger_teleport` VALUES (442, 'Razorfen Downs - Entrance', 'You must be at least level 25 to enter.', 25, 0, 0, 129, 2593.68, 1111.23, 50.9518, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (444, 'Razorfen Downs - Exit', '', 0, 0, 0, 1, -4659.64, -2524.24, 81.374, 0.785398);
INSERT INTO `areatrigger_teleport` VALUES (446, 'Sunken Temple - Entrance', 'You must be at least level 35 to enter.', 35, 0, 0, 109, -315.903, 100.197, -131.849, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (448, 'Sunken Temple - Exit', '', 0, 0, 0, 0, -10176.6, -3995.35, -112.185, 3.00197);
INSERT INTO `areatrigger_teleport` VALUES (503, 'Stormwind Stockades - Exit', '', 0, 0, 0, 0, -8766.11, 845.499, 87.9952, 3.83972);
INSERT INTO `areatrigger_teleport` VALUES (523, 'Gnomeregan - Back Entrance', 'You must be at least level 15 to enter.', 15, 0, 0, 90, -733.636, 1.86838, -249.09, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (525, 'Gnomeregan - Back Exit', '', 0, 0, 0, 0, -4858.97, 770.207, 241.805, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (527, 'Darnassus - Exit', '', 0, 0, 0, 1, 8785.79, 966.983, 30.1999, 3.40339);
INSERT INTO `areatrigger_teleport` VALUES (542, 'Darnassus - Entrance', '', 0, 0, 0, 1, 9946.25, 2612.97, 1316.49, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (602, 'Scarlet Monastery Graveyard - Exit', '', 0, 0, 0, 0, 2915.34, -801.58, 160.333, 3.49066);
INSERT INTO `areatrigger_teleport` VALUES (604, 'Scarlet Monastery Cathedral - Exit', '', 0, 0, 0, 0, 2915.13, -823.637, 160.327, 3.49066);
INSERT INTO `areatrigger_teleport` VALUES (606, 'Scarlet Monastery Armory - Exit', '', 0, 0, 0, 0, 2885.96, -835.802, 160.327, 0.349066);
INSERT INTO `areatrigger_teleport` VALUES (608, 'Scarlet Monastery Library - Exit', '', 0, 0, 0, 0, 2869.32, -820.818, 160.333, 0.349066);
INSERT INTO `areatrigger_teleport` VALUES (610, 'Scarlet Monastery Cathedral - Entrance', 'You must be at least level 20 to enter.', 20, 0, 0, 189, 853.179, 1319.18, 18.6714, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (612, 'Scarlet Monastery Armory - Entrance', 'You must be at least level 20 to enter.', 20, 0, 0, 189, 1608.1, -318.919, 18.6714, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (614, 'Scarlet Monastery Library - Entrance', 'You must be at least level 20 to enter.', 20, 0, 0, 189, 253.672, -206.624, 18.6773, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (702, 'Stormwind Wizard\'s Sanctum - Exit', '', 0, 0, 0, 0, -9014.94, 873.326, 148.616, 5.49779);
INSERT INTO `areatrigger_teleport` VALUES (704, 'Stormwind Wizard\'s Sanctum - Entrance', '', 0, 0, 0, 0, -9017.46, 885.901, 29.6207, 5.49779);
INSERT INTO `areatrigger_teleport` VALUES (882, 'Uldaman - Back Exit', '', 0, 0, 0, 0, -6619.97, -3765.74, 266.309, 3.40339);
INSERT INTO `areatrigger_teleport` VALUES (902, 'Uldaman - Back Entrance', 'You must be at least level 30 to enter.', 30, 0, 0, 70, -212.95, 382.427, -38.7486, 1.39626);
INSERT INTO `areatrigger_teleport` VALUES (922, 'Zul\'Farrak - Exit', '', 0, 0, 0, 1, -6795.56, -2890.72, 8.88742, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (924, 'Zul\'Farrak - Entrance', 'You must be at least level 35 to enter.', 35, 0, 0, 209, 1212.67, 842.04, 8.93346, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (1064, 'Onyxia\'s Lair - Exit', '', 0, 0, 0, 1, -4750.38, -3754.44, 49.0485, 0.785398);
INSERT INTO `areatrigger_teleport` VALUES (1466, 'Blackrock Depths - Entrance', 'You must be at least level 40 to enter.', 40, 0, 0, 230, 456.929, 34.0923, -68.0896, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (1468, 'Blackrock Spire - Entrance', 'You must be at least level 45 to enter.', 45, 0, 0, 229, 78.3534, -226.841, 49.7662, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (1470, 'Blackrock Spire - Exit', '', 0, 0, 0, 0, -7524.7, -1228.41, 287.204, 1.74533);
INSERT INTO `areatrigger_teleport` VALUES (1472, 'Blackrock Depths - Exit', '', 0, 0, 0, 0, -7178.41, -922.152, 166.092, 2.00713);
INSERT INTO `areatrigger_teleport` VALUES (2166, 'Deeprun Tram Ironforge - Exit', '', 0, 0, 0, 0, -4839.51, -1317.74, 501.868, 1.48353);
INSERT INTO `areatrigger_teleport` VALUES (2171, 'Deeprun Tram Stormwind - Exit', '', 0, 0, 0, 0, -8354.23, 524.068, 91.7971, 2.35619);
INSERT INTO `areatrigger_teleport` VALUES (2173, 'Deeprun Tram Stormwind - Entrance', '', 0, 0, 0, 369, 67.7607, 2490.98, -4.29649, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (2175, 'Deeprun Tram Ironforge - Exit', '', 0, 0, 0, 369, 69.2277, 10.3932, -4.29665, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (2214, 'Stratholme - Back Entrance', 'You must be at least level 45 to enter.', 45, 0, 0, 329, 3590.87, -3643.22, 138.491, 5.49779);
INSERT INTO `areatrigger_teleport` VALUES (2216, 'Stratholme - Right Entrance', 'You must be at least level 45 to enter.', 45, 0, 0, 329, 3392.92, -3395.03, 143.135, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (2217, 'Stratholme - Left Entrance', 'You must be at least level 45 to enter.', 45, 0, 0, 329, 3392.84, -3364.44, 142.965, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (2221, 'Stratholme - Back Exit', '', 0, 0, 0, 0, 3233.06, -4048.3, 108.442, 2.00713);
INSERT INTO `areatrigger_teleport` VALUES (2226, 'Ragefire Chasm - Exit', '', 0, 0, 0, 1, 1814.99, -4419.23, -18.8151, 1.91986);
INSERT INTO `areatrigger_teleport` VALUES (2230, 'Ragefire Chasm - Entrance', 'You must be at least level 8 to enter.', 8, 0, 0, 389, 0.797643, -8.23429, -15.5288, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (2527, 'Hall of Legends - Entrance', 'You must be a Stone Guard or higher rank in order to enter the Hall of Legends.', 0, 2527, 0, 450, 222.22, 74.457, 25.7209, 0.610865);
INSERT INTO `areatrigger_teleport` VALUES (2530, 'Hall of Legends - Exit', '', 0, 0, 0, 1, 1637.91, -4240.25, 56.1744, 3.92699);
INSERT INTO `areatrigger_teleport` VALUES (2532, 'Champions\' Hall - Entrance', 'You must be a Knight or higher rank in order to enter the Champions\' Hall.', 0, 2532, 0, 449, -0.401287, 2.40001, -0.255885, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (2534, 'Champions\' Hall Exit', '', 0, 0, 0, 0, -8762.82, 402.434, 103.901, 5.49779);
INSERT INTO `areatrigger_teleport` VALUES (2567, 'Scholomance - Entrance', 'You must be at least level 45 to enter.', 45, 0, 0, 289, 190.819, 126.329, 137.227, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (2568, 'Scholomance - Exit', '', 0, 0, 0, 0, 1273.91, -2553.09, 91.8393, 3.57792);
INSERT INTO `areatrigger_teleport` VALUES (2606, 'Alterac Valley - Horde Exit', 'Only the Horde may use this portal.', 0, 0, 0, 0, 536.495, -1085.72, 106.27, 3.66519);
INSERT INTO `areatrigger_teleport` VALUES (2608, 'Alterac Valley - Alliance Exit', 'Only the Alliance may use this portal.', 0, 0, 0, 0, 101.144, -184.934, 127.344, 4.88692);
INSERT INTO `areatrigger_teleport` VALUES (2848, 'Onyxia\'s Lair - Entrance', 'You must be part of a Raid group, at least level 50 and have the Drakefire Amulet in your inventory to enter.', 50, 16309, 0, 249, 30.8916, -54.079, -5.02784, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (2886, 'Molten Core - Entrance', 'You must be part of a Raid group and at least level 50 to enter.', 50, 0, 0, 409, 1091.89, -466.985, -105.084, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (2890, 'Molten Core - Exit', '', 0, 0, 0, 0, -7508.32, -1039.74, 180.912, 3.83972);
INSERT INTO `areatrigger_teleport` VALUES (3126, 'Maraudon - Purple Exit', '', 0, 0, 0, 1, -1182.8, 2877.43, 85.908, 1.65806);
INSERT INTO `areatrigger_teleport` VALUES (3131, 'Maraudon - Orange Exit', '', 0, 0, 0, 1, -1468.2, 2614.21, 76.3804, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (3133, 'Maraudon - Orange Entrance', 'You must be at least level 30 to enter.', 30, 0, 0, 349, 1016.83, -458.52, -43.4737, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (3134, 'Maraudon - Purple Entrance', 'You must be at least level 30 to enter.', 30, 0, 0, 349, 755.078, -617.696, -32.9222, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (3183, 'Dire Maul - Entrance 1', 'You must be at least level 45 to enter.', 45, 0, 0, 429, 47.4501, -153.665, -2.71439, 5.49779);
INSERT INTO `areatrigger_teleport` VALUES (3184, 'Dire Maul - Entrance 2', 'You must be at least level 45 to enter.', 45, 0, 0, 429, -203.166, -322.997, -2.72467, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (3185, 'Dire Maul - Entrance 3', 'You must be at least level 45 to enter.', 45, 0, 0, 429, 10.5786, -836.991, -32.3988, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (3186, 'Dire Maul - Entrance 4', 'You must be at least level 45 to enter.', 45, 0, 0, 429, -65.6559, 159.561, -3.4647, 2.35619);
INSERT INTO `areatrigger_teleport` VALUES (3187, 'Dire Maul - Entrance 5', 'You must be at least level 45 to enter.', 45, 0, 0, 429, 33.1083, 158.977, -3.47126, 0.785398);
INSERT INTO `areatrigger_teleport` VALUES (3189, 'Dire Maul - Entrance 6', 'You must be at least level 45 to enter.', 45, 0, 0, 429, 254.92, -19.463, -2.5596, 5.49779);
INSERT INTO `areatrigger_teleport` VALUES (3190, 'Dire Maul - Exit 4', '', 0, 0, 0, 1, -3829.68, 1250.52, 160.226, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (3191, 'Dire Maul - Exit 5', '', 0, 0, 0, 1, -3749.41, 1249.25, 160.221, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (3193, 'Dire Maul - Exit 6', '', 0, 0, 0, 1, -3520.24, 1078.4, 161.103, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (3194, 'Dire Maul - Exit 1', '', 0, 0, 0, 1, -3738.62, 934.522, 160.975, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (3195, 'Dire Maul - Exit 2', '', 0, 0, 0, 1, -3981.04, 777.815, 160.965, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (3196, 'Dire Maul - Exit 3', '', 0, 0, 0, 1, -4031.25, 129.345, 26.4744, 2.70526);
INSERT INTO `areatrigger_teleport` VALUES (3197, 'Dire Maul - Tunnel Exit', '', 0, 0, 0, 1, -3585.84, 847.367, 138.641, 2.35619);
INSERT INTO `areatrigger_teleport` VALUES (3529, 'Molten Core - Window Lava Entrance', '', 50, 7848, 0, 409, 1091.89, -466.985, -105.084, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (3726, 'Blackwing Lair - Entrance', 'You must be part of a raid group and at least 50th level to enter.', 50, 0, 1, 469, -7672.32, -1107.05, 396.651, 0.785398);
INSERT INTO `areatrigger_teleport` VALUES (3728, 'Blackwing Lair - Exit', '', 0, 0, 0, 0, -7524.7, -1228.41, 287.204, 1.74533);
INSERT INTO `areatrigger_teleport` VALUES (3928, 'Zul\'Gurub - Entrance', 'You must be part of a Raid group and at least level 60 to enter.', 60, 0, 1, 309, -11916.6, -1243.52, 92.5338, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (3930, 'Zul\'Gurub - Exit', '', 0, 0, 0, 0, -11916.2, -1206.9, 92.2612, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (3948, 'Arathi Basin - Alliance Exit', 'Only the Alliance may use this portal.', 0, 0, 0, 0, -1215.59, -2531.75, 21.6734, 3.1765);
INSERT INTO `areatrigger_teleport` VALUES (3949, 'Arathi Basin - Horde Exit', 'Only the Horde may use this portal.', 0, 0, 0, 0, -831.881, -3518.52, 72.4831, 3.36849);
INSERT INTO `areatrigger_teleport` VALUES (3528, 'Molten Core - Window Entrance', 'You must be attuned and in a raid group to enter.', 50, 7487, 0, 409, 1091.89, -466.985, -105.084, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (4006, 'Ruins Of Ahn\'Qiraj - Exit', '', 0, 0, 0, 1, -8415.7, 1502.44, 30.6862, 5.49779);
INSERT INTO `areatrigger_teleport` VALUES (4008, 'Ruins Of Ahn\'Qiraj - Entrance', 'You cannot enter here unless the gates of Ahn\'Qiraj have been opened, you are level 60, and in a raid group.', 60, 126, 2, 509, -8436.53, 1519.17, 31.907, 2.61799);
INSERT INTO `areatrigger_teleport` VALUES (4010, 'Temple of Ahn\'Qiraj - Entrance', 'You cannot enter here unless the gates of Ahn\'Qiraj have been opened, you are level 60, and in a raid group.', 60, 126, 2, 531, -8221.35, 2014.34, 129.071, 0.872665);
INSERT INTO `areatrigger_teleport` VALUES (4012, 'Temple of Ahn\'Qiraj - Exit', '', 0, 0, 0, 1, -8239.01, 1993.25, 129.071, 4.01426);
INSERT INTO `areatrigger_teleport` VALUES (4055, 'Naxxramas - Entrance', 'You must be level 51+, in a Raid group, and be attuned to Naxxramas to enter.', 60, 9124, 3, 533, 3005.87, -3435.01, 293.882, 0);
INSERT INTO `areatrigger_teleport` VALUES (943, 'Thousand Needles - Test of Faith', '', 0, 0, 0, 1, -5191.27, -2802.59, -7.21111, 5.67232);
INSERT INTO `areatrigger_teleport` VALUES (2547, 'Scholomance - Balcony Exit', '', 0, 0, 0, 0, 1399.42, -2574.59, 107.786, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (2406, 'Shadowfang Keep - Left Jump Exit', '', 0, 0, 0, 0, -276.241, 1652.68, 77.5589, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (942, 'Thousand Needles - Test of Faith', '', 0, 0, 0, 1, -5191.27, -2802.59, -7.21111, 5.67232);
INSERT INTO `areatrigger_teleport` VALUES (944, 'Thousand Needles - Test of Faith', '', 0, 0, 0, 1, -5191.27, -2802.59, -7.21111, 5.67232);
INSERT INTO `areatrigger_teleport` VALUES (1103, 'Transpolyporter - Booty Bay to Gnomeregan', '', 0, 36, 0, 0, -5095.58, 756.763, 260.55, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (1104, 'Transpolyporter - Gnomeregan to Booty Bay', '', 0, 36, 0, 0, -14460, 463.278, 15.1651, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (2068, 'Blackrock Spire - Jump Exit', '', 0, 0, 0, 0, -7558.39, -1309.43, 248.454, 1.5708);
INSERT INTO `areatrigger_teleport` VALUES (1626, 'Old Hillsbrad Foothills - Exit', '', 0, 0, 0, 1, -8341.56, -4063.62, -207.981, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (2407, 'Shadowfang Keep - Left Jump Exit', '', 0, 0, 0, 0, -276.241, 1652.68, 77.5589, 3.14159);
INSERT INTO `areatrigger_teleport` VALUES (2408, 'Shadowfang Keep - Front Jump Exit', '', 0, 0, 0, 0, -225.34, 1556.53, 93.0454, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (2409, 'Shadowfang Keep - Front Jump Exit', '', 0, 0, 0, 0, -225.34, 1556.53, 93.0454, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (2410, 'Shadowfang Keep - Right Jump Exit', '', 0, 0, 0, 0, -181.26, 1580.65, 97.4466, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (2411, 'Shadowfang Keep - Right Jump Exit', '', 0, 0, 0, 0, -181.26, 1580.65, 97.4466, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (2548, 'Scholomance - Balcony Exit', '', 0, 0, 0, 0, 1399.42, -2574.59, 107.786, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (2549, 'Scholomance - Balcony Exit', '', 0, 0, 0, 0, 1399.42, -2574.59, 107.786, 6.28319);
INSERT INTO `areatrigger_teleport` VALUES (3669, 'Warsong Gulch - Horde Exit', 'Only the Horde may use this portal.', 0, 0, 0, 1, 1035.27, -2104.28, 122.945, 4.71239);
INSERT INTO `areatrigger_teleport` VALUES (3671, 'Warsong Gulch - Alliance Exit', 'Only the Alliance may use this portal.', 0, 0, 0, 1, 1459.17, -1858.67, 124.762, 6.02139);
INSERT INTO `areatrigger_teleport` VALUES (5016, 'Emerald Sanctum - Exit', '', 0, 0, 0, 1, 4819.06, -1746.33, 1156.99, 2.5);
INSERT INTO `areatrigger_teleport` VALUES (5017, 'Emerald Sanctum - Entrance', 'To enter, you must be part of a raid group, at least level 60, and have the Gemstone of Ysera in your inventory.', 60, 30003, 1, 807, 2762.25, 2972.77, 26.903, 1.9);
INSERT INTO `areatrigger_teleport` VALUES (5018, 'Lower Karazhan Halls - Entrance', '', 60, 0, 0, 532, -11104.3, -1999.42, 49.89, 0.6);
INSERT INTO `areatrigger_teleport` VALUES (5019, 'Lower Karazhan Halls - Exit', '', 0, 0, 0, 0, -11118.5, -2010.84, 47.082, 3.7);
INSERT INTO `areatrigger_teleport` VALUES (1632, 'Black Morass - Entrance', 'You must be at least level 58 to enter.', 58, 0, 0, 269, -2002.5, 6575.3, -154.9, 5.7);
INSERT INTO `areatrigger_teleport` VALUES (1629, 'Black Morass - Exit', '', 0, 0, 0, 1, -8756.8, -4191.3, -209.4, 5.5);
INSERT INTO `areatrigger_teleport` VALUES (5015, 'Gilneas City - Exit', '', 0, 0, 0, 0, -1089.86, 2231.4, 182.859, 5.54);
INSERT INTO `areatrigger_teleport` VALUES (5014, 'Gilneas City - Entrance', 'You must be at least level 40 to enter.', 40, 0, 0, 815, -1100, 2237.75, 182.86, 2.6);
INSERT INTO `areatrigger_teleport` VALUES (5013, 'Hateforge Quarry - Exit', '', 0, 0, 0, 0, -8169.2, -3106.7, 200.4, 1.1);
INSERT INTO `areatrigger_teleport` VALUES (5012, 'The Crescent Grove - Exit', '', 0, 0, 0, 1, 1722, -1272.6, 163.26, 5.8);
INSERT INTO `areatrigger_teleport` VALUES (5011, 'Karazhan Crypt - Exit', '', 0, 0, 0, 0, -11068.9, -1828.6, 60.26, 3.1);
INSERT INTO `areatrigger_teleport` VALUES (5009, 'Hateforge Quarry - Entrance', 'You must be at least level 48 to enter.', 48, 0, 0, 808, -8173.9, -3120.6, 199.8, 4.7);
INSERT INTO `areatrigger_teleport` VALUES (5008, 'Karazhan Crypt - Entrance', 'You must be at least level 55 to enter.', 55, 0, 0, 800, -11068.1, -1806.4, 52.7, 1.5);
INSERT INTO `areatrigger_teleport` VALUES (5005, 'Crescent Grove - Exit', '', 0, 0, 0, 1, 1722, -1272.6, 163.26, 5.8);
INSERT INTO `areatrigger_teleport` VALUES (5004, 'Crescent Grove - Entrance', 'You must be at least level 32 to enter.', 32, 0, 0, 802, 579.13, 90.7, 276.11, 3.4);
INSERT INTO `areatrigger_teleport` VALUES (5002, 'Stormwind Vault - Entrance (outside)', 'You must be at least level 58 to enter.', 58, 0, 0, 35, -0.91, 40.57, -24.23, 1.52);
INSERT INTO `areatrigger_teleport` VALUES (5003, 'Stormwind Vault - Entrance (mirror lake)', 'You must be at least level 58 to enter.', 58, 0, 0, 35, -0.91, 40.57, -24.23, 1.52);
INSERT INTO `areatrigger_teleport` VALUES (5337, 'Grim Batol - Entrance', 'This raid is not available yet.', 61, 0, 0, 43, -158.441, 131.601, -74.2552, 5.84685);


SET FOREIGN_KEY_CHECKS = 1;
