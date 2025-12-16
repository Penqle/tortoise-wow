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
-- Table structure for spell_check
-- ----------------------------
DROP TABLE IF EXISTS `spell_check`;
CREATE TABLE `spell_check`  (
  `spellid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyName` smallint(6) NOT NULL DEFAULT -1,
  `SpellFamilyMask` bigint(20) NOT NULL DEFAULT -1,
  `SpellIcon` int(11) NOT NULL DEFAULT -1,
  `SpellVisual` int(11) NOT NULL DEFAULT -1,
  `SpellCategory` int(11) NOT NULL DEFAULT -1,
  `EffectType` int(11) NOT NULL DEFAULT -1,
  `EffectAura` int(11) NOT NULL DEFAULT -1,
  `EffectIdx` tinyint(4) NOT NULL DEFAULT -1,
  `Name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`spellid`, `SpellFamilyName`, `SpellFamilyMask`, `SpellIcon`, `SpellVisual`, `SpellCategory`, `Code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_check
-- ----------------------------
INSERT INTO `spell_check` VALUES (18788, -1, -1, -1, -1, -1, 1, -1, -1, 'Demonic Sacrifice', 'Spell::EffectInstaKill');
INSERT INTO `spell_check` VALUES (18789, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill');
INSERT INTO `spell_check` VALUES (18790, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill');
INSERT INTO `spell_check` VALUES (18791, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill');
INSERT INTO `spell_check` VALUES (18792, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill');


SET FOREIGN_KEY_CHECKS = 1;
