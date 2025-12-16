-- Remove wrong script to complete quest "The Attack!" after 45 seconds.
DELETE FROM `quest_start_scripts` WHERE `id`=434;
UPDATE `quest_template` SET `StartScript`=0 WHERE `entry`=434;