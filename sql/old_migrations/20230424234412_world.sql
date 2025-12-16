-- Remove required level from quest rewards.
UPDATE item_template SET Required_Level = 0 WHERE entry IN (60451, 60452, 60453, 51219, 70032, 70036);

UPDATE `creature_template` SET `gold_min` = 77, `gold_max` = 105 WHERE `entry` = 91981;
UPDATE `creature_template` SET `gold_min` = 77, `gold_max` = 105 WHERE `entry` = 91980;

-- Please revert the Kheyna Spinpistol displayid change, not only did she turn into a dude, but she isn't Kheyna anymore! 
UPDATE `creature_template` SET `display_id1` = 18544 WHERE `entry` = 65004;
UPDATE `creature_template` SET `display_id1` = 18544 WHERE `entry` = 81041;

-- Remove Disease Cloud from Delfrum Flintbeard.
UPDATE `creature_template` SET `auras` = '' WHERE `entry` = 6299;