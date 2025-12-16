-- Increase spell power scaling for Consecration.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.084 WHERE `entry` IN (26573, 20116, 20922, 20923, 20924);
