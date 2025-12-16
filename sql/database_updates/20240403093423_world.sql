-- Fix last charge of Eye of the Dead not working.
REPLACE INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (28780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
