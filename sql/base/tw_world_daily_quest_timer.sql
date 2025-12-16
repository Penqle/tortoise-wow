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
-- Table structure for daily_quest_timer
-- ----------------------------
DROP TABLE IF EXISTS `daily_quest_timer`;
CREATE TABLE `daily_quest_timer`  (
  `nextResetTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_quest_timer
-- ----------------------------
INSERT INTO `daily_quest_timer` VALUES (1705017600);


SET FOREIGN_KEY_CHECKS = 1;
