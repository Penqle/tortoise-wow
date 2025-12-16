-- Remove core script from Thadius Grimshade.
UPDATE `creature_template` SET `script_name`='' WHERE `entry`=8022;
UPDATE `quest_template` SET `StartScript`=2992 WHERE `entry`=2992;
