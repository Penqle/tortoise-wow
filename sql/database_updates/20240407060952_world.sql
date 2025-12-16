-- Natural Shapeshifter should reduce mana cost of Tree of Life.
UPDATE `spell_template` SET `effectItemType1`=(`effectItemType1` | 33554432) WHERE `entry` IN (16833, 16834, 16835);
