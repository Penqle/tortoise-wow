-- Reduce detection range of Hateforge mobs.
UPDATE `creature_template` SET `detection_range`=18 WHERE `entry` IN (60715, 60717, 60718, 60719, 60720, 60721, 60722, 60723, 60724, 60725, 60726, 60734, 60735, 60736, 60737, 60829);
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `display_id` IN (18836, 18837, 18838, 18839, 18840, 18841, 18842, 18843, 18844, 18845, 18846, 18847, 18848, 18849, 18850);
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id` IN (18854, 18853, 18856);
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.208, `combat_reach`=1.5 WHERE `display_id` IN (18851);
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.372, `combat_reach`=1.5 WHERE `display_id` IN (18852, 18833);
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.236, `combat_reach`=1.5 WHERE `display_id` IN (18855);
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `display_id` IN (18832);
