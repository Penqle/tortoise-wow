-- Make Pyroclasm able to proc from Conflagrate.
UPDATE `spell_proc_event` SET `SpellFamilyMask0`=608, `SpellFamilyMask1`=608, `SpellFamilyMask2`=608 WHERE `entry`=18096;
