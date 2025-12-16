-- Fix Improved Thunder Clap talent.
UPDATE `spell_template` SET `effectBaseDice2`=1, `effectMiscValue2`=0 WHERE `entry` IN (12287, 12665, 12666);
