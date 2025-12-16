
DROP TABLE IF EXISTS `game_weather`;
CREATE TABLE `game_weather`  (
  `zone` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `spring_rain_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `spring_snow_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `spring_storm_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `summer_rain_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `summer_snow_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `summer_storm_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `fall_rain_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `fall_snow_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `fall_storm_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `winter_rain_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `winter_snow_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `winter_storm_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 25,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`zone`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Weather System' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of game_weather
-- ----------------------------
INSERT INTO `game_weather` VALUES (3, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 15, 'Badlands');
INSERT INTO `game_weather` VALUES (45, 10, 0, 0, 15, 0, 0, 23, 0, 0, 23, 0, 0, 'Arathi Highlands');
INSERT INTO `game_weather` VALUES (3358, 5, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 'Arathi Basin');
INSERT INTO `game_weather` VALUES (148, 10, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0, 'Darkshore');
INSERT INTO `game_weather` VALUES (85, 10, 0, 0, 15, 0, 0, 20, 0, 0, 20, 0, 0, 'Tirisfal Glades');
INSERT INTO `game_weather` VALUES (405, 10, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 'Desolace');
INSERT INTO `game_weather` VALUES (41, 5, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0, 'Deadwind Pass');
INSERT INTO `game_weather` VALUES (15, 10, 0, 0, 20, 0, 0, 25, 0, 0, 25, 0, 0, 'Dustwallow Marsh');
INSERT INTO `game_weather` VALUES (10, 15, 0, 0, 15, 0, 0, 20, 0, 0, 15, 0, 0, 'Duskwood');
INSERT INTO `game_weather` VALUES (139, 10, 0, 0, 15, 0, 0, 15, 0, 0, 10, 0, 0, 'Eastern Plaguelands');
INSERT INTO `game_weather` VALUES (28, 10, 0, 0, 15, 0, 0, 15, 0, 0, 10, 0, 0, 'Western Plaguelands');
INSERT INTO `game_weather` VALUES (2017, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 'Stratholme');
INSERT INTO `game_weather` VALUES (12, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 'Elwynn Forest');
INSERT INTO `game_weather` VALUES (357, 15, 0, 0, 15, 0, 0, 15, 0, 0, 5, 0, 0, 'Feralas');
INSERT INTO `game_weather` VALUES (267, 15, 0, 0, 10, 0, 0, 15, 0, 0, 15, 0, 0, 'Hillsbrad Foothills');
INSERT INTO `game_weather` VALUES (47, 10, 0, 0, 10, 0, 0, 15, 0, 0, 10, 0, 0, 'The Hinterlands');
INSERT INTO `game_weather` VALUES (38, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 'Loch Modan');
INSERT INTO `game_weather` VALUES (215, 15, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0, 'Mulgore');
INSERT INTO `game_weather` VALUES (44, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 'Redridge Mountains');
INSERT INTO `game_weather` VALUES (33, 10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0, 'Stranglethorn Vale');
INSERT INTO `game_weather` VALUES (141, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0, 'Teldrassil');
INSERT INTO `game_weather` VALUES (796, 5, 0, 0, 10, 0, 0, 25, 0, 0, 5, 0, 0, 'Scarlet Monastery');
INSERT INTO `game_weather` VALUES (490, 15, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0, 'Un\'Goro Crater');
INSERT INTO `game_weather` VALUES (11, 25, 0, 0, 15, 0, 0, 25, 0, 0, 15, 0, 0, 'Wetlands');
INSERT INTO `game_weather` VALUES (36, 0, 20, 0, 0, 20, 0, 0, 25, 0, 0, 30, 0, 'Alterac Mountains');
INSERT INTO `game_weather` VALUES (1, 0, 25, 0, 0, 15, 0, 0, 40, 0, 0, 40, 0, 'Dun Morogh');
INSERT INTO `game_weather` VALUES (618, 0, 25, 0, 0, 20, 0, 0, 20, 0, 0, 25, 0, 'Winterspring');
INSERT INTO `game_weather` VALUES (2597, 0, 15, 0, 0, 15, 0, 0, 20, 0, 0, 25, 0, 'Alterac Valley');
INSERT INTO `game_weather` VALUES (1377, 0, 0, 20, 0, 0, 25, 0, 0, 20, 0, 0, 15, 'Silithus');
INSERT INTO `game_weather` VALUES (3429, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 20, 'Ruins of Ahn\'Qiraj');
INSERT INTO `game_weather` VALUES (3428, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 20, 'Ahn\'Qiraj');
INSERT INTO `game_weather` VALUES (440, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 'Tanaris');
INSERT INTO `game_weather` VALUES (1977, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0, 'Zul\'Gurub');
INSERT INTO `game_weather` VALUES (876, 100, 25, 25, 100, 25, 25, 100, 25, 25, 100, 25, 25, 'GM Island');
INSERT INTO `game_weather` VALUES (1657, 15, 0, 0, 0, 0, 0, 10, 0, 5, 0, 15, 15, 'Darnassus');
INSERT INTO `game_weather` VALUES (1638, 15, 0, 0, 0, 0, 0, 10, 0, 5, 0, 15, 15, 'Thunder Bluff');
INSERT INTO `game_weather` VALUES (14, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 'Durotar');
INSERT INTO `game_weather` VALUES (5027, 0, 90, 0, 0, 90, 0, 0, 0, 0, 0, 98, 0, 'North Sea');
INSERT INTO `game_weather` VALUES (5052, 0, 90, 0, 0, 90, 0, 0, 0, 0, 0, 98, 0, 'Kaneq\'nuun');
INSERT INTO `game_weather` VALUES (5024, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0, 'Icepoint Rock');
INSERT INTO `game_weather` VALUES (5130, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0, 'Winter Veil Vale');
INSERT INTO `game_weather` VALUES (5179, 60, 0, 0, 60, 0, 0, 60, 0, 0, 60, 0, 0, 'Gilneas');
INSERT INTO `game_weather` VALUES (408, 10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0, 'Gilijim\'s Isle');
INSERT INTO `game_weather` VALUES (409, 10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0, 'Lapidis Isle');
INSERT INTO `game_weather` VALUES (5121, 10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0, 'Tel\'Abim');
INSERT INTO `game_weather` VALUES (616, 25, 10, 0, 25, 10, 0, 25, 10, 0, 25, 10, 0, 'Hyjal');