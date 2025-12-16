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
-- Table structure for petcreateinfo_spell
-- ----------------------------
DROP TABLE IF EXISTS `petcreateinfo_spell`;
CREATE TABLE `petcreateinfo_spell`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `spell1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `spell2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `spell3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `spell4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet Create Spells' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of petcreateinfo_spell
-- ----------------------------
INSERT INTO `petcreateinfo_spell` VALUES (416, 3110, 0, 0, 0);
INSERT INTO `petcreateinfo_spell` VALUES (417, 19505, 0, 0, 0);
INSERT INTO `petcreateinfo_spell` VALUES (510, 6873, 9672, 0, 0);
INSERT INTO `petcreateinfo_spell` VALUES (1860, 3716, 0, 0, 0);
INSERT INTO `petcreateinfo_spell` VALUES (1863, 7814, 0, 0, 0);
INSERT INTO `petcreateinfo_spell` VALUES (5807, 17254, 0, 0, 0);
INSERT INTO `petcreateinfo_spell` VALUES (15429, 25163, 0, 0, 0);


SET FOREIGN_KEY_CHECKS = 1;
