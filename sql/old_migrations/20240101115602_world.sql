CREATE TABLE IF NOT EXISTS `quest_cast_objective` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'quest id',
  `idx` tinyint(3) unsigned NOT NULL COMMENT 'objective index (0 to 3)',
  `spell_id` int(10) unsigned NOT NULL,
  `player_guid` int(10) NOT NULL COMMENT 'low guid, 0 for any player, -1 for gm',
  `player_class` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 for any class',
  `objective_text` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`entry`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



