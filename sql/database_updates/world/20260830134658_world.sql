-- ==============================================
-- FILE: skill_race_class_info_mod_dual_wield.sql
-- GENERATED: 20260830134658
-- ==============================================
CREATE TABLE IF NOT EXISTS `skill_race_class_info_mod` (
  `Id` int(10) unsigned NOT NULL DEFAULT 0,
  `SkillLineDbcRecord` int(11) NOT NULL DEFAULT -1,
  `RaceMask` int(11) NOT NULL DEFAULT -1,
  `ClassMask` int(11) NOT NULL DEFAULT -1,
  `Flags` int(11) NOT NULL DEFAULT -1,
  `MinLevel` int(11) NOT NULL DEFAULT -1,
  `SkillTierId` int(11) NOT NULL DEFAULT -1,
  `SkillCostIndex` int(11) NOT NULL DEFAULT -1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

INSERT INTO `skill_race_class_info_mod`
(
    `Id`,
    `SkillLineDbcRecord`,
    `RaceMask`,
    `ClassMask`,
    `Flags`,
    `MinLevel`,
    `SkillTierId`,
    `SkillCostIndex`,
    `Comment`
)
VALUES
(132, -1, -1, -1, -1, 1, -1, -1, 'Show Dual Wield on trainers at all levels');

