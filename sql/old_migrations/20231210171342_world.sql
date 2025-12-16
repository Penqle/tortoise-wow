DROP TABLE IF EXISTS `quest_cast_objective`;
CREATE TABLE IF NOT EXISTS `quest_cast_objective` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'quest id',
  `idx` tinyint(3) unsigned NOT NULL COMMENT 'objective index (0 to 3)',
  `spell_id` int(10) unsigned NOT NULL,
  `player_guid` int(10) NOT NULL COMMENT 'low guid, 0 for any player, -1 for gm',
  `player_class` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 for any class',
  `objective_text` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`entry`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `quest_cast_objective` (`entry`, `idx`, `spell_id`, `player_guid`, `player_class`, `objective_text`) VALUES 
(50319, 0, 21343, 0, 9, 'Throw snowball at Warlock'),
(50319, 1, 21343, 0, 5, 'Throw snowball at Priest'),
(50319, 2, 21343, 0, 8, 'Throw snowball at Mage'),
(50319, 3, 21343, 0, 1, 'Throw snowball at Warrior'),
(50320, 0, 21343, 0, 11, 'Throw snowball at Druid'),
(50320, 1, 21343, 0, 2, 'Throw snowball at Paladin'),
(50320, 2, 21343, 0, 3, 'Throw snowball at Hunter'),
(50320, 3, 21343, 0, 7, 'Throw snowball at Shaman'),
(50321, 0, 21343, 379777, 0, 'Throw snowball at Cinnabon'),
(50321, 1, 21343, 369620, 0, 'Throw snowball at Lexie'),
(50321, 2, 21343, 542109, 0, 'Throw snowball at Sarenrae'),
(50321, 3, 21343, 118064, 0, 'Throw snowball at Zaas'),
(80606, 0, 21343, -1, 0, 'Hit a Game Master with a Snowball');
