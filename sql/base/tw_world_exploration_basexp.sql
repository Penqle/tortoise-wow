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
-- Table structure for exploration_basexp
-- ----------------------------
DROP TABLE IF EXISTS `exploration_basexp`;
CREATE TABLE `exploration_basexp`  (
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `basexp` mediumint(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`level`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Exploration System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of exploration_basexp
-- ----------------------------
INSERT INTO `exploration_basexp` VALUES (0, 0);
INSERT INTO `exploration_basexp` VALUES (1, 5);
INSERT INTO `exploration_basexp` VALUES (2, 15);
INSERT INTO `exploration_basexp` VALUES (3, 25);
INSERT INTO `exploration_basexp` VALUES (4, 35);
INSERT INTO `exploration_basexp` VALUES (5, 45);
INSERT INTO `exploration_basexp` VALUES (6, 55);
INSERT INTO `exploration_basexp` VALUES (7, 65);
INSERT INTO `exploration_basexp` VALUES (8, 70);
INSERT INTO `exploration_basexp` VALUES (9, 80);
INSERT INTO `exploration_basexp` VALUES (10, 85);
INSERT INTO `exploration_basexp` VALUES (11, 90);
INSERT INTO `exploration_basexp` VALUES (12, 90);
INSERT INTO `exploration_basexp` VALUES (13, 90);
INSERT INTO `exploration_basexp` VALUES (14, 100);
INSERT INTO `exploration_basexp` VALUES (15, 105);
INSERT INTO `exploration_basexp` VALUES (16, 115);
INSERT INTO `exploration_basexp` VALUES (17, 125);
INSERT INTO `exploration_basexp` VALUES (18, 135);
INSERT INTO `exploration_basexp` VALUES (19, 145);
INSERT INTO `exploration_basexp` VALUES (20, 155);
INSERT INTO `exploration_basexp` VALUES (21, 165);
INSERT INTO `exploration_basexp` VALUES (22, 175);
INSERT INTO `exploration_basexp` VALUES (23, 185);
INSERT INTO `exploration_basexp` VALUES (24, 195);
INSERT INTO `exploration_basexp` VALUES (25, 200);
INSERT INTO `exploration_basexp` VALUES (26, 210);
INSERT INTO `exploration_basexp` VALUES (27, 220);
INSERT INTO `exploration_basexp` VALUES (28, 230);
INSERT INTO `exploration_basexp` VALUES (29, 240);
INSERT INTO `exploration_basexp` VALUES (30, 245);
INSERT INTO `exploration_basexp` VALUES (31, 250);
INSERT INTO `exploration_basexp` VALUES (32, 255);
INSERT INTO `exploration_basexp` VALUES (33, 265);
INSERT INTO `exploration_basexp` VALUES (34, 270);
INSERT INTO `exploration_basexp` VALUES (35, 275);
INSERT INTO `exploration_basexp` VALUES (36, 280);
INSERT INTO `exploration_basexp` VALUES (37, 285);
INSERT INTO `exploration_basexp` VALUES (38, 285);
INSERT INTO `exploration_basexp` VALUES (39, 300);
INSERT INTO `exploration_basexp` VALUES (40, 315);
INSERT INTO `exploration_basexp` VALUES (41, 330);
INSERT INTO `exploration_basexp` VALUES (42, 345);
INSERT INTO `exploration_basexp` VALUES (43, 360);
INSERT INTO `exploration_basexp` VALUES (44, 375);
INSERT INTO `exploration_basexp` VALUES (45, 390);
INSERT INTO `exploration_basexp` VALUES (46, 405);
INSERT INTO `exploration_basexp` VALUES (47, 420);
INSERT INTO `exploration_basexp` VALUES (48, 440);
INSERT INTO `exploration_basexp` VALUES (49, 455);
INSERT INTO `exploration_basexp` VALUES (50, 470);
INSERT INTO `exploration_basexp` VALUES (51, 490);
INSERT INTO `exploration_basexp` VALUES (52, 510);
INSERT INTO `exploration_basexp` VALUES (53, 530);
INSERT INTO `exploration_basexp` VALUES (54, 540);
INSERT INTO `exploration_basexp` VALUES (55, 560);
INSERT INTO `exploration_basexp` VALUES (56, 580);
INSERT INTO `exploration_basexp` VALUES (57, 600);
INSERT INTO `exploration_basexp` VALUES (58, 620);
INSERT INTO `exploration_basexp` VALUES (59, 640);
INSERT INTO `exploration_basexp` VALUES (60, 660);


SET FOREIGN_KEY_CHECKS = 1;
