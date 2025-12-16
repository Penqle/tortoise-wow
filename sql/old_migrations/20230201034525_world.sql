-- Make The Cleaner able to fly to prevent him getting stuck on bad mmaps.
UPDATE `creature_template` SET `inhabit_type`=7 WHERE `entry`=14503;
