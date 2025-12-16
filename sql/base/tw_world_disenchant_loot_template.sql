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
-- Table structure for disenchant_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `disenchant_loot_template`;
CREATE TABLE `disenchant_loot_template`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Recommended id selection: item_level*100 + item_quality',
  `item` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ChanceOrQuestChance` float NOT NULL DEFAULT 100,
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT 1,
  `maxcount` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `condition_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `item`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loot System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of disenchant_loot_template
-- ----------------------------
INSERT INTO `disenchant_loot_template` VALUES (65, 20725, 100, 0, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (64, 20725, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (63, 14343, 100, 0, 2, 4, 0);
INSERT INTO `disenchant_loot_template` VALUES (62, 11178, 100, 0, 2, 4, 0);
INSERT INTO `disenchant_loot_template` VALUES (61, 11177, 100, 0, 2, 4, 0);
INSERT INTO `disenchant_loot_template` VALUES (49, 20725, 1, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (49, 14344, 99, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (48, 14344, 100, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (47, 14343, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (46, 11178, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (45, 11177, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (44, 11139, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (43, 11138, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (42, 11084, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (41, 10978, 100, 0, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (31, 14344, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (31, 16203, 75, 1, 2, 3, 0);
INSERT INTO `disenchant_loot_template` VALUES (31, 16204, 22, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (30, 14344, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (30, 16203, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (30, 16204, 22, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (29, 14343, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (29, 16202, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (29, 11176, 22, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (28, 11178, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (28, 11175, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (28, 11176, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (27, 11177, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (27, 11174, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (27, 11137, 20, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (26, 11139, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (26, 11135, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (26, 11137, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (25, 11138, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (25, 11134, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (25, 11083, 20, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (24, 11084, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (24, 11082, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (24, 11083, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (23, 10978, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (23, 10998, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (23, 10940, 15, 1, 4, 6, 0);
INSERT INTO `disenchant_loot_template` VALUES (22, 10978, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (22, 10939, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (22, 10940, 20, 1, 2, 3, 0);
INSERT INTO `disenchant_loot_template` VALUES (21, 10938, 80, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (21, 10940, 0, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (11, 14344, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (11, 16203, 20, 1, 2, 3, 0);
INSERT INTO `disenchant_loot_template` VALUES (11, 16204, 75, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (10, 14344, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (10, 16203, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (10, 16204, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (9, 14343, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (9, 16202, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (9, 11176, 75, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (8, 11178, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (8, 11175, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (8, 11176, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (7, 11177, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (7, 11174, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (7, 11137, 75, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (6, 11139, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (6, 11135, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (6, 11137, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (5, 11138, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (5, 11134, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (5, 11083, 75, 1, 2, 5, 0);
INSERT INTO `disenchant_loot_template` VALUES (4, 11084, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (4, 11082, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (4, 11083, 75, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (3, 10978, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (3, 10998, 15, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (3, 10940, 75, 1, 4, 6, 0);
INSERT INTO `disenchant_loot_template` VALUES (2, 10978, 0, 1, 1, 1, 0);
INSERT INTO `disenchant_loot_template` VALUES (2, 10939, 20, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (2, 10940, 75, 1, 2, 3, 0);
INSERT INTO `disenchant_loot_template` VALUES (1, 10938, 0, 1, 1, 2, 0);
INSERT INTO `disenchant_loot_template` VALUES (1, 10940, 80, 1, 1, 2, 0);


SET FOREIGN_KEY_CHECKS = 1;
