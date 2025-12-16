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
-- Table structure for spell_learn_spell
-- ----------------------------
DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE `spell_learn_spell`  (
  `entry` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`entry`, `SpellID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_learn_spell
-- ----------------------------
INSERT INTO `spell_learn_spell` VALUES (2842, 8681, 1);
INSERT INTO `spell_learn_spell` VALUES (5149, 1853, 1);
INSERT INTO `spell_learn_spell` VALUES (5149, 14922, 1);
INSERT INTO `spell_learn_spell` VALUES (17002, 24867, 0);
INSERT INTO `spell_learn_spell` VALUES (24866, 24864, 0);


SET FOREIGN_KEY_CHECKS = 1;
