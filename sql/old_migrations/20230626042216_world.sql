-- Make Sun's Embrace learning spells self cast only.
UPDATE `spell_template` SET `targets`=0, `effectImplicitTargetA1`=1 WHERE `entry` IN (46231, 46232, 46233, 46234);

-- Make Grace of the Sunwell learning spells self cast only.
UPDATE `spell_template` SET `targets`=0, `effectImplicitTargetA1`=1 WHERE `entry` IN (46235);
