-- Make Warlock T3 2 piece bonus heal able to crit.
UPDATE `spell_template` SET `school`=5 WHERE `entry`=28839;
-- Make Warlock T3 2 piece bonus proc on cast not hit.
UPDATE `spell_template` SET `procFlags`=65536, `procChance`=10, `effectBasePoints1`=0, `effectApplyAuraName1`=42 WHERE `entry`=28831;
DELETE FROM `spell_affect` WHERE `entry`=28831;
DELETE FROM `spell_effect_mod` WHERE `Id`=28831;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (28831, 0, 0, 1, 1, 1, 0, 524288, 0, 0, 0);
