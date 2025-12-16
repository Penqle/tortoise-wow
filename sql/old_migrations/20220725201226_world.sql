
UPDATE `creature_loot_template` SET `entry`='10268', `ChanceOrQuestChance`='15', `groupid`='2' WHERE  `entry`=65122 AND `item`=83573 AND `groupid`=1;
UPDATE `gameobject_loot_template` SET `groupid`='4' WHERE  `entry`=2010867 AND `item`=83570;
UPDATE `item_template` SET `sheath`=0 WHERE `entry`=65030;
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`) VALUES ('18926', '1', '1');
UPDATE `creature_template` SET `display_id1`='18926' WHERE  `entry`=50038;

