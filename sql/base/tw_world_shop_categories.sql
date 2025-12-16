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
-- Table structure for shop_categories
-- ----------------------------
DROP TABLE IF EXISTS `shop_categories`;
CREATE TABLE `shop_categories`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_loc4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_categories
-- ----------------------------
INSERT INTO `shop_categories` VALUES (1, 'Miscellaneous', '杂项', 'default');
INSERT INTO `shop_categories` VALUES (2, 'Skins', '外观', 'ticket');
INSERT INTO `shop_categories` VALUES (3, 'Gameplay', '玩法玩具', 'toys');
INSERT INTO `shop_categories` VALUES (4, 'Glyphs', '雕文', 'service');
INSERT INTO `shop_categories` VALUES (5, 'Mounts', '坐骑', 'mount');
INSERT INTO `shop_categories` VALUES (6, 'Companions', '小宠物', 'pet');
INSERT INTO `shop_categories` VALUES (7, 'Fashion', '战袍', 'tabard');
INSERT INTO `shop_categories` VALUES (8, 'Illusions', '幻象', 'scroll');


SET FOREIGN_KEY_CHECKS = 1;
