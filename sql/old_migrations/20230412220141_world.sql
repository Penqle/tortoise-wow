-- Correct faction of Caer Darrow ghosts.
UPDATE `creature_template` SET `faction`=35, `unit_flags`=768 WHERE `entry` IN (11281, 11280, 11279, 11277);
