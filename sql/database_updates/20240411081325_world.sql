-- Fix not being able to cast Faerie Fire Rank 3 in Tree Form.
UPDATE `spell_template` SET `stancesNot`=0 WHERE `entry`=9749;
