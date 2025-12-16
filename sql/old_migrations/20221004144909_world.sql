-- Correct PPM of Jeklik's Crusher.
-- https://old.reddit.com/r/classicwow/comments/gxsawo/jekliks_crusher_stats_2024_chanceonhit_4ppm_its/
UPDATE `item_template` SET `spellppmrate_1`=4 WHERE `entry`=19918;
