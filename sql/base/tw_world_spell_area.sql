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
-- Table structure for spell_area
-- ----------------------------
DROP TABLE IF EXISTS `spell_area`;
CREATE TABLE `spell_area`  (
  `spell` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `area` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `quest_start` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `quest_start_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `quest_end` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `aura_spell` mediumint(9) NOT NULL DEFAULT 0,
  `racemask` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 2,
  `autocast` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`spell`, `area`, `quest_start`, `quest_start_active`, `aura_spell`, `racemask`, `gender`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_area
-- ----------------------------
INSERT INTO `spell_area` VALUES (24414, 3358, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (24413, 3358, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (24412, 3358, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (24410, 3358, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (24409, 3358, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (24411, 3358, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23540, 3277, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23696, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23542, 3277, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23567, 3277, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23568, 3277, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23569, 3277, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23541, 3277, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (19937, 2158, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (17961, 28, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (19690, 139, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (21885, 2100, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (21544, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (21565, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (21050, 2257, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (28418, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (28419, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (28420, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (22751, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23693, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (23539, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (6298, 148, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (31906, 139, 0, 0, 0, 30238, 0, 2, 1);
INSERT INTO `spell_area` VALUES (31906, 2057, 0, 0, 0, 30238, 0, 2, 1);
INSERT INTO `spell_area` VALUES (31906, 2017, 0, 0, 0, 30238, 0, 2, 1);
INSERT INTO `spell_area` VALUES (31906, 3456, 0, 0, 0, 30238, 0, 2, 1);
INSERT INTO `spell_area` VALUES (29519, 1377, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (29894, 1377, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (29895, 1377, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (30754, 1377, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (18173, 2677, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (46440, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (46437, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (46436, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (46440, 135, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (46437, 135, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (45925, 5023, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (45926, 5023, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (44024, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (44024, 135, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (44025, 2597, 0, 0, 0, 0, 0, 2, 0);
INSERT INTO `spell_area` VALUES (44025, 135, 0, 0, 0, 0, 0, 2, 0);


SET FOREIGN_KEY_CHECKS = 1;
