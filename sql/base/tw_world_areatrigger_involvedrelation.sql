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
-- Table structure for areatrigger_involvedrelation
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_involvedrelation`;
CREATE TABLE `areatrigger_involvedrelation`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Trigger System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of areatrigger_involvedrelation
-- ----------------------------
INSERT INTO `areatrigger_involvedrelation` VALUES (2946, 6421);
INSERT INTO `areatrigger_involvedrelation` VALUES (3366, 6025);
INSERT INTO `areatrigger_involvedrelation` VALUES (2327, 4842);
INSERT INTO `areatrigger_involvedrelation` VALUES (2486, 4811);
INSERT INTO `areatrigger_involvedrelation` VALUES (1205, 2989);
INSERT INTO `areatrigger_involvedrelation` VALUES (482, 1699);
INSERT INTO `areatrigger_involvedrelation` VALUES (362, 1448);
INSERT INTO `areatrigger_involvedrelation` VALUES (231, 984);
INSERT INTO `areatrigger_involvedrelation` VALUES (230, 954);
INSERT INTO `areatrigger_involvedrelation` VALUES (223, 944);
INSERT INTO `areatrigger_involvedrelation` VALUES (216, 870);
INSERT INTO `areatrigger_involvedrelation` VALUES (196, 578);
INSERT INTO `areatrigger_involvedrelation` VALUES (97, 287);
INSERT INTO `areatrigger_involvedrelation` VALUES (98, 201);
INSERT INTO `areatrigger_involvedrelation` VALUES (78, 155);
INSERT INTO `areatrigger_involvedrelation` VALUES (178, 503);
INSERT INTO `areatrigger_involvedrelation` VALUES (87, 76);
INSERT INTO `areatrigger_involvedrelation` VALUES (88, 62);
INSERT INTO `areatrigger_involvedrelation` VALUES (3986, 8286);
INSERT INTO `areatrigger_involvedrelation` VALUES (1387, 3505);
INSERT INTO `areatrigger_involvedrelation` VALUES (175, 455);
INSERT INTO `areatrigger_involvedrelation` VALUES (246, 1149);
INSERT INTO `areatrigger_involvedrelation` VALUES (232, 984);
INSERT INTO `areatrigger_involvedrelation` VALUES (235, 984);
INSERT INTO `areatrigger_involvedrelation` VALUES (2926, 25);
INSERT INTO `areatrigger_involvedrelation` VALUES (522, 1719);
INSERT INTO `areatrigger_involvedrelation` VALUES (197, 62);
INSERT INTO `areatrigger_involvedrelation` VALUES (342, 76);
INSERT INTO `areatrigger_involvedrelation` VALUES (2206, 5156);
INSERT INTO `areatrigger_involvedrelation` VALUES (2207, 5156);
INSERT INTO `areatrigger_involvedrelation` VALUES (2208, 5156);
INSERT INTO `areatrigger_involvedrelation` VALUES (822, 2240);
INSERT INTO `areatrigger_involvedrelation` VALUES (173, 437);
INSERT INTO `areatrigger_involvedrelation` VALUES (3991, 1658);
INSERT INTO `areatrigger_involvedrelation` VALUES (2726, 6185);
INSERT INTO `areatrigger_involvedrelation` VALUES (4101, 9263);
INSERT INTO `areatrigger_involvedrelation` VALUES (4103, 9264);
INSERT INTO `areatrigger_involvedrelation` VALUES (4100, 9265);


SET FOREIGN_KEY_CHECKS = 1;
