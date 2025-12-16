-- Assign cooldown to Fire Nova spell used by some mobs.
UPDATE `spell_template` SET `recoveryTime`=10000 WHERE `entry`=11970;
