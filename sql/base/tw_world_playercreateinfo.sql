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
-- Table structure for playercreateinfo
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo`;
CREATE TABLE `playercreateinfo`  (
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `map` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `zone` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`race`, `class`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of playercreateinfo
-- ----------------------------
INSERT INTO `playercreateinfo` VALUES (1, 1, 0, 12, -8949.95, -132.493, 83.5312, 0);
INSERT INTO `playercreateinfo` VALUES (1, 2, 0, 12, -8949.95, -132.493, 83.5312, 0);
INSERT INTO `playercreateinfo` VALUES (1, 4, 0, 12, -8949.95, -132.493, 83.5312, 0);
INSERT INTO `playercreateinfo` VALUES (1, 5, 0, 12, -8949.95, -132.493, 83.5312, 0);
INSERT INTO `playercreateinfo` VALUES (1, 8, 0, 12, -8949.95, -132.493, 83.5312, 0);
INSERT INTO `playercreateinfo` VALUES (1, 9, 0, 12, -8949.95, -132.493, 83.5312, 0);
INSERT INTO `playercreateinfo` VALUES (2, 1, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (2, 3, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (2, 4, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (2, 7, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (2, 9, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (3, 1, 0, 1, -6240.32, 331.033, 382.758, 6.17716);
INSERT INTO `playercreateinfo` VALUES (3, 2, 0, 1, -6240.32, 331.033, 382.758, 6.17716);
INSERT INTO `playercreateinfo` VALUES (3, 3, 0, 1, -6240.32, 331.033, 382.758, 6.17716);
INSERT INTO `playercreateinfo` VALUES (3, 4, 0, 1, -6240.32, 331.033, 382.758, 6.17716);
INSERT INTO `playercreateinfo` VALUES (3, 5, 0, 1, -6240.32, 331.033, 382.758, 6.17716);
INSERT INTO `playercreateinfo` VALUES (4, 1, 1, 141, 10311.3, 831.463, 1326.41, 5.48033);
INSERT INTO `playercreateinfo` VALUES (4, 3, 1, 141, 10311.3, 831.463, 1326.41, 5.48033);
INSERT INTO `playercreateinfo` VALUES (4, 4, 1, 141, 10311.3, 831.463, 1326.41, 5.48033);
INSERT INTO `playercreateinfo` VALUES (4, 5, 1, 141, 10311.3, 831.463, 1326.41, 5.48033);
INSERT INTO `playercreateinfo` VALUES (4, 11, 1, 141, 10311.3, 831.463, 1326.41, 5.48033);
INSERT INTO `playercreateinfo` VALUES (5, 1, 0, 85, 1676.35, 1677.45, 121.67, 2.70526);
INSERT INTO `playercreateinfo` VALUES (5, 4, 0, 85, 1676.35, 1677.45, 121.67, 2.70526);
INSERT INTO `playercreateinfo` VALUES (5, 5, 0, 85, 1676.35, 1677.45, 121.67, 2.70526);
INSERT INTO `playercreateinfo` VALUES (5, 8, 0, 85, 1676.35, 1677.45, 121.67, 2.70526);
INSERT INTO `playercreateinfo` VALUES (5, 9, 0, 85, 1676.35, 1677.45, 121.67, 2.70526);
INSERT INTO `playercreateinfo` VALUES (6, 1, 1, 215, -2917.58, -257.98, 52.9968, 0);
INSERT INTO `playercreateinfo` VALUES (6, 3, 1, 215, -2917.58, -257.98, 52.9968, 0);
INSERT INTO `playercreateinfo` VALUES (6, 7, 1, 215, -2917.58, -257.98, 52.9968, 0);
INSERT INTO `playercreateinfo` VALUES (6, 11, 1, 215, -2917.58, -257.98, 52.9968, 0);
INSERT INTO `playercreateinfo` VALUES (7, 1, 0, 1, -6240.32, 331.033, 382.758, 0);
INSERT INTO `playercreateinfo` VALUES (7, 4, 0, 1, -6240.32, 331.033, 382.758, 0);
INSERT INTO `playercreateinfo` VALUES (7, 8, 0, 1, -6240.32, 331.033, 382.758, 0);
INSERT INTO `playercreateinfo` VALUES (7, 9, 0, 1, -6240.32, 331.033, 382.758, 0);
INSERT INTO `playercreateinfo` VALUES (8, 1, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (8, 3, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (8, 4, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (8, 5, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (8, 7, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (8, 8, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (9, 1, 1, 5536, -233, -7177, 16.52, 1.76);
INSERT INTO `playercreateinfo` VALUES (9, 3, 1, 5536, -233, -7177, 16.52, 1.76);
INSERT INTO `playercreateinfo` VALUES (9, 4, 1, 5536, -233, -7177, 16.52, 1.76);
INSERT INTO `playercreateinfo` VALUES (9, 8, 1, 5536, -233, -7177, 16.52, 1.76);
INSERT INTO `playercreateinfo` VALUES (9, 9, 1, 5536, -233, -7177, 16.52, 1.76);
INSERT INTO `playercreateinfo` VALUES (10, 1, 0, 5225, 3212.63, -2501.44, 111.71, 0.79);
INSERT INTO `playercreateinfo` VALUES (10, 2, 0, 5225, 3212.63, -2501.44, 111.71, 0.79);
INSERT INTO `playercreateinfo` VALUES (10, 3, 0, 5225, 3212.63, -2501.44, 111.71, 0.79);
INSERT INTO `playercreateinfo` VALUES (10, 4, 0, 5225, 3212.63, -2501.44, 111.71, 0.79);
INSERT INTO `playercreateinfo` VALUES (10, 5, 0, 5225, 3212.63, -2501.44, 111.71, 0.79);
INSERT INTO `playercreateinfo` VALUES (10, 8, 0, 5225, 3212.63, -2501.44, 111.71, 0.79);
INSERT INTO `playercreateinfo` VALUES (7, 3, 0, 1, -6240.32, 331.033, 382.758, 6.17716);
INSERT INTO `playercreateinfo` VALUES (2, 8, 1, 14, -618.518, -4251.67, 38.718, 0);
INSERT INTO `playercreateinfo` VALUES (5, 3, 0, 85, 1676.35, 1677.45, 121.67, 2.70526);
INSERT INTO `playercreateinfo` VALUES (3, 8, 0, 1, -6240.32, 331.033, 382.758, 6.17716);
INSERT INTO `playercreateinfo` VALUES (1, 3, 0, 12, -8949.95, -132.493, 83.5312, 0);
INSERT INTO `playercreateinfo` VALUES (8, 9, 1, 14, -618.518, -4251.67, 38.718, 0);


SET FOREIGN_KEY_CHECKS = 1;
