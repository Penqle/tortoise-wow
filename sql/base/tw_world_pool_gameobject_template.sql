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
-- Table structure for pool_gameobject_template
-- ----------------------------
DROP TABLE IF EXISTS `pool_gameobject_template`;
CREATE TABLE `pool_gameobject_template`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pool_entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `chance` float UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FLAG_SPAWN_ENABLE_IF_WORLD_POP_OVER_BLIZZLIKE = 1',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pool_idx`(`pool_entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_gameobject_template
-- ----------------------------
INSERT INTO `pool_gameobject_template` VALUES (175785, 22909, 0, 'LBRS - Inconspicuous Documents', 0);


SET FOREIGN_KEY_CHECKS = 1;
