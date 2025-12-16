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
-- Table structure for event_scripts
-- ----------------------------
DROP TABLE IF EXISTS `event_scripts`;
CREATE TABLE `event_scripts`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `delay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `datalong3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `datalong4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_param1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_param2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data_flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int(11) NOT NULL DEFAULT 0,
  `dataint2` int(11) NOT NULL DEFAULT 0,
  `dataint3` int(11) NOT NULL DEFAULT 0,
  `dataint4` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0,
  `condition_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event_scripts
-- ----------------------------
INSERT INTO `event_scripts` VALUES (364, 5, 0, 10, 2624, 900000, 1, 100, 0, 0, 0, 0, 8, 0, -1, 1, -12167.9, 630.3, -63.78, 3.65, 0, 'Summon Gazban From Altar of the Tides');
INSERT INTO `event_scripts` VALUES (417, 4, 2, 26, 2569, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Mauler attacks on second floor');
INSERT INTO `event_scripts` VALUES (415, 4, 2, 26, 2570, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Shaman attacks on first floor');
INSERT INTO `event_scripts` VALUES (415, 4, 2, 26, 2569, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Mauler attacks on first floor');
INSERT INTO `event_scripts` VALUES (420, 0, 0, 10, 2755, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -931.73, -3111.81, 48.517, 3.27404, 0, 'Summoning the Princess - Myzrael: Spawn for quest 656');
INSERT INTO `event_scripts` VALUES (498, 3, 0, 10, 3129, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -228.09, -5115.08, 49.32, 1.28, 0, '');
INSERT INTO `event_scripts` VALUES (619, 3, 0, 10, 634, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -18.44, -617.46, 14.12, 0.08, 0, '');
INSERT INTO `event_scripts` VALUES (664, 0, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11142.5, -1151.72, 43.598, 4.849, 0, 'Mound of Dirt - Velinde Starsong: Spawn');
INSERT INTO `event_scripts` VALUES (727, 0, 0, 10, 4504, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 264.94, -264.13, 145.03, 3.41, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 100, 0, 10, 5402, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1129.9, 2896.08, 195.91, 3.15, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 100, 0, 10, 6070, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1130.26, 2894.02, 196.27, 3.15, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 100, 0, 10, 6069, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1134.43, 2902.35, 196.56, 3.85, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 100, 0, 10, 6069, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1131.98, 2886.77, 197.59, 2.55, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 40, 0, 10, 6070, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1129.04, 2895.67, 195.7, 3.11, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 40, 0, 10, 6069, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1130.01, 2901.11, 195.35, 3.35, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 40, 0, 10, 6069, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1125.46, 2890.14, 195.27, 2.9, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 0, 0, 10, 6069, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1126.97, 2901.03, 194.33, 3.45, 0, '');
INSERT INTO `event_scripts` VALUES (1033, 0, 0, 10, 6069, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1123.14, 2892.65, 194.96, 3.11, 0, '');
INSERT INTO `event_scripts` VALUES (1131, 0, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -8973.05, 1043.72, 52.8631, 2, 0, '');
INSERT INTO `event_scripts` VALUES (1134, 0, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -8973.05, 1043.72, 52.8631, 2, 0, '');
INSERT INTO `event_scripts` VALUES (1370, 0, 0, 10, 6239, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 332.821, -1473.05, 42.2658, 3.99963, 0, '');
INSERT INTO `event_scripts` VALUES (1449, 0, 0, 10, 6268, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -767.591, -3721.71, 42.3617, 2.79602, 0, '');
INSERT INTO `event_scripts` VALUES (1785, 0, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1704.61, 41.9147, -63.8433, 0.435896, 0, '');
INSERT INTO `event_scripts` VALUES (1786, 0, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1704.61, 41.9147, -63.8433, 0.435896, 0, '');
INSERT INTO `event_scripts` VALUES (1787, 0, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1806.13, -4372.67, -17.4888, 4.41785, 0, '');
INSERT INTO `event_scripts` VALUES (1788, 0, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1806.13, -4372.67, -17.4888, 4.41785, 0, '');
INSERT INTO `event_scripts` VALUES (2048, 0, 0, 10, 3456, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -3592.45, -1872.06, 91.62, 0.19, 0, '');
INSERT INTO `event_scripts` VALUES (2313, 0, 0, 10, 7411, 30000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 9641.96, 2521.98, 1331.73, 1.6194, 0, '');
INSERT INTO `event_scripts` VALUES (2489, 2, 0, 3, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1681.74, 1204.13, 5.67395, 0.765837, 0, 'Gahz\'rilla move');
INSERT INTO `event_scripts` VALUES (2609, 0, 0, 11, 27089, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (2609, 0, 0, 11, 27090, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (2609, 0, 0, 11, 27091, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (2609, 0, 0, 11, 27092, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (2609, 0, 0, 11, 27093, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (2648, 0, 0, 10, 2707, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -407, -2862, 77.31, 5.87, 0, '');
INSERT INTO `event_scripts` VALUES (2980, 0, 0, 10, 3475, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 436.258, -3058, 92.434, 3.952, 0, '');
INSERT INTO `event_scripts` VALUES (2998, 0, 0, 10, 3257, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -435, -3428, 91.75, 5.323, 0, '');
INSERT INTO `event_scripts` VALUES (3084, 0, 0, 10, 8392, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2249, -7221.97, 13.82, 1.02, 0, '');
INSERT INTO `event_scripts` VALUES (3201, 2, 0, 9, 16736, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3201, 2, 0, 9, 16741, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3202, 2, 0, 9, 16737, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3202, 2, 0, 9, 16742, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3203, 2, 0, 9, 16738, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3203, 2, 0, 9, 16743, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3204, 2, 0, 9, 16735, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3204, 2, 0, 9, 16740, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3241, 5, 0, 10, 8581, 600000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 4279.11, -6295.57, 95.56, 0.05, 0, '');
INSERT INTO `event_scripts` VALUES (3241, 20, 0, 10, 8578, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 4279.11, -6295.57, 95.56, 0.05, 0, '');
INSERT INTO `event_scripts` VALUES (3301, 2, 0, 10, 7664, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11234.4, -2842.68, 157.92, 1.42, 0, '');
INSERT INTO `event_scripts` VALUES (3708, 3, 0, 10, 9453, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -8170.74, -5078.13, 15.83, 4.83, 0, '');
INSERT INTO `event_scripts` VALUES (3718, 0, 0, 39, 9467, 0, 0, 0, 9467, 50, 8, 3, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'The Videre Elixir: Miblon Snarltooth - Start Script');
INSERT INTO `event_scripts` VALUES (3839, 0, 0, 10, 9598, 3000000, 0, 0, 0, 0, 0, 0, 4, 0, -1, 1, 5998.7, -1208, 377.75, 0.36, 0, '');
INSERT INTO `event_scripts` VALUES (3938, 0, 0, 61, 3938, 105, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Blackwood Corrupted: Start Scripted Map Event');
INSERT INTO `event_scripts` VALUES (3973, 0, 0, 10, 8075, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -2764.68, 2623.21, 70.4204, 2.33578, 0, '');
INSERT INTO `event_scripts` VALUES (3980, 0, 0, 9, 27142, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (3981, 0, 0, 10, 9684, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7196.45, -2405.63, -217.28, 4.8, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 0, 0, 10, 10040, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7968.53, -1097.05, -327.09, 3.3, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 0, 0, 10, 10040, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7979.87, -1095.38, -327.55, 5.94, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 40, 0, 10, 10040, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7976.31, -1101.03, -328.11, 6.1, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 40, 0, 10, 10040, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7969.05, -1102.24, -329.02, 3.36, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 40, 0, 10, 10040, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7987.08, -1096.74, -329.16, 5.55, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 90, 0, 10, 10040, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7977.93, -1079.71, -329.1, 4.5, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 90, 0, 10, 10040, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7963.49, -1081.18, -328.64, 4.32, 0, '');
INSERT INTO `event_scripts` VALUES (4338, 90, 0, 10, 10041, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -7969.74, -1077.94, -328.73, 4.54, 0, '');
INSERT INTO `event_scripts` VALUES (4884, 0, 0, 10, 9816, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 144.32, -258.16, 96.32, 5.11, 0, '');
INSERT INTO `event_scripts` VALUES (4975, 0, 0, 10, 10737, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 8072.38, -3833.81, 690.03, 4.56, 0, '');
INSERT INTO `event_scripts` VALUES (5225, 5, 0, 10, 11058, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3487.05, -3289.75, 131.79, 4.69, 0, '');
INSERT INTO `event_scripts` VALUES (5301, 5, 0, 10, 11121, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3820.95, -3695.15, 143.87, 1.825, 0, 'Summon Black Guard Swordsmith');
INSERT INTO `event_scripts` VALUES (5759, 1, 0, 10, 11887, 600000, 3, 0, 0, 0, 0, 0, 8, 1188702, -1, 1, 1570.57, -3254.73, 86.7141, 4.50295, 0, 'Of Forgotten Memories - Summon Creature');
INSERT INTO `event_scripts` VALUES (5759, 1, 0, 10, 11887, 600000, 3, 0, 0, 0, 0, 0, 8, 1188701, -1, 1, 1573.96, -3256.98, 86.7919, 4.03171, 0, 'Of Forgotten Memories - Summon Creature');
INSERT INTO `event_scripts` VALUES (5991, 0, 0, 10, 12138, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 6331.9, 93.3575, 21.4216, 1.1349, 0, '');
INSERT INTO `event_scripts` VALUES (6028, 0, 0, 10, 12138, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -2500.89, -1628.45, 91.7042, 6.01041, 0, '');
INSERT INTO `event_scripts` VALUES (6138, 0, 0, 10, 2179, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 6873.65, -659.95, 84.16, 0.76, 0, '');
INSERT INTO `event_scripts` VALUES (6138, 0, 0, 10, 12321, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 6881.62, -651.81, 84.59, 1.05, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 180, 0, 10, 12918, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2208.93, -1567.59, 87.2283, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 155, 0, 10, 3743, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2202.16, -1544.48, 87.796, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 155, 0, 10, 3749, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2237.48, -1524.45, 89.7827, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 125, 0, 10, 3750, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2260.9, -1547.91, 89.1733, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 125, 0, 10, 3743, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2235.44, -1578.43, 86.4944, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 125, 0, 10, 3749, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2208.93, -1567.59, 87.2283, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 105, 0, 10, 3750, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2202.16, -1544.48, 87.796, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 105, 0, 10, 3743, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2237.48, -1524.45, 89.7827, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 75, 0, 10, 3749, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2260.9, -1547.91, 89.1733, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 75, 0, 10, 3750, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2235.44, -1578.43, 86.4944, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 75, 0, 10, 3743, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2208.93, -1567.59, 87.2283, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 55, 0, 10, 3749, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2202.16, -1544.48, 87.796, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 55, 0, 10, 3750, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2237.48, -1524.45, 89.7827, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 25, 0, 10, 3743, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2260.9, -1547.91, 89.1733, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 25, 0, 10, 3749, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2235.44, -1578.43, 86.4944, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 25, 0, 10, 3750, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2208.93, -1567.59, 87.2283, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 5, 0, 10, 3743, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2202.16, -1544.48, 87.796, 0, 0, '');
INSERT INTO `event_scripts` VALUES (6721, 5, 0, 10, 3749, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 2237.48, -1524.45, 89.7827, 0, 0, '');
INSERT INTO `event_scripts` VALUES (8328, 0, 0, 10, 14467, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 5803.74, -986, 409.76, 3.08, 0, '');
INSERT INTO `event_scripts` VALUES (8428, 0, 0, 9, 99783, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `event_scripts` VALUES (8428, 10, 0, 10, 14502, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -35.712, 796.486, -29.5359, 1.90495, 0, '');
INSERT INTO `event_scripts` VALUES (8436, 3, 0, 10, 14514, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 145.4, 184.14, 94.31, 4.19, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 3, 0, 10, 14514, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 150.32, 172.59, 93.7, 3.12, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 20, 0, 10, 14518, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 144.35, 159.2, 93.07, 2.36, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 60, 0, 10, 14513, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 145.4, 184.14, 94.31, 4.19, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 60, 0, 10, 14513, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 150.32, 172.59, 93.7, 3.12, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 80, 0, 10, 14520, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 144.35, 159.2, 93.07, 2.36, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 120, 0, 10, 14512, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 145.4, 184.14, 94.31, 4.19, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 120, 0, 10, 14512, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 150.32, 172.59, 93.7, 3.12, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 140, 0, 10, 14519, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 144.35, 159.2, 93.07, 2.36, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 200, 0, 10, 14511, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 145.4, 184.14, 94.31, 4.19, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 200, 0, 10, 14511, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 150.32, 172.59, 93.7, 3.12, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 200, 0, 10, 14511, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 144.35, 159.2, 93.07, 2.36, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 230, 0, 10, 14521, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 144.35, 159.2, 93.07, 2.36, 8436, '');
INSERT INTO `event_scripts` VALUES (8436, 300, 0, 10, 14516, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 135.46, 155.2, 92.21, 2.49, 8436, '');
INSERT INTO `event_scripts` VALUES (8438, 0, 0, 10, 14500, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 38.62, 161.78, 83.5456, 4.69993, 0, '');
INSERT INTO `event_scripts` VALUES (9066, 10, 0, 10, 14515, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11540.7, -1627.71, 41.27, 0.1, 0, '');
INSERT INTO `event_scripts` VALUES (9208, 0, 0, 61, 9208, 7200, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glyphs of Calling: Start Scripted Map Event');
INSERT INTO `event_scripts` VALUES (9571, 0, 0, 10, 15623, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 6724.96, -5275.13, 778.23, 1.82, 0, '');
INSERT INTO `event_scripts` VALUES (10015, 0, 0, 10, 16387, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3644, -3473.77, 138.56, 4.47, 0, '');
INSERT INTO `event_scripts` VALUES (2153, 5, 0, 10, 7167, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1456.55, -3959.53, 0.24, 1.99, 0, 'Summon Polly for quest 2381');
INSERT INTO `event_scripts` VALUES (2489, 6, 0, 3, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1702.58, 1224.19, 8.87684, 3.89565, 0, 'Gahz\'rilla move');
INSERT INTO `event_scripts` VALUES (2489, 5, 0, 3, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1692.57, 1213.66, 8.87684, 0.809034, 0, 'Gahz\'rilla move');
INSERT INTO `event_scripts` VALUES (8448, 10, 0, 0, 0, 0, 0, 0, 14353, 10, 8, 3, 9411, 0, 0, 0, 0, 0, 0, 0, 0, 'Mizzle The Crafty : say text1');
INSERT INTO `event_scripts` VALUES (9542, 7, 0, 10, 15571, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3561.73, -6647.2, -7.5, 0.876588, 0, 'Maws spawn');
INSERT INTO `event_scripts` VALUES (8446, 1, 0, 20, 2, 0, 0, 0, 14325, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush : movement WayPoint');
INSERT INTO `event_scripts` VALUES (8446, 1, 0, 0, 6, 0, 0, 0, 14325, 10, 8, 3, 9416, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush : yell text');
INSERT INTO `event_scripts` VALUES (8446, 1, 0, 25, 1, 0, 0, 0, 14325, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush : set run');
INSERT INTO `event_scripts` VALUES (8446, 24, 0, 0, 6, 0, 0, 0, 14325, 10, 8, 3, 9424, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush : yell text2');
INSERT INTO `event_scripts` VALUES (8446, 25, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush : despawn');
INSERT INTO `event_scripts` VALUES (8446, 26, 0, 10, 14325, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 384.64, 253.52, 11.44, 1.49, 0, 'Captain Kromcrush : Summon Kromcrush');
INSERT INTO `event_scripts` VALUES (2489, 4, 0, 3, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1690.54, 1211.53, 10.178, 0.734421, 0, 'Gahz\'rilla move');
INSERT INTO `event_scripts` VALUES (2489, 3, 0, 3, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1686.09, 1207.3, 9.75179, 0.730494, 0, 'Gahz\'rilla move');
INSERT INTO `event_scripts` VALUES (2489, 1, 0, 3, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1672.66, 1195.93, 0.956351, 0.734422, 0, 'Gahz\'rilla move');
INSERT INTO `event_scripts` VALUES (8448, 7, 0, 3, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 808.27, 482.88, 37.318, 0.076, 0, 'Mizzle The Crafty : deplacement');
INSERT INTO `event_scripts` VALUES (8448, 6, 0, 3, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 777.96, 482.13, 34.84, 6.27, 0, 'Mizzle The Crafty : deplacement');
INSERT INTO `event_scripts` VALUES (8450, 0, 0, 9, 396410, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Knot Thimblejack : respawn coffre');
INSERT INTO `event_scripts` VALUES (9527, 50, 0, 0, 0, 0, 0, 0, 15552, 50, 8, 2, 11109, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Text');
INSERT INTO `event_scripts` VALUES (2488, 0, 0, 9, 209001, 3600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn autre gong');
INSERT INTO `event_scripts` VALUES (2488, 2, 0, 10, 7273, 3600000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1664.65, 1187.67, -2.88755, 0.812962, 0, 'Gahz\'rilla spawn');
INSERT INTO `event_scripts` VALUES (9530, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 9730, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Say Text 1');
INSERT INTO `event_scripts` VALUES (8452, 1, 0, 0, 1, 0, 0, 0, 988004, 100, 8, 3, 9031, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackwing Technician 1 Droite : yell text');
INSERT INTO `event_scripts` VALUES (8448, 2, 0, 3, 1, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 756.96, 482.62, 28.18, 6.259, 0, 'Mizzle The Crafty : deplacement');
INSERT INTO `event_scripts` VALUES (9547, 4, 0, 3, 1, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262.6, -459.471, -119.962, 4.869, 0, 'Alzzin\'s Minion move');
INSERT INTO `event_scripts` VALUES (8448, 1, 0, 0, 6, 0, 0, 0, 14353, 10, 8, 3, 9348, 0, 0, 0, 0, 0, 0, 0, 0, 'Mizzle The Crafty : yell text');
INSERT INTO `event_scripts` VALUES (8452, 2, 0, 20, 2, 0, 0, 0, 988006, 100, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'changement stay a wp');
INSERT INTO `event_scripts` VALUES (8452, 2, 0, 20, 2, 0, 0, 0, 988005, 100, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'changement stay a wp');
INSERT INTO `event_scripts` VALUES (8452, 2, 0, 20, 2, 0, 0, 0, 988004, 100, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'changement stay a wp');
INSERT INTO `event_scripts` VALUES (8452, 2, 0, 20, 2, 0, 0, 0, 988003, 100, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'changement stay a wp');
INSERT INTO `event_scripts` VALUES (8452, 2, 0, 20, 2, 0, 0, 0, 988002, 100, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'changement stay a wp');
INSERT INTO `event_scripts` VALUES (8452, 2, 0, 20, 2, 0, 0, 0, 988001, 100, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'changement stay a wp');
INSERT INTO `event_scripts` VALUES (8452, 28, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Victor Nefarius : despawn');
INSERT INTO `event_scripts` VALUES (8452, 5, 0, 16, 8279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Victor Nefarius : play sound LordVictorNefariusStart.wav');
INSERT INTO `event_scripts` VALUES (8452, 5, 0, 16, 8279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Victor Nefarius : play sound LordVictorNefariusStart.wav');
INSERT INTO `event_scripts` VALUES (9527, 46, 0, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` VALUES (9527, 42, 0, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` VALUES (9542, 0, 0, 10, 987800, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3512.29, -6618.08, 0.01, 0, 0, 'Madness trigger spawn');
INSERT INTO `event_scripts` VALUES (9533, 1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 9503, 0, 0, 0, 0, 0, 0, 0, 0, 'Grininlix the spectator yell Razza');
INSERT INTO `event_scripts` VALUES (9544, 5, 0, 11, 397147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mur Alzzin');
INSERT INTO `event_scripts` VALUES (9543, 1, 0, 3, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3511.51, -6617.96, -1.52992, 4.2058, 0, 'Maws move');
INSERT INTO `event_scripts` VALUES (9532, 1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 9506, 0, 0, 0, 0, 0, 0, 0, 0, 'Grininlix the spectator yell Skarr');
INSERT INTO `event_scripts` VALUES (9531, 1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 9501, 0, 0, 0, 0, 0, 0, 0, 0, 'Grininlix the spectator yell Mushgog');
INSERT INTO `event_scripts` VALUES (9546, 1, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 251.711, -397.293, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn 2');
INSERT INTO `event_scripts` VALUES (9546, 1, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 250.475, -397.176, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn 2');
INSERT INTO `event_scripts` VALUES (9545, 6, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 251.711, -397.293, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 6, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 250.475, -397.176, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 5, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 251.711, -397.293, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 5, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 250.475, -397.176, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 4, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 251.711, -397.293, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 4, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 250.475, -397.176, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 3, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 251.711, -397.293, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 3, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 250.475, -397.176, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 2, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 251.711, -397.293, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9545, 2, 0, 10, 11460, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 250.475, -397.176, -117.194, 4.896, 0, 'Alzzin\'s Minion spawn');
INSERT INTO `event_scripts` VALUES (9548, 2, 0, 9, 44726, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alzzin Felvine');
INSERT INTO `event_scripts` VALUES (9548, 2, 0, 9, 44727, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alzzin Felvine');
INSERT INTO `event_scripts` VALUES (9548, 2, 0, 9, 44728, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alzzin Felvine');
INSERT INTO `event_scripts` VALUES (9548, 2, 0, 9, 44729, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alzzin Felvine');
INSERT INTO `event_scripts` VALUES (9548, 2, 0, 9, 44730, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alzzin Felvine');
INSERT INTO `event_scripts` VALUES (8446, 0, 0, 22, 35, 0, 0, 0, 14325, 30, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush : amical');
INSERT INTO `event_scripts` VALUES (5300, 5, 0, 10, 11120, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3584.41, -2998.57, 125, 1.892, 0, 'Summon Crimson Hammersmith');
INSERT INTO `event_scripts` VALUES (8502, 0, 0, 10, 8440, 1200000, 1, 100, 0, 0, 0, 0, 8, 850200, -1, 1, -466.868, 272.312, -90.7441, 3.52557, 8502, 'Avatar of Hakkar Fight: Summon Creature Shade of Hakkar');
INSERT INTO `event_scripts` VALUES (9530, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Emote Yell');
INSERT INTO `event_scripts` VALUES (9530, 0, 0, 4, 147, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Remove Gossip Flag');
INSERT INTO `event_scripts` VALUES (9530, 0, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Remove Quest Giver Flag');
INSERT INTO `event_scripts` VALUES (9530, 3, 0, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Start Waypoint Movement');
INSERT INTO `event_scripts` VALUES (663, 0, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3161.68, -1211.12, 214.949, 4.669, 0, 'Tome of MelThandris - Velinde Starsong: Spawn');
INSERT INTO `event_scripts` VALUES (663, 2, 0, 28, 8, 0, 0, 0, 3946, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tome of MelThandris - Velinde Starsong: Kneel emote');
INSERT INTO `event_scripts` VALUES (663, 5, 0, 0, 0, 0, 0, 0, 3946, 10, 8, 3, 1356, 0, 0, 0, 0, 0, 0, 0, 0, 'Tome of MelThandris - Velinde Starsong: Say text 1');
INSERT INTO `event_scripts` VALUES (663, 5, 0, 1, 1, 0, 0, 0, 3946, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tome of MelThandris - Velinde Starsong: Talk emote 1');
INSERT INTO `event_scripts` VALUES (663, 10, 0, 0, 0, 0, 0, 0, 3946, 10, 8, 3, 1357, 0, 0, 0, 0, 0, 0, 0, 0, 'Tome of MelThandris - Velinde Starsong: Say text 2');
INSERT INTO `event_scripts` VALUES (663, 10, 0, 1, 20, 0, 0, 0, 3946, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tome of MelThandris - Velinde Starsong: Beg emote 1');
INSERT INTO `event_scripts` VALUES (663, 15, 0, 0, 0, 0, 0, 0, 3946, 10, 8, 3, 1358, 0, 0, 0, 0, 0, 0, 0, 0, 'Tome of MelThandris - Velinde Starsong: Say text 3');
INSERT INTO `event_scripts` VALUES (663, 15, 0, 1, 1, 0, 0, 0, 3946, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tome of MelThandris - Velinde Starsong: Talk emote 2');
INSERT INTO `event_scripts` VALUES (664, 5, 0, 0, 0, 0, 0, 0, 3946, 10, 8, 3, 1359, 0, 0, 0, 0, 0, 0, 0, 0, 'Mound of Dirt - Velinde Starsong: Say text 1');
INSERT INTO `event_scripts` VALUES (664, 5, 0, 1, 1, 0, 0, 0, 3946, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mound of Dirt - Velinde Starsong: Talk emote 1');
INSERT INTO `event_scripts` VALUES (664, 10, 0, 0, 0, 0, 0, 0, 3946, 10, 8, 3, 1360, 0, 0, 0, 0, 0, 0, 0, 0, 'Mound of Dirt - Velinde Starsong: Say text 2');
INSERT INTO `event_scripts` VALUES (664, 10, 0, 1, 1, 0, 0, 0, 3946, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mound of Dirt - Velinde Starsong: Talk emote 2');
INSERT INTO `event_scripts` VALUES (664, 15, 0, 1, 18, 0, 0, 0, 3946, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mound of Dirt - Velinde Starsong: Cry emote');
INSERT INTO `event_scripts` VALUES (420, 2, 0, 0, 0, 0, 0, 0, 2755, 50, 8, 2, 842, 0, 0, 0, 0, 0, 0, 0, 0, 'Summoning the Princess - Myzrael: Say text 1');
INSERT INTO `event_scripts` VALUES (420, 5, 0, 0, 0, 0, 0, 0, 2755, 50, 8, 2, 843, 0, 0, 0, 0, 0, 0, 0, 0, 'Summoning the Princess - Myzrael: Say text 2');
INSERT INTO `event_scripts` VALUES (420, 10, 0, 0, 0, 0, 0, 0, 2755, 50, 8, 2, 844, 0, 0, 0, 0, 0, 0, 0, 0, 'Summoning the Princess - Myzrael: Say text 3');
INSERT INTO `event_scripts` VALUES (420, 11, 0, 26, 0, 0, 0, 0, 2755, 50, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summoning the Princess - Myzrael: Attack');
INSERT INTO `event_scripts` VALUES (8175, 1, 0, 10, 14351, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 539.868, 535.142, 27.9186, 0.0017457, 0, 'Ogre Tannin Looted - Spawn Gordok Bushwacker');
INSERT INTO `event_scripts` VALUES (8175, 0, 0, 37, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ogre Tannin Looted - Set Instance Data');
INSERT INTO `event_scripts` VALUES (259, 0, 0, 10, 1770, 90000, 1, 10, 0, 0, 0, 1, 8, 1770, 0, 1, 875.38, 1232.43, 52.6, 3.16, 0, 'Dusty Spellbooks: Summon Moonrage Darkrunner');
INSERT INTO `event_scripts` VALUES (264, 0, 0, 10, 2044, 300000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, -9552.67, -1431.93, 62.3, 5.03, 0, 'Marshal Haggard\'s Chest: Summon Forlorn Spirit');
INSERT INTO `event_scripts` VALUES (4845, 0, 0, 76, 175584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13.8113, -396.202, 48.536, 3.0208, 0, 'Challenge to Urok - Summon GameObject Challenge to Urok');
INSERT INTO `event_scripts` VALUES (3561, 0, 0, 9, 98643, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soft Dirt Mound - Respawn Gor\'tesh\'s Lopped Off Head');
INSERT INTO `event_scripts` VALUES (3561, 0, 0, 68, 13488, 2, 7033, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soft Dirt Mound - Start Script for All Firegut Ogres');
INSERT INTO `event_scripts` VALUES (3561, 0, 0, 68, 13488, 2, 7034, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soft Dirt Mound - Start Script for All Firegut Ogre Mages');
INSERT INTO `event_scripts` VALUES (3561, 0, 0, 68, 13488, 2, 7035, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soft Dirt Mound - Start Script for All Firegut Brutes');
INSERT INTO `event_scripts` VALUES (694, 0, 0, 76, 19601, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168.44, 51.1277, 0.0603573, 5.48173, 0, 'Set NG-5 Charge (Blue) - Respawn NG-5 Explosives (Blue)');
INSERT INTO `event_scripts` VALUES (693, 0, 0, 76, 19592, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1048.82, -442.209, 4.7429, 2.17129, 0, 'Set NG-5 Charge (Red) - Respawn NG-5 Explosives (Red)');
INSERT INTO `event_scripts` VALUES (691, 0, 0, 13, 0, 0, 0, 0, 20899, 50, 11, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Activate Venture Co. Explosives Wagon');
INSERT INTO `event_scripts` VALUES (691, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Despawn NG-5 Explosives (Red)');
INSERT INTO `event_scripts` VALUES (691, 3, 0, 68, 20899, 2, 3988, 100, 20899, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Start Script on All Venture Co. Operators');
INSERT INTO `event_scripts` VALUES (691, 3, 0, 68, 20899, 2, 3991, 100, 20899, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Start Script on All Venture Co. Deforesters');
INSERT INTO `event_scripts` VALUES (691, 3, 0, 68, 20899, 2, 3989, 100, 20899, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Start Script on All Venture Co. Loggers');
INSERT INTO `event_scripts` VALUES (692, 0, 0, 13, 0, 0, 0, 0, 19547, 50, 11, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Activate Venture Co. Explosives Wagon');
INSERT INTO `event_scripts` VALUES (692, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Despawn NG-5 Explosives (Blue)');
INSERT INTO `event_scripts` VALUES (692, 3, 0, 68, 20899, 2, 3988, 100, 19547, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Start Script on All Venture Co. Operators');
INSERT INTO `event_scripts` VALUES (692, 3, 0, 68, 20899, 2, 3991, 100, 19547, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Start Script on All Venture Co. Deforesters');
INSERT INTO `event_scripts` VALUES (692, 3, 0, 68, 20899, 2, 3989, 100, 19547, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Start Script on All Venture Co. Loggers');
INSERT INTO `event_scripts` VALUES (601, 0, 0, 0, 0, 0, 0, 0, 9688, 0, 9, 2, 1235, 0, 0, 0, 0, 0, 0, 0, 0, 'Flagongut\'s Fossil: Prospector Whelgar - Say Text');
INSERT INTO `event_scripts` VALUES (3361, 0, 0, 39, 336101, 336102, 0, 0, 0, 0, 0, 1, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Thaurissan Relic - Start Script');
INSERT INTO `event_scripts` VALUES (9527, 42, 0, 0, 0, 0, 0, 0, 15552, 50, 8, 3, 11108, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Text');
INSERT INTO `event_scripts` VALUES (9527, 39, 0, 1, 25, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Point');
INSERT INTO `event_scripts` VALUES (9527, 39, 0, 0, 2, 0, 0, 0, 15552, 50, 8, 3, 11107, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Emoted Text');
INSERT INTO `event_scripts` VALUES (9527, 37, 0, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` VALUES (9527, 33, 0, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` VALUES (9527, 33, 0, 0, 0, 0, 0, 0, 15552, 50, 8, 3, 11106, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Text');
INSERT INTO `event_scripts` VALUES (9527, 16, 0, 10, 15552, 44000, 0, 0, 0, 0, 0, 0, 16, 9528, -1, 1, 5088.21, -5087.08, 922.385, 4.89885, 0, 'Decoy!: Summon Doctor Weavil');
INSERT INTO `event_scripts` VALUES (9527, 5, 0, 10, 15553, 61000, 0, 0, 0, 0, 0, 0, 0, 9529, -1, 1, 5166.07, -5196.86, 938.6, 2.125, 0, 'Decoy!: Summon Doctor Weavil\'s Flying Machine');
INSERT INTO `event_scripts` VALUES (9527, 0, 0, 9, 181756, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Respawn Stillpine Grain');
INSERT INTO `event_scripts` VALUES (9417, 0, 0, 83, 0, 0, 0, 0, 15415, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Toss Stink Bomb - Quest Credit for Stinking Up Southshore');
INSERT INTO `event_scripts` VALUES (466, 0, 0, 9, 332887, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Winterhoof Cleansing - Respawn Water Well Cleansing Aura (GUID: 332887)');
INSERT INTO `event_scripts` VALUES (467, 0, 0, 9, 332888, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thunderhorn Cleansing - Respawn Water Well Cleansing Aura (GUID: 332888)');
INSERT INTO `event_scripts` VALUES (468, 0, 0, 9, 332889, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildmane Cleansing - Respawn Water Well Cleansing Aura (GUID: 332889)');
INSERT INTO `event_scripts` VALUES (525, 0, 0, 9, 332890, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Stagnant Oasis - Respawn Fissure Plant (GUID: 332890)');
INSERT INTO `event_scripts` VALUES (525, 0, 0, 9, 332891, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Stagnant Oasis - Respawn Fissure Plant (GUID: 332891)');
INSERT INTO `event_scripts` VALUES (525, 0, 0, 9, 332892, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Stagnant Oasis - Respawn Fissure Plant (GUID: 332892)');
INSERT INTO `event_scripts` VALUES (525, 0, 0, 9, 332893, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Stagnant Oasis - Respawn Fissure Plant (GUID: 332893)');
INSERT INTO `event_scripts` VALUES (525, 0, 0, 9, 332894, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Stagnant Oasis - Respawn Fissure Plant (GUID: 332894)');
INSERT INTO `event_scripts` VALUES (9527, 50, 0, 1, 5, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Exclamation');
INSERT INTO `event_scripts` VALUES (9527, 52, 0, 1, 5, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Exclamation');
INSERT INTO `event_scripts` VALUES (9527, 55, 0, 1, 5, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Exclamation');
INSERT INTO `event_scripts` VALUES (9527, 59, 0, 10, 15554, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 5096.82, -5089.7, 923.05, 4.0144, 0, 'Decoy!: Summon Number Two');
INSERT INTO `event_scripts` VALUES (3718, 5, 0, 81, 17428, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Videre Elixir: Miblon\'s Door - Despawn');
INSERT INTO `event_scripts` VALUES (452, 0, 0, 9, 14203, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Blue Aura (Guid: 14203)');
INSERT INTO `event_scripts` VALUES (452, 0, 0, 9, 14202, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14202)');
INSERT INTO `event_scripts` VALUES (452, 0, 0, 9, 14201, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14201)');
INSERT INTO `event_scripts` VALUES (452, 0, 0, 9, 14200, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14200)');
INSERT INTO `event_scripts` VALUES (452, 0, 0, 10, 2937, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -2405.19, -4172.46, -7.05522, 0.977384, 0, 'Enchanted Sea Kelp - Summon Creature Dagun the Ravenous');
INSERT INTO `event_scripts` VALUES (452, 0, 0, 9, 14199, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14199)');
INSERT INTO `event_scripts` VALUES (8608, 0, 0, 0, 0, 0, 0, 0, 92849, 0, 9, 2, 10009, 0, 0, 0, 0, 0, 0, 0, 0, 'Placing Message to the Wildhammer: Falstad Wildhammer - Say Text');
INSERT INTO `event_scripts` VALUES (8608, 0, 0, 86, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Placing Message to the Wildhammer: Player - Set PvP');
INSERT INTO `event_scripts` VALUES (9208, 3, 0, 10, 15286, 7200000, 0, 0, 0, 0, 0, 0, 0, 920801, -1, 1, -7258.49, 828.158, 3.21053, 4.29351, 0, 'Glyphs of Calling: Summon Creature Xil\'xix');
INSERT INTO `event_scripts` VALUES (61118, 0, 0, 10, 61118, 60000, 1, 30, 0, 0, 0, 1, 8, 0, 0, 2, 0, 0, 0, 0, 0, 'Ancient Dirt Mound - Summon Creature Azotha Shade');
INSERT INTO `event_scripts` VALUES (416, 2, 1, 10, 2570, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1781.64, -1495.51, 99.386, 4.299, 0, 'Summon on third floor Boulderfist Shaman');
INSERT INTO `event_scripts` VALUES (416, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1781.64, -1495.51, 99.386, 4.299, 0, 'Summon on third floor Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (416, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1762.37, -1517.95, 99.386, 3.156, 0, 'Summon on third floor Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (416, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1762.37, -1517.95, 99.386, 3.156, 0, 'Summon on third floor Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (417, 2, 1, 10, 2570, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1784.85, -1523.67, 90.608, 0.488, 0, 'Summon on second floor Boulderfist Shaman');
INSERT INTO `event_scripts` VALUES (417, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1784.85, -1523.67, 90.608, 0.488, 0, 'Summon on second floor Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (417, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1778.01, -1496.46, 90.608, 6.049, 0, 'Summon on second floor Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (417, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1778.01, -1496.46, 90.608, 6.049, 0, 'Summon on second floor Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (415, 2, 1, 10, 2570, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1777.9, -1513.06, 75.464, 5.328, 0, 'Summon on first floor Boulderfist Shaman');
INSERT INTO `event_scripts` VALUES (415, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, -1777.9, -1513.06, 75.464, 5.328, 0, 'Summon on first floor Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (417, 4, 2, 26, 2570, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Shaman attacks on second floor');
INSERT INTO `event_scripts` VALUES (416, 4, 2, 26, 2569, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Mauler attacks on third floor');
INSERT INTO `event_scripts` VALUES (416, 4, 2, 26, 2570, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Shaman attacks on third floor');
INSERT INTO `event_scripts` VALUES (413, 0, 0, 31, 2794, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Runed Pedestal: Terminate Script if Summoned Guardian is found');
INSERT INTO `event_scripts` VALUES (413, 1, 0, 10, 2570, 300000, 0, 0, 0, 0, 0, 0, 0, 2718, -1, 1, -1777.91, -1501.28, 65.0042, 4.66003, 0, 'Runed Pedestal: Summon Creature Boulderfist Shaman');
INSERT INTO `event_scripts` VALUES (413, 1, 1, 10, 2569, 300000, 0, 0, 0, 0, 0, 0, 0, 2717, -1, 1, -1729.03, -1574.77, 53.9953, 3.59538, 0, 'Runed Pedestal: Summon Creature Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (413, 1, 2, 10, 2569, 300000, 0, 0, 0, 0, 0, 0, 0, 2716, -1, 1, -1742.55, -1594.43, 52.7884, 1.97222, 0, 'Runed Pedestal: Summon Creature Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (413, 1, 3, 10, 2569, 300000, 0, 0, 0, 0, 0, 0, 0, 2715, -1, 1, -1764.01, -1591, 53.1026, 1.309, 0, 'Runed Pedestal: Summon Creature Boulderfist Mauler');
INSERT INTO `event_scripts` VALUES (413, 1, 4, 10, 2794, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1776.35, -1523.46, 65.0042, 1.5708, 0, 'Runed Pedestal: Summon Creature Summoned Guardian');
INSERT INTO `event_scripts` VALUES (413, 1, 5, 10, 2794, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1782.63, -1508.94, 99.3345, 3.08923, 0, 'Runed Pedestal: Summon Creature Summoned Guardian');
INSERT INTO `event_scripts` VALUES (413, 1, 6, 10, 2794, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1777.76, -1516.91, 99.3345, 4.29351, 0, 'Runed Pedestal: Summon Creature Summoned Guardian');
INSERT INTO `event_scripts` VALUES (413, 1, 7, 10, 2794, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1770.32, -1510.47, 90.5951, 0.890118, 0, 'Runed Pedestal: Summon Creature Summoned Guardian');
INSERT INTO `event_scripts` VALUES (413, 1, 8, 10, 2794, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1772.38, -1522.57, 75.3211, 2.1293, 0, 'Runed Pedestal: Summon Creature Summoned Guardian');
INSERT INTO `event_scripts` VALUES (413, 1, 9, 10, 2794, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1758.89, -1555.83, 58.6428, 5.11381, 0, 'Runed Pedestal: Summon Creature Summoned Guardian');
INSERT INTO `event_scripts` VALUES (413, 1, 10, 10, 2794, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1748.81, -1555.65, 58.5205, 4.38078, 0, 'Runed Pedestal: Summon Creature Summoned Guardian');
INSERT INTO `event_scripts` VALUES (3938, 1, 0, 10, 2168, 90000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 6850.23, -476.544, 40.3891, 0.418879, 0, 'The Blackwood Corrupted: Summon Creature Blackwood Warrior');
INSERT INTO `event_scripts` VALUES (3938, 1, 0, 10, 2168, 90000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 6868.93, -525.996, 40.2464, 1.48353, 0, 'The Blackwood Corrupted: Summon Creature Blackwood Warrior');
INSERT INTO `event_scripts` VALUES (3938, 1, 0, 10, 2168, 90000, 0, 0, 0, 0, 0, 0, 0, 3938, -1, 1, 6887.17, -482.53, 40.2585, 3.45575, 0, 'The Blackwood Corrupted: Summon Creature Blackwood Warrior');
INSERT INTO `event_scripts` VALUES (3938, 2, 0, 68, 3940, 2, 2168, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Blackwood Corrupted: Start Script on All Blackwood Warriors');
INSERT INTO `event_scripts` VALUES (3938, 2, 1, 68, 3940, 2, 2169, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Blackwood Corrupted: Start Script on All Blackwood Totemics');
INSERT INTO `event_scripts` VALUES (3938, 18, 0, 10, 10373, 90000, 0, 0, 0, 0, 0, 0, 1, 3939, -1, 1, 6891.92, -477.762, 44.3988, 3.80459, 0, 'The Blackwood Corrupted: Summon Creature Xabraxxis');
INSERT INTO `event_scripts` VALUES (5759, 1, 0, 10, 11886, 600000, 1, 0, 0, 0, 0, 0, 8, 0, -1, 1, 1571.65, -3257.46, 86.8517, 4.38078, 0, 'Of Forgotten Memories - Summon Creature');
INSERT INTO `event_scripts` VALUES (5759, 1, 0, 10, 11887, 600000, 3, 0, 0, 0, 0, 0, 8, 1188703, -1, 1, 1573.05, -3253.93, 86.7212, 4.34587, 0, 'Of Forgotten Memories - Summon Creature');
INSERT INTO `event_scripts` VALUES (9208, 3, 0, 10, 15288, 7200000, 0, 0, 0, 0, 0, 0, 0, 920801, -1, 1, -7223.8, 820.815, 4.89979, 0.0872665, 0, 'Glyphs of Calling: Summon Creature Aluntir');
INSERT INTO `event_scripts` VALUES (9208, 3, 0, 10, 15290, 7200000, 0, 0, 0, 0, 0, 0, 0, 920801, -1, 1, -7268.27, 878.263, 1.88339, 1.85005, 0, 'Glyphs of Calling: Summon Creature Arakis');
INSERT INTO `event_scripts` VALUES (9208, 4, 0, 69, 9208, 0, 0, 0, 0, 0, 0, 0, 9208, 920802, 0, 0, 0, 0, 0, 0, 0, 'Glyphs of Calling: Edit Scripted Map Event');
INSERT INTO `event_scripts` VALUES (4622, 0, 0, 39, 4622, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 4624, 'Call of Vaelastrasz: Summon Vaelstrasz during Stadium Event in UBRS');


SET FOREIGN_KEY_CHECKS = 1;
