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
-- Table structure for npc_trainer_template
-- ----------------------------
DROP TABLE IF EXISTS `npc_trainer_template`;
CREATE TABLE `npc_trainer_template`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `spell` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `spellcost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reqskill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `reqskillvalue` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `reqlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `entry_spell`(`entry`, `spell`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of npc_trainer_template
-- ----------------------------
INSERT INTO `npc_trainer_template` VALUES (1, 33389, 900000, 0, 0, 40);
INSERT INTO `npc_trainer_template` VALUES (1, 33392, 9000000, 762, 0, 60);


SET FOREIGN_KEY_CHECKS = 1;
