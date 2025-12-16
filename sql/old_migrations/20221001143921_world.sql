-- Make Improved Disciplines talent reduce Retaliation cooldown.
UPDATE `spell_template` SET `spellFamilyName`=4, `spellFamilyFlags`=2147483648 WHERE `entry`=20230;
UPDATE `spell_template` SET `effectItemType1`=2147491856 WHERE `entry` IN (45576, 45577, 45578);
UPDATE `spell_template` SET `nameSubText`='Rank 3' WHERE `entry`=45578;
