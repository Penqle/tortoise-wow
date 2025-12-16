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
-- Table structure for faction_template
-- ----------------------------
DROP TABLE IF EXISTS `faction_template`;
CREATE TABLE `faction_template`  (
  `id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `faction_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `faction_flags` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `our_mask` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `friendly_mask` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hostile_mask` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `enemy_faction1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `enemy_faction2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `enemy_faction3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `enemy_faction4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `friend_faction1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `friend_faction2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `friend_faction3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `friend_faction4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_template
-- ----------------------------
INSERT INTO `faction_template` VALUES (1, 1, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (2, 2, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (3, 3, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (4, 4, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (5, 5, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (6, 6, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (10, 40, 2056, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (11, 72, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (12, 72, 0, 2, 2, 4, 0, 0, 0, 0, 72, 0, 0, 0);
INSERT INTO `faction_template` VALUES (14, 14, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (15, 7, 1, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0);
INSERT INTO `faction_template` VALUES (16, 14, 1, 8, 0, 1, 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `faction_template` VALUES (17, 15, 1, 8, 0, 1, 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `faction_template` VALUES (18, 19, 1, 8, 0, 1, 0, 0, 0, 0, 19, 0, 0, 0);
INSERT INTO `faction_template` VALUES (19, 17, 1, 8, 0, 1, 0, 0, 0, 0, 17, 0, 0, 0);
INSERT INTO `faction_template` VALUES (20, 16, 1, 8, 0, 1, 0, 0, 0, 0, 16, 0, 0, 0);
INSERT INTO `faction_template` VALUES (21, 20, 1, 8, 0, 1, 0, 0, 0, 0, 20, 0, 0, 0);
INSERT INTO `faction_template` VALUES (22, 22, 0, 8, 0, 1, 0, 0, 0, 0, 22, 0, 0, 0);
INSERT INTO `faction_template` VALUES (23, 54, 2049, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (24, 24, 1, 8, 0, 1, 0, 0, 0, 0, 24, 0, 0, 0);
INSERT INTO `faction_template` VALUES (25, 25, 0, 8, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0);
INSERT INTO `faction_template` VALUES (26, 25, 1, 8, 0, 1, 0, 0, 0, 0, 25, 0, 0, 0);
INSERT INTO `faction_template` VALUES (27, 15, 1, 8, 0, 1, 1, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `faction_template` VALUES (28, 26, 1, 8, 0, 1, 0, 0, 0, 0, 26, 0, 0, 0);
INSERT INTO `faction_template` VALUES (29, 76, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (30, 27, 1, 8, 0, 1, 0, 0, 0, 0, 27, 0, 0, 0);
INSERT INTO `faction_template` VALUES (31, 28, 1024, 0, 0, 0, 0, 0, 0, 0, 148, 28, 0, 0);
INSERT INTO `faction_template` VALUES (32, 29, 16, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (33, 40, 2056, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (34, 15, 1, 8, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `faction_template` VALUES (35, 31, 0, 0, 1, 0, 0, 0, 0, 0, 31, 0, 0, 0);
INSERT INTO `faction_template` VALUES (36, 32, 1025, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0);
INSERT INTO `faction_template` VALUES (37, 33, 1, 8, 0, 1, 0, 0, 0, 0, 33, 0, 0, 0);
INSERT INTO `faction_template` VALUES (38, 29, 17, 8, 0, 1, 28, 0, 0, 0, 29, 0, 0, 0);
INSERT INTO `faction_template` VALUES (39, 18, 1, 8, 0, 1, 0, 0, 0, 0, 18, 0, 0, 0);
INSERT INTO `faction_template` VALUES (40, 34, 1, 8, 0, 1, 0, 0, 0, 0, 34, 0, 0, 0);
INSERT INTO `faction_template` VALUES (41, 35, 49, 8, 0, 1, 36, 0, 0, 0, 35, 0, 0, 0);
INSERT INTO `faction_template` VALUES (42, 36, 9, 1, 1, 0, 0, 0, 0, 0, 36, 0, 0, 0);
INSERT INTO `faction_template` VALUES (43, 35, 33, 8, 0, 0, 36, 0, 0, 0, 35, 0, 0, 0);
INSERT INTO `faction_template` VALUES (44, 37, 1, 8, 0, 1, 0, 0, 0, 0, 37, 0, 0, 0);
INSERT INTO `faction_template` VALUES (45, 38, 1, 8, 0, 1, 0, 0, 0, 0, 38, 0, 0, 0);
INSERT INTO `faction_template` VALUES (46, 39, 1, 8, 0, 1, 0, 0, 0, 0, 39, 0, 0, 0);
INSERT INTO `faction_template` VALUES (47, 41, 1, 8, 0, 1, 0, 0, 0, 0, 41, 0, 0, 0);
INSERT INTO `faction_template` VALUES (48, 42, 1, 8, 0, 1, 0, 0, 0, 0, 42, 0, 0, 0);
INSERT INTO `faction_template` VALUES (49, 43, 0, 8, 0, 1, 0, 0, 0, 0, 43, 0, 0, 0);
INSERT INTO `faction_template` VALUES (50, 44, 1, 8, 0, 1, 0, 0, 0, 0, 44, 0, 0, 0);
INSERT INTO `faction_template` VALUES (51, 45, 1, 8, 0, 1, 46, 40, 0, 0, 45, 0, 0, 0);
INSERT INTO `faction_template` VALUES (52, 769, 8, 8, 0, 0, 770, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (53, 49, 0, 2, 2, 12, 0, 0, 0, 0, 49, 0, 0, 0);
INSERT INTO `faction_template` VALUES (54, 48, 1, 8, 0, 1, 0, 0, 0, 0, 48, 0, 0, 0);
INSERT INTO `faction_template` VALUES (55, 47, 0, 2, 2, 4, 0, 0, 0, 0, 47, 0, 0, 0);
INSERT INTO `faction_template` VALUES (56, 49, 33, 2, 2, 12, 0, 0, 0, 0, 49, 0, 0, 0);
INSERT INTO `faction_template` VALUES (57, 47, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (58, 7, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (59, 32, 1, 8, 0, 1, 0, 0, 0, 0, 32, 0, 0, 0);
INSERT INTO `faction_template` VALUES (60, 50, 1, 8, 0, 1, 0, 0, 0, 0, 50, 0, 0, 0);
INSERT INTO `faction_template` VALUES (61, 51, 1, 8, 0, 1, 0, 0, 0, 0, 51, 0, 0, 0);
INSERT INTO `faction_template` VALUES (62, 52, 1, 8, 0, 1, 0, 0, 0, 0, 52, 0, 0, 0);
INSERT INTO `faction_template` VALUES (63, 53, 1, 8, 0, 1, 0, 0, 0, 0, 53, 0, 0, 0);
INSERT INTO `faction_template` VALUES (64, 54, 1, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (65, 76, 1, 0, 0, 0, 45, 0, 0, 0, 76, 0, 0, 0);
INSERT INTO `faction_template` VALUES (66, 55, 17, 8, 0, 1, 28, 0, 0, 0, 55, 0, 0, 0);
INSERT INTO `faction_template` VALUES (67, 56, 1, 8, 0, 1, 0, 0, 0, 0, 56, 0, 0, 0);
INSERT INTO `faction_template` VALUES (68, 68, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (69, 470, 0, 0, 0, 0, 0, 0, 0, 0, 470, 0, 0, 0);
INSERT INTO `faction_template` VALUES (70, 57, 1, 8, 0, 1, 0, 0, 0, 0, 57, 0, 0, 0);
INSERT INTO `faction_template` VALUES (71, 68, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (72, 58, 1, 8, 0, 1, 0, 0, 0, 0, 58, 0, 0, 0);
INSERT INTO `faction_template` VALUES (73, 669, 1, 8, 0, 1, 0, 0, 0, 0, 669, 0, 0, 0);
INSERT INTO `faction_template` VALUES (74, 60, 1, 8, 0, 1, 289, 1010, 0, 0, 60, 0, 0, 0);
INSERT INTO `faction_template` VALUES (76, 61, 33, 0, 2, 4, 0, 0, 0, 0, 61, 0, 0, 0);
INSERT INTO `faction_template` VALUES (77, 62, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (78, 63, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (79, 69, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (80, 69, 0, 2, 2, 4, 0, 0, 0, 0, 69, 0, 0, 0);
INSERT INTO `faction_template` VALUES (81, 64, 1025, 8, 0, 1, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `faction_template` VALUES (82, 65, 1, 8, 0, 1, 0, 0, 0, 0, 65, 0, 0, 0);
INSERT INTO `faction_template` VALUES (83, 67, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (84, 469, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (85, 76, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (86, 770, 64, 0, 1, 0, 769, 0, 0, 0, 771, 0, 0, 0);
INSERT INTO `faction_template` VALUES (87, 70, 1, 8, 0, 1, 0, 0, 0, 0, 70, 0, 0, 0);
INSERT INTO `faction_template` VALUES (88, 71, 33, 2, 2, 4, 0, 0, 0, 0, 71, 0, 0, 0);
INSERT INTO `faction_template` VALUES (89, 56, 33, 8, 0, 1, 20, 0, 0, 0, 56, 0, 0, 0);
INSERT INTO `faction_template` VALUES (90, 73, 1, 8, 0, 1, 0, 0, 0, 0, 73, 0, 0, 0);
INSERT INTO `faction_template` VALUES (91, 74, 0, 8, 0, 1, 0, 0, 0, 0, 74, 0, 0, 0);
INSERT INTO `faction_template` VALUES (92, 75, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (93, 14, 8, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (94, 77, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (95, 78, 1, 8, 0, 1, 0, 0, 0, 0, 78, 0, 0, 0);
INSERT INTO `faction_template` VALUES (96, 79, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (97, 70, 64, 8, 0, 0, 79, 0, 0, 0, 70, 0, 0, 0);
INSERT INTO `faction_template` VALUES (98, 68, 8, 4, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (99, 36, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (100, 77, 32, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (101, 77, 0, 0, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (102, 77, 0, 0, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (103, 80, 65, 8, 0, 1, 689, 0, 0, 0, 80, 0, 0, 0);
INSERT INTO `faction_template` VALUES (104, 81, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (105, 81, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (106, 67, 33, 4, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (107, 33, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (108, 70, 64, 0, 0, 0, 79, 0, 0, 0, 70, 0, 0, 0);
INSERT INTO `faction_template` VALUES (109, 110, 1, 8, 0, 1, 0, 0, 0, 0, 110, 111, 0, 0);
INSERT INTO `faction_template` VALUES (110, 110, 33, 8, 0, 1, 85, 0, 0, 0, 110, 0, 0, 0);
INSERT INTO `faction_template` VALUES (111, 85, 1, 8, 0, 1, 0, 0, 0, 0, 85, 111, 0, 0);
INSERT INTO `faction_template` VALUES (112, 85, 33, 8, 0, 1, 110, 0, 0, 0, 85, 111, 0, 0);
INSERT INTO `faction_template` VALUES (113, 40, 2056, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (114, 77, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (115, 8, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (116, 9, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (118, 68, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (119, 87, 1, 8, 0, 1, 0, 0, 0, 0, 87, 0, 0, 0);
INSERT INTO `faction_template` VALUES (120, 21, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0);
INSERT INTO `faction_template` VALUES (121, 21, 6177, 1, 0, 8, 0, 0, 0, 0, 21, 0, 0, 0);
INSERT INTO `faction_template` VALUES (122, 47, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (123, 72, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (124, 69, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (125, 76, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (126, 530, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (127, 35, 32, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (128, 88, 1, 8, 0, 1, 0, 0, 0, 0, 88, 0, 0, 0);
INSERT INTO `faction_template` VALUES (129, 89, 1, 8, 0, 1, 0, 0, 0, 0, 89, 0, 0, 0);
INSERT INTO `faction_template` VALUES (130, 90, 1, 8, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0);
INSERT INTO `faction_template` VALUES (131, 91, 1, 8, 0, 1, 0, 0, 0, 0, 91, 0, 0, 0);
INSERT INTO `faction_template` VALUES (132, 92, 1, 8, 0, 1, 0, 0, 0, 0, 92, 0, 0, 0);
INSERT INTO `faction_template` VALUES (133, 93, 1, 8, 0, 1, 0, 0, 0, 0, 93, 0, 0, 0);
INSERT INTO `faction_template` VALUES (134, 94, 1, 8, 0, 1, 0, 0, 0, 0, 94, 0, 0, 0);
INSERT INTO `faction_template` VALUES (148, 14, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (149, 108, 1025, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (150, 108, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (151, 108, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (152, 109, 1, 8, 0, 1, 0, 0, 0, 0, 109, 111, 0, 0);
INSERT INTO `faction_template` VALUES (153, 109, 0, 8, 0, 0, 0, 0, 0, 0, 109, 111, 0, 0);
INSERT INTO `faction_template` VALUES (154, 111, 1, 8, 0, 1, 0, 0, 0, 0, 109, 85, 111, 110);
INSERT INTO `faction_template` VALUES (168, 128, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (188, 148, 1025, 0, 8, 0, 0, 0, 0, 0, 148, 28, 0, 0);
INSERT INTO `faction_template` VALUES (189, 7, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (190, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (208, 168, 5, 2, 2, 0, 0, 0, 0, 0, 168, 0, 0, 0);
INSERT INTO `faction_template` VALUES (209, 168, 2, 2, 2, 0, 0, 0, 0, 0, 168, 0, 0, 0);
INSERT INTO `faction_template` VALUES (210, 469, 33, 2, 2, 12, 0, 0, 0, 0, 469, 189, 0, 0);
INSERT INTO `faction_template` VALUES (230, 573, 1, 8, 0, 1, 0, 0, 0, 0, 573, 0, 0, 0);
INSERT INTO `faction_template` VALUES (231, 40, 2120, 3, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (232, 40, 2120, 5, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (233, 20, 33, 8, 0, 1, 68, 0, 0, 0, 20, 0, 0, 0);
INSERT INTO `faction_template` VALUES (250, 40, 2120, 1, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (270, 229, 1, 8, 0, 1, 0, 0, 0, 0, 229, 0, 0, 0);
INSERT INTO `faction_template` VALUES (290, 40, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (310, 249, 1, 8, 0, 1, 0, 0, 0, 0, 249, 0, 0, 0);
INSERT INTO `faction_template` VALUES (311, 249, 1, 8, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0);
INSERT INTO `faction_template` VALUES (312, 22, 1, 8, 0, 1, 0, 0, 0, 0, 22, 0, 0, 0);
INSERT INTO `faction_template` VALUES (330, 229, 1, 8, 0, 0, 0, 0, 0, 0, 229, 0, 0, 0);
INSERT INTO `faction_template` VALUES (350, 88, 0, 8, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0);
INSERT INTO `faction_template` VALUES (370, 915, 33, 8, 8, 1, 912, 0, 0, 0, 915, 0, 0, 0);
INSERT INTO `faction_template` VALUES (371, 269, 0, 2, 2, 4, 20, 0, 0, 0, 269, 0, 0, 0);
INSERT INTO `faction_template` VALUES (390, 21, 33, 0, 0, 0, 60, 0, 0, 0, 21, 0, 0, 0);
INSERT INTO `faction_template` VALUES (410, 43, 1, 8, 0, 1, 0, 0, 0, 0, 43, 0, 0, 0);
INSERT INTO `faction_template` VALUES (411, 310, 1, 8, 0, 1, 0, 0, 0, 0, 310, 0, 0, 0);
INSERT INTO `faction_template` VALUES (412, 510, 33, 4, 4, 2, 509, 0, 0, 0, 510, 0, 0, 0);
INSERT INTO `faction_template` VALUES (413, 309, 1, 8, 0, 1, 0, 0, 0, 0, 309, 0, 0, 0);
INSERT INTO `faction_template` VALUES (414, 576, 1, 8, 0, 1, 65, 0, 0, 0, 576, 0, 0, 0);
INSERT INTO `faction_template` VALUES (415, 311, 1, 8, 0, 1, 0, 0, 0, 0, 311, 1007, 0, 0);
INSERT INTO `faction_template` VALUES (416, 311, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (430, 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (450, 229, 33, 8, 0, 1, 40, 0, 0, 0, 229, 0, 0, 0);
INSERT INTO `faction_template` VALUES (470, 311, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (471, 349, 1, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0);
INSERT INTO `faction_template` VALUES (472, 70, 65, 8, 0, 1, 349, 0, 0, 0, 70, 0, 0, 0);
INSERT INTO `faction_template` VALUES (473, 349, 65, 0, 0, 0, 70, 0, 0, 0, 349, 0, 0, 0);
INSERT INTO `faction_template` VALUES (474, 369, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0);
INSERT INTO `faction_template` VALUES (475, 369, 6177, 1, 0, 8, 0, 0, 0, 0, 369, 0, 0, 0);
INSERT INTO `faction_template` VALUES (494, 389, 32, 8, 0, 1, 53, 0, 0, 0, 389, 0, 0, 0);
INSERT INTO `faction_template` VALUES (495, 40, 2121, 1, 1, 8, 0, 0, 0, 0, 40, 0, 0, 0);
INSERT INTO `faction_template` VALUES (514, 409, 1, 8, 0, 1, 0, 0, 0, 0, 409, 0, 0, 0);
INSERT INTO `faction_template` VALUES (534, 469, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (554, 429, 1, 8, 0, 7, 0, 0, 0, 0, 429, 0, 0, 0);
INSERT INTO `faction_template` VALUES (574, 449, 33, 8, 0, 1, 450, 0, 0, 0, 449, 0, 0, 0);
INSERT INTO `faction_template` VALUES (575, 450, 0, 8, 0, 1, 0, 0, 0, 0, 450, 0, 0, 0);
INSERT INTO `faction_template` VALUES (594, 32, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (614, 36, 9, 0, 1, 0, 0, 0, 0, 0, 36, 0, 0, 0);
INSERT INTO `faction_template` VALUES (634, 14, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (635, 609, 1, 0, 0, 0, 0, 0, 0, 0, 609, 1003, 1015, 0);
INSERT INTO `faction_template` VALUES (636, 576, 0, 8, 0, 1, 65, 0, 0, 0, 576, 0, 0, 0);
INSERT INTO `faction_template` VALUES (637, 470, 6177, 1, 0, 8, 0, 0, 0, 0, 470, 0, 0, 0);
INSERT INTO `faction_template` VALUES (654, 82, 1, 8, 0, 1, 0, 0, 0, 0, 82, 0, 0, 0);
INSERT INTO `faction_template` VALUES (655, 90, 9, 8, 0, 5, 0, 0, 0, 0, 90, 0, 0, 0);
INSERT INTO `faction_template` VALUES (674, 48, 1, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0);
INSERT INTO `faction_template` VALUES (694, 471, 0, 2, 2, 4, 0, 0, 0, 0, 471, 0, 0, 0);
INSERT INTO `faction_template` VALUES (695, 749, 1, 0, 0, 0, 0, 0, 0, 0, 749, 0, 0, 0);
INSERT INTO `faction_template` VALUES (714, 67, 33, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (734, 48, 1, 1, 1, 0, 0, 0, 0, 0, 48, 0, 0, 0);
INSERT INTO `faction_template` VALUES (735, 489, 0, 1, 1, 0, 0, 0, 0, 0, 489, 0, 0, 0);
INSERT INTO `faction_template` VALUES (736, 489, 1, 8, 0, 1, 0, 0, 0, 0, 489, 0, 0, 0);
INSERT INTO `faction_template` VALUES (754, 48, 65, 8, 0, 1, 34, 0, 0, 0, 48, 0, 0, 0);
INSERT INTO `faction_template` VALUES (774, 40, 8, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (775, 40, 8, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (776, 910, 0, 0, 0, 0, 249, 80, 0, 0, 910, 531, 0, 0);
INSERT INTO `faction_template` VALUES (777, 912, 33, 1, 1, 0, 915, 0, 0, 0, 912, 0, 0, 0);
INSERT INTO `faction_template` VALUES (778, 511, 1, 8, 0, 1, 0, 0, 0, 0, 511, 0, 0, 0);
INSERT INTO `faction_template` VALUES (794, 529, 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0);
INSERT INTO `faction_template` VALUES (795, 572, 1, 8, 0, 1, 0, 0, 0, 0, 572, 0, 0, 0);
INSERT INTO `faction_template` VALUES (814, 529, 1, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0);
INSERT INTO `faction_template` VALUES (834, 74, 1, 8, 0, 1, 0, 0, 0, 0, 74, 0, 0, 0);
INSERT INTO `faction_template` VALUES (854, 577, 6177, 1, 0, 8, 0, 0, 0, 0, 577, 0, 0, 0);
INSERT INTO `faction_template` VALUES (855, 577, 0, 0, 0, 0, 0, 0, 0, 0, 577, 0, 0, 0);
INSERT INTO `faction_template` VALUES (874, 589, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (875, 54, 0, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (876, 530, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (877, 530, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (894, 108, 0, 2, 2, 4, 0, 0, 0, 0, 108, 0, 0, 0);
INSERT INTO `faction_template` VALUES (914, 679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (934, 575, 0, 8, 0, 1, 0, 0, 0, 0, 575, 0, 0, 0);
INSERT INTO `faction_template` VALUES (954, 73, 0, 8, 0, 1, 0, 0, 0, 0, 73, 0, 0, 0);
INSERT INTO `faction_template` VALUES (974, 20, 0, 8, 0, 1, 0, 0, 0, 0, 20, 0, 0, 0);
INSERT INTO `faction_template` VALUES (994, 609, 0, 0, 0, 0, 0, 0, 0, 0, 609, 1003, 0, 0);
INSERT INTO `faction_template` VALUES (995, 81, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (996, 609, 33, 1, 0, 8, 249, 0, 0, 0, 609, 1003, 0, 0);
INSERT INTO `faction_template` VALUES (1014, 629, 1, 0, 0, 0, 0, 0, 0, 0, 629, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1015, 629, 0, 0, 0, 0, 0, 0, 0, 0, 629, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1034, 67, 0, 4, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1054, 471, 2081, 3, 2, 12, 0, 0, 0, 0, 471, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1055, 471, 33, 2, 2, 4, 0, 0, 0, 0, 471, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1074, 76, 1, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1075, 108, 1, 2, 2, 4, 0, 0, 0, 0, 108, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1076, 69, 1, 2, 2, 4, 0, 0, 0, 0, 69, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1077, 108, 33, 2, 2, 4, 0, 0, 0, 0, 108, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1078, 72, 1, 2, 2, 4, 0, 0, 0, 0, 72, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1080, 31, 8, 0, 1, 0, 74, 0, 0, 0, 31, 649, 0, 0);
INSERT INTO `faction_template` VALUES (1081, 74, 1, 8, 0, 1, 649, 0, 0, 0, 74, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1094, 23, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1095, 679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1096, 108, 2080, 3, 2, 12, 679, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1097, 69, 32, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1114, 689, 64, 8, 0, 1, 80, 0, 0, 0, 689, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1134, 68, 2080, 5, 4, 10, 679, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1154, 68, 2080, 5, 4, 10, 679, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1174, 76, 73, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1194, 709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1214, 729, 33, 5, 4, 10, 730, 0, 0, 0, 729, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1215, 729, 1, 4, 4, 2, 730, 0, 0, 0, 729, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1216, 730, 33, 3, 2, 12, 729, 0, 0, 0, 730, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1217, 730, 1, 2, 2, 4, 729, 0, 0, 0, 730, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1234, 750, 33, 8, 0, 1, 749, 0, 0, 0, 750, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1235, 750, 1, 8, 0, 1, 749, 0, 0, 0, 750, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1236, 750, 0, 8, 0, 1, 749, 0, 0, 0, 750, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1254, 609, 4129, 1, 0, 8, 0, 0, 0, 0, 609, 1003, 0, 0);
INSERT INTO `faction_template` VALUES (1274, 7, 33, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1275, 7, 33, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1294, 771, 0, 8, 0, 1, 770, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1314, 67, 65, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1315, 469, 65, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1334, 730, 0, 2, 2, 4, 729, 0, 0, 0, 730, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1335, 729, 0, 4, 4, 2, 730, 0, 0, 0, 729, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1354, 809, 0, 0, 0, 0, 0, 0, 0, 0, 809, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1355, 809, 1, 0, 0, 0, 0, 0, 0, 0, 809, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1374, 829, 1, 8, 0, 1, 0, 0, 0, 0, 38, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1375, 77, 32, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1394, 80, 33, 8, 0, 1, 689, 47, 0, 0, 80, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1395, 916, 1, 8, 0, 1, 0, 0, 0, 0, 916, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1414, 790, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1415, 849, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1434, 869, 1, 8, 0, 1, 0, 0, 0, 0, 869, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1454, 36, 9, 0, 1, 0, 35, 0, 0, 0, 36, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1474, 59, 1, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1475, 59, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1494, 893, 0, 4, 4, 2, 0, 0, 0, 0, 893, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1495, 893, 2081, 5, 4, 10, 0, 0, 0, 0, 893, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1496, 893, 33, 4, 4, 2, 0, 0, 0, 0, 893, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1514, 890, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1515, 889, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1534, 730, 33, 2, 2, 4, 729, 0, 0, 0, 730, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1554, 729, 2120, 5, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1555, 909, 0, 0, 0, 0, 0, 0, 0, 0, 909, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1574, 270, 0, 0, 0, 0, 0, 0, 0, 0, 270, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1575, 72, 33, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1576, 269, 33, 2, 2, 4, 0, 0, 0, 0, 269, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1577, 509, 33, 2, 2, 4, 510, 0, 0, 0, 509, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1594, 69, 33, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1595, 76, 33, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1596, 730, 33, 3, 2, 12, 729, 0, 0, 0, 730, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1597, 729, 33, 5, 4, 10, 730, 0, 0, 0, 729, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1598, 510, 0, 4, 4, 2, 509, 0, 0, 0, 510, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1599, 509, 0, 2, 2, 4, 510, 0, 0, 0, 509, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1600, 69, 33, 2, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1601, 910, 33, 0, 0, 0, 249, 80, 1009, 0, 910, 531, 1007, 0);
INSERT INTO `faction_template` VALUES (1605, 910, 0, 0, 0, 1, 0, 0, 0, 0, 910, 531, 0, 0);
INSERT INTO `faction_template` VALUES (1606, 7, 0, 0, 4, 2, 7, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1607, 7, 0, 0, 4, 2, 7, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1608, 609, 73, 1, 0, 8, 249, 0, 0, 0, 609, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1609, 927, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1610, 914, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1611, 47, 65, 3, 2, 4, 916, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1612, 76, 65, 5, 4, 2, 916, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1613, 912, 0, 1, 1, 0, 915, 0, 0, 0, 912, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1614, 14, 1, 8, 0, 1, 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1615, 169, 6177, 1, 0, 8, 0, 0, 0, 0, 21, 577, 369, 0);
INSERT INTO `faction_template` VALUES (1616, 919, 0, 0, 15, 0, 918, 0, 0, 0, 919, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1617, 918, 64, 0, 0, 1, 919, 0, 0, 0, 918, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1618, 47, 33, 2, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1619, 76, 33, 4, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1620, 128, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1621, 921, 0, 2, 0, 4, 920, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1622, 920, 0, 2, 0, 4, 921, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1624, 529, 2115, 1, 0, 8, 0, 0, 0, 0, 529, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1625, 529, 4129, 1, 0, 8, 0, 0, 0, 0, 529, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1626, 20, 33, 8, 0, 1, 679, 0, 0, 0, 20, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1630, 928, 37, 0, 0, 15, 14, 148, 0, 0, 928, 20, 0, 0);
INSERT INTO `faction_template` VALUES (1634, 928, 33, 8, 0, 0, 68, 72, 0, 0, 928, 20, 0, 0);
INSERT INTO `faction_template` VALUES (1635, 169, 6161, 0, 0, 0, 891, 0, 0, 0, 169, 892, 0, 0);
INSERT INTO `faction_template` VALUES (1641, 889, 1, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1642, 890, 1, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1673, 950, 0, 0, 0, 0, 951, 0, 0, 0, 950, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1676, 954, 0, 0, 15, 0, 0, 0, 0, 0, 954, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1677, 951, 0, 0, 15, 0, 0, 0, 0, 0, 954, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1678, 789, 1, 0, 0, 0, 0, 0, 0, 0, 789, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1679, 630, 1, 0, 0, 0, 0, 0, 0, 0, 630, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1682, 1001, 1, 0, 0, 0, 0, 0, 0, 0, 1001, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1685, 72, 0, 2, 2, 4, 14, 16, 0, 0, 72, 371, 0, 0);
INSERT INTO `faction_template` VALUES (1686, 1004, 1, 2, 2, 4, 1005, 0, 0, 0, 1004, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1687, 1005, 2081, 5, 4, 10, 1004, 0, 0, 0, 1005, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1688, 1006, 1, 0, 0, 0, 249, 0, 0, 0, 1006, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1689, 1007, 1, 0, 0, 0, 1009, 0, 0, 0, 1007, 910, 531, 311);
INSERT INTO `faction_template` VALUES (1690, 1008, 1, 0, 0, 0, 0, 0, 0, 0, 1008, 169, 0, 0);
INSERT INTO `faction_template` VALUES (1691, 1009, 1, 0, 0, 0, 1007, 910, 531, 0, 1009, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1693, 1011, 33, 2, 2, 4, 0, 0, 0, 0, 1011, 73, 0, 0);
INSERT INTO `faction_template` VALUES (1694, 1012, 0, 4, 4, 2, 0, 0, 0, 0, 1012, 76, 0, 0);
INSERT INTO `faction_template` VALUES (1695, 71, 33, 2, 2, 12, 0, 0, 0, 0, 71, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1696, 1013, 16, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `faction_template` VALUES (1697, 531, 0, 0, 0, 1, 0, 0, 0, 0, 531, 910, 0, 0);


SET FOREIGN_KEY_CHECKS = 1;
