CREATE TABLE IF NOT EXISTS `module_string` (
  `module` varchar(64) NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `content_default` text NOT NULL,
  PRIMARY KEY (`module`,`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `module_string_locale` (
  `module` varchar(64) NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `locale` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`module`,`id`,`locale`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;
