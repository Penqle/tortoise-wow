-- Fix Overlord Wyrmthalak sometimes not dropping items.
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `entry`=9568 && `item`=30254;
UPDATE `reference_loot_template` SET `condition_id`=0 WHERE `entry`=30254;
