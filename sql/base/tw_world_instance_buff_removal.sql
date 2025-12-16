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
-- Table structure for instance_buff_removal
-- ----------------------------
DROP TABLE IF EXISTS `instance_buff_removal`;
CREATE TABLE `instance_buff_removal`  (
  `map_id` int(10) UNSIGNED NOT NULL COMMENT 'MapId to remove aura from',
  `spell_id` int(10) UNSIGNED NOT NULL COMMENT 'aura id to remove on entering MapId',
  `enabled` tinyint(1) NOT NULL COMMENT 'aura removal enabled or not',
  `flags` int(11) NOT NULL COMMENT 'flags, see AuraRemovalMgr.h',
  `comment` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'description, what is removed',
  PRIMARY KEY (`map_id`, `spell_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Aura removal on map entry' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instance_buff_removal
-- ----------------------------
INSERT INTO `instance_buff_removal` VALUES (45, 22888, 1, 0, 'Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (45, 16609, 1, 0, 'Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (45, 24425, 1, 0, 'Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (45, 26393, 1, 0, 'Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (45, 15366, 1, 0, 'Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (45, 22818, 1, 0, 'Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (45, 22820, 1, 0, 'Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (45, 22817, 1, 0, 'Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (45, 28681, 1, 0, 'Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (45, 23735, 1, 0, 'Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (45, 23736, 1, 0, 'Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (45, 23737, 1, 0, 'Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (45, 23738, 1, 0, 'Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (45, 23766, 1, 0, 'Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (45, 23767, 1, 0, 'Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (45, 23768, 1, 0, 'Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (45, 23769, 1, 0, 'Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (533, 22888, 1, 0, 'Naxxramas - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (533, 16609, 1, 0, 'Naxxramas - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (533, 24425, 1, 0, 'Naxxramas - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (533, 26393, 1, 0, 'Naxxramas - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (533, 15366, 1, 0, 'Naxxramas - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (533, 22818, 1, 0, 'Naxxramas - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (533, 22820, 1, 0, 'Naxxramas - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (533, 22817, 1, 0, 'Naxxramas - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (533, 28681, 1, 0, 'Naxxramas - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (533, 23735, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (533, 23736, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (533, 23737, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (533, 23738, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (533, 23766, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (533, 23767, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (533, 23768, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (533, 23769, 1, 0, 'Naxxramas - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (531, 22888, 1, 0, 'AQ40 - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (531, 16609, 1, 0, 'AQ40 - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (531, 24425, 1, 0, 'AQ40 - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (531, 26393, 1, 0, 'AQ40 - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (531, 15366, 1, 0, 'AQ40 - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (531, 22818, 1, 0, 'AQ40 - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (531, 22820, 1, 0, 'AQ40 - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (531, 22817, 1, 0, 'AQ40 - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (531, 28681, 1, 0, 'AQ40 - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (531, 23735, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (531, 23736, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (531, 23737, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (531, 23738, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (531, 23766, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (531, 23767, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (531, 23768, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (531, 23769, 1, 0, 'AQ40 - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (509, 22888, 1, 0, 'AQ20 - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (509, 16609, 1, 0, 'AQ20 - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (509, 24425, 1, 0, 'AQ20 - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (509, 26393, 1, 0, 'AQ20 - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (509, 15366, 1, 0, 'AQ20 - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (509, 22818, 1, 0, 'AQ20 - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (509, 22820, 1, 0, 'AQ20 - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (509, 22817, 1, 0, 'AQ20 - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (509, 28681, 1, 0, 'AQ20 - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (509, 23735, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (509, 23736, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (509, 23737, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (509, 23738, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (509, 23766, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (509, 23767, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (509, 23768, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (509, 23769, 1, 0, 'AQ20 - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (309, 22888, 1, 0, 'Zul\'Gurub - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (309, 16609, 1, 0, 'Zul\'Gurub - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (309, 24425, 1, 0, 'Zul\'Gurub - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (309, 26393, 1, 0, 'Zul\'Gurub - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (309, 15366, 1, 0, 'Zul\'Gurub - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (309, 22818, 1, 0, 'Zul\'Gurub - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (309, 22820, 1, 0, 'Zul\'Gurub - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (309, 22817, 1, 0, 'Zul\'Gurub - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (309, 28681, 1, 0, 'Zul\'Gurub - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (309, 23735, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (309, 23736, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (309, 23737, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (309, 23738, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (309, 23766, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (309, 23767, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (309, 23768, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (309, 23769, 1, 0, 'Zul\'Gurub - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (469, 22888, 1, 0, 'Blackwing Lair - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (469, 16609, 1, 0, 'Blackwing Lair - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (469, 24425, 1, 0, 'Blackwing Lair - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (469, 26393, 1, 0, 'Blackwing Lair - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (469, 15366, 1, 0, 'Blackwing Lair - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (469, 22818, 1, 0, 'Blackwing Lair - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (469, 22820, 1, 0, 'Blackwing Lair - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (469, 22817, 1, 0, 'Blackwing Lair - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (469, 28681, 1, 0, 'Blackwing Lair - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (469, 23735, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (469, 23736, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (469, 23737, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (469, 23738, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (469, 23766, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (469, 23767, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (469, 23768, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (469, 23769, 1, 0, 'Blackwing Lair - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (409, 22888, 1, 0, 'Molten Core - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (409, 16609, 1, 0, 'Molten Core - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (409, 24425, 1, 0, 'Molten Core - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (409, 26393, 1, 0, 'Molten Core - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (409, 15366, 1, 0, 'Molten Core - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (409, 22818, 1, 0, 'Molten Core - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (409, 22820, 1, 0, 'Molten Core - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (409, 22817, 1, 0, 'Molten Core - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (409, 28681, 1, 0, 'Molten Core - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (409, 23735, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (409, 23736, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (409, 23737, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (409, 23738, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (409, 23766, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (409, 23767, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (409, 23768, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (409, 23769, 1, 0, 'Molten Core - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (249, 22888, 1, 0, 'Onyxia\'s Lair - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (249, 16609, 1, 0, 'Onyxia\'s Lair - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (249, 24425, 1, 0, 'Onyxia\'s Lair - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (249, 26393, 1, 0, 'Onyxia\'s Lair - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (249, 15366, 1, 0, 'Onyxia\'s Lair - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (249, 22818, 1, 0, 'Onyxia\'s Lair - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (249, 22820, 1, 0, 'Onyxia\'s Lair - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (249, 22817, 1, 0, 'Onyxia\'s Lair - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (249, 28681, 1, 0, 'Onyxia\'s Lair - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (249, 23735, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (249, 23736, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (249, 23737, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (249, 23738, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (249, 23766, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (249, 23767, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (249, 23768, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (249, 23769, 1, 0, 'Onyxia\'s Lair - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (45, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (533, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (531, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (509, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (309, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (469, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (409, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (249, 18968, 1, 0, 'Fire shield');
INSERT INTO `instance_buff_removal` VALUES (807, 22888, 1, 0, 'Emerald Sanctum - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (807, 16609, 1, 0, 'Emerald Sanctum - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (807, 24425, 1, 0, 'Emerald Sanctum - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (807, 26393, 1, 0, 'Emerald Sanctum - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (807, 15366, 1, 0, 'Emerald Sanctum - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (807, 22818, 1, 0, 'Emerald Sanctum - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (807, 22820, 1, 0, 'Emerald Sanctum - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (807, 22817, 1, 0, 'Emerald Sanctum - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (807, 28681, 1, 0, 'Emerald Sanctum - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (807, 23735, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (807, 23736, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (807, 23737, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (807, 23738, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (807, 23766, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (807, 23767, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (807, 23768, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (807, 23769, 1, 0, 'Emerald Sanctum - Sayge\'s Dark Fortune of Resistance');
INSERT INTO `instance_buff_removal` VALUES (532, 22888, 1, 0, 'Lower Karazhan Halls - Rallying Cry');
INSERT INTO `instance_buff_removal` VALUES (532, 16609, 1, 0, 'Lower Karazhan Halls - Warchief\'s blessing');
INSERT INTO `instance_buff_removal` VALUES (532, 24425, 1, 0, 'Lower Karazhan Halls - Spirit of Zandalar');
INSERT INTO `instance_buff_removal` VALUES (532, 26393, 1, 0, 'Lower Karazhan Halls - Elune\'s Blessing');
INSERT INTO `instance_buff_removal` VALUES (532, 15366, 1, 0, 'Lower Karazhan Halls - Songflower Serenade');
INSERT INTO `instance_buff_removal` VALUES (532, 22818, 1, 0, 'Lower Karazhan Halls - Mol\'dar\'s Moxie (15% stam)');
INSERT INTO `instance_buff_removal` VALUES (532, 22820, 1, 0, 'Lower Karazhan Halls - Slip\'kik\'s Savvy (3% spellcrit)');
INSERT INTO `instance_buff_removal` VALUES (532, 22817, 1, 0, 'Lower Karazhan Halls - Fengus\' Ferocity (200 AP)');
INSERT INTO `instance_buff_removal` VALUES (532, 28681, 1, 0, 'Lower Karazhan Halls - Soul Revival (Scourge Invasion Buff)');
INSERT INTO `instance_buff_removal` VALUES (532, 23735, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Strength');
INSERT INTO `instance_buff_removal` VALUES (532, 23736, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Agility');
INSERT INTO `instance_buff_removal` VALUES (532, 23737, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Stamina');
INSERT INTO `instance_buff_removal` VALUES (532, 23738, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Spirit');
INSERT INTO `instance_buff_removal` VALUES (532, 23766, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Intelligence');
INSERT INTO `instance_buff_removal` VALUES (532, 23767, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Armor');
INSERT INTO `instance_buff_removal` VALUES (532, 23768, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Damage');
INSERT INTO `instance_buff_removal` VALUES (532, 23769, 1, 0, 'Lower Karazhan Halls - Sayge\'s Dark Fortune of Resistance');


SET FOREIGN_KEY_CHECKS = 1;
