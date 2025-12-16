-- Remove spell family flag 0x10000000 from some NPC spells.
UPDATE `spell_template` SET `spellFamilyFlags` = (`spellFamilyFlags` & ~0x10000000) WHERE `entry` IN (15068, 17137, 17138, 17843);

-- Assign spell family flag 0x10000000 to Shadow Mend.
UPDATE `spell_template` SET `spellFamilyFlags`=0x10000000 WHERE `entry`=45554;

-- These auras should affect Shadow Mend.
UPDATE `spell_template` SET `effectItemType1`=(`effectItemType1` | 0x10000000) WHERE `entry` IN (14529, 14743, 14751, 14898, 14913, 15012, 15272, 15318, 15320, 15321, 15322, 15349, 15354, 15355, 15356, 27828);
UPDATE `spell_template` SET `effectItemType2`=(`effectItemType2` | 0x10000000) WHERE `entry` IN (14751, 24546);
