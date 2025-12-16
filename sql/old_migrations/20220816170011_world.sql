-- Make Intervene benefit from same bonuses as Intercept.
UPDATE `spell_template` SET `spellFamilyFlags` = 1073741824 WHERE `entry`=45595; -- Intervene
UPDATE `spell_template` SET `description`='Reduces the cooldown of your Intercept and Intervene abilities by $/1000;s1 sec.' WHERE `entry`=20504; -- Improved Intercept
UPDATE `spell_template` SET `description`='Reduces the cooldown of your Intercept and Intervene abilities by $/1000;s1 sec.' WHERE `entry`=20505; -- Improved Intercept
UPDATE `spell_template` SET `description`='Reduces the cooldown of your Intercept and Intervene abilities by $/1000;s1 sec.' WHERE `entry`=22738; -- Intercept Cooldown Reduction
UPDATE `spell_template` SET `description`='-$/10;s1 rage cost to Intercept and Intervene.' WHERE `entry`=26111; -- Battlegear of Unyielding Strength Intercept Bonus
