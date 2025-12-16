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
-- Table structure for spell_enchant_charges
-- ----------------------------
DROP TABLE IF EXISTS `spell_enchant_charges`;
CREATE TABLE `spell_enchant_charges`  (
  `entry` int(10) UNSIGNED NOT NULL,
  `charges` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_enchant_charges
-- ----------------------------
INSERT INTO `spell_enchant_charges` VALUES (2823, 60);
INSERT INTO `spell_enchant_charges` VALUES (2824, 75);
INSERT INTO `spell_enchant_charges` VALUES (5761, 50);
INSERT INTO `spell_enchant_charges` VALUES (8679, 40);
INSERT INTO `spell_enchant_charges` VALUES (8686, 55);
INSERT INTO `spell_enchant_charges` VALUES (8688, 70);
INSERT INTO `spell_enchant_charges` VALUES (8693, 75);
INSERT INTO `spell_enchant_charges` VALUES (11338, 85);
INSERT INTO `spell_enchant_charges` VALUES (11339, 100);
INSERT INTO `spell_enchant_charges` VALUES (11340, 115);
INSERT INTO `spell_enchant_charges` VALUES (11355, 90);
INSERT INTO `spell_enchant_charges` VALUES (11356, 105);
INSERT INTO `spell_enchant_charges` VALUES (11399, 100);
INSERT INTO `spell_enchant_charges` VALUES (13219, 60);
INSERT INTO `spell_enchant_charges` VALUES (13225, 75);
INSERT INTO `spell_enchant_charges` VALUES (13226, 90);
INSERT INTO `spell_enchant_charges` VALUES (13227, 105);
INSERT INTO `spell_enchant_charges` VALUES (14792, 15);
INSERT INTO `spell_enchant_charges` VALUES (25351, 120);


SET FOREIGN_KEY_CHECKS = 1;
