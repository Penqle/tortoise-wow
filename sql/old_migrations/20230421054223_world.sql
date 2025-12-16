-- Fix improved sap.
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (14076, 0, 8, 128, 128, 128, 0, 0, 0, 0, 0);
UPDATE `spell_template` SET `procChance`=50 WHERE `entry`=14076;
UPDATE `spell_template` SET `procChance`=100 WHERE `entry`=14094;
