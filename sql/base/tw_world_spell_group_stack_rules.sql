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
-- Table structure for spell_group_stack_rules
-- ----------------------------
DROP TABLE IF EXISTS `spell_group_stack_rules`;
CREATE TABLE `spell_group_stack_rules`  (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stack_rule` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_group_stack_rules
-- ----------------------------
INSERT INTO `spell_group_stack_rules` VALUES (1001, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1002, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1005, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1006, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1007, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1016, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1017, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1018, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1019, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1020, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1021, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1022, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1023, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1024, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1030, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1031, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1053, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1052, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1051, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1050, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1049, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1048, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1047, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1046, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1045, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1044, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1043, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1042, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1041, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1040, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1003, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1054, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1055, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1056, 0);
INSERT INTO `spell_group_stack_rules` VALUES (1057, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1058, 0);
INSERT INTO `spell_group_stack_rules` VALUES (1059, 0);
INSERT INTO `spell_group_stack_rules` VALUES (1060, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1061, 0);
INSERT INTO `spell_group_stack_rules` VALUES (1062, 0);
INSERT INTO `spell_group_stack_rules` VALUES (1063, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1064, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1065, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1066, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1067, 0);
INSERT INTO `spell_group_stack_rules` VALUES (1068, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1070, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1071, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1010, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1072, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1073, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1004, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1008, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1074, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1075, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1076, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1077, 3);
INSERT INTO `spell_group_stack_rules` VALUES (1078, 1);
INSERT INTO `spell_group_stack_rules` VALUES (2000, 1);
INSERT INTO `spell_group_stack_rules` VALUES (2001, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1080, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1081, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1082, 1);
INSERT INTO `spell_group_stack_rules` VALUES (1083, 1);


SET FOREIGN_KEY_CHECKS = 1;
