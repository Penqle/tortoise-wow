-- Increase spell power coefficient of high ranks of Regrowth.
UPDATE `spell_template` SET `effectBonusCoefficient2`=0.081 WHERE `entry` IN (8940);
UPDATE `spell_template` SET `effectBonusCoefficient2`=0.091 WHERE `entry` IN (8941, 9750, 9856, 9857, 9858);
