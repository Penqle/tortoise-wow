-- ==============================================
-- FILE: lft_user_groups.sql
-- GENERATED: 20260712222616
-- ==============================================
CREATE TABLE IF NOT EXISTS `lft_user_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `creatorGuid` int unsigned NOT NULL,
  `creatorName` varchar(12) NOT NULL,
  `creatorClass` varchar(16) NOT NULL,
  `creatorLevel` tinyint unsigned NOT NULL DEFAULT 0,
  `team` smallint unsigned NOT NULL DEFAULT 0,
  `hardcore` tinyint unsigned NOT NULL DEFAULT 0,
  `category` tinyint unsigned NOT NULL DEFAULT 1,
  `title` varchar(128) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `tankLimit` tinyint unsigned NOT NULL DEFAULT 0,
  `healerLimit` tinyint unsigned NOT NULL DEFAULT 0,
  `damageLimit` tinyint unsigned NOT NULL DEFAULT 0,
  `tankCount` tinyint unsigned NOT NULL DEFAULT 0,
  `healerCount` tinyint unsigned NOT NULL DEFAULT 0,
  `damageCount` tinyint unsigned NOT NULL DEFAULT 0,
  `tankSignups` text NOT NULL,
  `healerSignups` text NOT NULL,
  `damageSignups` text NOT NULL,
  `createdAt` int unsigned NOT NULL DEFAULT 0,
  `updatedAt` int unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_lft_user_groups_creator` (`creatorGuid`),
  KEY `idx_lft_user_groups_browse` (`category`, `team`, `hardcore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

