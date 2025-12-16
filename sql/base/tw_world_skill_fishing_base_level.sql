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
-- Table structure for skill_fishing_base_level
-- ----------------------------
DROP TABLE IF EXISTS `skill_fishing_base_level`;
CREATE TABLE `skill_fishing_base_level`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL DEFAULT 0 COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Fishing system' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of skill_fishing_base_level
-- ----------------------------
INSERT INTO `skill_fishing_base_level` VALUES (1, -70);
INSERT INTO `skill_fishing_base_level` VALUES (12, -70);
INSERT INTO `skill_fishing_base_level` VALUES (14, -70);
INSERT INTO `skill_fishing_base_level` VALUES (85, -70);
INSERT INTO `skill_fishing_base_level` VALUES (141, -70);
INSERT INTO `skill_fishing_base_level` VALUES (215, -70);
INSERT INTO `skill_fishing_base_level` VALUES (17, -20);
INSERT INTO `skill_fishing_base_level` VALUES (38, -20);
INSERT INTO `skill_fishing_base_level` VALUES (40, -20);
INSERT INTO `skill_fishing_base_level` VALUES (130, -20);
INSERT INTO `skill_fishing_base_level` VALUES (148, -20);
INSERT INTO `skill_fishing_base_level` VALUES (718, -20);
INSERT INTO `skill_fishing_base_level` VALUES (719, -20);
INSERT INTO `skill_fishing_base_level` VALUES (1519, -20);
INSERT INTO `skill_fishing_base_level` VALUES (1537, -20);
INSERT INTO `skill_fishing_base_level` VALUES (1581, -20);
INSERT INTO `skill_fishing_base_level` VALUES (1637, -20);
INSERT INTO `skill_fishing_base_level` VALUES (1638, -20);
INSERT INTO `skill_fishing_base_level` VALUES (1657, -20);
INSERT INTO `skill_fishing_base_level` VALUES (10, 55);
INSERT INTO `skill_fishing_base_level` VALUES (11, 55);
INSERT INTO `skill_fishing_base_level` VALUES (44, 55);
INSERT INTO `skill_fishing_base_level` VALUES (267, 55);
INSERT INTO `skill_fishing_base_level` VALUES (331, 55);
INSERT INTO `skill_fishing_base_level` VALUES (406, 55);
INSERT INTO `skill_fishing_base_level` VALUES (8, 130);
INSERT INTO `skill_fishing_base_level` VALUES (15, 130);
INSERT INTO `skill_fishing_base_level` VALUES (33, 130);
INSERT INTO `skill_fishing_base_level` VALUES (36, 130);
INSERT INTO `skill_fishing_base_level` VALUES (45, 130);
INSERT INTO `skill_fishing_base_level` VALUES (400, 130);
INSERT INTO `skill_fishing_base_level` VALUES (405, 130);
INSERT INTO `skill_fishing_base_level` VALUES (796, 130);
INSERT INTO `skill_fishing_base_level` VALUES (16, 205);
INSERT INTO `skill_fishing_base_level` VALUES (28, 205);
INSERT INTO `skill_fishing_base_level` VALUES (47, 205);
INSERT INTO `skill_fishing_base_level` VALUES (357, 205);
INSERT INTO `skill_fishing_base_level` VALUES (361, 205);
INSERT INTO `skill_fishing_base_level` VALUES (440, 205);
INSERT INTO `skill_fishing_base_level` VALUES (490, 205);
INSERT INTO `skill_fishing_base_level` VALUES (493, 205);
INSERT INTO `skill_fishing_base_level` VALUES (1417, 205);
INSERT INTO `skill_fishing_base_level` VALUES (2100, 205);
INSERT INTO `skill_fishing_base_level` VALUES (41, 330);
INSERT INTO `skill_fishing_base_level` VALUES (46, 330);
INSERT INTO `skill_fishing_base_level` VALUES (139, 330);
INSERT INTO `skill_fishing_base_level` VALUES (618, 330);
INSERT INTO `skill_fishing_base_level` VALUES (1377, 330);
INSERT INTO `skill_fishing_base_level` VALUES (1977, 330);
INSERT INTO `skill_fishing_base_level` VALUES (2017, 330);
INSERT INTO `skill_fishing_base_level` VALUES (2057, 330);
INSERT INTO `skill_fishing_base_level` VALUES (297, 205);
INSERT INTO `skill_fishing_base_level` VALUES (1112, 330);
INSERT INTO `skill_fishing_base_level` VALUES (1222, 330);
INSERT INTO `skill_fishing_base_level` VALUES (1227, 330);
INSERT INTO `skill_fishing_base_level` VALUES (3140, 330);
INSERT INTO `skill_fishing_base_level` VALUES (2040, -20);
INSERT INTO `skill_fishing_base_level` VALUES (616, 330);


SET FOREIGN_KEY_CHECKS = 1;
