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
-- Table structure for chat_channels
-- ----------------------------
DROP TABLE IF EXISTS `chat_channels`;
CREATE TABLE `chat_channels`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `faction_group` int(11) NOT NULL DEFAULT 0,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc5` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc6` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc7` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shortcut` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_loc1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_loc2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_loc3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_loc4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_loc5` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_loc6` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_loc7` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcut_flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_channels
-- ----------------------------
INSERT INTO `chat_channels` VALUES (1, 3, 0, 'General - %s', '', '', '', '', '', '', '', 4128894, 'General', '', '', '', '', '', '', '', 4128894);
INSERT INTO `chat_channels` VALUES (2, 59, 0, 'Trade - %s', '', '', '', '', '', '', '', 4128894, 'Trade', '', '', '', '', '', '', '', 4128894);
INSERT INTO `chat_channels` VALUES (22, 65539, 0, 'LocalDefense - %s', '', '', '', '', '', '', '', 4128894, 'LocalDefense', '', '', '', '', '', '', '', 4128894);
INSERT INTO `chat_channels` VALUES (23, 65540, 0, 'WorldDefense', '', '', '', '', '', '', '', 4128894, 'WorldDefense', '', '', '', '', '', '', '', 4128894);
INSERT INTO `chat_channels` VALUES (24, 0, 0, 'LookingForGroup', '', '', '', '', '', '', '', 4128894, 'LookingForGroup', '', '', '', '', '', '', '', 4128894);
INSERT INTO `chat_channels` VALUES (25, 131122, 0, 'GuildRecruitment - %s', '', '', '', '', '', '', '', 4128894, 'GuildRecruitment', '', '', '', '', '', '', '', 4128894);
INSERT INTO `chat_channels` VALUES (27, 9, 0, 'World', '', '', '', '', '', '', '', 4128894, 'World', '', '', '', '', '', '', '', 4128894);


SET FOREIGN_KEY_CHECKS = 1;
