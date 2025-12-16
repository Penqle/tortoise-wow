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
-- Table structure for spell_scripts
-- ----------------------------
DROP TABLE IF EXISTS `spell_scripts`;
CREATE TABLE `spell_scripts`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `delay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `datalong3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `datalong4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_param1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_param2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data_flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int(11) NOT NULL DEFAULT 0,
  `dataint2` int(11) NOT NULL DEFAULT 0,
  `dataint3` int(11) NOT NULL DEFAULT 0,
  `dataint4` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0,
  `condition_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_scripts
-- ----------------------------
INSERT INTO `spell_scripts` VALUES (20479, 1, 0, 15, 7, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Spell suicide delay 1 sec');
INSERT INTO `spell_scripts` VALUES (24236, 3, 0, 15, 15589, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Whirlwind (Mandokir)');
INSERT INTO `spell_scripts` VALUES (24236, 0, 0, 15, 20548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Root self (dure 3 sec)');
INSERT INTO `spell_scripts` VALUES (18987, 1, 0, 10, 14495, 3600000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1446.8, -3694.27, 76.5966, 0.401503, 0, 'Summon Darrowshire Trigger');
INSERT INTO `spell_scripts` VALUES (9055, 0, 0, 9, 3996126, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn Bolt Charged Bramble pour quÃªte Mage 1948');
INSERT INTO `spell_scripts` VALUES (22563, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1338, -293, 91.1, 0.09, 0, 'Fix TP: ALTERAC HORDE');
INSERT INTO `spell_scripts` VALUES (22564, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 632, -47, 43, 3.66, 0, 'Fix TP: ALTERAC ALLY');
INSERT INTO `spell_scripts` VALUES (11513, 0, 0, 17, 9284, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create object: Full Leaden Collection Phial');
INSERT INTO `spell_scripts` VALUES (15794, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 5612, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Blackhand Dreadweaver: Say Emote Text');
INSERT INTO `spell_scripts` VALUES (15792, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 5614, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Blackhand Veteran: Say Emote Text');
INSERT INTO `spell_scripts` VALUES (24935, 0, 0, 15, 24934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Summon RC Tank');
INSERT INTO `spell_scripts` VALUES (24935, 2, 0, 15, 24936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast RC Tank Control');
INSERT INTO `spell_scripts` VALUES (26532, 0, 0, 15, 26533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Green Helper');
INSERT INTO `spell_scripts` VALUES (26541, 0, 0, 15, 26536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Red Helper');
INSERT INTO `spell_scripts` VALUES (26469, 0, 0, 15, 26045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Snowman');
INSERT INTO `spell_scripts` VALUES (26528, 0, 0, 15, 26529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Reindeer');
INSERT INTO `spell_scripts` VALUES (13819, 0, 0, 15, 31726, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Warhorse - Cast Spell Summon Holy Mount Visual');
INSERT INTO `spell_scripts` VALUES (23214, 0, 0, 15, 31726, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Charger - Cast Spell Summon Holy Mount Visual');
INSERT INTO `spell_scripts` VALUES (5784, 0, 0, 15, 31725, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Felsteed - Cast Spell Summon Nightmare');
INSERT INTO `spell_scripts` VALUES (23161, 0, 0, 15, 31725, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Dreadsteed - Cast Spell Summon Nightmare');
INSERT INTO `spell_scripts` VALUES (29137, 0, 0, 15, 29101, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Cleansing Flames - Create Flame of Stormwind');
INSERT INTO `spell_scripts` VALUES (29135, 0, 0, 15, 29102, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Cleansing Flames - Create Flame of Ironforge');
INSERT INTO `spell_scripts` VALUES (29126, 0, 0, 15, 29099, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Cleansing Flames - Create Flame of Darnassus');
INSERT INTO `spell_scripts` VALUES (29139, 0, 0, 15, 29133, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Cleansing Flames - Create Flame of Undercity');
INSERT INTO `spell_scripts` VALUES (29136, 0, 0, 15, 29130, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Cleansing Flames - Create Flame of Orgrimmar');
INSERT INTO `spell_scripts` VALUES (29138, 0, 0, 15, 29132, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Cleansing Flames - Create Flame of Thunder Bluff');
INSERT INTO `spell_scripts` VALUES (15702, 0, 0, 18, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty Pure Sample Jar - Despawn Creature');
INSERT INTO `spell_scripts` VALUES (29129, 0, 0, 7, 41110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arena Mark of Honor (Winner) - Complete Quest Victory in Blood Ring');


SET FOREIGN_KEY_CHECKS = 1;
