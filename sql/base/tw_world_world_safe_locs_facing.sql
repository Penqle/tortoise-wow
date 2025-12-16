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
-- Table structure for world_safe_locs_facing
-- ----------------------------
DROP TABLE IF EXISTS `world_safe_locs_facing`;
CREATE TABLE `world_safe_locs_facing`  (
  `id` int(10) UNSIGNED NOT NULL,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_safe_locs_facing
-- ----------------------------
INSERT INTO `world_safe_locs_facing` VALUES (3, 3.83972);
INSERT INTO `world_safe_locs_facing` VALUES (4, 2.49582);
INSERT INTO `world_safe_locs_facing` VALUES (6, 4.7822);
INSERT INTO `world_safe_locs_facing` VALUES (7, 2.53073);
INSERT INTO `world_safe_locs_facing` VALUES (8, 2.79253);
INSERT INTO `world_safe_locs_facing` VALUES (10, 1.22173);
INSERT INTO `world_safe_locs_facing` VALUES (32, 0.20944);
INSERT INTO `world_safe_locs_facing` VALUES (34, 1.88496);
INSERT INTO `world_safe_locs_facing` VALUES (35, 4.86947);
INSERT INTO `world_safe_locs_facing` VALUES (36, 3.15905);
INSERT INTO `world_safe_locs_facing` VALUES (39, 4.7473);
INSERT INTO `world_safe_locs_facing` VALUES (70, 0.20944);
INSERT INTO `world_safe_locs_facing` VALUES (89, 1.8675);
INSERT INTO `world_safe_locs_facing` VALUES (90, 2.40855);
INSERT INTO `world_safe_locs_facing` VALUES (91, 2.72271);
INSERT INTO `world_safe_locs_facing` VALUES (92, 1.8326);
INSERT INTO `world_safe_locs_facing` VALUES (93, 1.11701);
INSERT INTO `world_safe_locs_facing` VALUES (94, 4.64258);
INSERT INTO `world_safe_locs_facing` VALUES (97, 3.14159);
INSERT INTO `world_safe_locs_facing` VALUES (98, 1.67552);
INSERT INTO `world_safe_locs_facing` VALUES (99, 5.5676);
INSERT INTO `world_safe_locs_facing` VALUES (100, 2.05949);
INSERT INTO `world_safe_locs_facing` VALUES (101, 2.54818);
INSERT INTO `world_safe_locs_facing` VALUES (103, 2.80998);
INSERT INTO `world_safe_locs_facing` VALUES (104, 0.925025);
INSERT INTO `world_safe_locs_facing` VALUES (105, 2.72271);
INSERT INTO `world_safe_locs_facing` VALUES (106, 4.57276);
INSERT INTO `world_safe_locs_facing` VALUES (108, 3.12414);
INSERT INTO `world_safe_locs_facing` VALUES (109, 0.925025);
INSERT INTO `world_safe_locs_facing` VALUES (149, 0.20944);
INSERT INTO `world_safe_locs_facing` VALUES (169, 4.4855);
INSERT INTO `world_safe_locs_facing` VALUES (189, 3.00197);
INSERT INTO `world_safe_locs_facing` VALUES (209, 2.70526);
INSERT INTO `world_safe_locs_facing` VALUES (229, 1.3439);
INSERT INTO `world_safe_locs_facing` VALUES (249, 0.0872665);
INSERT INTO `world_safe_locs_facing` VALUES (289, 4.88692);
INSERT INTO `world_safe_locs_facing` VALUES (309, 1.25664);
INSERT INTO `world_safe_locs_facing` VALUES (310, 3.10669);
INSERT INTO `world_safe_locs_facing` VALUES (329, 4.59022);
INSERT INTO `world_safe_locs_facing` VALUES (349, 2.58309);
INSERT INTO `world_safe_locs_facing` VALUES (369, 4.60767);
INSERT INTO `world_safe_locs_facing` VALUES (370, 5.98648);
INSERT INTO `world_safe_locs_facing` VALUES (389, 3.07178);
INSERT INTO `world_safe_locs_facing` VALUES (409, 1.55334);
INSERT INTO `world_safe_locs_facing` VALUES (429, 0.907571);
INSERT INTO `world_safe_locs_facing` VALUES (449, 0.750492);
INSERT INTO `world_safe_locs_facing` VALUES (450, 0.488692);
INSERT INTO `world_safe_locs_facing` VALUES (469, 5.79449);
INSERT INTO `world_safe_locs_facing` VALUES (489, 4.92183);
INSERT INTO `world_safe_locs_facing` VALUES (509, 4.99164);
INSERT INTO `world_safe_locs_facing` VALUES (511, 0.0349066);
INSERT INTO `world_safe_locs_facing` VALUES (512, 0.0523599);
INSERT INTO `world_safe_locs_facing` VALUES (569, 3.38594);
INSERT INTO `world_safe_locs_facing` VALUES (609, 2.86234);
INSERT INTO `world_safe_locs_facing` VALUES (610, 2.02458);
INSERT INTO `world_safe_locs_facing` VALUES (611, 3.92699);
INSERT INTO `world_safe_locs_facing` VALUES (630, 6.14356);
INSERT INTO `world_safe_locs_facing` VALUES (631, 5.67232);
INSERT INTO `world_safe_locs_facing` VALUES (632, 1.76278);
INSERT INTO `world_safe_locs_facing` VALUES (633, 3.80482);
INSERT INTO `world_safe_locs_facing` VALUES (634, 0.0174533);
INSERT INTO `world_safe_locs_facing` VALUES (635, 0.366519);
INSERT INTO `world_safe_locs_facing` VALUES (636, 6.21337);
INSERT INTO `world_safe_locs_facing` VALUES (649, 4.92183);
INSERT INTO `world_safe_locs_facing` VALUES (689, 2.00713);
INSERT INTO `world_safe_locs_facing` VALUES (690, 4.71239);
INSERT INTO `world_safe_locs_facing` VALUES (700, 4.4);
INSERT INTO `world_safe_locs_facing` VALUES (701, 0.5);
INSERT INTO `world_safe_locs_facing` VALUES (709, 4.11898);
INSERT INTO `world_safe_locs_facing` VALUES (729, 1.53589);
INSERT INTO `world_safe_locs_facing` VALUES (749, 2.35619);
INSERT INTO `world_safe_locs_facing` VALUES (750, 0.261799);
INSERT INTO `world_safe_locs_facing` VALUES (751, 4.79966);
INSERT INTO `world_safe_locs_facing` VALUES (769, 3.14159);
INSERT INTO `world_safe_locs_facing` VALUES (809, 1.5708);
INSERT INTO `world_safe_locs_facing` VALUES (810, 0.261799);
INSERT INTO `world_safe_locs_facing` VALUES (829, 4.7822);
INSERT INTO `world_safe_locs_facing` VALUES (830, 3.35103);
INSERT INTO `world_safe_locs_facing` VALUES (850, 0.907571);
INSERT INTO `world_safe_locs_facing` VALUES (851, 6.28319);
INSERT INTO `world_safe_locs_facing` VALUES (852, 0.785398);
INSERT INTO `world_safe_locs_facing` VALUES (854, 1.76278);
INSERT INTO `world_safe_locs_facing` VALUES (869, 2.44346);
INSERT INTO `world_safe_locs_facing` VALUES (889, 0.802851);
INSERT INTO `world_safe_locs_facing` VALUES (890, 3.83972);
INSERT INTO `world_safe_locs_facing` VALUES (891, 2.9147);
INSERT INTO `world_safe_locs_facing` VALUES (892, 3.12414);
INSERT INTO `world_safe_locs_facing` VALUES (893, 1.71042);
INSERT INTO `world_safe_locs_facing` VALUES (894, 1.69297);
INSERT INTO `world_safe_locs_facing` VALUES (895, 1.8675);
INSERT INTO `world_safe_locs_facing` VALUES (896, 2.53073);
INSERT INTO `world_safe_locs_facing` VALUES (897, 5.044);
INSERT INTO `world_safe_locs_facing` VALUES (898, 2.74017);
INSERT INTO `world_safe_locs_facing` VALUES (899, 1.72788);
INSERT INTO `world_safe_locs_facing` VALUES (909, 6.05629);
INSERT INTO `world_safe_locs_facing` VALUES (910, 2.89725);
INSERT INTO `world_safe_locs_facing` VALUES (928, 2.7);
INSERT INTO `world_safe_locs_facing` VALUES (934, 5.6);
INSERT INTO `world_safe_locs_facing` VALUES (936, 3.7);
INSERT INTO `world_safe_locs_facing` VALUES (937, 2.3);
INSERT INTO `world_safe_locs_facing` VALUES (938, 1);
INSERT INTO `world_safe_locs_facing` VALUES (939, 2.7);
INSERT INTO `world_safe_locs_facing` VALUES (940, 3.37);
INSERT INTO `world_safe_locs_facing` VALUES (941, 6);
INSERT INTO `world_safe_locs_facing` VALUES (942, 2.04);
INSERT INTO `world_safe_locs_facing` VALUES (943, 6.1);
INSERT INTO `world_safe_locs_facing` VALUES (945, 4.9);
INSERT INTO `world_safe_locs_facing` VALUES (946, 5.14);
INSERT INTO `world_safe_locs_facing` VALUES (948, 1.73);
INSERT INTO `world_safe_locs_facing` VALUES (949, 5.8);
INSERT INTO `world_safe_locs_facing` VALUES (950, 3.07);

SET FOREIGN_KEY_CHECKS = 1;
