-- Increase spell power coefficient of Arcane Missiles.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.1573 WHERE `entry`=7268;
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.2431  WHERE `entry`=7269;
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.2860  WHERE `entry` IN (7270, 8418, 8419, 10273, 10274, 25346);
