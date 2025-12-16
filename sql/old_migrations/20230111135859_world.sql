-- Remove call for help from Bristleback Boar.
UPDATE `creature_template` SET `call_for_help_range`=0 WHERE `entry`=60848;
