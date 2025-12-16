-- Fix permanent combat with Dig Rat.
UPDATE `creature_template` SET `ai_name`='CritterAI' WHERE `entry`=3444;
