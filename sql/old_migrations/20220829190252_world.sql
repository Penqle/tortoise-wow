-- Fix spell power scaling of Earth Shield.
UPDATE `spell_template` SET `school`=3, `effectDieSides1`=1, `effectBaseDice1`=1, `effectBasePoints1`=149, `dmgClass`=1, `preventionType`=1 WHERE `entry`=45526;
