-- These critters fight back.
UPDATE `creature_template` SET `ai_name`='ReactorAI' WHERE `entry` IN (9600, 13321, 15010);
UPDATE `creature_template` SET `ai_name`='AggressorAI' WHERE `entry` IN (16998);
