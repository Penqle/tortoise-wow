-- Fix Improved Disciplines talent wrongly reducing Whirlwind cooldown.
UPDATE `spell_template` SET `spellFamilyName`=4, `spellFamilyFlags`=1048576 WHERE `entry`=20230;
UPDATE `spell_template` SET `effectItemType1`=1056784 WHERE `entry` IN (45576, 45577, 45578);
