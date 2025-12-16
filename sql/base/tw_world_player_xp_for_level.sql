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
-- Table structure for player_xp_for_level
-- ----------------------------
DROP TABLE IF EXISTS `player_xp_for_level`;
CREATE TABLE `player_xp_for_level`  (
  `lvl` int(10) UNSIGNED NOT NULL,
  `xp_for_next_level` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`lvl`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of player_xp_for_level
-- ----------------------------
INSERT INTO `player_xp_for_level` VALUES (1, 400);
INSERT INTO `player_xp_for_level` VALUES (2, 900);
INSERT INTO `player_xp_for_level` VALUES (3, 1400);
INSERT INTO `player_xp_for_level` VALUES (4, 2100);
INSERT INTO `player_xp_for_level` VALUES (5, 2800);
INSERT INTO `player_xp_for_level` VALUES (6, 3600);
INSERT INTO `player_xp_for_level` VALUES (7, 4500);
INSERT INTO `player_xp_for_level` VALUES (8, 5400);
INSERT INTO `player_xp_for_level` VALUES (9, 6500);
INSERT INTO `player_xp_for_level` VALUES (10, 7600);
INSERT INTO `player_xp_for_level` VALUES (11, 8800);
INSERT INTO `player_xp_for_level` VALUES (12, 10100);
INSERT INTO `player_xp_for_level` VALUES (13, 11400);
INSERT INTO `player_xp_for_level` VALUES (14, 12900);
INSERT INTO `player_xp_for_level` VALUES (15, 14400);
INSERT INTO `player_xp_for_level` VALUES (16, 16000);
INSERT INTO `player_xp_for_level` VALUES (17, 17700);
INSERT INTO `player_xp_for_level` VALUES (18, 19400);
INSERT INTO `player_xp_for_level` VALUES (19, 21300);
INSERT INTO `player_xp_for_level` VALUES (20, 23200);
INSERT INTO `player_xp_for_level` VALUES (21, 25200);
INSERT INTO `player_xp_for_level` VALUES (22, 27300);
INSERT INTO `player_xp_for_level` VALUES (23, 29400);
INSERT INTO `player_xp_for_level` VALUES (24, 31700);
INSERT INTO `player_xp_for_level` VALUES (25, 34000);
INSERT INTO `player_xp_for_level` VALUES (26, 36400);
INSERT INTO `player_xp_for_level` VALUES (27, 38900);
INSERT INTO `player_xp_for_level` VALUES (28, 41400);
INSERT INTO `player_xp_for_level` VALUES (29, 44300);
INSERT INTO `player_xp_for_level` VALUES (30, 47400);
INSERT INTO `player_xp_for_level` VALUES (31, 50800);
INSERT INTO `player_xp_for_level` VALUES (32, 54500);
INSERT INTO `player_xp_for_level` VALUES (33, 58600);
INSERT INTO `player_xp_for_level` VALUES (34, 62800);
INSERT INTO `player_xp_for_level` VALUES (35, 67100);
INSERT INTO `player_xp_for_level` VALUES (36, 71600);
INSERT INTO `player_xp_for_level` VALUES (37, 76100);
INSERT INTO `player_xp_for_level` VALUES (38, 80800);
INSERT INTO `player_xp_for_level` VALUES (39, 85700);
INSERT INTO `player_xp_for_level` VALUES (40, 90700);
INSERT INTO `player_xp_for_level` VALUES (41, 95800);
INSERT INTO `player_xp_for_level` VALUES (42, 101000);
INSERT INTO `player_xp_for_level` VALUES (43, 106300);
INSERT INTO `player_xp_for_level` VALUES (44, 111800);
INSERT INTO `player_xp_for_level` VALUES (45, 117500);
INSERT INTO `player_xp_for_level` VALUES (46, 123200);
INSERT INTO `player_xp_for_level` VALUES (47, 129100);
INSERT INTO `player_xp_for_level` VALUES (48, 135100);
INSERT INTO `player_xp_for_level` VALUES (49, 141200);
INSERT INTO `player_xp_for_level` VALUES (50, 147500);
INSERT INTO `player_xp_for_level` VALUES (51, 153900);
INSERT INTO `player_xp_for_level` VALUES (52, 160400);
INSERT INTO `player_xp_for_level` VALUES (53, 167100);
INSERT INTO `player_xp_for_level` VALUES (54, 173900);
INSERT INTO `player_xp_for_level` VALUES (55, 180800);
INSERT INTO `player_xp_for_level` VALUES (56, 187900);
INSERT INTO `player_xp_for_level` VALUES (57, 195000);
INSERT INTO `player_xp_for_level` VALUES (58, 202300);
INSERT INTO `player_xp_for_level` VALUES (59, 209800);
INSERT INTO `player_xp_for_level` VALUES (60, 217400);


SET FOREIGN_KEY_CHECKS = 1;
