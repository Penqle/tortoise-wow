-- Make all priest champion spells affected by Inner Fire.
UPDATE `spell_template` SET `spellFamilyName`=6, `spellFamilyFlags`=1073741824 WHERE `entry` IN (45562, 45569, 45567);
UPDATE `spell_template` SET `spellFamilyName`=6, `spellFamilyFlags`=2147483648 WHERE `entry` IN (45564, 45563);
