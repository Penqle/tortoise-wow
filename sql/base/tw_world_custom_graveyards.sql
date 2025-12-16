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
-- Table structure for custom_graveyards
-- ----------------------------
DROP TABLE IF EXISTS `custom_graveyards`;
CREATE TABLE `custom_graveyards`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `map_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `zone_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `area_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `max_level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `map_gy_alliance` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gy_x_alliance` float NOT NULL DEFAULT 0,
  `gy_y_alliance` float NOT NULL DEFAULT 0,
  `gy_z_alliance` float NOT NULL DEFAULT 0,
  `orientation_alliance` float NOT NULL DEFAULT 0,
  `map_gy_horde` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gy_x_horde` float NOT NULL DEFAULT 0,
  `gy_y_horde` float NOT NULL DEFAULT 0,
  `gy_z_horde` float NOT NULL DEFAULT 0,
  `orientation_horde` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Custom graveyards' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of custom_graveyards
-- ----------------------------
INSERT INTO `custom_graveyards` VALUES (1, 'Gurubashi Arena', 0, 33, 2177, 60, 0, -13243.4, 239.78, 33.23, 5.3, 0, -13209.5, 221.45, 33.23, 2.95);
INSERT INTO `custom_graveyards` VALUES (3, 'Venture Camp', 1, 406, 4011, 10, 1, 1788.58, 1335.74, 144.35, 4, 1, 1788.58, 1335.74, 144.3, 4);
INSERT INTO `custom_graveyards` VALUES (4, 'Venture Camp', 1, 406, 406, 10, 1, 1788.58, 1335.74, 144.35, 4, 1, 1788.58, 1335.74, 144.3, 4);
INSERT INTO `custom_graveyards` VALUES (5, 'Amani\'Alor', 1, 406, 2041, 60, 1, 2947.03, 2557.98, 139.3, 2.3, 1, 2947.03, 2557.98, 139.3, 2.3);
INSERT INTO `custom_graveyards` VALUES (6, 'Farstrider\'s Lodge', 0, 38, 147, 10, 0, -5653.6, -4181.4, 391.9, 1, 0, -5653.6, -4181.4, 391.9, 1);
INSERT INTO `custom_graveyards` VALUES (7, 'Black Morass', 269, 2366, 2366, 60, 1, -8453.4, -4690.7, -202.9, 4.9, 1, -8453.4, -4690.7, -202.9, 4.9);
INSERT INTO `custom_graveyards` VALUES (8, 'Caverns of Time', 1, 1941, 1941, 60, 1, -8453.4, -4690.7, -202.9, 4.9, 1, -8453.4, -4690.7, -202.9, 4.9);
INSERT INTO `custom_graveyards` VALUES (50, 'Winter Veil Vale', 813, 5130, 5130, 60, 813, -2629.27, 1041.82, 74.256, 2.7, 813, -2629.27, 1041.82, 74.256, 2.7);
INSERT INTO `custom_graveyards` VALUES (10, 'Karazhan Crypt', 800, 41, 2563, 60, 0, -11111.5, -1832.2, 71.8, 6.1, 0, -11111.5, -1832.2, 71.8, 6.1);
INSERT INTO `custom_graveyards` VALUES (11, 'Karazhan Crypt', 800, 41, 41, 60, 0, -11111.5, -1832.2, 71.8, 6.1, 0, -11111.5, -1832.2, 71.8, 6.1);
INSERT INTO `custom_graveyards` VALUES (12, 'Karazhan Crypt', 800, 10, 10, 60, 0, -11111.5, -1832.2, 71.8, 6.1, 0, -11111.5, -1832.2, 71.8, 6.1);
INSERT INTO `custom_graveyards` VALUES (13, 'Lapidis Isle', 0, 409, 5047, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04);
INSERT INTO `custom_graveyards` VALUES (14, 'Gilijim Isle', 0, 408, 0, 60, 0, -13912, 2350.9, 28.57, 5.14, 0, -13912, 2350.9, 28.57, 5.1);
INSERT INTO `custom_graveyards` VALUES (15, 'Tirisfal Uplands', 0, 85, 5028, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (16, 'Tirisfal Uplands', 0, 85, 5029, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (17, 'Tirisfal Uplands', 0, 85, 5030, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (18, 'Tirisfal Uplands', 0, 85, 5031, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (19, 'Tirisfal Uplands', 0, 85, 5032, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (20, 'Tirisfal Uplands', 0, 85, 5033, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (21, 'Tirisfal Uplands', 0, 85, 5034, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (22, 'Tirisfal Uplands', 0, 85, 5035, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (23, 'Tirisfal Uplands', 0, 85, 5036, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (24, 'Tirisfal Uplands', 0, 85, 5037, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (25, 'Tirisfal Uplands', 0, 85, 5038, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (26, 'Tirisfal Uplands', 0, 85, 5039, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (27, 'Tirisfal Uplands', 0, 85, 5040, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (28, 'Tirisfal Uplands', 0, 85, 5041, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (29, 'Tirisfal Uplands', 0, 85, 5042, 60, 0, 2163.39, 2811.55, 22.93, 3.37, 0, 2163.39, 2811.55, 22.93, 3.37);
INSERT INTO `custom_graveyards` VALUES (30, 'Scarlet Citadel', 45, 0, 0, 60, 0, 2603.33, -534.807, 89, 2.46552, 0, 2603.33, -534.807, 89, 2.46552);
INSERT INTO `custom_graveyards` VALUES (31, 'Hateforge Quarry', 808, 5103, 5103, 60, 0, -7488.6, -2123.01, 138.731, 4.1, 0, -7488.6, -2123.01, 138.731, 4.1);
INSERT INTO `custom_graveyards` VALUES (32, 'Crescent Grove', 802, 5077, 5077, 60, 1, 2633.4, -629.7, 107.58, 1.8, 1, 2421.7, -2953.6, 123.4, 0.05);
INSERT INTO `custom_graveyards` VALUES (33, 'Lapidis Isle', 0, 409, 409, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04);
INSERT INTO `custom_graveyards` VALUES (34, 'Lapidis Isle', 0, 409, 5050, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04);
INSERT INTO `custom_graveyards` VALUES (35, 'Lapidis Isle', 0, 409, 5051, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04);
INSERT INTO `custom_graveyards` VALUES (36, 'Lapidis Isle', 0, 409, 5048, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04);
INSERT INTO `custom_graveyards` VALUES (37, 'Lapidis Isle', 0, 409, 5046, 60, 0, -11505.1, 3509.7, 66.1, 2.04, 0, -11505.1, 3509.7, 66.1, 2.04);
INSERT INTO `custom_graveyards` VALUES (38, 'Hateforge Excavation', 46, 5101, 0, 60, 0, -7488.6, -2123.01, 138.731, 4.1, 0, -7488.6, -2123.01, 138.731, 4.1);
INSERT INTO `custom_graveyards` VALUES (41, 'Tel\'Abim Island', 1, 5121, 5121, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (42, 'Tel\'Abim Island', 1, 5121, 5122, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (43, 'Tel\'Abim Island', 1, 5121, 5123, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (44, 'Tel\'Abim Island', 1, 5121, 5124, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (45, 'Tel\'Abim Island', 1, 5121, 5125, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (46, 'Tel\'Abim Island', 1, 5121, 5126, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (47, 'Tel\'Abim Island', 1, 5121, 5127, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (48, 'Tel\'Abim Island', 1, 5121, 5128, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);
INSERT INTO `custom_graveyards` VALUES (49, 'Tel\'Abim Island', 1, 5121, 5129, 60, 1, -8924.63, -6625.92, 18.47, 6, 1, -8924.63, -6625.92, 18.47, 6);


SET FOREIGN_KEY_CHECKS = 1;
