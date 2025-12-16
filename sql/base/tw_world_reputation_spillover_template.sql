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
-- Table structure for reputation_spillover_template
-- ----------------------------
DROP TABLE IF EXISTS `reputation_spillover_template`;
CREATE TABLE `reputation_spillover_template`  (
  `faction` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction entry',
  `faction1` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL DEFAULT 0 COMMENT 'the given rep points * rate',
  `rank_1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'max rank, above this will not give any spillover',
  `faction2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `rate_2` float NOT NULL DEFAULT 0,
  `rank_2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `faction3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `rate_3` float NOT NULL DEFAULT 0,
  `rank_3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `faction4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `rate_4` float NOT NULL DEFAULT 0,
  `rank_4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`faction`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Reputation spillover reputation gain' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reputation_spillover_template
-- ----------------------------
INSERT INTO `reputation_spillover_template` VALUES (169, 21, 1, 7, 369, 1, 7, 470, 1, 7, 577, 1, 7);
INSERT INTO `reputation_spillover_template` VALUES (21, 369, 0.5, 7, 470, 0.5, 7, 577, 0.5, 7, 0, 0, 0);
INSERT INTO `reputation_spillover_template` VALUES (369, 21, 0.5, 7, 470, 0.5, 7, 577, 0.5, 7, 0, 0, 0);
INSERT INTO `reputation_spillover_template` VALUES (470, 21, 0.5, 7, 369, 0.5, 7, 577, 0.5, 7, 0, 0, 0);
INSERT INTO `reputation_spillover_template` VALUES (577, 21, 0.5, 7, 369, 0.5, 7, 470, 0.5, 7, 0, 0, 0);
INSERT INTO `reputation_spillover_template` VALUES (67, 68, 0.25, 7, 76, 0.25, 7, 81, 0.25, 7, 530, 0.25, 7);
INSERT INTO `reputation_spillover_template` VALUES (469, 47, 0.25, 7, 54, 0.25, 7, 69, 0.25, 7, 72, 0.25, 7);


SET FOREIGN_KEY_CHECKS = 1;
