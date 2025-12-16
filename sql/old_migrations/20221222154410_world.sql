-- Fix error related to Tar Creeper.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (652701);
DELETE FROM `creature_ai_events` WHERE `creature_id`=6527;
UPDATE `creature_template` SET `auras`='14178', `ai_name`='' WHERE `entry`=6527;
