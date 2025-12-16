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
-- Table structure for spell_proc_event
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc_event`;
CREATE TABLE `spell_proc_event`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `SchoolMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyName` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyMask0` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyMask1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyMask2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `procFlags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `procEx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ppmRate` float NOT NULL DEFAULT 0,
  `CustomChance` float NOT NULL DEFAULT 0,
  `Cooldown` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_proc_event
-- ----------------------------
INSERT INTO `spell_proc_event` VALUES (324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
INSERT INTO `spell_proc_event` VALUES (2565, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (6866, 0, 0, 0, 0, 0, 0, 112, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (9452, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (9782, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (9784, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (9799, 0, 0, 0, 0, 0, 0, 1026, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (11103, 4, 0, 0, 0, 0, 65536, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (11119, 4, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (11129, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (11180, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (11185, 0, 3, 128, 128, 128, 327680, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (11213, 0, 3, 0, 0, 0, 65536, 0, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (11255, 0, 3, 16384, 16384, 16384, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12099, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12169, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
INSERT INTO `spell_proc_event` VALUES (12289, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12298, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12311, 0, 4, 2048, 2048, 2048, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12317, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12319, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
INSERT INTO `spell_proc_event` VALUES (12782, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12797, 0, 0, 1024, 1024, 1024, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12834, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12880, 0, 0, 0, 0, 0, 0, 65536, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (12966, 0, 0, 0, 0, 0, 0, 65536, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (13754, 0, 0, 16, 16, 16, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (13983, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (14156, 0, 0, 4063232, 4063232, 4063232, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (14186, 0, 8, 1107296782, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (14531, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (14892, 0, 6, 17448312320, 17448312320, 17448312320, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (15088, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (15268, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (15277, 0, 0, 0, 0, 0, 0, 0, 6, 0, 3);
INSERT INTO `spell_proc_event` VALUES (15286, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (15346, 0, 0, 0, 0, 0, 0, 0, 6, 0, 3);
INSERT INTO `spell_proc_event` VALUES (16164, 28, 11, 0, 0, 0, 65536, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16176, 0, 11, 448, 448, 448, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16256, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16257, 0, 0, 0, 0, 0, 0, 65536, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16487, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16511, 0, 0, 0, 0, 0, 664232, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30);
INSERT INTO `spell_proc_event` VALUES (16624, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16850, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16864, 0, 7, 14925327, 14925327, 14925327, 0, 0, 4, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16880, 0, 0, 0, 0, 0, 87040, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16952, 0, 0, 4398046744576, 4398046744576, 4398046744576, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16958, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (17079, 0, 7, 524288, 524288, 524288, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (17364, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (17495, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (17670, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (17687, 0, 0, 0, 0, 0, 0, 116, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (17793, 0, 5, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (17794, 32, 0, 0, 0, 0, 0, 131075, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23688, 0, 0, 0, 0, 0, 0, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (18094, 0, 5, 10, 10, 10, 262144, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (18119, 0, 5, 9189, 9189, 9189, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (18137, 0, 0, 0, 0, 0, 0, 1027, 0, 0, 3);
INSERT INTO `spell_proc_event` VALUES (18765, 0, 0, 0, 0, 0, 0, 116, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (18800, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (18189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (19228, 0, 0, 64, 64, 64, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (19407, 0, 0, 512, 512, 512, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (19572, 0, 9, 8388608, 8388608, 8388608, 262144, 262144, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20049, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20127, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20128, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20131, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20132, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20133, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20134, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20164, 0, 0, 0, 0, 0, 0, 0, 5, 0, 2);
INSERT INTO `spell_proc_event` VALUES (20165, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20166, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20177, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20210, 0, 10, 3223322624, 3223322624, 3223322624, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20234, 0, 0, 32768, 32768, 32768, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20375, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1);
INSERT INTO `spell_proc_event` VALUES (20500, 0, 4, 268435456, 268435456, 268435456, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20725, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20784, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20891, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20911, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (20925, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (21185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10);
INSERT INTO `spell_proc_event` VALUES (21747, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0);
INSERT INTO `spell_proc_event` VALUES (21882, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (21890, 0, 4, 3763103747823, 3763103747823, 3763103747823, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (22007, 0, 0, 2099233, 2099233, 2099233, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (22618, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (22620, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (22648, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23401, 0, 6, 0, 0, 0, 16384, 0, 0, 100, 0);
INSERT INTO `spell_proc_event` VALUES (23547, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23548, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23551, 0, 0, 192, 192, 192, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
INSERT INTO `spell_proc_event` VALUES (23572, 0, 0, 192, 192, 192, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23578, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23581, 0, 0, 0, 0, 0, 0, 0, 0.6, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23582, 0, 8, 2048, 2048, 2048, 1024, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23686, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23689, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (23721, 0, 0, 2048, 2048, 2048, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (24658, 126, 0, 0, 0, 0, 87376, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (25669, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO `spell_proc_event` VALUES (25899, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (26107, 0, 7, 549764202496, 549764202496, 549764202496, 0, 116, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (26119, 0, 11, 2416967683, 2416967683, 2416967683, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (26128, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (26135, 0, 0, 17718313984, 17718313984, 17718313984, 87056, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (26341, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (26480, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0);
INSERT INTO `spell_proc_event` VALUES (27419, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (27498, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (27656, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO `spell_proc_event` VALUES (27787, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO `spell_proc_event` VALUES (27811, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28716, 0, 7, 16, 16, 16, 294912, 262144, 0, 50, 0);
INSERT INTO `spell_proc_event` VALUES (28719, 0, 7, 32, 32, 32, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28744, 0, 7, 64, 64, 64, 278528, 262147, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28752, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28789, 0, 10, 3221250048, 3221250048, 3221250048, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28809, 0, 0, 4096, 4096, 4096, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28812, 0, 8, 33554438, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28816, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28823, 0, 0, 192, 192, 192, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28847, 0, 7, 32, 32, 32, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28849, 0, 11, 128, 128, 128, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29062, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29074, 20, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29150, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29441, 0, 0, 0, 0, 0, 0, 8, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (29501, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29624, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29625, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29626, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29632, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29633, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29634, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29635, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29636, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (29637, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (30003, 0, 0, 0, 0, 0, 0, 2048, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (30160, 0, 11, 2419064835, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (30802, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (30808, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (30809, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (30810, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (18096, 0, 0, 608, 608, 608, 328704, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (13165, 0, 9, 4601857, 4601857, 4601857, 65856, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (8876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (3417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (12787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (21387, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0);
INSERT INTO `spell_proc_event` VALUES (12038, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `spell_proc_event` VALUES (6346, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (45527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
INSERT INTO `spell_proc_event` VALUES (45525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
INSERT INTO `spell_proc_event` VALUES (20150, 0, 0, 0, 0, 0, 0, 64, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (20149, 0, 0, 0, 0, 0, 0, 64, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (20148, 0, 0, 0, 0, 0, 0, 64, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (45541, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (19184, 0, 9, 20, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (45719, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (45721, 0, 7, 524288, 524288, 524288, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (5118, 0, 0, 0, 0, 0, 0, 131075, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (13159, 0, 0, 0, 0, 0, 0, 131075, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (45542, 0, 0, 0, 0, 0, 0, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (16550, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (2651, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (33006, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1);
INSERT INTO `spell_proc_event` VALUES (28831, 0, 0, 1, 1, 1, 0, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (26169, 0, 0, 0, 0, 0, 278528, 262147, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (14076, 0, 8, 128, 128, 128, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (13896, 0, 0, 0, 0, 0, 131072, 1027, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (45844, 0, 0, 0, 0, 0, 0, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (45863, 0, 10, 32, 32, 32, 81920, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (48100, 0, 11, 2416967680, 2416967680, 2416967680, 0, 0, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28200, 0, 0, 0, 0, 0, 0, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (24659, 0, 0, 0, 0, 0, 0, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (28780, 0, 0, 0, 0, 0, 0, 524288, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (21972, 0, 7, 256, 256, 256, 0, 0, 0, 0, 0);


SET FOREIGN_KEY_CHECKS = 1;
