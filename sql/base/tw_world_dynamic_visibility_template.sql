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
-- Table structure for dynamic_visibility_template
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_visibility_template`;
CREATE TABLE `dynamic_visibility_template`  (
  `area_id` int(10) UNSIGNED NOT NULL,
  `min_vis_distance` int(10) UNSIGNED NOT NULL,
  `max_vis_distance` int(10) UNSIGNED NOT NULL,
  `decrease_tick_diff` int(10) UNSIGNED NOT NULL,
  `increase_tick_diff` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dynamic_visibility_template
-- ----------------------------


SET FOREIGN_KEY_CHECKS = 1;
