-- Fixes for mirage raceway.
UPDATE `quest_template` SET `EndText`='Complete the test race' WHERE `entry` IN (50310, 50312);
UPDATE `spell_template` SET `attributes`=269549840 WHERE `entry` IN (50061, 50062);
