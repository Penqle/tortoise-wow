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
-- Table structure for spell_proc_item_enchant
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc_item_enchant`;
CREATE TABLE `spell_proc_item_enchant`  (
  `entry` mediumint(8) UNSIGNED NOT NULL,
  `ppmRate` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_proc_item_enchant
-- ----------------------------
INSERT INTO `spell_proc_item_enchant` VALUES (8034, 9);
INSERT INTO `spell_proc_item_enchant` VALUES (13897, 6);
INSERT INTO `spell_proc_item_enchant` VALUES (20004, 6);
INSERT INTO `spell_proc_item_enchant` VALUES (20005, 1.6);


SET FOREIGN_KEY_CHECKS = 1;
