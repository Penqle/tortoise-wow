-- Fix Improved Holy Shield.
UPDATE `spell_template` SET `spellFamilyFlags`=4194304 WHERE `entry` IN (20169, 20925, 20927, 20928);
UPDATE `spell_template` SET `effectItemType1`=4194304 WHERE `entry` IN (45838, 45839);
DELETE FROM `spell_affect` WHERE `entry` IN (45838, 45839);
