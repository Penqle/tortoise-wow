-- Reduce XP gain from neutral mobs in AV.
UPDATE `creature_template` SET `rank`=0 WHERE `entry` IN (11600, 11602, 10987, 11603, 11604, 10982);
UPDATE `creature_template` SET `xp_multiplier`=0.5 WHERE `entry` IN (10982, 11603, 11604, 10991, 11837, 11838, 11839, 11840, 10987, 11600, 11602, 10986, 11675, 11678, 10990, 10981);
