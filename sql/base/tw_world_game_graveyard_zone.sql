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
-- Table structure for game_graveyard_zone
-- ----------------------------
DROP TABLE IF EXISTS `game_graveyard_zone`;
CREATE TABLE `game_graveyard_zone`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ghost_zone` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `faction` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `ghost_zone`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Trigger System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of game_graveyard_zone
-- ----------------------------
INSERT INTO `game_graveyard_zone` VALUES (100, 1, 469);
INSERT INTO `game_graveyard_zone` VALUES (101, 1, 0);
INSERT INTO `game_graveyard_zone` VALUES (103, 3, 67);
INSERT INTO `game_graveyard_zone` VALUES (104, 10, 67);
INSERT INTO `game_graveyard_zone` VALUES (854, 1519, 67);
INSERT INTO `game_graveyard_zone` VALUES (104, 44, 0);
INSERT INTO `game_graveyard_zone` VALUES (105, 12, 469);
INSERT INTO `game_graveyard_zone` VALUES (106, 12, 469);
INSERT INTO `game_graveyard_zone` VALUES (569, 28, 67);
INSERT INTO `game_graveyard_zone` VALUES (106, 1519, 469);
INSERT INTO `game_graveyard_zone` VALUES (108, 8, 67);
INSERT INTO `game_graveyard_zone` VALUES (109, 33, 0);
INSERT INTO `game_graveyard_zone` VALUES (149, 130, 469);
INSERT INTO `game_graveyard_zone` VALUES (149, 267, 469);
INSERT INTO `game_graveyard_zone` VALUES (149, 36, 469);
INSERT INTO `game_graveyard_zone` VALUES (39, 722, 0);
INSERT INTO `game_graveyard_zone` VALUES (189, 15, 469);
INSERT INTO `game_graveyard_zone` VALUES (97, 209, 0);
INSERT INTO `game_graveyard_zone` VALUES (909, 139, 0);
INSERT INTO `game_graveyard_zone` VALUES (209, 440, 0);
INSERT INTO `game_graveyard_zone` VALUES (209, 1941, 0);
INSERT INTO `game_graveyard_zone` VALUES (229, 406, 0);
INSERT INTO `game_graveyard_zone` VALUES (429, 796, 0);
INSERT INTO `game_graveyard_zone` VALUES (869, 2057, 0);
INSERT INTO `game_graveyard_zone` VALUES (89, 1638, 469);
INSERT INTO `game_graveyard_zone` VALUES (249, 17, 0);
INSERT INTO `game_graveyard_zone` VALUES (249, 215, 0);
INSERT INTO `game_graveyard_zone` VALUES (289, 85, 67);
INSERT INTO `game_graveyard_zone` VALUES (3, 10, 469);
INSERT INTO `game_graveyard_zone` VALUES (309, 357, 469);
INSERT INTO `game_graveyard_zone` VALUES (189, 2159, 469);
INSERT INTO `game_graveyard_zone` VALUES (310, 357, 67);
INSERT INTO `game_graveyard_zone` VALUES (32, 14, 0);
INSERT INTO `game_graveyard_zone` VALUES (329, 400, 0);
INSERT INTO `game_graveyard_zone` VALUES (850, 2917, 67);
INSERT INTO `game_graveyard_zone` VALUES (34, 215, 67);
INSERT INTO `game_graveyard_zone` VALUES (349, 47, 0);
INSERT INTO `game_graveyard_zone` VALUES (35, 148, 469);
INSERT INTO `game_graveyard_zone` VALUES (36, 41, 0);
INSERT INTO `game_graveyard_zone` VALUES (369, 16, 0);
INSERT INTO `game_graveyard_zone` VALUES (370, 4, 0);
INSERT INTO `game_graveyard_zone` VALUES (370, 8, 469);
INSERT INTO `game_graveyard_zone` VALUES (389, 33, 0);
INSERT INTO `game_graveyard_zone` VALUES (469, 719, 0);
INSERT INTO `game_graveyard_zone` VALUES (850, 2437, 0);
INSERT INTO `game_graveyard_zone` VALUES (39, 400, 0);
INSERT INTO `game_graveyard_zone` VALUES (4, 40, 0);
INSERT INTO `game_graveyard_zone` VALUES (512, 719, 0);
INSERT INTO `game_graveyard_zone` VALUES (409, 406, 0);
INSERT INTO `game_graveyard_zone` VALUES (429, 2057, 0);
INSERT INTO `game_graveyard_zone` VALUES (449, 361, 0);
INSERT INTO `game_graveyard_zone` VALUES (450, 490, 0);
INSERT INTO `game_graveyard_zone` VALUES (469, 406, 0);
INSERT INTO `game_graveyard_zone` VALUES (91, 1657, 67);
INSERT INTO `game_graveyard_zone` VALUES (489, 11, 0);
INSERT INTO `game_graveyard_zone` VALUES (510, 139, 0);
INSERT INTO `game_graveyard_zone` VALUES (511, 618, 0);
INSERT INTO `game_graveyard_zone` VALUES (850, 1637, 67);
INSERT INTO `game_graveyard_zone` VALUES (512, 17, 469);
INSERT INTO `game_graveyard_zone` VALUES (512, 331, 0);
INSERT INTO `game_graveyard_zone` VALUES (569, 85, 67);
INSERT INTO `game_graveyard_zone` VALUES (6, 38, 469);
INSERT INTO `game_graveyard_zone` VALUES (609, 16, 0);
INSERT INTO `game_graveyard_zone` VALUES (509, 28, 469);
INSERT INTO `game_graveyard_zone` VALUES (429, 85, 469);
INSERT INTO `game_graveyard_zone` VALUES (629, 2057, 0);
INSERT INTO `game_graveyard_zone` VALUES (630, 16, 0);
INSERT INTO `game_graveyard_zone` VALUES (631, 15, 67);
INSERT INTO `game_graveyard_zone` VALUES (632, 46, 0);
INSERT INTO `game_graveyard_zone` VALUES (633, 493, 0);
INSERT INTO `game_graveyard_zone` VALUES (635, 361, 0);
INSERT INTO `game_graveyard_zone` VALUES (649, 14, 67);
INSERT INTO `game_graveyard_zone` VALUES (854, 2257, 67);
INSERT INTO `game_graveyard_zone` VALUES (7, 11, 0);
INSERT INTO `game_graveyard_zone` VALUES (7, 38, 67);
INSERT INTO `game_graveyard_zone` VALUES (789, 47, 0);
INSERT INTO `game_graveyard_zone` VALUES (8, 3, 0);
INSERT INTO `game_graveyard_zone` VALUES (8, 38, 67);
INSERT INTO `game_graveyard_zone` VALUES (829, 28, 0);
INSERT INTO `game_graveyard_zone` VALUES (849, 357, 0);
INSERT INTO `game_graveyard_zone` VALUES (92, 331, 0);
INSERT INTO `game_graveyard_zone` VALUES (850, 14, 67);
INSERT INTO `game_graveyard_zone` VALUES (851, 1638, 67);
INSERT INTO `game_graveyard_zone` VALUES (851, 215, 67);
INSERT INTO `game_graveyard_zone` VALUES (852, 1, 469);
INSERT INTO `game_graveyard_zone` VALUES (631, 2159, 67);
INSERT INTO `game_graveyard_zone` VALUES (89, 215, 0);
INSERT INTO `game_graveyard_zone` VALUES (90, 1657, 469);
INSERT INTO `game_graveyard_zone` VALUES (91, 141, 469);
INSERT INTO `game_graveyard_zone` VALUES (911, 10, 0);
INSERT INTO `game_graveyard_zone` VALUES (93, 141, 469);
INSERT INTO `game_graveyard_zone` VALUES (94, 85, 67);
INSERT INTO `game_graveyard_zone` VALUES (853, 85, 67);
INSERT INTO `game_graveyard_zone` VALUES (97, 130, 67);
INSERT INTO `game_graveyard_zone` VALUES (39, 491, 0);
INSERT INTO `game_graveyard_zone` VALUES (98, 267, 67);
INSERT INTO `game_graveyard_zone` VALUES (98, 36, 67);
INSERT INTO `game_graveyard_zone` VALUES (99, 45, 0);
INSERT INTO `game_graveyard_zone` VALUES (669, 22, 0);
INSERT INTO `game_graveyard_zone` VALUES (670, 22, 0);
INSERT INTO `game_graveyard_zone` VALUES (671, 22, 0);
INSERT INTO `game_graveyard_zone` VALUES (529, 22, 0);
INSERT INTO `game_graveyard_zone` VALUES (751, 2597, 469);
INSERT INTO `game_graveyard_zone` VALUES (749, 2597, 67);
INSERT INTO `game_graveyard_zone` VALUES (750, 2597, 67);
INSERT INTO `game_graveyard_zone` VALUES (610, 2597, 67);
INSERT INTO `game_graveyard_zone` VALUES (611, 2597, 469);
INSERT INTO `game_graveyard_zone` VALUES (689, 2597, 0);
INSERT INTO `game_graveyard_zone` VALUES (729, 2597, 469);
INSERT INTO `game_graveyard_zone` VALUES (829, 2597, 0);
INSERT INTO `game_graveyard_zone` VALUES (830, 2597, 0);
INSERT INTO `game_graveyard_zone` VALUES (169, 2597, 0);
INSERT INTO `game_graveyard_zone` VALUES (769, 3277, 469);
INSERT INTO `game_graveyard_zone` VALUES (770, 3277, 67);
INSERT INTO `game_graveyard_zone` VALUES (771, 3277, 469);
INSERT INTO `game_graveyard_zone` VALUES (772, 3277, 67);
INSERT INTO `game_graveyard_zone` VALUES (809, 3277, 0);
INSERT INTO `game_graveyard_zone` VALUES (810, 3277, 0);
INSERT INTO `game_graveyard_zone` VALUES (889, 3358, 67);
INSERT INTO `game_graveyard_zone` VALUES (890, 3358, 469);
INSERT INTO `game_graveyard_zone` VALUES (891, 3358, 0);
INSERT INTO `game_graveyard_zone` VALUES (892, 3358, 0);
INSERT INTO `game_graveyard_zone` VALUES (893, 3358, 67);
INSERT INTO `game_graveyard_zone` VALUES (894, 3358, 0);
INSERT INTO `game_graveyard_zone` VALUES (895, 3358, 469);
INSERT INTO `game_graveyard_zone` VALUES (896, 3358, 0);
INSERT INTO `game_graveyard_zone` VALUES (897, 3358, 0);
INSERT INTO `game_graveyard_zone` VALUES (898, 3358, 469);
INSERT INTO `game_graveyard_zone` VALUES (899, 3358, 67);
INSERT INTO `game_graveyard_zone` VALUES (10, 718, 0);
INSERT INTO `game_graveyard_zone` VALUES (709, 14, 67);
INSERT INTO `game_graveyard_zone` VALUES (106, 717, 0);
INSERT INTO `game_graveyard_zone` VALUES (10, 17, 67);
INSERT INTO `game_graveyard_zone` VALUES (209, 1176, 0);
INSERT INTO `game_graveyard_zone` VALUES (8, 1337, 0);
INSERT INTO `game_graveyard_zone` VALUES (70, 1377, 0);
INSERT INTO `game_graveyard_zone` VALUES (910, 1377, 0);
INSERT INTO `game_graveyard_zone` VALUES (149, 209, 0);
INSERT INTO `game_graveyard_zone` VALUES (108, 1417, 0);
INSERT INTO `game_graveyard_zone` VALUES (849, 2557, 0);
INSERT INTO `game_graveyard_zone` VALUES (31, 405, 0);
INSERT INTO `game_graveyard_zone` VALUES (31, 2100, 0);
INSERT INTO `game_graveyard_zone` VALUES (636, 1583, 0);
INSERT INTO `game_graveyard_zone` VALUES (636, 2717, 0);
INSERT INTO `game_graveyard_zone` VALUES (636, 2677, 0);
INSERT INTO `game_graveyard_zone` VALUES (634, 139, 0);
INSERT INTO `game_graveyard_zone` VALUES (108, 1477, 0);
INSERT INTO `game_graveyard_zone` VALUES (309, 1477, 0);
INSERT INTO `game_graveyard_zone` VALUES (4, 1581, 0);
INSERT INTO `game_graveyard_zone` VALUES (389, 1581, 0);
INSERT INTO `game_graveyard_zone` VALUES (389, 1977, 0);
INSERT INTO `game_graveyard_zone` VALUES (636, 51, 0);
INSERT INTO `game_graveyard_zone` VALUES (909, 2017, 0);
INSERT INTO `game_graveyard_zone` VALUES (107, 2918, 0);
INSERT INTO `game_graveyard_zone` VALUES (854, 12, 0);
INSERT INTO `game_graveyard_zone` VALUES (101, 721, 0);
INSERT INTO `game_graveyard_zone` VALUES (90, 141, 469);
INSERT INTO `game_graveyard_zone` VALUES (927, 139, 0);
INSERT INTO `game_graveyard_zone` VALUES (913, 3478, 0);
INSERT INTO `game_graveyard_zone` VALUES (913, 1377, 0);
INSERT INTO `game_graveyard_zone` VALUES (636, 1584, 0);
INSERT INTO `game_graveyard_zone` VALUES (32, 1637, 469);
INSERT INTO `game_graveyard_zone` VALUES (852, 1537, 469);
INSERT INTO `game_graveyard_zone` VALUES (101, 1537, 67);
INSERT INTO `game_graveyard_zone` VALUES (429, 1497, 469);
INSERT INTO `game_graveyard_zone` VALUES (853, 1497, 67);
INSERT INTO `game_graveyard_zone` VALUES (636, 25, 0);
INSERT INTO `game_graveyard_zone` VALUES (229, 17, 67);
INSERT INTO `game_graveyard_zone` VALUES (106, 2257, 469);
INSERT INTO `game_graveyard_zone` VALUES (913, 3429, 0);
INSERT INTO `game_graveyard_zone` VALUES (913, 3428, 0);
INSERT INTO `game_graveyard_zone` VALUES (469, 148, 0);
INSERT INTO `game_graveyard_zone` VALUES (469, 141, 67);
INSERT INTO `game_graveyard_zone` VALUES (469, 1657, 67);
INSERT INTO `game_graveyard_zone` VALUES (909, 3456, 0);
INSERT INTO `game_graveyard_zone` VALUES (928, 5130, 0);
INSERT INTO `game_graveyard_zone` VALUES (934, 2037, 469);
INSERT INTO `game_graveyard_zone` VALUES (510, 4012, 0);
INSERT INTO `game_graveyard_zone` VALUES (909, 5148, 0);
INSERT INTO `game_graveyard_zone` VALUES (429, 5163, 0);
INSERT INTO `game_graveyard_zone` VALUES (429, 5153, 0);
INSERT INTO `game_graveyard_zone` VALUES (512, 5077, 0);
INSERT INTO `game_graveyard_zone` VALUES (4, 5138, 0);
INSERT INTO `game_graveyard_zone` VALUES (101, 5134, 0);
INSERT INTO `game_graveyard_zone` VALUES (209, 5204, 0);
INSERT INTO `game_graveyard_zone` VALUES (932, 5023, 469);
INSERT INTO `game_graveyard_zone` VALUES (933, 5023, 67);
INSERT INTO `game_graveyard_zone` VALUES (936, 5179, 0);
INSERT INTO `game_graveyard_zone` VALUES (937, 2041, 67);
INSERT INTO `game_graveyard_zone` VALUES (938, 38, 469);
INSERT INTO `game_graveyard_zone` VALUES (939, 5130, 0);
INSERT INTO `game_graveyard_zone` VALUES (940, 85, 0);
INSERT INTO `game_graveyard_zone` VALUES (941, 5121, 0);
INSERT INTO `game_graveyard_zone` VALUES (36, 3457, 0);
INSERT INTO `game_graveyard_zone` VALUES (945, 2366, 0);
INSERT INTO `game_graveyard_zone` VALUES (945, 5204, 0);
INSERT INTO `game_graveyard_zone` VALUES (946, 408, 0);
INSERT INTO `game_graveyard_zone` VALUES (942, 409, 0);
INSERT INTO `game_graveyard_zone` VALUES (632, 5098, 0);
INSERT INTO `game_graveyard_zone` VALUES (632, 5103, 0);
INSERT INTO `game_graveyard_zone` VALUES (92, 5077, 0);
INSERT INTO `game_graveyard_zone` VALUES (947, 616, 0);
INSERT INTO `game_graveyard_zone` VALUES (947, 5097, 0);
INSERT INTO `game_graveyard_zone` VALUES (936, 5180, 0);
INSERT INTO `game_graveyard_zone` VALUES (936, 5208, 0);
INSERT INTO `game_graveyard_zone` VALUES (948, 616, 0);
INSERT INTO `game_graveyard_zone` VALUES (949, 5536, 0);
INSERT INTO `game_graveyard_zone` VALUES (950, 5225, 0);
INSERT INTO `game_graveyard_zone` VALUES (36, 5086, 0);
INSERT INTO `game_graveyard_zone` VALUES (934, 2040, 469);
INSERT INTO `game_graveyard_zone` VALUES (950, 2040, 67);


SET FOREIGN_KEY_CHECKS = 1;
