-- Make Improved Blizzard's Chilled debuff stack with other snares.
UPDATE `spell_template` SET `customFlags`=(`customFlags` | 0x4000) WHERE `spellFamilyName`=3 && (`spellFamilyFlags`=1048576) && `spellVisual1`=2640;


