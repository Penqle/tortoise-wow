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
-- Table structure for faction
-- ----------------------------
DROP TABLE IF EXISTS `faction`;
CREATE TABLE `faction`  (
  `id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `reputation_list_id` mediumint(9) NOT NULL DEFAULT 0,
  `base_rep_race_mask1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_race_mask2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_race_mask3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_race_mask4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_class_mask1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_class_mask2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_class_mask3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_class_mask4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `base_rep_value1` mediumint(9) NOT NULL DEFAULT 0,
  `base_rep_value2` mediumint(9) NOT NULL DEFAULT 0,
  `base_rep_value3` mediumint(9) NOT NULL DEFAULT 0,
  `base_rep_value4` mediumint(9) NOT NULL DEFAULT 0,
  `reputation_flags1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reputation_flags2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reputation_flags3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reputation_flags4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `team` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `name1` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name2` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name3` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name4` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name5` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name6` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name7` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name8` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description1` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description2` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description3` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description4` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description5` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description6` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description7` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description8` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction
-- ----------------------------
INSERT INTO `faction` VALUES (1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Human', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Orc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Dwarf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Night Elf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Undead', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Tauren ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (7, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Creature', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Gnome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (9, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Troll', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (14, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Monster', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (15, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Defias Brotherhood', '', '', '', '', '', '', '', 'The Defias Brotherhood is a criminal organization seeking to tear down the Stormwind ruling class and establish a new society through revolution. The Defias are not beyond working with dangerous beings to achieve their goals.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (16, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Riverpaw Gnolls', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (17, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Redridge', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (18, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Shadowhide', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (19, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (20, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Undead', '', '', '', '', '', '', '', 'Undead', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (21, 1, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 0, 0, 0, 0, 169, 'Booty Bay', '', '', '', '', '', '', '', 'This booming coastal city is run by Baron Revilgaz of the Blackwater Raiders.  Mortal enemies of the Bloodsail Buccaneers and part of the Steamwheedle Cartel.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (22, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Spider', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (23, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Boar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (24, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Worgen', '', '', '', '', '', '', '', 'The Worgen are mysterious beings summoned from another dimension. Their intentions and purpose is unknown.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (25, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (26, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Bloodscalp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (27, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Skullsplitter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (28, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (29, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Wolf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (30, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Brotherhood Traitor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (31, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Friendly', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (32, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Trogg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (33, -1, 589, 434, 0, 0, 0, 0, 0, 0, -42000, -6500, 0, 0, 0, 0, 0, 0, 0, 'Frostmane Tribe', '', '', '', '', '', '', '', 'The Frostmane is a tribe of Ice Trolls making a meager living within Dun Morogh at odds with the Dwarven and Gnomish inhabitants of the region.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (34, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc, Blackrock', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (35, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Villian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (36, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Victim', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (37, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Bear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (38, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Ogre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (39, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen\'s Mercenaries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (40, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escortee', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (41, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Company', '', '', '', '', '', '', '', 'The Venture Company is a Goblin-run cutthroat organization that seeks to attain profit at any cost. The Venture Company will employ anyone they find useful and treat it\'s workers fairly in order to gain the greatest profit possible.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (42, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Raptor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (43, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Basilisk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (44, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Trash', '', '', '', '', '', '', '', 'Ass', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (45, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Ones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (46, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Armorsmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (47, 20, 585, 434, 4, 0, 0, 0, 0, 0, 3100, -42000, 4000, 0, 17, 2, 17, 0, 469, 'Ironforge', '', '', '', '', '', '', '', 'This Alliance capital is the pride of the Dun Morogh dwarves.  Home to King Magni.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (48, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Dwarves', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (49, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Human, Night Watch', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (50, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Rubbish', '', '', '', '', '', '', '', 'Ass', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (51, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Mosshide', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (52, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc, Dragonmaw', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (53, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnome - Leper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (54, 18, 525, 434, 64, 0, 0, 0, 0, 0, 3100, -42000, 4000, 0, 17, 2, 17, 0, 469, 'Gnomeregan Exiles', '', '', '', '', '', '', '', 'The former denizens of Gnomeregan, now living in exile within the Gnomeregan Reclamation Facility in Dun Morogh, trying to reclaim their home.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (55, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Leopard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (56, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 2, 0, 0, 0, 0, 'Scarlet Crusade', '', '', '', '', '', '', '', 'The Scarlet Crusade is a religious organization dedicated to the eradication of the undead. They seldom trust outsiders, believing them to carry the Plague of Undeath.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (57, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Rothide', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (58, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Gorilla', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (59, 4, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Thorium Brotherhood', '', '', '', '', '', '', '', 'The dwarves of the Thorium Brotherhood epitomize excellence in craftsmanship and are bent on unlocking the secrets of Blackrock Mountain.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (60, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Naga', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (61, 60, 589, 434, 0, 0, 0, 0, 0, 0, 3300, -42000, 0, 0, 16, 2, 0, 0, 0, 'Dalaran', '', '', '', '', '', '', '', 'The once mighty magical citystate of Dalaran was destroyed by the Burning Legion. Today its surviving inhabitants struggle to rebuild their home and defend their territories from the Horde and the Scourge.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (62, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forlorn Spirit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (63, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkhowl', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (64, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grell', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (65, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Furbolg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (66, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Affiliates', '', '', '', '', '', '', '', 'Individuals, groups, and settlements affiliated with the Horde.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (67, 12, 434, 589, 0, 0, 0, 0, 0, 0, 3500, -42000, 0, 0, 17, 2, 0, 0, 0, 'Horde', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (68, 17, 418, 589, 16, 0, 0, 0, 0, 0, 500, -42000, 4000, 0, 17, 2, 17, 0, 67, 'Undercity', '', '', '', '', '', '', '', 'Led by Sylvanas Windrunner, the Forsaken have joined a tenuous alliance with the Horde and established this capital in the vast depths under the Ruins of Lordaeron.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (69, 21, 69, 434, 8, 512, 0, 0, 0, 0, 3100, -42000, 4000, 500, 17, 2, 17, 17, 469, 'Darnassus', '', '', '', '', '', '', '', 'The Alliance capital is populated by Night Elves and is located in the island of Teldrassil.  Ruled by the Priestess of the Moon, Tyrande Whisperwind.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (70, 6, 1023, 0, 0, 0, 0, 0, 0, 0, -10000, 0, 0, 0, 2, 0, 0, 0, 0, 'Syndicate', '', '', '', '', '', '', '', 'A primarily human criminal organization that operates mostly out of the Alterac Mountains and Hillsbrad Foothills.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (71, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Militia', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (72, 19, 588, 434, 1, 0, 0, 0, 0, 0, 3100, -42000, 4000, 0, 17, 2, 17, 0, 469, 'Stormwind', '', '', '', '', '', '', '', 'One of the last bastions of human power, this Alliance capital is ruled by the child king, Anduin Wrynn.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (73, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon', '', '', '', '', '', '', '', 'Demon', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (74, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (75, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (76, 14, 416, 589, 2, 16, 0, 0, 0, 0, 3100, -42000, 4000, 500, 17, 2, 17, 17, 67, 'Orgrimmar', '', '', '', '', '', '', '', 'Founded by Thrall, this Horde capital city is home to many of the proud orc clans of Durotar.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (77, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Treasure', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (78, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Mudsnout', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (79, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HIllsbrad, Southshore Mayor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (80, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Brood of Deathwing', '', '', '', '', '', '', '', 'The children of what was once Neltharion, the Earth Warder. The Black Dragonflight only seeks to consume and corrupt the world while serving their insane dark master.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (81, 16, 386, 589, 16, 32, 0, 0, 0, 0, 3100, -42000, 500, 4000, 17, 2, 17, 17, 67, 'Thunder Bluff', '', '', '', '', '', '', '', 'Cairne Bloodhoof leads his people, the Proud Tauren, from this mighty Horde capital.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (82, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Witherbark', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (83, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Leatherworking - Elemental', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (84, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Razormane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (85, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Bristleback', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (86, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Leatherworking - Dragonscale', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (87, 0, 1023, 0, 0, 0, 0, 0, 0, 0, -6500, 0, 0, 0, 2, 0, 0, 0, 0, 'Bloodsail Buccaneers', '', '', '', '', '', '', '', 'These bloodthirsty corsairs are the bane of many a merchant in the high seas.  Sworn enemies of Booty Bay.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (88, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackfathom', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (89, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Makrura', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (90, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Kolkar Clan Centaur', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (91, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -6500, 0, 0, 0, 0, 0, 0, 0, 0, 'Galak Clan Centaur', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (92, 2, 1023, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 0, 2, 0, 0, 0, 0, 'Gelkis Clan Centaur', '', '', '', '', '', '', '', 'These centaur have made their home in the southern region of Desolace.  Mortal enemies of the Magram Centaur.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (93, 3, 1023, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 0, 2, 0, 0, 0, 0, 'Magram Clan Centaur', '', '', '', '', '', '', '', 'These centaur have made their home in the eastern region of Desolace.  Mortal enemies of the Gelkis Centaur.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (94, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Maraudine Clan Centaur', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (108, 56, 589, 434, 0, 0, 0, 0, 0, 0, 3300, -8500, 0, 0, 16, 2, 0, 0, 0, 'Theramore', '', '', '', '', '', '', '', 'Theramore Isle was settled by Jaina Proudmoore and the refugees who fled from Lordaeron and its neighboring kingdoms. Following the Battle at Mount Hyjal, Theramore has maintained cordial ties with the Horde and sought peace. ', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (109, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Razorfen', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (110, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Razormane 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (111, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Deathshead', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (128, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enemy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (148, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambient', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (168, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nethergarde Caravan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (169, 10, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 8, 0, 0, 0, 0, 'Steamwheedle Cartel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (189, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alliance Affiliates', '', '', '', '', '', '', '', 'Individuals, groups, and settlements affiliated with the Alliance.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (209, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nethergarde', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (229, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Caverns', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (249, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Silithid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (269, 57, 77, 434, 512, 0, 0, 0, 0, 0, 2500, -42000, 5500, 0, 17, 2, 17, 0, 469, 'Silvermoon Remnant', '', '', '', '', '', '', '', 'The remaining high elves are reeling from the loss of their homeland and the Sunwell. They have rallied behind the Alliance as their people struggle to survive.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (270, 51, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Zandalar Tribe', '', '', '', '', '', '', '', 'These trolls have come to Yojamba Isle in an effort to recruit help against the resurrected Blood God and his Atal\'ai Priests in Zul\'Gurub.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (289, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Weaponsmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (309, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scorpid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (310, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Bat', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (311, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Titan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (329, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taskmaster Fizzule', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (349, 5, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ravenholdt', '', '', '', '', '', '', '', 'This guild of thieves and assassins welcomes only those of extraordinary prowess into its fold.  Sworn rivals of the Syndicate.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (369, 7, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 0, 0, 0, 0, 169, 'Gadgetzan', '', '', '', '', '', '', '', 'Capital of the Steamwheedle Cartel and home to goblinhood\'s finest engineers, alchemists and merchants.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (389, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnomeregan Bug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (409, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Harpy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (429, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning Blade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (449, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowsilk Poacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (450, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Searing Spider', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (469, 11, 589, 434, 0, 0, 0, 0, 0, 0, 3300, -42000, 0, 0, 9, 14, 0, 0, 0, 'Alliance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (470, 9, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 0, 0, 0, 0, 169, 'Ratchet', '', '', '', '', '', '', '', 'Part of the Steamwheedle Cartel, this goblin city provides a neutral haven for those that wish to trade goods and services in the Barrens.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (471, 8, 585, 434, 4, 0, 0, 0, 0, 0, 150, -42000, 500, 0, 16, 2, 0, 0, 0, 'Wildhammer Clan', '', '', '', '', '', '', '', 'Though not a part of the Alliance, the dwarves of Aerie Peak have opened their doors to it and hold the Horde as enemies.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (489, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Goblin, Dark Iron Bar Patron', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (509, 53, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 891, 'The League of Arathor', '', '', '', '', '', '', '', 'The League of Arathor seeks to reclaim lost land of Arathi Basin for their benefactors in Stormwind.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (510, 52, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 892, 'The Defilers', '', '', '', '', '', '', '', 'The Defilers seek to claim Arathi Basin\'s valuable resources for the Horde.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (511, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Giant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (529, 13, 1023, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent Dawn', '', '', '', '', '', '', '', 'An organization focused on protecting Azeroth from the threat of the Scourge.  Strongholds of the Argent Dawn can be found in the Eastern and Western Plaguelands.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (530, 15, 290, 589, 16, 128, 0, 0, 0, 0, 3100, -42000, 500, 4000, 17, 2, 17, 17, 67, 'Darkspear Trolls', '', '', '', '', '', '', '', 'This tribe of exiled trolls has joined forces with Thrall and the Horde.  They now call Durotar their home, which they share with their orc allies.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (531, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonflight, Bronze', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (532, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -6500, 0, 0, 0, 0, 0, 0, 0, 0, 'Garbage', '', '', '', '', '', '', '', 'Shit', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (549, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Leatherworking - Tribal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (550, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Engineering - Goblin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (551, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Engineering - Gnome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (569, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Hammersmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (570, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Axesmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (571, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Swordsmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (572, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Vilebranch', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (573, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Southsea Freebooters', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (574, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 'Caer Darrow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (575, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Furbolg, Uncorrupted', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (576, 35, 1023, 0, 0, 0, 0, 0, 0, 0, -3500, 0, 0, 0, 2, 0, 0, 0, 0, 'Timbermaw Hold', '', '', '', '', '', '', '', 'As the last uncorrupted furbolg tribe, the Timbermaw seek to preserve their spiritual ways and end the suffering of their brethren.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (577, 28, 1023, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 169, 'Everlook', '', '', '', '', '', '', '', 'This trading post is run by the goblins of the Steamwheedle Cartel and it sits in the crossroads of Winterspring\'s main trade routes.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (589, 27, 434, 589, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Wintersaber Trainers', '', '', '', '', '', '', '', 'This small group of reclusive night elves raises and trains wintersabers in the Winterspring area.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (609, 36, 1023, 40, 0, 0, 479, 1024, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Circle', '', '', '', '', '', '', '', 'The druids of Cenarion Circle are guardians of nature and make their home in tranquil Moonglade.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (629, 37, 1023, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 'Shatterspear Trolls', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (630, 38, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 'Ravasaur Trainers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (649, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Majordomo Executus', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (669, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Carrion Bird', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (670, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Cat', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (671, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Crab', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (672, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Crocilisk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (673, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Hyena', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (674, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Owl', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (675, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Scorpid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (676, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Tallstrider', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (677, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Turtle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (678, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Wind Serpent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (679, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (689, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonflight, Black - Bait', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (709, 25, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 'Battleground Neutral', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (729, 41, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 892, 'Frostwolf Clan', '', '', '', '', '', '', '', 'The Frostwolf Clan seeks to drive out the dwarves of the Stormpike Expedition from Alterac Valley.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (730, 40, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 891, 'Stormpike Guard', '', '', '', '', '', '', '', 'The Stormpike Dwarves have set up residence in Alterac Valley, where they\'re locked in battle with the Frostwolf Orcs.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (749, 42, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hydraxian Waterlords', '', '', '', '', '', '', '', 'These elementals have made their home on the islands east of Azshara.  Sworn enemies of the armies of Ragnaros.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (750, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sulfuron Firelords', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (769, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gizlock\'s Dummy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (770, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gizlock\'s Charm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (771, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gizlock', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (789, 43, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Moro\'gai', '', '', '', '', '', '', '', 'This faction of Draenei from across the Dark portal is trying to make a new home in the Swamps of Sorrow while beset by strife and the madness of their kin.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (790, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit Guide - Alliance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (809, 44, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Shen\'dralar', '', '', '', '', '', '', '', 'A remnant of the once powerful elves living in Dire Maul, yet still wise and knowledgeable about great secrets. ', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (829, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ogre (Captain Kromcrush)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (849, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit Guide - Horde', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (869, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jaedenar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (889, 46, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 892, 'Warsong Outriders', '', '', '', '', '', '', '', 'Fierce orcs of the Warsong Clan, locked in battle against the Silverwing Sentinels in Warsong Gulch.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (890, 45, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 891, 'Silverwing Sentinels', '', '', '', '', '', '', '', 'Staunch defenders of Ashenvale, locked in battle against the Warsong Outriders in Warsong Gulch.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (891, 47, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 24, 2, 0, 0, 0, 'Alliance Forces', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (892, 48, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 24, 2, 0, 0, 0, 'Horde Forces', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (893, 55, 434, 589, 0, 0, 0, 0, 0, 0, 2500, -42000, 0, 0, 16, 2, 0, 0, 67, 'Revantusk Trolls', '', '', '', '', '', '', '', 'The Revantusk Trolls are a tribe of Forest Trolls in the Hinterlands seeking closer ties to the Horde.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (909, 50, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Darkmoon Faire', '', '', '', '', '', '', '', 'A traveling fair that showcases the weird and the extraordinary.  Often spotted in Elwynn Forest and Mulgore.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (910, 54, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Brood of Nozdormu', '', '', '', '', '', '', '', 'The descendants of the Bronze Dragonflight are the guardians of time and care little for the mortal races.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (912, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Might of Kalimdor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (914, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, High Elf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (915, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armies of C\'Thun', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (916, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Silithid Attackers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (917, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ironforge Brigade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (918, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RC Enemies', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (919, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RC Objects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (920, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (921, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blue', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (927, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Goblin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (928, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourge Invaders', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (931, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Test Faction (not a real faction)', '', '', '', '', '', '', '', 'This faction only exists to test the editing of faction names and descriptions...', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (950, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ToWoW - Flag', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (951, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ToWoW - Flag Trigger Alliance (DND)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (954, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ToWoW - Flag Trigger Horde (DND)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1001, 34, 178, 589, 256, 0, 0, 0, 0, 0, 0, -42000, 3500, 0, 17, 2, 17, 0, 67, 'Durotar Labor Union', '', '', '', '', '', '', '', 'The Durotar Labor Union is a group of Goblins that joined the Horde after defecting from the Venture Co. They\'re eager to prove themselves as capable members of the Horde.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1004, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Brotherhood of the Horse', '', '', '', '', '', '', '', 'The Gallant Knights of Azeroth ride into battle upon their armored steeds to prevent the invasion of their homeland.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1005, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sythegore Arm', '', '', '', '', '', '', '', 'Elite raiders of the Blackrock Clan, now unleashed upon Elwynn Forest to see it burn.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1006, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Keepers of Outerend', '', '', '', '', '', '', '', 'These stalwart servants have kept the relic Outerend save for a dozen millenia. With the coming darkness, they now seek to guide mortals to fight for Azeroth.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1007, 29, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Wardens of Time', '', '', '', '', '', '', '', 'This specific group of the Bronze Dragonflight will accept the aid of any mortal that have earned access to the Caverns of Time. Their goal is to undo the mysterious time anomalies that have recently begun to appear across the timeways.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1008, 30, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Steamwheedle Blood Ring', '', '', '', '', '', '', '', 'A grand arena tournament organized by the Steamwheedle Cartel. The strongest fighters are invited to compete in the bloody sands for fame and great rewards provided by the Arena masters of the Cartel', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1009, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Infinite Dragonflight', '', '', '', '', '', '', '', 'Mysterious corrupted Dragons bent on corrupting the timeways.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1011, 32, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 0, 'Kul Tiras', '', '', '', '', '', '', '', 'Kul Tiras is an island chain located in the Great Sea, west of the Eastern Kingdoms, and is home to the human nation of the same name. The navy of Kul Tiras has been aligned with the Alliance since its founding, but has yet to reaffirm these loyalties after the fall of Lordaeron.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1012, 26, 589, 434, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 4, 4, 0, 0, 0, 'Stonemaul Tribe', '', '', '', '', '', '', '', 'The Stonemaul Ogres joined the Horde under the auspices of the Mok\'nathal Rexxar. They have since been welcoming and friendly to the Horde.', '', '', '', '', '', '', '');
INSERT INTO `faction` VALUES (1013, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Fox', '', '', '', '', '', '', '', 'Kon', '', '', '', '', '', '', '');


SET FOREIGN_KEY_CHECKS = 1;
