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
-- Table structure for areatrigger_bg_entrance
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_bg_entrance`;
CREATE TABLE `areatrigger_bg_entrance`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `bg_template` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `exit_map` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `exit_position_x` float NOT NULL DEFAULT 0,
  `exit_position_y` float NOT NULL DEFAULT 0,
  `exit_position_z` float NOT NULL DEFAULT 0,
  `exit_orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_bg_entrance
-- ----------------------------
INSERT INTO `areatrigger_bg_entrance` VALUES (2412, 'Alterac Valley (Alliance)', 469, 1, 0, 102.15, -188.887, 126.932, 4.813);
INSERT INTO `areatrigger_bg_entrance` VALUES (2413, 'Alterac Valley (Horde)', 67, 1, 0, 531.822, -1087.03, 105.778, 3.325);
INSERT INTO `areatrigger_bg_entrance` VALUES (3953, 'Arathi Basin (Alliance)', 469, 3, 0, -1219.85, -2530.54, 22.248, 2.981);
INSERT INTO `areatrigger_bg_entrance` VALUES (3954, 'Arathi Basin (Horde)', 67, 3, 0, -833.706, -3519.77, 72.508, 3.566);
INSERT INTO `areatrigger_bg_entrance` VALUES (3650, 'Warsong Gulch (Alliance)', 469, 2, 1, 1454.12, -1858.47, 126.402, 6.194);
INSERT INTO `areatrigger_bg_entrance` VALUES (3654, 'Warsong Gulch (Horde)', 67, 2, 1, 1035.23, -2105.94, 122.946, 4.847);


SET FOREIGN_KEY_CHECKS = 1;
