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
-- Table structure for custom_character_skins
-- ----------------------------
DROP TABLE IF EXISTS `custom_character_skins`;
CREATE TABLE `custom_character_skins`  (
  `token_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'References item_template entry',
  `skin_male` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `skin_female` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Custom character skins' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of custom_character_skins
-- ----------------------------
INSERT INTO `custom_character_skins` VALUES (50105, 0, 10);
INSERT INTO `custom_character_skins` VALUES (50290, 0, 12);
INSERT INTO `custom_character_skins` VALUES (50106, 11, 11);
INSERT INTO `custom_character_skins` VALUES (81210, 12, 0);
INSERT INTO `custom_character_skins` VALUES (83091, 13, 0);
INSERT INTO `custom_character_skins` VALUES (50291, 14, 0);
INSERT INTO `custom_character_skins` VALUES (50292, 15, 13);
INSERT INTO `custom_character_skins` VALUES (83090, 16, 14);
INSERT INTO `custom_character_skins` VALUES (50204, 9, 9);
INSERT INTO `custom_character_skins` VALUES (50250, 10, 9);
INSERT INTO `custom_character_skins` VALUES (50251, 11, 9);
INSERT INTO `custom_character_skins` VALUES (50252, 12, 9);
INSERT INTO `custom_character_skins` VALUES (50205, 14, 15);
INSERT INTO `custom_character_skins` VALUES (50206, 16, 0);
INSERT INTO `custom_character_skins` VALUES (81229, 24, 0);
INSERT INTO `custom_character_skins` VALUES (50207, 9, 9);
INSERT INTO `custom_character_skins` VALUES (50220, 10, 9);
INSERT INTO `custom_character_skins` VALUES (50221, 11, 9);
INSERT INTO `custom_character_skins` VALUES (50208, 10, 10);
INSERT INTO `custom_character_skins` VALUES (50209, 12, 0);
INSERT INTO `custom_character_skins` VALUES (81255, 14, 0);
INSERT INTO `custom_character_skins` VALUES (50223, 15, 0);
INSERT INTO `custom_character_skins` VALUES (50224, 16, 0);
INSERT INTO `custom_character_skins` VALUES (50210, 19, 19);
INSERT INTO `custom_character_skins` VALUES (50225, 19, 14);
INSERT INTO `custom_character_skins` VALUES (50211, 16, 0);
INSERT INTO `custom_character_skins` VALUES (51010, 12, 12);
INSERT INTO `custom_character_skins` VALUES (51011, 13, 13);
INSERT INTO `custom_character_skins` VALUES (81208, 20, 20);
INSERT INTO `custom_character_skins` VALUES (81230, 7, 6);
INSERT INTO `custom_character_skins` VALUES (50212, 6, 8);
INSERT INTO `custom_character_skins` VALUES (81206, 17, 17);
INSERT INTO `custom_character_skins` VALUES (81209, 18, 16);
INSERT INTO `custom_character_skins` VALUES (81228, 20, 12);
INSERT INTO `custom_character_skins` VALUES (83092, 15, 11);
INSERT INTO `custom_character_skins` VALUES (83099, 16, 12);
INSERT INTO `custom_character_skins` VALUES (83100, 17, 0);
INSERT INTO `custom_character_skins` VALUES (61104, 11, 13);
INSERT INTO `custom_character_skins` VALUES (61105, 12, 14);
INSERT INTO `custom_character_skins` VALUES (61106, 11, 0);
INSERT INTO `custom_character_skins` VALUES (51920, 6, 6);
INSERT INTO `custom_character_skins` VALUES (51921, 6, 6);


SET FOREIGN_KEY_CHECKS = 1;
