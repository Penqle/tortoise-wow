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
-- Table structure for spell_threat
-- ----------------------------
DROP TABLE IF EXISTS `spell_threat`;
CREATE TABLE `spell_threat`  (
  `entry` mediumint(8) UNSIGNED NOT NULL,
  `Threat` smallint(6) NOT NULL,
  `multiplier` float NOT NULL DEFAULT 1 COMMENT 'threat multiplier for damage/healing',
  `ap_bonus` float NOT NULL DEFAULT 0 COMMENT 'additional threat bonus from attack power',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_threat
-- ----------------------------
INSERT INTO `spell_threat` VALUES (78, 20, 1, 0);
INSERT INTO `spell_threat` VALUES (284, 39, 1, 0);
INSERT INTO `spell_threat` VALUES (285, 59, 1, 0);
INSERT INTO `spell_threat` VALUES (770, 108, 1, 0);
INSERT INTO `spell_threat` VALUES (20243, 101, 1, 0);
INSERT INTO `spell_threat` VALUES (1608, 78, 1, 0);
INSERT INTO `spell_threat` VALUES (99, 9, 1, 0);
INSERT INTO `spell_threat` VALUES (1715, 61, 1, 0);
INSERT INTO `spell_threat` VALUES (6572, 155, 1, 0);
INSERT INTO `spell_threat` VALUES (6574, 195, 1, 0);
INSERT INTO `spell_threat` VALUES (7372, 101, 1, 0);
INSERT INTO `spell_threat` VALUES (7373, 141, 1, 0);
INSERT INTO `spell_threat` VALUES (7379, 235, 1, 0);
INSERT INTO `spell_threat` VALUES (7386, 100, 1, 0);
INSERT INTO `spell_threat` VALUES (7405, 140, 1, 0);
INSERT INTO `spell_threat` VALUES (8380, 180, 1, 0);
INSERT INTO `spell_threat` VALUES (1735, 15, 1, 0);
INSERT INTO `spell_threat` VALUES (779, 0, 1.75, 0);
INSERT INTO `spell_threat` VALUES (9490, 20, 1, 0);
INSERT INTO `spell_threat` VALUES (9747, 30, 1, 0);
INSERT INTO `spell_threat` VALUES (11564, 98, 1, 0);
INSERT INTO `spell_threat` VALUES (11565, 118, 1, 0);
INSERT INTO `spell_threat` VALUES (11566, 137, 1, 0);
INSERT INTO `spell_threat` VALUES (11567, 145, 1, 0);
INSERT INTO `spell_threat` VALUES (11596, 220, 1, 0);
INSERT INTO `spell_threat` VALUES (11597, 261, 1, 0);
INSERT INTO `spell_threat` VALUES (11600, 275, 1, 0);
INSERT INTO `spell_threat` VALUES (11601, 315, 1, 0);
INSERT INTO `spell_threat` VALUES (24640, 5, 1, 0);
INSERT INTO `spell_threat` VALUES (14274, 200, 1, 0);
INSERT INTO `spell_threat` VALUES (6807, 0, 1.75, 0);
INSERT INTO `spell_threat` VALUES (15629, 300, 1, 0);
INSERT INTO `spell_threat` VALUES (15630, 400, 1, 0);
INSERT INTO `spell_threat` VALUES (15631, 500, 1, 0);
INSERT INTO `spell_threat` VALUES (15632, 600, 1, 0);
INSERT INTO `spell_threat` VALUES (17735, 0, 2, 0);
INSERT INTO `spell_threat` VALUES (20736, 100, 1, 0);
INSERT INTO `spell_threat` VALUES (23922, 160, 1, 0);
INSERT INTO `spell_threat` VALUES (23923, 190, 1, 0);
INSERT INTO `spell_threat` VALUES (23924, 220, 1, 0);
INSERT INTO `spell_threat` VALUES (23925, 250, 1, 0);
INSERT INTO `spell_threat` VALUES (24394, 580, 1, 0);
INSERT INTO `spell_threat` VALUES (6673, 5, 1, 0);
INSERT INTO `spell_threat` VALUES (25286, 175, 1, 0);
INSERT INTO `spell_threat` VALUES (25288, 355, 1, 0);
INSERT INTO `spell_threat` VALUES (9898, 39, 1, 0);
INSERT INTO `spell_threat` VALUES (16857, 108, 1, 0);
INSERT INTO `spell_threat` VALUES (1160, 11, 1, 0);
INSERT INTO `spell_threat` VALUES (845, 10, 1, 0);
INSERT INTO `spell_threat` VALUES (72, 180, 1, 0);
INSERT INTO `spell_threat` VALUES (6343, 17, 1, 0);
INSERT INTO `spell_threat` VALUES (8198, 40, 1, 0);
INSERT INTO `spell_threat` VALUES (8204, 64, 1, 0);
INSERT INTO `spell_threat` VALUES (8205, 96, 1, 0);
INSERT INTO `spell_threat` VALUES (11580, 143, 1, 0);
INSERT INTO `spell_threat` VALUES (11581, 180, 1, 0);
INSERT INTO `spell_threat` VALUES (20925, 20, 1, 0);
INSERT INTO `spell_threat` VALUES (20927, 30, 1, 0);
INSERT INTO `spell_threat` VALUES (20928, 40, 1, 0);
INSERT INTO `spell_threat` VALUES (2139, 300, 1, 0);
INSERT INTO `spell_threat` VALUES (7369, 40, 1, 0);
INSERT INTO `spell_threat` VALUES (11608, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (11609, 70, 1, 0);
INSERT INTO `spell_threat` VALUES (20569, 100, 1, 0);
INSERT INTO `spell_threat` VALUES (15237, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (19742, 14, 1, 0);
INSERT INTO `spell_threat` VALUES (5677, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (10491, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (10493, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (10494, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (5672, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (16191, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (17355, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (17360, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (21992, 145, 1, 0);
INSERT INTO `spell_threat` VALUES (27648, 90, 1, 0);
INSERT INTO `spell_threat` VALUES (5242, 11, 1, 0);
INSERT INTO `spell_threat` VALUES (6192, 17, 1, 0);
INSERT INTO `spell_threat` VALUES (11549, 26, 1, 0);
INSERT INTO `spell_threat` VALUES (11550, 39, 1, 0);
INSERT INTO `spell_threat` VALUES (11551, 56, 1, 0);
INSERT INTO `spell_threat` VALUES (25289, 70, 1, 0);
INSERT INTO `spell_threat` VALUES (6190, 17, 1, 0);
INSERT INTO `spell_threat` VALUES (11554, 21, 1, 0);
INSERT INTO `spell_threat` VALUES (11555, 32, 1, 0);
INSERT INTO `spell_threat` VALUES (11556, 42, 1, 0);
INSERT INTO `spell_threat` VALUES (5676, 0, 2, 0);
INSERT INTO `spell_threat` VALUES (8042, 0, 2, 0);
INSERT INTO `spell_threat` VALUES (19740, 4, 1, 0);
INSERT INTO `spell_threat` VALUES (19834, 12, 1, 0);
INSERT INTO `spell_threat` VALUES (19835, 22, 1, 0);
INSERT INTO `spell_threat` VALUES (19836, 32, 1, 0);
INSERT INTO `spell_threat` VALUES (19837, 42, 1, 0);
INSERT INTO `spell_threat` VALUES (19838, 52, 1, 0);
INSERT INTO `spell_threat` VALUES (25291, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (20911, 30, 1, 0);
INSERT INTO `spell_threat` VALUES (20912, 40, 1, 0);
INSERT INTO `spell_threat` VALUES (20913, 50, 1, 0);
INSERT INTO `spell_threat` VALUES (20914, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (19977, 40, 1, 0);
INSERT INTO `spell_threat` VALUES (19978, 50, 1, 0);
INSERT INTO `spell_threat` VALUES (19979, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (1022, 10, 1, 0);
INSERT INTO `spell_threat` VALUES (5599, 24, 1, 0);
INSERT INTO `spell_threat` VALUES (10278, 38, 1, 0);
INSERT INTO `spell_threat` VALUES (6940, 46, 1, 0);
INSERT INTO `spell_threat` VALUES (20729, 54, 1, 0);
INSERT INTO `spell_threat` VALUES (1038, 26, 1, 0);
INSERT INTO `spell_threat` VALUES (1044, 18, 1, 0);
INSERT INTO `spell_threat` VALUES (25782, 52, 1, 0);
INSERT INTO `spell_threat` VALUES (25916, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (25899, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (25894, 0, 0, 0);
INSERT INTO `spell_threat` VALUES (25890, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (25895, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (25898, 60, 1, 0);
INSERT INTO `spell_threat` VALUES (633, 0, 2, 0);
INSERT INTO `spell_threat` VALUES (8092, 0, 2, 0);


SET FOREIGN_KEY_CHECKS = 1;
