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
-- Table structure for player_factionchange_quests
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_quests`;
CREATE TABLE `player_factionchange_quests`  (
  `alliance_id` int(11) NOT NULL,
  `horde_id` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_quests
-- ----------------------------
INSERT INTO `player_factionchange_quests` VALUES (26, 27, 'A Lesson to Learn - A Lesson to Learn');
INSERT INTO `player_factionchange_quests` VALUES (29, 28, 'Trial of the Lake - Trial of the Lake');
INSERT INTO `player_factionchange_quests` VALUES (272, 30, 'Trial of the Sea Lion - Trial of the Sea Lion');
INSERT INTO `player_factionchange_quests` VALUES (1860, 1881, 'Speak with Jennea - Speak with Anastasia');
INSERT INTO `player_factionchange_quests` VALUES (1879, 1883, 'Speak with Bink - Speak with Un\'thuwa');
INSERT INTO `player_factionchange_quests` VALUES (1880, 1882, 'Mage-tastic Gizmonitor - The Balnir Farmstead');
INSERT INTO `player_factionchange_quests` VALUES (1919, 1959, 'Report to Jennea - Report to Anastasia');
INSERT INTO `player_factionchange_quests` VALUES (1920, 1960, 'Investigate the Blue Recluse - Investigate the Alchemist Shop');
INSERT INTO `player_factionchange_quests` VALUES (1921, 1961, 'Gathering Materials - Gathering Materials');
INSERT INTO `player_factionchange_quests` VALUES (1938, 1944, 'Ur\'s Treatise on Shadow Magic - Waters of Xavian');
INSERT INTO `player_factionchange_quests` VALUES (1939, 1943, 'High Sorcerer Andromath - Speak with Deino');
INSERT INTO `player_factionchange_quests` VALUES (1940, 1945, 'Pristine Spider Silk - Laughing Sisters');
INSERT INTO `player_factionchange_quests` VALUES (1941, 1962, 'Manaweave Robe - Spellfire Robes');
INSERT INTO `player_factionchange_quests` VALUES (1942, 1946, 'Astral Knot Garment - Nether-lace Garment');
INSERT INTO `player_factionchange_quests` VALUES (1947, 1947, 'Journey to the Marsh - Journey to the Marsh');
INSERT INTO `player_factionchange_quests` VALUES (1949, 1949, 'Hidden Secrets - Hidden Secrets');
INSERT INTO `player_factionchange_quests` VALUES (1950, 1950, 'Get the Scoop - Get the Scoop');
INSERT INTO `player_factionchange_quests` VALUES (1954, 1954, 'The Infernal Orb - The Infernal Orb');
INSERT INTO `player_factionchange_quests` VALUES (1958, 1958, 'Celestial Power - Celestial Power');
INSERT INTO `player_factionchange_quests` VALUES (3104, 3086, 'Glyphic Letter - Glyphic Tablet');
INSERT INTO `player_factionchange_quests` VALUES (3114, 3098, 'Glyphic Memorandum - Glyphic Scroll');
INSERT INTO `player_factionchange_quests` VALUES (3120, 3094, 'Verdant Sigil - Verdant Note');
INSERT INTO `player_factionchange_quests` VALUES (3629, 3526, 'Goblin Engineering - Goblin Engineering');
INSERT INTO `player_factionchange_quests` VALUES (3630, 3635, 'Gnome Engineering - Gnome Engineering');
INSERT INTO `player_factionchange_quests` VALUES (3632, 3635, 'Gnome Engineering - Gnome Engineering');
INSERT INTO `player_factionchange_quests` VALUES (3634, 3637, 'Gnome Engineering - Gnome Engineering');
INSERT INTO `player_factionchange_quests` VALUES (3640, 3642, 'The Pledge of Secrecy - The Pledge of Secrecy');
INSERT INTO `player_factionchange_quests` VALUES (3641, 3643, 'Show Your Work - Show Your Work');
INSERT INTO `player_factionchange_quests` VALUES (4181, 3633, 'Goblin Engineering - Goblin Engineering');
INSERT INTO `player_factionchange_quests` VALUES (4182, 4903, 'Dragonkin Menace - Warlord\'s Command');
INSERT INTO `player_factionchange_quests` VALUES (4183, 4941, 'The True Masters - Eitrigg\'s Wisdom');
INSERT INTO `player_factionchange_quests` VALUES (4242, 4974, 'Abandoned Hope - For The Horde!');
INSERT INTO `player_factionchange_quests` VALUES (4264, 6566, 'A Crumpled Up Note - What the Wind Carries');
INSERT INTO `player_factionchange_quests` VALUES (4282, 6567, 'A Shred of Hope - The Champion of the Horde');
INSERT INTO `player_factionchange_quests` VALUES (4322, 6582, 'Jail Break! - The Test of Skulls, Scryer');
INSERT INTO `player_factionchange_quests` VALUES (5061, 31, 'Aquatic Form - Aquatic Form');
INSERT INTO `player_factionchange_quests` VALUES (5066, 5093, 'A Call to Arms: The Plaguelands! - A Call to Arms: The Plaguelands!');
INSERT INTO `player_factionchange_quests` VALUES (5092, 5096, 'Clear the Way - Scarlet Diversions');
INSERT INTO `player_factionchange_quests` VALUES (5097, 5098, 'All Along the Watchtowers - All Along the Watchtowers');
INSERT INTO `player_factionchange_quests` VALUES (5505, 5511, 'The Key to Scholomance - The Key to Scholomance');
INSERT INTO `player_factionchange_quests` VALUES (5533, 838, 'Scholomance - Scholomance');
INSERT INTO `player_factionchange_quests` VALUES (5537, 964, 'Skeletal Fragments - Skeletal Fragments');
INSERT INTO `player_factionchange_quests` VALUES (5538, 5514, 'Mold Rhymes With... - Mold Rhymes With...');
INSERT INTO `player_factionchange_quests` VALUES (5803, 5804, 'Araj\'s Scarab - Araj\'s Scarab');
INSERT INTO `player_factionchange_quests` VALUES (5921, 5922, 'Moonglade - Moonglade');
INSERT INTO `player_factionchange_quests` VALUES (5923, 5926, 'Heeding the Call - Heeding the Call');
INSERT INTO `player_factionchange_quests` VALUES (5925, 5928, 'Heeding the Call - Heeding the Call');
INSERT INTO `player_factionchange_quests` VALUES (5929, 5930, 'Great Bear Spirit - Great Bear Spirit');
INSERT INTO `player_factionchange_quests` VALUES (5931, 5932, 'Back to Darnassus - Back to Thunder Bluff');
INSERT INTO `player_factionchange_quests` VALUES (6001, 6002, 'Body and Heart - Body and Heart');
INSERT INTO `player_factionchange_quests` VALUES (6028, 6029, 'The Everlook Report - The Everlook Report');
INSERT INTO `player_factionchange_quests` VALUES (6121, 6126, 'Lessons Anew - Lessons Anew');
INSERT INTO `player_factionchange_quests` VALUES (6122, 6127, 'The Principal Source - The Principal Source');
INSERT INTO `player_factionchange_quests` VALUES (6123, 6128, 'Gathering the Cure - Gathering the Cure');
INSERT INTO `player_factionchange_quests` VALUES (6124, 6129, 'Curing the Sick - Curing the Sick');
INSERT INTO `player_factionchange_quests` VALUES (6125, 6130, 'Power over Poison - Power over Poison');
INSERT INTO `player_factionchange_quests` VALUES (6402, 6583, 'Stormwind Rendezvous - The Test of Skulls, Somnus');
INSERT INTO `player_factionchange_quests` VALUES (6403, 6585, 'The Great Masquerade - The Test of Skulls, Axtroz');
INSERT INTO `player_factionchange_quests` VALUES (6501, 6601, 'The Dragon\'s Eye - Ascension...');
INSERT INTO `player_factionchange_quests` VALUES (6502, 6602, 'Drakefire Amulet - Blood of the Black Dragon Champion');
INSERT INTO `player_factionchange_quests` VALUES (8905, 8913, 'An Earnest Proposition - An Earnest Proposition');
INSERT INTO `player_factionchange_quests` VALUES (8906, 8914, 'An Earnest Proposition - An Earnest Proposition');
INSERT INTO `player_factionchange_quests` VALUES (8907, 8915, 'An Earnest Proposition - An Earnest Proposition');
INSERT INTO `player_factionchange_quests` VALUES (8909, 8916, 'An Earnest Proposition - An Earnest Proposition');
INSERT INTO `player_factionchange_quests` VALUES (8910, 8917, 'An Earnest Proposition - An Earnest Proposition');
INSERT INTO `player_factionchange_quests` VALUES (8911, 8919, 'An Earnest Proposition - An Earnest Proposition');
INSERT INTO `player_factionchange_quests` VALUES (8912, 8920, 'An Earnest Proposition - An Earnest Proposition');
INSERT INTO `player_factionchange_quests` VALUES (8922, 8923, 'A Supernatural Device - A Supernatural Device');
INSERT INTO `player_factionchange_quests` VALUES (8926, 8927, 'Just Compensation - Just Compensation');
INSERT INTO `player_factionchange_quests` VALUES (8929, 8930, 'In Search of Anthion - In Search of Anthion');
INSERT INTO `player_factionchange_quests` VALUES (8931, 8938, 'Just Compensation - Just Compensation');
INSERT INTO `player_factionchange_quests` VALUES (8932, 8939, 'Just Compensation - Just Compensation');
INSERT INTO `player_factionchange_quests` VALUES (8934, 8940, 'Just Compensation - Just Compensation');
INSERT INTO `player_factionchange_quests` VALUES (8935, 8941, 'Just Compensation - Just Compensation');
INSERT INTO `player_factionchange_quests` VALUES (8936, 8943, 'Just Compensation - Just Compensation');
INSERT INTO `player_factionchange_quests` VALUES (8937, 8944, 'Just Compensation - Just Compensation');
INSERT INTO `player_factionchange_quests` VALUES (8951, 9016, 'Anthion\'s Parting Words - Anthion\'s Parting Words');
INSERT INTO `player_factionchange_quests` VALUES (8952, 9017, 'Anthion\'s Parting Words - Anthion\'s Parting Words');
INSERT INTO `player_factionchange_quests` VALUES (8953, 9018, 'Anthion\'s Parting Words - Anthion\'s Parting Words');
INSERT INTO `player_factionchange_quests` VALUES (8955, 9019, 'Anthion\'s Parting Words - Anthion\'s Parting Words');
INSERT INTO `player_factionchange_quests` VALUES (8956, 9020, 'Anthion\'s Parting Words - Anthion\'s Parting Words');
INSERT INTO `player_factionchange_quests` VALUES (8958, 9021, 'Anthion\'s Parting Words - Anthion\'s Parting Words');
INSERT INTO `player_factionchange_quests` VALUES (8959, 9022, 'Anthion\'s Parting Words - Anthion\'s Parting Words');
INSERT INTO `player_factionchange_quests` VALUES (8997, 8998, 'Back to the Beginning - Back to the Beginning');
INSERT INTO `player_factionchange_quests` VALUES (8999, 9007, 'Saving the Best for Last - Saving the Best for Last');
INSERT INTO `player_factionchange_quests` VALUES (9000, 9008, 'Saving the Best for Last - Saving the Best for Last');
INSERT INTO `player_factionchange_quests` VALUES (9001, 9014, 'Saving the Best for Last - Saving the Best for Last');
INSERT INTO `player_factionchange_quests` VALUES (9003, 9009, 'Saving the Best for Last - Saving the Best for Last');
INSERT INTO `player_factionchange_quests` VALUES (9004, 9010, 'Saving the Best for Last - Saving the Best for Last');
INSERT INTO `player_factionchange_quests` VALUES (9005, 9012, 'Saving the Best for Last - Saving the Best for Last');
INSERT INTO `player_factionchange_quests` VALUES (9006, 9013, 'Saving the Best for Last - Saving the Best for Last');
INSERT INTO `player_factionchange_quests` VALUES (7848, 7487, 'Attunement to the Core - Attunement to the Core');
INSERT INTO `player_factionchange_quests` VALUES (7761, 7761, 'Blackhand\'s Command - Blackhand\'s Command');
INSERT INTO `player_factionchange_quests` VALUES (9123, 9123, 'The Dread Citadel - Naxxramas - The Dread Citadel - Naxxramas');


SET FOREIGN_KEY_CHECKS = 1;
