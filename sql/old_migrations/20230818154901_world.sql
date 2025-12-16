-- Make Empower Champion be affected by Inner Focus.
UPDATE `spell_template` SET `spellFamilyName`=6, `spellFamilyFlags`=0x80000000 WHERE `entry`=45565;
