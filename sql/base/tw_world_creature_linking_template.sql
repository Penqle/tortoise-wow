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
-- Table structure for creature_linking_template
-- ----------------------------
DROP TABLE IF EXISTS `creature_linking_template`;
CREATE TABLE `creature_linking_template`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'creature_template.entry of the slave mob that is linked',
  `map` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Id of map of the mobs',
  `master_entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'master to trigger events',
  `flag` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'flag - describing what should happen when',
  `search_range` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'search_range - describing in which range (spawn-coords) master and slave are linked together',
  PRIMARY KEY (`entry`, `map`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Creature Linking System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_linking_template
-- ----------------------------
INSERT INTO `creature_linking_template` VALUES (16056, 533, 16011, 3072, 0);
INSERT INTO `creature_linking_template` VALUES (16057, 533, 16011, 3072, 0);
INSERT INTO `creature_linking_template` VALUES (16297, 533, 15936, 3072, 0);
INSERT INTO `creature_linking_template` VALUES (16036, 533, 15936, 3072, 0);
INSERT INTO `creature_linking_template` VALUES (16037, 533, 15936, 3072, 0);
INSERT INTO `creature_linking_template` VALUES (16034, 533, 15936, 3072, 0);
INSERT INTO `creature_linking_template` VALUES (92117, 802, 92109, 1, 0);
INSERT INTO `creature_linking_template` VALUES (92106, 802, 92107, 2, 0);
INSERT INTO `creature_linking_template` VALUES (92105, 802, 92107, 2, 0);
INSERT INTO `creature_linking_template` VALUES (7269, 209, 7269, 3, 8);
INSERT INTO `creature_linking_template` VALUES (8311, 109, 8311, 3, 10);
INSERT INTO `creature_linking_template` VALUES (5226, 109, 8311, 3, 10);
INSERT INTO `creature_linking_template` VALUES (8384, 109, 8311, 3, 10);
INSERT INTO `creature_linking_template` VALUES (60675, 42, 60676, 512, 30);
INSERT INTO `creature_linking_template` VALUES (2000033, 45, 2000034, 1, 8);
INSERT INTO `creature_linking_template` VALUES (2000034, 45, 2000035, 1, 8);
INSERT INTO `creature_linking_template` VALUES (2000035, 45, 2000033, 1, 8);
INSERT INTO `creature_linking_template` VALUES (61203, 532, 61204, 1540, 15);


SET FOREIGN_KEY_CHECKS = 1;
