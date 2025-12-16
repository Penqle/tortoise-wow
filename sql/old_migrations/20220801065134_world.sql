-- Fix not being able to cast Remove Curse in Tree of Life form.
UPDATE `spell_template` SET `stancesNot`=1073741824 WHERE `entry`=2782;
