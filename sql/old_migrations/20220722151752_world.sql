-- Aura of the Blue Dragon
UPDATE `spell_proc_event` SET `procFlags`=0, `procEx`=524288 WHERE `entry`=23688;

-- Arcane Concentration
UPDATE `spell_proc_event` SET `Cooldown`=1 WHERE `entry`=11213;
REPLACE INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (18189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
