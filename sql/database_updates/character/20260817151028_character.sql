CREATE TABLE IF NOT EXISTS `character_pvp_currency` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0,
  `honor` int(10) unsigned NOT NULL DEFAULT 0,
  `conquest` int(10) unsigned NOT NULL DEFAULT 0,
  `weekly_honor` int(10) unsigned NOT NULL DEFAULT 0,
  `week_begin_day` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;
