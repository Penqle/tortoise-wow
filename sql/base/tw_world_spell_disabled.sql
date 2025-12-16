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
-- Table structure for spell_disabled
-- ----------------------------
DROP TABLE IF EXISTS `spell_disabled`;
CREATE TABLE `spell_disabled`  (
  `entry` int(10) UNSIGNED NOT NULL COMMENT 'Disabled spell',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of spell_disabled
-- ----------------------------
INSERT INTO `spell_disabled` VALUES (3602);
INSERT INTO `spell_disabled` VALUES (12165);
INSERT INTO `spell_disabled` VALUES (12307);
INSERT INTO `spell_disabled` VALUES (12830);
INSERT INTO `spell_disabled` VALUES (12831);
INSERT INTO `spell_disabled` VALUES (12832);
INSERT INTO `spell_disabled` VALUES (12833);
INSERT INTO `spell_disabled` VALUES (12944);
INSERT INTO `spell_disabled` VALUES (13707);
INSERT INTO `spell_disabled` VALUES (13966);
INSERT INTO `spell_disabled` VALUES (13967);
INSERT INTO `spell_disabled` VALUES (13968);
INSERT INTO `spell_disabled` VALUES (13969);
INSERT INTO `spell_disabled` VALUES (14095);
INSERT INTO `spell_disabled` VALUES (16164);
INSERT INTO `spell_disabled` VALUES (16252);
INSERT INTO `spell_disabled` VALUES (16254);
INSERT INTO `spell_disabled` VALUES (16269);
INSERT INTO `spell_disabled` VALUES (16271);
INSERT INTO `spell_disabled` VALUES (16272);
INSERT INTO `spell_disabled` VALUES (16273);
INSERT INTO `spell_disabled` VALUES (16274);
INSERT INTO `spell_disabled` VALUES (16306);
INSERT INTO `spell_disabled` VALUES (16307);
INSERT INTO `spell_disabled` VALUES (16308);
INSERT INTO `spell_disabled` VALUES (16309);
INSERT INTO `spell_disabled` VALUES (16902);
INSERT INTO `spell_disabled` VALUES (16903);
INSERT INTO `spell_disabled` VALUES (16904);
INSERT INTO `spell_disabled` VALUES (16905);
INSERT INTO `spell_disabled` VALUES (16906);
INSERT INTO `spell_disabled` VALUES (16925);
INSERT INTO `spell_disabled` VALUES (16926);
INSERT INTO `spell_disabled` VALUES (16932);
INSERT INTO `spell_disabled` VALUES (16933);
INSERT INTO `spell_disabled` VALUES (16950);
INSERT INTO `spell_disabled` VALUES (16951);
INSERT INTO `spell_disabled` VALUES (16952);
INSERT INTO `spell_disabled` VALUES (16954);
INSERT INTO `spell_disabled` VALUES (16958);
INSERT INTO `spell_disabled` VALUES (16961);
INSERT INTO `spell_disabled` VALUES (17079);
INSERT INTO `spell_disabled` VALUES (17082);
INSERT INTO `spell_disabled` VALUES (17804);
INSERT INTO `spell_disabled` VALUES (17805);
INSERT INTO `spell_disabled` VALUES (17806);
INSERT INTO `spell_disabled` VALUES (17807);
INSERT INTO `spell_disabled` VALUES (17808);
INSERT INTO `spell_disabled` VALUES (17864);
INSERT INTO `spell_disabled` VALUES (18393);
INSERT INTO `spell_disabled` VALUES (18745);
INSERT INTO `spell_disabled` VALUES (18746);
INSERT INTO `spell_disabled` VALUES (18751);
INSERT INTO `spell_disabled` VALUES (18752);
INSERT INTO `spell_disabled` VALUES (18821);
INSERT INTO `spell_disabled` VALUES (18822);
INSERT INTO `spell_disabled` VALUES (18823);
INSERT INTO `spell_disabled` VALUES (18824);
INSERT INTO `spell_disabled` VALUES (18825);
INSERT INTO `spell_disabled` VALUES (19151);
INSERT INTO `spell_disabled` VALUES (19152);
INSERT INTO `spell_disabled` VALUES (19153);
INSERT INTO `spell_disabled` VALUES (19389);
INSERT INTO `spell_disabled` VALUES (19390);
INSERT INTO `spell_disabled` VALUES (20127);
INSERT INTO `spell_disabled` VALUES (20130);
INSERT INTO `spell_disabled` VALUES (20135);
INSERT INTO `spell_disabled` VALUES (20136);
INSERT INTO `spell_disabled` VALUES (20137);
INSERT INTO `spell_disabled` VALUES (20359);
INSERT INTO `spell_disabled` VALUES (20360);
INSERT INTO `spell_disabled` VALUES (20361);
INSERT INTO `spell_disabled` VALUES (21563);
INSERT INTO `spell_disabled` VALUES (24293);
INSERT INTO `spell_disabled` VALUES (24294);
INSERT INTO `spell_disabled` VALUES (24295);
INSERT INTO `spell_disabled` VALUES (27839);
INSERT INTO `spell_disabled` VALUES (27840);


SET FOREIGN_KEY_CHECKS = 1;
