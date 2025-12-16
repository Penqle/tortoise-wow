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
-- Table structure for player_factionchange_items
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_items`;
CREATE TABLE `player_factionchange_items`  (
  `alliance_id` int(11) NOT NULL,
  `horde_id` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_items
-- ----------------------------
INSERT INTO `player_factionchange_items` VALUES (15196, 15197, 'Privates Tabard / Scouts Tabard');
INSERT INTO `player_factionchange_items` VALUES (18854, 18834, 'Insignia of the Alliance / Insignia of the Horde');
INSERT INTO `player_factionchange_items` VALUES (18856, 18846, 'Insignia of the Alliance / Insignia of the Horde');
INSERT INTO `player_factionchange_items` VALUES (18857, 18849, 'Insignia of the Alliance / Insignia of the Horde');
INSERT INTO `player_factionchange_items` VALUES (18858, 18852, 'Insignia of the Alliance / Insignia of the Horde');
INSERT INTO `player_factionchange_items` VALUES (18859, 18850, 'Insignia of the Alliance / Insignia of the Horde');
INSERT INTO `player_factionchange_items` VALUES (18862, 18851, 'Insignia of the Alliance / Insignia of the Horde');
INSERT INTO `player_factionchange_items` VALUES (18863, 18853, 'Insignia of the Alliance / Insignia of the Horde');
INSERT INTO `player_factionchange_items` VALUES (19032, 19031, 'Stormpike Battle Tabard / Frostwolf Battle Tabard');
INSERT INTO `player_factionchange_items` VALUES (19506, 19505, 'Silverwing Battle Tabard / Warsong Battle Tabard');
INSERT INTO `player_factionchange_items` VALUES (20132, 20131, 'Arathor Battle Tabard / Battle Tabard of the Defilers');
INSERT INTO `player_factionchange_items` VALUES (23278, 22843, 'Knight-Lieutenants Chain Greaves / Blood Guards Chain Greaves');
INSERT INTO `player_factionchange_items` VALUES (23279, 22862, 'Knight-Lieutenants Chain Vices / Blood Guards Chain Vices');
INSERT INTO `player_factionchange_items` VALUES (23280, 22863, 'Knight-Lieutenants Dragonhide Grips / Blood Guards Dragonhide Grips');
INSERT INTO `player_factionchange_items` VALUES (23281, 22852, 'Knight-Lieutenants Dragonhide Treads / Blood Guards Dragonhide Treads');
INSERT INTO `player_factionchange_items` VALUES (23282, 22865, 'Knight-Lieutenants Dreadweave Handwraps / Blood Guards Dreadweave Handwraps');
INSERT INTO `player_factionchange_items` VALUES (23283, 22855, 'Knight-Lieutenants Dreadweave Walkers / Blood Guards Dreadweave Walkers');
INSERT INTO `player_factionchange_items` VALUES (23284, 22864, 'Knight-Lieutenants Leather Grips / Blood Guards Leather Grips');
INSERT INTO `player_factionchange_items` VALUES (23285, 22856, 'Knight-Lieutenants Leather Walkers / Blood Guards Leather Walkers');
INSERT INTO `player_factionchange_items` VALUES (23286, 22868, 'Knight-Lieutenants Plate Gauntlets / Blood Guards Plate Gauntlets');
INSERT INTO `player_factionchange_items` VALUES (23287, 22858, 'Knight-Lieutenants Plate Greaves / Blood Guards Plate Greaves');
INSERT INTO `player_factionchange_items` VALUES (23288, 22869, 'Knight-Lieutenants Satin Handwraps / Blood Guards Satin Handwraps');
INSERT INTO `player_factionchange_items` VALUES (23289, 22859, 'Knight-Lieutenants Satin Walkers / Blood Guards Satin Walkers');
INSERT INTO `player_factionchange_items` VALUES (23290, 22870, 'Knight-Lieutenants Silk Handwraps / Blood Guards Silk Handwraps');
INSERT INTO `player_factionchange_items` VALUES (23291, 22860, 'Knight-Lieutenants Silk Walkers / Blood Guards Silk Walkers');
INSERT INTO `player_factionchange_items` VALUES (23292, 22874, 'Knight-Captains Chain Hauberk / Legionnaires Chain Hauberk');
INSERT INTO `player_factionchange_items` VALUES (23293, 22875, 'Knight-Captains Chain Legguards / Legionnaires Chain Legguards');
INSERT INTO `player_factionchange_items` VALUES (23294, 22877, 'Knight-Captains Dragonhide Chestpiece / Legionnaires Dragonhide Chestpiece');
INSERT INTO `player_factionchange_items` VALUES (23295, 22878, 'Knight-Captains Dragonhide Leggings / Legionnaires Dragonhide Leggings');
INSERT INTO `player_factionchange_items` VALUES (23296, 22881, 'Knight-Captains Dreadweave Legguards / Legionnaires Dreadweave Legguards');
INSERT INTO `player_factionchange_items` VALUES (23297, 22884, 'Knight-Captains Dreadweave Tunic / Legionnaires Dreadweave Tunic');
INSERT INTO `player_factionchange_items` VALUES (23298, 22879, 'Knight-Captains Leather Chestpiece / Legionnaires Leather Chestpiece');
INSERT INTO `player_factionchange_items` VALUES (23299, 22880, 'Knight-Captains Leather Legguards / Legionnaires Leather Legguards');
INSERT INTO `player_factionchange_items` VALUES (23300, 22872, 'Knight-Captains Plate Hauberk / Legionnaires Plate Hauberk');
INSERT INTO `player_factionchange_items` VALUES (23301, 22873, 'Knight-Captains Plate Leggings / Legionnaires Plate Leggings');
INSERT INTO `player_factionchange_items` VALUES (23302, 22882, 'Knight-Captains Satin Legguards / Legionnaires Satin Legguards');
INSERT INTO `player_factionchange_items` VALUES (23303, 22885, 'Knight-Captains Satin Tunic / Legionnaires Satin Tunic');
INSERT INTO `player_factionchange_items` VALUES (23304, 22883, 'Knight-Captains Silk Legguards / Legionnaires Silk Legguards');
INSERT INTO `player_factionchange_items` VALUES (23305, 22886, 'Knight-Captains Silk Tunic / Legionnaires Silk Tunic');
INSERT INTO `player_factionchange_items` VALUES (23306, 23251, 'Lieutenant Commanders Chain Helm / Champions Chain Helm');
INSERT INTO `player_factionchange_items` VALUES (23307, 23252, 'Lieutenant Commanders Chain Shoulders / Champions Chain Shoulders');
INSERT INTO `player_factionchange_items` VALUES (23308, 23253, 'Lieutenant Commanders Dragonhide Headguard / Champions Dragonhide Headguard');
INSERT INTO `player_factionchange_items` VALUES (23309, 23254, 'Lieutenant Commanders Dragonhide Shoulders / Champions Dragonhide Shoulders');
INSERT INTO `player_factionchange_items` VALUES (23310, 23255, 'Lieutenant Commanders Dreadweave Cowl / Champions Dreadweave Cowl');
INSERT INTO `player_factionchange_items` VALUES (23311, 23256, 'Lieutenant Commanders Dreadweave Spaulders / Champions Dreadweave Spaulders');
INSERT INTO `player_factionchange_items` VALUES (23312, 23257, 'Lieutenant Commanders Leather Helm / Champions Leather Helm');
INSERT INTO `player_factionchange_items` VALUES (23313, 23258, 'Lieutenant Commanders Leather Shoulders / Champions Leather Shoulders');
INSERT INTO `player_factionchange_items` VALUES (23314, 23244, 'Lieutenant Commanders Plate Helm / Champions Plate Helm');
INSERT INTO `player_factionchange_items` VALUES (23315, 23243, 'Lieutenant Commanders Plate Shoulders / Champions Plate Shoulders');
INSERT INTO `player_factionchange_items` VALUES (23316, 23261, 'Lieutenant Commanders Satin Hood / Champions Satin Hood');
INSERT INTO `player_factionchange_items` VALUES (23317, 23262, 'Lieutenant Commanders Satin Mantle / Champions Satin Mantle');
INSERT INTO `player_factionchange_items` VALUES (23318, 23263, 'Lieutenant Commanders Silk Cowl / Champions Silk Cowl');
INSERT INTO `player_factionchange_items` VALUES (23319, 23264, 'Lieutenant Commanders Silk Mantle / Champions Silk Mantle');
INSERT INTO `player_factionchange_items` VALUES (16440, 16540, 'Marshals Silk Gloves / Generals Silk Handguards');
INSERT INTO `player_factionchange_items` VALUES (2254, 4964, 'Icepane Warhammer / Goblin Smasher');
INSERT INTO `player_factionchange_items` VALUES (16441, 16533, 'Field Marshals Coronet / Warlords Silk Cowl');
INSERT INTO `player_factionchange_items` VALUES (18864, 18472, 'Ajout automatique');
INSERT INTO `player_factionchange_items` VALUES (16443, 16535, 'Field Marshals Silk Vestments / Warlords Silk Raiment');
INSERT INTO `player_factionchange_items` VALUES (16444, 16536, 'Field Marshals Silk Spaulders / Warlords Silk Amice');
INSERT INTO `player_factionchange_items` VALUES (16451, 16550, 'Field Marshals Dragonhide Helmet / Warlords Dragonhide Helmet');
INSERT INTO `player_factionchange_items` VALUES (16452, 16549, 'Field Marshals Dragonhide Breastplate / Warlords Dragonhide Hauberk');
INSERT INTO `player_factionchange_items` VALUES (16453, 16563, 'Field Marshals Leather Chestpiece / Warlords Leather Breastplate');
INSERT INTO `player_factionchange_items` VALUES (16455, 16561, 'Field Marshals Leather Mask / Warlords Leather Helm');
INSERT INTO `player_factionchange_items` VALUES (16457, 16562, 'Field Marshals Leather Epaulets / Warlords Leather Spaulders');
INSERT INTO `player_factionchange_items` VALUES (16477, 16541, 'Field Marshals Plate Armor / Warlords Plate Armor');
INSERT INTO `player_factionchange_items` VALUES (16478, 16542, 'Field Marshals Plate Helm / Warlords Plate Headpiece');
INSERT INTO `player_factionchange_items` VALUES (16480, 16544, 'Field Marshals Plate Shoulderguards / Warlords Plate Shoulders');
INSERT INTO `player_factionchange_items` VALUES (17578, 17591, 'Field Marshals Coronal / Warlords Dreadweave Hood');
INSERT INTO `player_factionchange_items` VALUES (17580, 17590, 'Field Marshals Dreadweave Shoulders / Warlords Dreadweave Mantle');
INSERT INTO `player_factionchange_items` VALUES (17581, 17592, 'Field Marshals Dreadweave Robe / Warlords Dreadweave Robe');
INSERT INTO `player_factionchange_items` VALUES (17602, 17623, 'Field Marshals Headdress / Warlords Satin Cowl');
INSERT INTO `player_factionchange_items` VALUES (17604, 17622, 'Field Marshals Satin Mantle / Warlords Satin Mantle');
INSERT INTO `player_factionchange_items` VALUES (17605, 17624, 'Field Marshals Satin Vestments / Warlords Satin Robes');
INSERT INTO `player_factionchange_items` VALUES (18825, 18826, 'Grand Marshals Aegis / High Warlords Shield Wall');
INSERT INTO `player_factionchange_items` VALUES (18827, 18828, 'Grand Marshals Handaxe / High Warlords Cleaver');
INSERT INTO `player_factionchange_items` VALUES (18830, 18831, 'Grand Marshals Sunderer / High Warlords Battle Axe');
INSERT INTO `player_factionchange_items` VALUES (18833, 18835, 'Grand Marshals Bullseye / High Warlords Recurve');
INSERT INTO `player_factionchange_items` VALUES (18838, 18840, 'Grand Marshals Dirk / High Warlords Razor');
INSERT INTO `player_factionchange_items` VALUES (18843, 18844, 'Grand Marshals Right Hand Blade / High Warlords Right Claw');
INSERT INTO `player_factionchange_items` VALUES (18847, 18848, 'Grand Marshals Left Hand Blade / High Warlords Left Claw');
INSERT INTO `player_factionchange_items` VALUES (18855, 18860, 'Grand Marshals Hand Cannon / High Warlords Street Sweeper');
INSERT INTO `player_factionchange_items` VALUES (18865, 18866, 'Grand Marshals Punisher / High Warlords Bludgeon');
INSERT INTO `player_factionchange_items` VALUES (18867, 18868, 'Grand Marshals Battle Hammer / High Warlords Pulverizer');
INSERT INTO `player_factionchange_items` VALUES (18869, 18871, 'Grand Marshals Glaive / High Warlords Pig Sticker');
INSERT INTO `player_factionchange_items` VALUES (18873, 18874, 'Grand Marshals Stave / High Warlords War Staff');
INSERT INTO `player_factionchange_items` VALUES (18876, 18877, 'Grand Marshals Claymore / High Warlords Greatsword');
INSERT INTO `player_factionchange_items` VALUES (23451, 23466, 'Grand Marshals Mageblade / High Warlords Spellblade');
INSERT INTO `player_factionchange_items` VALUES (23452, 23468, 'Grand Marshals Tome of Power / High Warlords Tome of Destruction');
INSERT INTO `player_factionchange_items` VALUES (23453, 23469, 'Grand Marshals Tome of Restoration / High Warlords Tome of Mending');
INSERT INTO `player_factionchange_items` VALUES (23454, 23464, 'Grand Marshals Warhammer / High Warlords Battle Mace');
INSERT INTO `player_factionchange_items` VALUES (23455, 23465, 'Grand Marshals Demolisher / High Warlords Destroyer');
INSERT INTO `player_factionchange_items` VALUES (16413, 16491, 'Knight-Captains Silk Raiment / Legionnaires Silk Robes');
INSERT INTO `player_factionchange_items` VALUES (16414, 16490, 'Knight-Captains Silk Leggings / Legionnaires Silk Pants');
INSERT INTO `player_factionchange_items` VALUES (16415, 16492, 'Lieutenant Commanders Silk Spaulders / Champions Silk Shoulderpads');
INSERT INTO `player_factionchange_items` VALUES (16416, 16489, 'Lieutenant Commanders Crown / Champions Silk Hood');
INSERT INTO `player_factionchange_items` VALUES (16417, 16505, 'Knight-Captains Leather Armor / Legionnaires Leather Hauberk');
INSERT INTO `player_factionchange_items` VALUES (16418, 16506, 'Lieutenant Commanders Leather Veil / Champions Leather Headguard');
INSERT INTO `player_factionchange_items` VALUES (16419, 16508, 'Knight-Captains Leather Legguards / Legionnaires Leather Leggings');
INSERT INTO `player_factionchange_items` VALUES (16420, 16507, 'Lieutenant Commanders Leather Spaulders / Champions Leather Mantle');
INSERT INTO `player_factionchange_items` VALUES (16421, 16504, 'Knight-Captains Dragonhide Tunic / Legionnaires Dragonhide Breastplate');
INSERT INTO `player_factionchange_items` VALUES (16423, 16501, 'Lieutenant Commanders Dragonhide Epaulets / Champions Dragonhide Spaulders');
INSERT INTO `player_factionchange_items` VALUES (16424, 16503, 'Lieutenant Commanders Dragonhide Shroud / Champions Dragonhide Helm');
INSERT INTO `player_factionchange_items` VALUES (16425, 16525, 'Knight-Captains Chain Hauberk / Legionnaires Chain Breastplate');
INSERT INTO `player_factionchange_items` VALUES (16426, 16527, 'Knight-Captains Chain Leggings / Legionnaires Chain Leggings');
INSERT INTO `player_factionchange_items` VALUES (16427, 16528, 'Lieutenant Commanders Chain Pauldrons / Champions Chain Pauldrons');
INSERT INTO `player_factionchange_items` VALUES (16428, 16526, 'Lieutenant Commanders Chain Helmet / Champions Chain Headguard');
INSERT INTO `player_factionchange_items` VALUES (16429, 16514, 'Lieutenant Commanders Plate Helm / Champions Plate Headguard');
INSERT INTO `player_factionchange_items` VALUES (16430, 16513, 'Knight-Captains Plate Chestguard / Legionnaires Plate Armor');
INSERT INTO `player_factionchange_items` VALUES (16431, 16515, 'Knight-Captains Plate Leggings / Legionnaires Plate Legguards');
INSERT INTO `player_factionchange_items` VALUES (16432, 16516, 'Lieutenant Commanders Plate Pauldrons / Champions Plate Pauldrons');
INSERT INTO `player_factionchange_items` VALUES (17566, 17570, 'Lieutenant Commanders Headguard / Champions Dreadweave Hood');
INSERT INTO `player_factionchange_items` VALUES (17568, 17572, 'Knight-Captains Dreadweave Robe / Legionnaires Dreadweave Robe');
INSERT INTO `player_factionchange_items` VALUES (17569, 17573, 'Lieutenant Commanders Dreadweave Mantle / Champions Dreadweave Shoulders');
INSERT INTO `player_factionchange_items` VALUES (17598, 17610, 'Lieutenant Commanders Diadem / Champions Satin Cowl');
INSERT INTO `player_factionchange_items` VALUES (17599, 17611, 'Knight-Captains Satin Leggings / Legionnaires Satin Trousers');
INSERT INTO `player_factionchange_items` VALUES (17600, 17612, 'Knight-Captains Satin Robes / Legionnaires Satin Vestments');
INSERT INTO `player_factionchange_items` VALUES (17601, 17613, 'Lieutenant Commanders Satin Amice / Champions Satin Shoulderpads');
INSERT INTO `player_factionchange_items` VALUES (16442, 16534, 'Marshals Silk Leggings / Generals Silk Trousers');
INSERT INTO `player_factionchange_items` VALUES (16446, 16558, 'Marshals Leather Footguards / Generals Leather Treads');
INSERT INTO `player_factionchange_items` VALUES (16448, 16555, 'Marshals Dragonhide Gauntlets / Generals Dragonhide Gloves');
INSERT INTO `player_factionchange_items` VALUES (16454, 16560, 'Marshals Leather Handgrips / Generals Leather Mitts');
INSERT INTO `player_factionchange_items` VALUES (16467, 16567, 'Marshals Chain Legguards / Generals Chain Legguards');
INSERT INTO `player_factionchange_items` VALUES (16479, 16543, 'Marshals Plate Legguards / Generals Plate Leggings');
INSERT INTO `player_factionchange_items` VALUES (16483, 16545, 'Marshals Plate Boots / Generals Plate Boots');
INSERT INTO `player_factionchange_items` VALUES (16484, 16548, 'Marshals Plate Gauntlets / Generals Plate Gauntlets');
INSERT INTO `player_factionchange_items` VALUES (18456, 16486, 'Sergeant Majors Silk Cuffs / First Sergeants Silk Cuffs');
INSERT INTO `player_factionchange_items` VALUES (18452, 16497, 'Sergeant Majors Leather Armsplints / First Sergeants Leather Armguards');
INSERT INTO `player_factionchange_items` VALUES (17579, 17593, 'Marshals Dreadweave Leggings / Generals Dreadweave Pants');
INSERT INTO `player_factionchange_items` VALUES (17584, 17588, 'Marshals Dreadweave Gloves / Generals Dreadweave Gloves');
INSERT INTO `player_factionchange_items` VALUES (17603, 17625, 'Marshals Satin Pants / Generals Satin Leggings');
INSERT INTO `player_factionchange_items` VALUES (17608, 17620, 'Marshals Satin Gloves / Generals Satin Gloves');
INSERT INTO `player_factionchange_items` VALUES (18454, 18434, 'Sergeant Majors Dragonhide Armsplints / First Sergeants Dragonhide Armguards');
INSERT INTO `player_factionchange_items` VALUES (18453, 18435, 'Sergeant Majors Leather Armsplints / First Sergeants Leather Armguards');
INSERT INTO `player_factionchange_items` VALUES (18455, 18436, 'Sergeant Majors Dragonhide Armsplints / First Sergeants Dragonhide Armguards');
INSERT INTO `player_factionchange_items` VALUES (18457, 18437, 'Sergeant Majors Silk Cuffs / First Sergeants Silk Cuffs');
INSERT INTO `player_factionchange_items` VALUES (16369, 16485, 'Knight-Lieutenants Silk Boots / Blood Guards Silk Footwraps');
INSERT INTO `player_factionchange_items` VALUES (16391, 16487, 'Knight-Lieutenants Silk Gloves / Blood Guards Silk Gloves');
INSERT INTO `player_factionchange_items` VALUES (16392, 16498, 'Knight-Lieutenants Leather Boots / Blood Guards Leather Treads');
INSERT INTO `player_factionchange_items` VALUES (16396, 16499, 'Knight-Lieutenants Leather Gauntlets / Blood Guards Leather Vices');
INSERT INTO `player_factionchange_items` VALUES (16397, 16496, 'Knight-Lieutenants Dragonhide Gloves / Blood Guards Dragonhide Gauntlets');
INSERT INTO `player_factionchange_items` VALUES (16401, 16531, 'Knight-Lieutenants Chain Boots / Blood Guards Chain Boots');
INSERT INTO `player_factionchange_items` VALUES (16403, 16530, 'Knight-Lieutenants Chain Gauntlets / Blood Guards Chain Gauntlets');
INSERT INTO `player_factionchange_items` VALUES (16405, 16509, 'Knight-Lieutenants Plate Boots / Blood Guards Plate Boots');
INSERT INTO `player_factionchange_items` VALUES (16406, 16510, 'Knight-Lieutenants Plate Gauntlets / Blood Guards Plate Gloves');
INSERT INTO `player_factionchange_items` VALUES (17594, 17616, 'Knight-Lieutenants Satin Boots / Blood Guards Satin Boots');
INSERT INTO `player_factionchange_items` VALUES (17596, 17617, 'Knight-Lieutenants Satin Gloves / Blood Guards Satin Gloves');
INSERT INTO `player_factionchange_items` VALUES (12584, 16345, 'Grand Marshals Longsword / High Warlords Blade');
INSERT INTO `player_factionchange_items` VALUES (18442, 15200, 'Master Sergeants Insignia / Senior Sergeants Insignia');
INSERT INTO `player_factionchange_items` VALUES (18443, 16335, 'Master Sergeants Insignia / Senior Sergeants Insignia');
INSERT INTO `player_factionchange_items` VALUES (18444, 18428, 'Master Sergeants Insignia / Senior Sergeants Insignia');
INSERT INTO `player_factionchange_items` VALUES (18441, 16341, 'Sergeants Cape / Sergeants Cloak');
INSERT INTO `player_factionchange_items` VALUES (16342, 18461, 'Sergeants Cape / Sergeants Cloak');
INSERT INTO `player_factionchange_items` VALUES (18440, 18427, 'Sergeants Cape / Sergeants Cloak');
INSERT INTO `player_factionchange_items` VALUES (5656, 13331, 'Brown Horse Bridle / Red Skeletal Horse');
INSERT INTO `player_factionchange_items` VALUES (18606, 18607, 'Alliance Battle Standard / Horde Battle Standard');
INSERT INTO `player_factionchange_items` VALUES (16459, 16554, 'Marshals Dragonhide Boots / Generals Dragonhide Boots');
INSERT INTO `player_factionchange_items` VALUES (16450, 16552, 'Marshals Dragonhide Legguards / Generals Dragonhide Leggings');
INSERT INTO `player_factionchange_items` VALUES (20127, 20211, 'Highlanders Plate Greaves / Defilers Plate Greaves');
INSERT INTO `player_factionchange_items` VALUES (20126, 20207, 'Highlanders Plate Girdle / Defilers Plate Girdle');
INSERT INTO `player_factionchange_items` VALUES (20125, 20206, 'Highlanders Plate Girdle / Defilers Plate Girdle');
INSERT INTO `player_factionchange_items` VALUES (20124, 20205, 'Highlanders Plate Girdle / Defilers Plate Girdle');
INSERT INTO `player_factionchange_items` VALUES (20117, 20191, 'Highlanders Leather Girdle / Defilers Leather Girdle');
INSERT INTO `player_factionchange_items` VALUES (20116, 20192, 'Highlanders Leather Girdle / Defilers Leather Girdle');
INSERT INTO `player_factionchange_items` VALUES (20115, 20193, 'Highlanders Leather Girdle / Defilers Leather Girdle');
INSERT INTO `player_factionchange_items` VALUES (20114, 20188, 'Highlanders Leather Boots / Defilers Leather Boots');
INSERT INTO `player_factionchange_items` VALUES (20113, 20187, 'Highlanders Leather Boots / Defilers Leather Boots');
INSERT INTO `player_factionchange_items` VALUES (20112, 20189, 'Highlanders Leather Boots / Defilers Leather Boots');
INSERT INTO `player_factionchange_items` VALUES (20105, 20172, 'Highlanders Lizardhide Girdle / Defilers Lizardhide Girdle');
INSERT INTO `player_factionchange_items` VALUES (20104, 20173, 'Highlanders Lizardhide Girdle / Defilers Lizardhide Girdle');
INSERT INTO `player_factionchange_items` VALUES (20103, 20174, 'Highlanders Lizardhide Girdle / Defilers Lizardhide Girdle');
INSERT INTO `player_factionchange_items` VALUES (20102, 20169, 'Highlanders Lizardhide Boots / Defilers Lizardhide Boots');
INSERT INTO `player_factionchange_items` VALUES (20101, 20168, 'Highlanders Lizardhide Boots / Defilers Lizardhide Boots');
INSERT INTO `player_factionchange_items` VALUES (20100, 20170, 'Highlanders Lizardhide Boots / Defilers Lizardhide Boots');
INSERT INTO `player_factionchange_items` VALUES (20099, 20164, 'Highlanders Cloth Girdle / Defilers Cloth Girdle');
INSERT INTO `player_factionchange_items` VALUES (20098, 20166, 'Highlanders Cloth Girdle / Defilers Cloth Girdle');
INSERT INTO `player_factionchange_items` VALUES (20097, 20165, 'Highlanders Cloth Girdle / Defilers Cloth Girdle');
INSERT INTO `player_factionchange_items` VALUES (20096, 20162, 'Highlanders Cloth Boots / Defilers Cloth Boots');
INSERT INTO `player_factionchange_items` VALUES (20095, 20161, 'Highlanders Cloth Boots / Defilers Cloth Boots');
INSERT INTO `player_factionchange_items` VALUES (20094, 20160, 'Highlanders Cloth Boots / Defilers Cloth Boots');
INSERT INTO `player_factionchange_items` VALUES (20093, 20157, 'Highlanders Chain Greaves / Defilers Chain Greaves');
INSERT INTO `player_factionchange_items` VALUES (20092, 20156, 'Highlanders Chain Greaves / Defilers Chain Greaves');
INSERT INTO `player_factionchange_items` VALUES (20091, 20155, 'Highlanders Chain Greaves / Defilers Chain Greaves');
INSERT INTO `player_factionchange_items` VALUES (20090, 20152, 'Highlanders Chain Girdle / Defilers Chain Girdle');
INSERT INTO `player_factionchange_items` VALUES (20089, 20153, 'Highlanders Chain Girdle / Defilers Chain Girdle');
INSERT INTO `player_factionchange_items` VALUES (20088, 20151, 'Highlanders Chain Girdle / Defilers Chain Girdle');
INSERT INTO `player_factionchange_items` VALUES (20073, 20068, 'Cloak of the Honor Guard / Deathguards Cloak');
INSERT INTO `player_factionchange_items` VALUES (20071, 20072, 'Talisman of Arathor / Defilers Talisman');
INSERT INTO `player_factionchange_items` VALUES (20070, 20214, 'Sageclaw / Mindfang');
INSERT INTO `player_factionchange_items` VALUES (20069, 20220, 'Ironbark Staff / Ironbark Staff');
INSERT INTO `player_factionchange_items` VALUES (20061, 20176, 'Highlanders Epaulets / Defilers Epaulets');
INSERT INTO `player_factionchange_items` VALUES (20060, 20175, 'Highlanders Lizardhide Shoulders / Defilers Lizardhide Shoulders');
INSERT INTO `player_factionchange_items` VALUES (20059, 20194, 'Highlanders Leather Shoulders / Defilers Leather Shoulders');
INSERT INTO `player_factionchange_items` VALUES (20057, 20212, 'Highlanders Plate Spaulders / Defilers Plate Spaulders');
INSERT INTO `player_factionchange_items` VALUES (20055, 20158, 'Highlanders Chain Pauldrons / Defilers Chain Pauldrons');
INSERT INTO `player_factionchange_items` VALUES (20054, 20159, 'Highlanders Cloth Boots / Defilers Cloth Boots');
INSERT INTO `player_factionchange_items` VALUES (20053, 20167, 'Highlanders Lizardhide Boots / Defilers Lizardhide Boots');
INSERT INTO `player_factionchange_items` VALUES (20052, 20186, 'Highlanders Leather Boots / Defilers Leather Boots');
INSERT INTO `player_factionchange_items` VALUES (20050, 20154, 'Highlanders Chain Greaves / Defilers Chain Greaves');
INSERT INTO `player_factionchange_items` VALUES (20048, 20208, 'Highlanders Plate Greaves / Defilers Plate Greaves');
INSERT INTO `player_factionchange_items` VALUES (23456, 23467, 'Grand Marshals Swiftblade / High Warlords Quickblade');
INSERT INTO `player_factionchange_items` VALUES (18836, 18837, 'Grand Marshals Repeater / High Warlords Crossbow');
INSERT INTO `player_factionchange_items` VALUES (20041, 20204, 'Highlanders Plate Girdle / Defilers Plate Girdle');
INSERT INTO `player_factionchange_items` VALUES (17607, 17618, 'Marshals Satin Sandals / Generals Satin Boots');
INSERT INTO `player_factionchange_items` VALUES (17583, 17586, 'Marshals Dreadweave Boots / Generals Dreadweave Boots');
INSERT INTO `player_factionchange_items` VALUES (20043, 20150, 'Highlanders Chain Girdle / Defilers Chain Girdle');
INSERT INTO `player_factionchange_items` VALUES (20045, 20190, 'Highlanders Leather Girdle / Defilers Leather Girdle');
INSERT INTO `player_factionchange_items` VALUES (20046, 20171, 'Highlanders Lizardhide Girdle / Defilers Lizardhide Girdle');
INSERT INTO `player_factionchange_items` VALUES (20047, 20163, 'Highlanders Cloth Girdle / Defilers Cloth Girdle');
INSERT INTO `player_factionchange_items` VALUES (16468, 16568, 'Field Marshals Chain Spaulders / Warlords Chain Shoulders');
INSERT INTO `player_factionchange_items` VALUES (16466, 16565, 'Field Marshals Chain Breastplate / Warlords Chain Chestpiece');
INSERT INTO `player_factionchange_items` VALUES (16465, 16566, 'Field Marshals Chain Helm / Warlords Chain Helmet');
INSERT INTO `player_factionchange_items` VALUES (16463, 16571, 'Marshals Chain Grips / Generals Chain Gloves');
INSERT INTO `player_factionchange_items` VALUES (16462, 16569, 'Marshals Chain Boots / Generals Chain Boots');
INSERT INTO `player_factionchange_items` VALUES (16456, 16564, 'Marshals Leather Leggings / Generals Leather Legguards');
INSERT INTO `player_factionchange_items` VALUES (16449, 16551, 'Field Marshals Dragonhide Spaulders / Warlords Dragonhide Epaulets');
INSERT INTO `player_factionchange_items` VALUES (16437, 16539, 'Marshals Silk Footwraps / Generals Silk Boots');
INSERT INTO `player_factionchange_items` VALUES (20128, 20209, 'Highlanders Plate Greaves / Defilers Plate Greaves');
INSERT INTO `player_factionchange_items` VALUES (20129, 20210, 'Highlanders Plate Greaves / Defilers Plate Greaves');
INSERT INTO `player_factionchange_items` VALUES (20225, 20222, 'Highlanders Enriched Ration / Defilers Enriched Ration');
INSERT INTO `player_factionchange_items` VALUES (20226, 20223, 'Highlanders Field Ration / Defilers Field Ration');
INSERT INTO `player_factionchange_items` VALUES (20227, 20224, 'Highlanders Iron Ration / Defilers Iron Ration');
INSERT INTO `player_factionchange_items` VALUES (20237, 20232, 'Highlanders Mageweave Bandage / Defilers Mageweave Bandage');
INSERT INTO `player_factionchange_items` VALUES (20243, 20234, 'Highlanders Runecloth Bandage / Defilers Runecloth Bandage');
INSERT INTO `player_factionchange_items` VALUES (20244, 20235, 'Highlanders Silk Bandage / Defilers Silk Bandage');
INSERT INTO `player_factionchange_items` VALUES (21117, 21115, 'Talisman of Arathor / Defilers Talisman');
INSERT INTO `player_factionchange_items` VALUES (21118, 21116, 'Talisman of Arathor / Defilers Talisman');
INSERT INTO `player_factionchange_items` VALUES (21119, 21120, 'Talisman of Arathor / Defilers Talisman');
INSERT INTO `player_factionchange_items` VALUES (17904, 17909, 'Stormpike Insignia Rank 6 / Frostwolf Insignia Rank 6');
INSERT INTO `player_factionchange_items` VALUES (19045, 19046, 'Stormpike Battle Standard / Frostwolf Battle Standard');
INSERT INTO `player_factionchange_items` VALUES (19086, 19085, 'Stormpike Sages Cloak / Frostwolf Advisors Cloak');
INSERT INTO `player_factionchange_items` VALUES (19094, 19090, 'Stormpike Cloth Girdle / Frostwolf Cloth Belt');
INSERT INTO `player_factionchange_items` VALUES (17902, 17907, 'Stormpike Insignia Rank 4 / Frostwolf Insignia Rank 4');
INSERT INTO `player_factionchange_items` VALUES (17903, 17908, 'Stormpike Insignia Rank 5 / Frostwolf Insignia Rank 5');
INSERT INTO `player_factionchange_items` VALUES (19093, 19089, 'Stormpike Leather Girdle / Frostwolf Leather Belt');
INSERT INTO `player_factionchange_items` VALUES (19092, 19088, 'Stormpike Mail Girdle / Frostwolf Mail Belt');
INSERT INTO `player_factionchange_items` VALUES (19091, 19087, 'Stormpike Plate Girdle / Frostwolf Plate Belt');
INSERT INTO `player_factionchange_items` VALUES (19098, 19096, 'Stormpike Sages Pendant / Frostwolf Advisors Pendant');
INSERT INTO `player_factionchange_items` VALUES (19084, 19083, 'Stormpike Soldiers Cloak / Frostwolf Legionnaires Cloak');
INSERT INTO `player_factionchange_items` VALUES (17691, 17690, 'Stormpike Insignia Rank 1 / Frostwolf Insignia Rank 1');
INSERT INTO `player_factionchange_items` VALUES (17900, 17905, 'Stormpike Insignia Rank 2 / Frostwolf Insignia Rank 2');
INSERT INTO `player_factionchange_items` VALUES (17901, 17906, 'Stormpike Insignia Rank 3 / Frostwolf Insignia Rank 3');
INSERT INTO `player_factionchange_items` VALUES (19097, 19095, 'Stormpike Soldiers Pendant / Frostwolf Legionnaires Pendant');
INSERT INTO `player_factionchange_items` VALUES (17353, 17442, 'Stormpike Assault Orders / Frostwolf Assault Orders');
INSERT INTO `player_factionchange_items` VALUES (17849, 17850, 'Stormpike Banner / Frostwolf Banner');
INSERT INTO `player_factionchange_items` VALUES (17504, 17328, 'Frostwolf Commanders Medal / Stormpike Commanders Flesh');
INSERT INTO `player_factionchange_items` VALUES (17503, 17327, 'Frostwolf Lieutenants Medal / Stormpike Lieutenants Flesh');
INSERT INTO `player_factionchange_items` VALUES (17689, 17626, 'Stormpike Training Collar / Frostwolf Muzzle');
INSERT INTO `player_factionchange_items` VALUES (17502, 17306, 'Frostwolf Soldiers Medal / Stormpike Soldiers Blood');
INSERT INTO `player_factionchange_items` VALUES (19030, 19029, 'Stormpike Battle Charger / Horn of the Frostwolf Howler');


SET FOREIGN_KEY_CHECKS = 1;
