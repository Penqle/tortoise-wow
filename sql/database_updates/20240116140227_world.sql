-- Nerf spell power scaling of Barnacle Targe.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.01 WHERE `entry`=22351;
