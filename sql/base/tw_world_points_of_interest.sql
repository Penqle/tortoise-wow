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
-- Table structure for points_of_interest
-- ----------------------------
DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE `points_of_interest`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `icon` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `flags` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `data` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `icon_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of points_of_interest
-- ----------------------------
INSERT INTO `points_of_interest` VALUES (658, -9459.35, 42.0805, 6, 99, 0, 'Lion\'s Pride Inn');
INSERT INTO `points_of_interest` VALUES (652, -9471.12, 33.4441, 6, 99, 0, 'Zaldimar Wefhellt');
INSERT INTO `points_of_interest` VALUES (660, -9469, 108.053, 6, 99, 0, 'Brother Wilhelm');
INSERT INTO `points_of_interest` VALUES (653, -9461.07, 32.996, 6, 99, 0, 'Priestess Josetta');
INSERT INTO `points_of_interest` VALUES (657, -9465.14, 13.2936, 6, 99, 0, 'Keryn Sylvius');
INSERT INTO `points_of_interest` VALUES (656, -9473.22, -4.08464, 6, 99, 0, 'Maximillian Crowe');
INSERT INTO `points_of_interest` VALUES (661, -9461.82, 109.505, 6, 99, 0, 'Lyria Du Lac');
INSERT INTO `points_of_interest` VALUES (663, -9057.04, 153.637, 6, 99, 0, 'Alchemist Mallory');
INSERT INTO `points_of_interest` VALUES (659, -9456.59, 87.9022, 6, 99, 0, 'Smith Argus');
INSERT INTO `points_of_interest` VALUES (655, -9467.54, -3.16732, 6, 99, 0, 'Tomas');
INSERT INTO `points_of_interest` VALUES (654, -9456.82, 30.4947, 6, 99, 0, 'Michelle Belle');
INSERT INTO `points_of_interest` VALUES (649, -9386.55, -118.731, 6, 99, 0, 'Lee Brown');
INSERT INTO `points_of_interest` VALUES (650, -9376.12, -75.2306, 6, 99, 0, 'Adele Fielder');
INSERT INTO `points_of_interest` VALUES (651, -9381.13, -70.1127, 6, 99, 0, 'Helene Peltskinner');
INSERT INTO `points_of_interest` VALUES (647, -9536.92, -1212.76, 6, 99, 0, 'Eldrin');
INSERT INTO `points_of_interest` VALUES (869, -9466.62, 45.8709, 6, 99, 0, 'Erma');
INSERT INTO `points_of_interest` VALUES (527, -8812.57, 666.354, 6, 99, 0, 'Stormwind Auction House');
INSERT INTO `points_of_interest` VALUES (47, -8885.39, 640.052, 6, 99, 0, 'Stormwind Bank');
INSERT INTO `points_of_interest` VALUES (532, -8387.53, 565.012, 6, 99, 0, 'The Deeprun Tram');
INSERT INTO `points_of_interest` VALUES (529, -8867.65, 673.634, 6, 99, 0, 'The Gilded Rose');
INSERT INTO `points_of_interest` VALUES (535, -8839.35, 487.546, 6, 99, 0, 'Stormwind Gryphon Master');
INSERT INTO `points_of_interest` VALUES (87, -8886.4, 595.38, 6, 99, 0, 'Stormwind Vistor\'s Center');
INSERT INTO `points_of_interest` VALUES (870, -8432.87, 555.121, 6, 99, 0, 'Jenova Stoneshield');
INSERT INTO `points_of_interest` VALUES (808, -8796.2, 613.098, 6, 99, 0, 'Woo Ping');
INSERT INTO `points_of_interest` VALUES (1467, -8762.39, 401.972, 6, 99, 0, 'Champions\' Hall');
INSERT INTO `points_of_interest` VALUES (72, -8749.69, 1075.78, 6, 99, 0, 'The Park');
INSERT INTO `points_of_interest` VALUES (74, -8430.27, 559.87, 6, 99, 0, 'Hunter Lodge');
INSERT INTO `points_of_interest` VALUES (71, -9008.55, 857.193, 6, 99, 0, 'Wizard\'s Sanctum');
INSERT INTO `points_of_interest` VALUES (73, -8621.68, 777.189, 6, 99, 0, 'Cathedral Of Light');
INSERT INTO `points_of_interest` VALUES (69, -8782.15, 353.099, 6, 99, 0, 'Stormwind - Rogue House');
INSERT INTO `points_of_interest` VALUES (75, -8938.57, 986.894, 6, 99, 0, 'The Slaughtered Lamb');
INSERT INTO `points_of_interest` VALUES (70, -8714.84, 342.761, 6, 99, 0, 'Stormwind Barracks');
INSERT INTO `points_of_interest` VALUES (91, -8975.3, 778.865, 6, 99, 0, 'Alchemy Needs');
INSERT INTO `points_of_interest` VALUES (94, -8433.29, 610.413, 6, 99, 0, 'Therum Deepforge');
INSERT INTO `points_of_interest` VALUES (68, -8641.24, 423.502, 6, 99, 0, 'Pig and Whistle Tavern');
INSERT INTO `points_of_interest` VALUES (108, -8838.32, 782.35, 6, 99, 0, 'Lucan Cordell');
INSERT INTO `points_of_interest` VALUES (93, -8348.42, 640.412, 6, 99, 0, 'Lilliam Sparkspindle');
INSERT INTO `points_of_interest` VALUES (1427, -8515.48, 804.505, 6, 99, 0, 'Shaina Fuller');
INSERT INTO `points_of_interest` VALUES (107, -8793.17, 741.886, 6, 99, 0, 'Arnold Leland');
INSERT INTO `points_of_interest` VALUES (90, -8707.42, 462.037, 6, 99, 0, 'The Protective Hide');
INSERT INTO `points_of_interest` VALUES (95, -8416.23, 672.791, 6, 99, 0, 'Gelman Stonehand');
INSERT INTO `points_of_interest` VALUES (92, -8940.58, 771.346, 6, 99, 0, 'Duncan\'s Textiles');
INSERT INTO `points_of_interest` VALUES (418, -4957.39, -911.604, 6, 99, 0, 'Ironforge Auction House');
INSERT INTO `points_of_interest` VALUES (415, -4891.91, -991.48, 6, 99, 0, 'The Vault');
INSERT INTO `points_of_interest` VALUES (547, -4835.28, -1294.7, 6, 99, 0, 'Deeprun Tram');
INSERT INTO `points_of_interest` VALUES (407, -4821.52, -1152.3, 6, 99, 0, 'Ironforge Gryphon Master');
INSERT INTO `points_of_interest` VALUES (424, -5021.06, -996.453, 6, 99, 0, 'Ironforge Visitor\'s Center');
INSERT INTO `points_of_interest` VALUES (417, -4850.48, -872.571, 6, 99, 0, 'Stonefire Tavern');
INSERT INTO `points_of_interest` VALUES (416, -4845.7, -880.552, 6, 99, 0, 'Ironforge Mailbox');
INSERT INTO `points_of_interest` VALUES (867, -5010.21, -1262.03, 6, 99, 0, 'Ulbrek Firehand');
INSERT INTO `points_of_interest` VALUES (928, -5040.01, -1201.88, 6, 99, 0, 'Bixi and Buliwyf');
INSERT INTO `points_of_interest` VALUES (413, -5023.08, -1253.68, 6, 99, 0, 'Hall of Arms');
INSERT INTO `points_of_interest` VALUES (412, -4627.02, -926.459, 6, 99, 0, 'Hall of Mysteries');
INSERT INTO `points_of_interest` VALUES (427, -4647.83, -1124, 6, 99, 0, 'Ironforge Rogue Trainer');
INSERT INTO `points_of_interest` VALUES (426, -4605.03, -1110.46, 6, 99, 0, 'Ironforge Warlock Trainer');
INSERT INTO `points_of_interest` VALUES (419, -4858.5, -1241.84, 6, 99, 0, 'Berryfizz\'s Potions and Mixed Drinks');
INSERT INTO `points_of_interest` VALUES (423, -4796.98, -1110.17, 6, 99, 0, 'The Great Forge');
INSERT INTO `points_of_interest` VALUES (410, -4767.83, -1184.6, 6, 99, 0, 'The Bronze Kettle');
INSERT INTO `points_of_interest` VALUES (409, -4803.72, -1196.53, 6, 99, 0, 'Thistlefuzz Arcanery');
INSERT INTO `points_of_interest` VALUES (408, -4881.6, -1153.13, 6, 99, 0, 'Ironforge Physician');
INSERT INTO `points_of_interest` VALUES (425, -4597.91, -1091.93, 6, 99, 0, 'Traveling Fisherman');
INSERT INTO `points_of_interest` VALUES (987, -4745.01, -1027.58, 6, 99, 0, 'Finespindle\'s Leather Goods');
INSERT INTO `points_of_interest` VALUES (411, -4705.06, -1116.43, 6, 99, 0, 'Deepmountain Mining Guild');
INSERT INTO `points_of_interest` VALUES (422, -4719.61, -1056.97, 6, 99, 0, 'Stonebrow\'s Clothier');
INSERT INTO `points_of_interest` VALUES (671, -5584.11, -510.862, 6, 99, 0, 'Thunderbrew Distillery');
INSERT INTO `points_of_interest` VALUES (868, -5606.17, -513.008, 6, 99, 0, 'Shelby Stoneflint');
INSERT INTO `points_of_interest` VALUES (674, -5618.73, -453.72, 6, 99, 0, 'Grif Wildheart');
INSERT INTO `points_of_interest` VALUES (664, -5587.37, -539.037, 6, 99, 0, 'Magis Sparkmantle');
INSERT INTO `points_of_interest` VALUES (665, -5584.69, -542.492, 6, 99, 0, 'Azar Stronghammer');
INSERT INTO `points_of_interest` VALUES (666, -5589.19, -530.288, 6, 99, 0, 'Maxan Anvol');
INSERT INTO `points_of_interest` VALUES (669, -5604.48, -540.089, 6, 99, 0, 'Hogral Bakkan');
INSERT INTO `points_of_interest` VALUES (677, -5639.5, -528.501, 6, 99, 0, 'Gimrizz Shadowcog');
INSERT INTO `points_of_interest` VALUES (667, -5605.01, -530.145, 6, 99, 0, 'Granis Swiftaxe');
INSERT INTO `points_of_interest` VALUES (672, -5582.17, -430.441, 6, 99, 0, 'Tognus Flintfire');
INSERT INTO `points_of_interest` VALUES (670, -5594.46, -544.573, 6, 99, 0, 'Gremlock Pilsnor');
INSERT INTO `points_of_interest` VALUES (668, -5604.89, -521.037, 6, 99, 0, 'Thamner Pol');
INSERT INTO `points_of_interest` VALUES (747, -5198.56, 53.3649, 6, 99, 0, 'Paxton Ganter');
INSERT INTO `points_of_interest` VALUES (1693, 9862.37, 2339.19, 6, 99, 0, 'Darnassus Auction House');
INSERT INTO `points_of_interest` VALUES (465, 9938.46, 2512.35, 6, 99, 0, 'Darnassus Bank');
INSERT INTO `points_of_interest` VALUES (467, 9945.65, 2618.95, 6, 99, 0, 'Rut\'theran Village');
INSERT INTO `points_of_interest` VALUES (490, 10076.4, 2199.59, 6, 99, 0, 'Darnassus Guild Master');
INSERT INTO `points_of_interest` VALUES (468, 10133.3, 2222.52, 6, 99, 0, 'Darnassus Inn');
INSERT INTO `points_of_interest` VALUES (1474, 9942.18, 2495.49, 6, 99, 0, 'Darnassus Mailbox');
INSERT INTO `points_of_interest` VALUES (872, 10167.2, 2522.67, 6, 99, 0, 'Alassin');
INSERT INTO `points_of_interest` VALUES (750, 9907.11, 2329.71, 6, 99, 0, 'Ilyenia Moonfire');
INSERT INTO `points_of_interest` VALUES (486, 10186, 2570.47, 6, 99, 0, 'Darnassus Druid Trainer');
INSERT INTO `points_of_interest` VALUES (479, 10177.3, 2511.1, 6, 99, 0, 'Darnassus Hunter Trainer');
INSERT INTO `points_of_interest` VALUES (507, 10122, 2599.13, 6, 99, 0, 'Darnassus Rogue Trainer');
INSERT INTO `points_of_interest` VALUES (461, 9951.91, 2280.39, 6, 99, 0, 'Warrior\'s Terrace');
INSERT INTO `points_of_interest` VALUES (476, 10075.9, 2356.76, 6, 99, 0, 'Darnassus Alchemy Trainer');
INSERT INTO `points_of_interest` VALUES (478, 10088.6, 2419.22, 6, 99, 0, 'Darnassus Cooking Trainer');
INSERT INTO `points_of_interest` VALUES (473, 10146.1, 2313.43, 6, 99, 0, 'Darnassus Enchanting Trainer');
INSERT INTO `points_of_interest` VALUES (474, 10150.1, 2390.44, 6, 99, 0, 'Darnassus First Aid Trainer');
INSERT INTO `points_of_interest` VALUES (489, 9836.21, 2432.18, 6, 99, 0, 'Darnassus Fishing Trainer');
INSERT INTO `points_of_interest` VALUES (471, 10086.6, 2255.77, 6, 99, 0, 'Darnassus Leatherworking Trainer');
INSERT INTO `points_of_interest` VALUES (472, 10081.4, 2257.19, 6, 99, 0, 'Darnassus Skinning Trainer');
INSERT INTO `points_of_interest` VALUES (470, 10079.7, 2268.2, 6, 99, 0, 'Darnassus Tailor');
INSERT INTO `points_of_interest` VALUES (698, 9821.49, 960.138, 6, 99, 0, 'Dolanaar Inn');
INSERT INTO `points_of_interest` VALUES (871, 9808.37, 931.106, 6, 99, 0, 'Seriadne');
INSERT INTO `points_of_interest` VALUES (697, 9741.58, 963.705, 6, 99, 0, 'Kal');
INSERT INTO `points_of_interest` VALUES (693, 9815.12, 926.283, 6, 99, 0, 'Dazalar');
INSERT INTO `points_of_interest` VALUES (690, 9906.16, 986.636, 6, 99, 0, 'Laurna Morninglight');
INSERT INTO `points_of_interest` VALUES (692, 9789.02, 942.865, 6, 99, 0, 'Jannok Breezesong');
INSERT INTO `points_of_interest` VALUES (691, 9821.97, 950.616, 6, 99, 0, 'Kyra Windblade');
INSERT INTO `points_of_interest` VALUES (696, 9767.6, 878.817, 6, 99, 0, 'Cyndra Kindwhisper');
INSERT INTO `points_of_interest` VALUES (694, 9751.19, 906.132, 6, 99, 0, 'Zarrin');
INSERT INTO `points_of_interest` VALUES (699, 10677.6, 1946.56, 6, 99, 0, 'Alanna Raveneye');
INSERT INTO `points_of_interest` VALUES (689, 9903.12, 999.095, 6, 99, 0, 'Byancie');
INSERT INTO `points_of_interest` VALUES (695, 9773.78, 875.884, 6, 99, 0, 'Malorne Bladeleaf');
INSERT INTO `points_of_interest` VALUES (688, 10152.6, 1681.47, 6, 99, 0, 'Nadyia Maneweaver');
INSERT INTO `points_of_interest` VALUES (687, 10135.6, 1673.18, 6, 99, 0, 'Radnaal Maneweaver');
INSERT INTO `points_of_interest` VALUES (267, 1631.51, -4375.33, 6, 99, 0, 'Bank of Orgrimmar');
INSERT INTO `points_of_interest` VALUES (268, 1676.61, -4332.72, 6, 99, 0, 'The Sky Tower');
INSERT INTO `points_of_interest` VALUES (269, 1576.93, -4294.75, 6, 99, 0, 'Horde Embassy');
INSERT INTO `points_of_interest` VALUES (270, 1644.51, -4447.28, 6, 99, 0, 'Orgrimmar Inn');
INSERT INTO `points_of_interest` VALUES (271, 1622.53, -4388.8, 6, 99, 0, 'Orgrimmar Mailbox');
INSERT INTO `points_of_interest` VALUES (347, 1679.22, -4450.11, 6, 99, 0, 'Orgrimmar Auction House');
INSERT INTO `points_of_interest` VALUES (809, 2092.56, -4823.95, 6, 99, 0, 'Sayoc & Hanashi');
INSERT INTO `points_of_interest` VALUES (848, 2133.12, -4663.93, 6, 99, 0, 'Xon\'cha');
INSERT INTO `points_of_interest` VALUES (1468, 1633.56, -4249.37, 6, 99, 0, 'Hall of Legends');
INSERT INTO `points_of_interest` VALUES (150, -1054.48, -285.076, 6, 99, 0, 'Hall of Elders');
INSERT INTO `points_of_interest` VALUES (149, -1416.33, -114.285, 6, 99, 0, 'Hunter\'s Hall');
INSERT INTO `points_of_interest` VALUES (161, -1061.21, 195.505, 6, 99, 0, 'Pools of Vision');
INSERT INTO `points_of_interest` VALUES (148, -989.541, 278.253, 6, 99, 0, 'Hall of Spirits');
INSERT INTO `points_of_interest` VALUES (152, -1085.57, 27.2931, 6, 99, 0, 'Bena\'s Alchemy');
INSERT INTO `points_of_interest` VALUES (155, -1239.75, 104.888, 6, 99, 0, 'Karn\'s Smithy');
INSERT INTO `points_of_interest` VALUES (187, -1214.5, -21.2327, 6, 99, 0, 'Aska\'s Kitchen');
INSERT INTO `points_of_interest` VALUES (153, -1112.65, 48.2609, 6, 99, 0, 'Dawnstrider Enchanters');
INSERT INTO `points_of_interest` VALUES (162, -996.586, 200.504, 6, 99, 0, 'Spiritual Healing');
INSERT INTO `points_of_interest` VALUES (160, -1169.36, -68.878, 6, 99, 0, 'Mountaintop Bait & Tackle');
INSERT INTO `points_of_interest` VALUES (151, -1137.71, -1.51698, 6, 99, 0, 'Holistic Herbalism');
INSERT INTO `points_of_interest` VALUES (154, -1156.23, 66.8664, 6, 99, 0, 'Thunder Bluff Armorers');
INSERT INTO `points_of_interest` VALUES (157, -1249.17, 155.028, 6, 99, 0, 'Stonehoof Geology');
INSERT INTO `points_of_interest` VALUES (567, -1148.57, 51.1842, 6, 99, 0, 'Mooranta');
INSERT INTO `points_of_interest` VALUES (272, 2114.84, -4625.32, 6, 99, 0, 'Orgrimmar Hunter\'s Hall');
INSERT INTO `points_of_interest` VALUES (273, 1451.26, -4223.33, 6, 99, 0, 'Darkbriar Lodge');
INSERT INTO `points_of_interest` VALUES (274, 1442.22, -4183.24, 6, 99, 0, 'Spirit Lodge');
INSERT INTO `points_of_interest` VALUES (276, 1925.35, -4181.89, 6, 99, 0, 'Thrall\'s Fortress');
INSERT INTO `points_of_interest` VALUES (277, 1773.39, -4278.97, 6, 99, 0, 'Shadowswift Brotherhood');
INSERT INTO `points_of_interest` VALUES (278, 1849.58, -4359.69, 6, 99, 0, 'Darkfire Enclave');
INSERT INTO `points_of_interest` VALUES (275, 1983.92, -4794.21, 6, 99, 0, 'Hall of the Brave');
INSERT INTO `points_of_interest` VALUES (279, 1955.17, -4475.8, 6, 99, 0, 'Yelmak\'s Alchemy and Potions');
INSERT INTO `points_of_interest` VALUES (280, 2054.34, -4831.85, 6, 99, 0, 'The Burning Anvil');
INSERT INTO `points_of_interest` VALUES (281, 1780.97, -4481.31, 6, 99, 0, 'Borstan\'s Firepit');
INSERT INTO `points_of_interest` VALUES (282, 1917.5, -4434.95, 6, 99, 0, 'Godan\'s Runeworks');
INSERT INTO `points_of_interest` VALUES (307, 2038.46, -4744.76, 6, 99, 0, 'Nogg\'s Machine Shop');
INSERT INTO `points_of_interest` VALUES (283, 1485.22, -4160.91, 6, 99, 0, 'Survival of the Fittest');
INSERT INTO `points_of_interest` VALUES (284, 1994.15, -4655.7, 6, 99, 0, 'Lumak\'s Fishing');
INSERT INTO `points_of_interest` VALUES (285, 1898.62, -4454.94, 6, 99, 0, 'Jandi\'s Arboretum');
INSERT INTO `points_of_interest` VALUES (288, 2029.79, -4704.08, 6, 99, 0, 'Red Canyon Mining');
INSERT INTO `points_of_interest` VALUES (287, 1852.83, -4562.32, 6, 99, 0, 'Kodohide Leatherworkers');
INSERT INTO `points_of_interest` VALUES (289, 1802.66, -4560.66, 6, 99, 0, 'Magar\'s Cloth Goods');
INSERT INTO `points_of_interest` VALUES (588, 276.067, -4706.73, 6, 99, 0, 'Thotar');
INSERT INTO `points_of_interest` VALUES (589, -839.33, -4935.61, 6, 99, 0, 'Un\'Thuwa');
INSERT INTO `points_of_interest` VALUES (590, 296.225, -4828.11, 6, 99, 0, 'Tai\'jin');
INSERT INTO `points_of_interest` VALUES (591, 265.765, -4709.01, 6, 99, 0, 'Kaplak');
INSERT INTO `points_of_interest` VALUES (592, 307.797, -4836.97, 6, 99, 0, 'Swart');
INSERT INTO `points_of_interest` VALUES (594, 355.88, -4836.46, 6, 99, 0, 'Dhugru Gorelust');
INSERT INTO `points_of_interest` VALUES (593, 312.308, -4824.66, 6, 99, 0, 'Tarshaw Jaggedscar');
INSERT INTO `points_of_interest` VALUES (595, -800.253, -4894.34, 6, 99, 0, 'Miao\'zan');
INSERT INTO `points_of_interest` VALUES (597, 373.248, -4716.45, 6, 99, 0, 'Dwukk');
INSERT INTO `points_of_interest` VALUES (602, 368.96, -4723.96, 6, 99, 0, 'Mukdrak');
INSERT INTO `points_of_interest` VALUES (598, 327.175, -4825.62, 6, 99, 0, 'Rawrk');
INSERT INTO `points_of_interest` VALUES (801, -1065.49, -4777.43, 6, 99, 0, 'Lau\'Tiki');
INSERT INTO `points_of_interest` VALUES (596, -836.254, -4896.9, 6, 99, 0, 'Mishiki');
INSERT INTO `points_of_interest` VALUES (601, 366.941, -4705.09, 6, 99, 0, 'Krunn');
INSERT INTO `points_of_interest` VALUES (606, -2312.16, -443.693, 6, 99, 0, 'Gennia Runetotem');
INSERT INTO `points_of_interest` VALUES (608, -2178.15, -406.144, 6, 99, 0, 'Yaw Sharpmane');
INSERT INTO `points_of_interest` VALUES (607, -2301.5, -439.871, 6, 99, 0, 'Narm Skychaser');
INSERT INTO `points_of_interest` VALUES (609, -2345.44, -494.114, 6, 99, 0, 'Krang Stonehoof');
INSERT INTO `points_of_interest` VALUES (610, -2263.34, -287.91, 6, 99, 0, 'Pyall Silentstride');
INSERT INTO `points_of_interest` VALUES (605, -2353.52, -355.821, 6, 99, 0, 'Vira Younghoof');
INSERT INTO `points_of_interest` VALUES (613, -2349.22, -241.376, 6, 99, 0, 'Uthan Stillwater');
INSERT INTO `points_of_interest` VALUES (611, -2257.12, -288.633, 6, 99, 0, 'Chaw Stronghide');
INSERT INTO `points_of_interest` VALUES (612, -2252.95, -291.324, 6, 99, 0, 'Yonn Deepcut');
INSERT INTO `points_of_interest` VALUES (616, 2259.58, 235.865, 6, 99, 0, 'Cain Firesong');
INSERT INTO `points_of_interest` VALUES (617, 2264.43, 248.158, 6, 99, 0, 'Dark Cleric Beryl');
INSERT INTO `points_of_interest` VALUES (618, 2267.61, 243.924, 6, 99, 0, 'Marion Call');
INSERT INTO `points_of_interest` VALUES (619, 2257.46, 247.402, 6, 99, 0, 'Rupert Boch');
INSERT INTO `points_of_interest` VALUES (620, 2257.99, 240.487, 6, 99, 0, 'Austil de Mon');
INSERT INTO `points_of_interest` VALUES (621, 2264.81, 344.257, 6, 99, 0, 'Carolai Anise');
INSERT INTO `points_of_interest` VALUES (622, 2280.69, 244.714, 6, 99, 0, 'Vance Undergloom');
INSERT INTO `points_of_interest` VALUES (623, 2247.01, 242.789, 6, 99, 0, 'Nurse Neela');
INSERT INTO `points_of_interest` VALUES (624, 2299.92, 1.16547, 6, 99, 0, 'Clyde Kellen');
INSERT INTO `points_of_interest` VALUES (625, 2270.57, 329.97, 6, 99, 0, 'Faruza');
INSERT INTO `points_of_interest` VALUES (626, 2027.81, 80.1105, 6, 99, 0, 'Shelene Rhobart');
INSERT INTO `points_of_interest` VALUES (627, 2031.33, 71.8599, 6, 99, 0, 'Rand Rhobart');
INSERT INTO `points_of_interest` VALUES (628, 2161.7, 658.172, 6, 99, 0, 'Bowen Brisboise');
INSERT INTO `points_of_interest` VALUES (464, 9659.13, 2524.89, 6, 99, 0, 'Temple of the Moon');
INSERT INTO `points_of_interest` VALUES (463, 9757.18, 2430.17, 6, 99, 0, 'Darnassus Herbalism Trainer');
INSERT INTO `points_of_interest` VALUES (662, -9060.71, 149.236, 6, 99, 0, 'Herbalist Pomeroy');
INSERT INTO `points_of_interest` VALUES (168, -1257.8, 24.1431, 6, 99, 0, 'Thunder Bluff Bank');
INSERT INTO `points_of_interest` VALUES (167, -1196.44, 28.2654, 6, 99, 0, 'Wind Rider Roost');
INSERT INTO `points_of_interest` VALUES (158, -1296.5, 127.579, 6, 99, 0, 'Thunder Bluff Civic Information');
INSERT INTO `points_of_interest` VALUES (367, -1296.07, 39.7075, 6, 99, 0, 'Thunder Bluff Inn');
INSERT INTO `points_of_interest` VALUES (368, -1263.6, 44.3601, 6, 99, 0, 'Thunder Bluff Mailbox');
INSERT INTO `points_of_interest` VALUES (1692, -1198.32, 102.054, 6, 99, 0, 'Thunder Bluff Auction house');
INSERT INTO `points_of_interest` VALUES (810, -1282.31, 89.563, 6, 99, 0, 'Ansekhwa');
INSERT INTO `points_of_interest` VALUES (850, -1270.2, 48.8459, 6, 99, 0, 'Bulrug');
INSERT INTO `points_of_interest` VALUES (1691, 1650.31, 240.191, 6, 99, 0, 'Undercity Auction House');
INSERT INTO `points_of_interest` VALUES (488, 1595.64, 232.456, 6, 99, 0, 'Undercity Bank');
INSERT INTO `points_of_interest` VALUES (447, 1565.9, 271.435, 6, 99, 0, 'Undercity Bat Handler');
INSERT INTO `points_of_interest` VALUES (448, 1594.17, 205.572, 6, 99, 0, 'Undercity Guild Master');
INSERT INTO `points_of_interest` VALUES (449, 1639.43, 220.998, 6, 99, 0, 'Undercity Inn');
INSERT INTO `points_of_interest` VALUES (450, 1632.69, 219.403, 6, 99, 0, 'Undercity Mailbox');
INSERT INTO `points_of_interest` VALUES (852, 1634.18, 226.768, 6, 99, 0, 'Anya Maulray');
INSERT INTO `points_of_interest` VALUES (729, 1670.31, 324.666, 6, 99, 0, 'Archibald');
INSERT INTO `points_of_interest` VALUES (451, 2059.04, 274.869, 6, 99, 0, 'Undercity Zeppelin');
INSERT INTO `points_of_interest` VALUES (452, 1781.09, 53.0096, 6, 99, 0, 'Undercity Mage Trainers');
INSERT INTO `points_of_interest` VALUES (454, 1758.34, 401.507, 6, 99, 0, 'Undercity Priest Trainers');
INSERT INTO `points_of_interest` VALUES (456, 1418.56, 65.0243, 6, 99, 0, 'Undercity Rogue Trainers');
INSERT INTO `points_of_interest` VALUES (453, 1780.92, 53.1697, 6, 99, 0, 'Undercity Warlock Trainers');
INSERT INTO `points_of_interest` VALUES (455, 1775.6, 418.193, 6, 99, 0, 'Undercity Warrior Trainers');
INSERT INTO `points_of_interest` VALUES (457, 1419.83, 417.197, 6, 99, 0, 'The Apothecarium');
INSERT INTO `points_of_interest` VALUES (458, 1696, 285.042, 6, 99, 0, 'Undercity Blacksmithing Trainer');
INSERT INTO `points_of_interest` VALUES (460, 1596.35, 274.684, 6, 99, 0, 'Undercity Cooking Trainer');
INSERT INTO `points_of_interest` VALUES (475, 1488.54, 280.194, 6, 99, 0, 'Undercity Enchanting Trainer');
INSERT INTO `points_of_interest` VALUES (485, 1408.59, 143.431, 6, 99, 0, 'Undercity Engineering Trainer');
INSERT INTO `points_of_interest` VALUES (483, 1519.65, 167.199, 6, 99, 0, 'Undercity First Aid Trainer');
INSERT INTO `points_of_interest` VALUES (487, 1679.9, 89.0227, 6, 99, 0, 'Undercity Fishing Trainer');
INSERT INTO `points_of_interest` VALUES (477, 1558.09, 349.37, 6, 99, 0, 'Undercity Herbalism Trainer');
INSERT INTO `points_of_interest` VALUES (480, 1498.76, 196.433, 6, 99, 0, 'Undercity Leatherworking Trainer');
INSERT INTO `points_of_interest` VALUES (481, 1498.61, 196.466, 6, 99, 0, 'Undercity Skinning Trainer');
INSERT INTO `points_of_interest` VALUES (459, 1642.88, 335.588, 6, 99, 0, 'Undercity Mining Trainer');
INSERT INTO `points_of_interest` VALUES (462, 1689.55, 193.023, 6, 99, 0, 'Undercity Tailoring Trainer');
INSERT INTO `points_of_interest` VALUES (420, -4799.56, -1250.24, 6, 99, 0, 'Springspindle\'s Gadgets');
INSERT INTO `points_of_interest` VALUES (676, -5529.12, -660.912, 6, 99, 0, 'Yarr Hammerstone');
INSERT INTO `points_of_interest` VALUES (587, 338.709, -4688.87, 6, 99, 0, 'Razor Hill Inn');
INSERT INTO `points_of_interest` VALUES (847, 330.313, -4710.67, 6, 99, 0, 'Shoja\'my');
INSERT INTO `points_of_interest` VALUES (604, -2361.39, -349.193, 6, 99, 0, 'Bloodhoof Village Inn');
INSERT INTO `points_of_interest` VALUES (849, -2338.86, -357.564, 6, 99, 0, 'Seikwa');
INSERT INTO `points_of_interest` VALUES (615, 2266.98, 242.754, 6, 99, 0, 'Gallows\' End Tavern');
INSERT INTO `points_of_interest` VALUES (851, 2268.67, 318.876, 6, 99, 0, 'Morganus');
INSERT INTO `points_of_interest` VALUES (528, -8876.98, 652.043, 6, 99, 0, 'Stormwind Mailbox');
INSERT INTO `points_of_interest` VALUES (1674, -8426.4, 341.467, 6, 99, 0, 'Thelman Slatefist');
INSERT INTO `points_of_interest` VALUES (1679, -8422.85, 329.087, 6, 99, 0, 'Lady Hoteshem');
INSERT INTO `points_of_interest` VALUES (1675, -8452.68, 320.309, 6, 99, 0, 'Elfarran');
INSERT INTO `points_of_interest` VALUES (1672, -5047.88, -1263.77, 6, 99, 0, 'Glordrum Steelbeard');
INSERT INTO `points_of_interest` VALUES (1678, -5038.37, -1266.39, 6, 99, 0, 'Donal Osgood');
INSERT INTO `points_of_interest` VALUES (1673, -5037.24, -1274.83, 6, 99, 0, 'Lylandris');
INSERT INTO `points_of_interest` VALUES (1667, 9923.61, 2327.44, 6, 99, 0, 'Brogun Stoneshield');
INSERT INTO `points_of_interest` VALUES (1680, 9977.37, 2324.4, 6, 99, 0, 'Keras Wolfheart');
INSERT INTO `points_of_interest` VALUES (1647, 9979.85, 2315.79, 6, 99, 0, 'Aethalas');
INSERT INTO `points_of_interest` VALUES (1668, -1387.83, -97.5562, 6, 99, 0, 'Taim Ragetotem');
INSERT INTO `points_of_interest` VALUES (1677, -997.004, 214.129, 6, 99, 0, 'Martin Lindsey');
INSERT INTO `points_of_interest` VALUES (1669, -1384.95, -75.9151, 6, 99, 0, 'Kergul Bloodaxe');
INSERT INTO `points_of_interest` VALUES (827, 1337.37, -4632.7, 6, 99, 0, 'Orgrimmar Zeppelin Tower');
INSERT INTO `points_of_interest` VALUES (1671, 1329.05, 333.92, 6, 99, 0, 'Grizzle Halfmane');
INSERT INTO `points_of_interest` VALUES (1676, 1283.3, 287.16, 6, 99, 0, 'Sir Malory Wheeler');
INSERT INTO `points_of_interest` VALUES (1670, 1265.1, 351.182, 6, 99, 0, 'Kurden Bloodclaw');
INSERT INTO `points_of_interest` VALUES (10001, 3781, -2368, 6, 99, 0, 'Warrior Trainer');
INSERT INTO `points_of_interest` VALUES (10002, 3915, -2373, 6, 99, 0, 'Priest Trainer');
INSERT INTO `points_of_interest` VALUES (10003, 3915, -2373, 6, 99, 0, 'Paladin Trainer');
INSERT INTO `points_of_interest` VALUES (10004, 4073, -2408, 6, 99, 0, 'Fishing Trainer');
INSERT INTO `points_of_interest` VALUES (10005, 4096, -2809, 6, 99, 0, 'Enchanting Trainer');
INSERT INTO `points_of_interest` VALUES (10006, 4096, -2809, 6, 99, 0, 'Mage Trainer');
INSERT INTO `points_of_interest` VALUES (10007, 4096, -2809, 6, 99, 0, 'Engineering Trainer');
INSERT INTO `points_of_interest` VALUES (10008, 4158, -2716, 6, 99, 0, 'Innkeeper');
INSERT INTO `points_of_interest` VALUES (10009, 4158, -2716, 6, 99, 0, 'Cooking Trainer');
INSERT INTO `points_of_interest` VALUES (10010, 4276, -2738, 6, 99, 0, 'Alchemy Trainer');
INSERT INTO `points_of_interest` VALUES (10011, 4271, -2839, 6, 99, 0, 'Auctioneer');
INSERT INTO `points_of_interest` VALUES (10012, 4271, -2839, 6, 99, 0, 'Bank');
INSERT INTO `points_of_interest` VALUES (10013, 4345, -2923, 6, 99, 0, 'Rogue Trainer');
INSERT INTO `points_of_interest` VALUES (10014, 4455, -2839, 6, 99, 0, 'Leatherworking Trainer');
INSERT INTO `points_of_interest` VALUES (10015, 4455, -2839, 6, 99, 0, 'Skinning Trainer');
INSERT INTO `points_of_interest` VALUES (10016, 4446, -3083, 6, 99, 0, 'Tailoring Trainer');
INSERT INTO `points_of_interest` VALUES (10017, 4361, -3101, 6, 99, 0, 'Herbalism Trainer');
INSERT INTO `points_of_interest` VALUES (10018, 4307, -3045, 6, 99, 0, 'Silvermoon Quartermaster');
INSERT INTO `points_of_interest` VALUES (10019, 4238, -2769, 6, 99, 0, 'Hunter Trainer');
INSERT INTO `points_of_interest` VALUES (10020, 4244, -2794, 6, 99, 0, 'Mining Trainer');


SET FOREIGN_KEY_CHECKS = 1;
