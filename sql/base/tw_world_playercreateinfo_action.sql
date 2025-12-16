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
-- Table structure for playercreateinfo_action
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_action`;
CREATE TABLE `playercreateinfo_action`  (
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `button` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `action` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`race`, `class`, `button`) USING BTREE,
  INDEX `playercreateinfo_race_class_index`(`race`, `class`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of playercreateinfo_action
-- ----------------------------
INSERT INTO `playercreateinfo_action` VALUES (8, 8, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 8, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 7, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 7, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 7, 2, 331, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 7, 1, 403, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 7, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 5, 11, 4540, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 5, 2, 2050, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 5, 1, 585, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 5, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 4, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 4, 4, 26972, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 3, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 1, 83, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 1, 75, 26296, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 9, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 9, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 9, 2, 687, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 9, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 8, 11, 4536, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 8, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 4, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 1, 83, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 11, 11, 4536, 128);
INSERT INTO `playercreateinfo_action` VALUES (6, 11, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (6, 11, 2, 5185, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 11, 1, 5176, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 11, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 7, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (6, 7, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (6, 7, 3, 20549, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 7, 2, 331, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 7, 1, 403, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 7, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 3, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (6, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (6, 3, 3, 20549, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 1, 83, 4540, 128);
INSERT INTO `playercreateinfo_action` VALUES (6, 1, 74, 20549, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (6, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 9, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 9, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 9, 3, 20577, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 9, 2, 687, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 9, 1, 686, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 9, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 8, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 8, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 8, 3, 20577, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 5, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 5, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 5, 3, 20577, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 5, 2, 2050, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 5, 1, 585, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 5, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 4, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 4, 4, 20577, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 1, 83, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 1, 74, 20577, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 11, 11, 4536, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 5, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 11, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 11, 2, 5185, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 11, 1, 5176, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 11, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 5, 11, 2070, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 5, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 5, 3, 20580, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 5, 2, 2050, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 5, 1, 585, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 5, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 4, 11, 4540, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 3, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 3, 3, 20580, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 1, 83, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (4, 1, 74, 20580, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 5, 11, 4540, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 3, 3, 20544, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 1, 74, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 9, 1, 686, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 5, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 5, 4, 2481, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 5, 3, 20594, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 5, 2, 2050, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 5, 1, 585, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 5, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 4, 11, 4540, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 4, 5, 2481, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 4, 4, 20594, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 3, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 3, 4, 2481, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 3, 3, 20594, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 2, 11, 4540, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 2, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 2, 4, 2481, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 2, 3, 20594, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 2, 2, 635, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 2, 1, 21084, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 2, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 1, 83, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 1, 75, 2481, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 1, 74, 20594, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 9, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 9, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 9, 3, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 9, 2, 687, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 9, 1, 686, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 9, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 7, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 7, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 7, 3, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 7, 2, 331, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 7, 1, 403, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 7, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 4, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 4, 4, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 3, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 3, 4, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 1, 83, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 1, 74, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 9, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 9, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 9, 2, 687, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 9, 1, 686, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 9, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 8, 11, 2070, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 8, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 5, 11, 2070, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 5, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 5, 2, 2050, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 5, 1, 585, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 5, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 4, 11, 2070, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 2, 11, 2070, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 2, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 2, 2, 635, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 2, 1, 21084, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 2, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 1, 83, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (4, 11, 3, 20580, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 1, 83, 80168, 128);
INSERT INTO `playercreateinfo_action` VALUES (9, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 3, 10, 80167, 128);
INSERT INTO `playercreateinfo_action` VALUES (9, 3, 11, 80168, 128);
INSERT INTO `playercreateinfo_action` VALUES (9, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 4, 11, 80168, 128);
INSERT INTO `playercreateinfo_action` VALUES (9, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 8, 3, 20577, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 8, 10, 80167, 128);
INSERT INTO `playercreateinfo_action` VALUES (9, 8, 11, 80168, 128);
INSERT INTO `playercreateinfo_action` VALUES (9, 9, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 9, 1, 686, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 9, 2, 687, 0);
INSERT INTO `playercreateinfo_action` VALUES (9, 9, 10, 80167, 128);
INSERT INTO `playercreateinfo_action` VALUES (9, 9, 11, 80168, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 1, 72, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 1, 73, 78, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 1, 74, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 1, 83, 80251, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 3, 4, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 3, 10, 80250, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 3, 11, 80251, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 4, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 4, 1, 1752, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 4, 2, 2098, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 4, 3, 2764, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 4, 4, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 4, 11, 80251, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 8, 3, 20577, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 8, 10, 80250, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 8, 11, 80251, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 5, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 5, 1, 585, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 5, 2, 2050, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 5, 10, 80250, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 5, 11, 80251, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 2, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 2, 1, 21084, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 2, 2, 635, 0);
INSERT INTO `playercreateinfo_action` VALUES (10, 2, 10, 80250, 128);
INSERT INTO `playercreateinfo_action` VALUES (10, 2, 11, 80251, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 3, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (7, 3, 4, 20589, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (7, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (2, 8, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (2, 8, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 3, 3, 20544, 0);
INSERT INTO `playercreateinfo_action` VALUES (5, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (5, 3, 11, 4604, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 8, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 8, 1, 133, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 8, 2, 168, 0);
INSERT INTO `playercreateinfo_action` VALUES (3, 8, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (3, 8, 11, 2070, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 3, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 3, 1, 2973, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 3, 2, 75, 0);
INSERT INTO `playercreateinfo_action` VALUES (1, 3, 11, 117, 128);
INSERT INTO `playercreateinfo_action` VALUES (1, 3, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 9, 0, 6603, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 9, 1, 686, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 9, 2, 687, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 9, 3, 20572, 0);
INSERT INTO `playercreateinfo_action` VALUES (8, 9, 10, 159, 128);
INSERT INTO `playercreateinfo_action` VALUES (8, 9, 11, 117, 128);


SET FOREIGN_KEY_CHECKS = 1;
