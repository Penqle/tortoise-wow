-- Make triggered Judgement damage from Freethinker's Armor scale with spell power.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.1 WHERE `entry`=23590;
DELETE FROM `spell_mod` WHERE `Id`=23590;
