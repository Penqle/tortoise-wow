
-- Spirit Armor Rank 1 - 3 now have SPELLFAMILY_SHAMAN as it should
-- Because of that, the armor was not updated properly
UPDATE `spell_template` SET `spellFamilyName` = '11' WHERE (`entry` = '45951');
UPDATE `spell_template` SET `spellFamilyName` = '11' WHERE (`entry` = '45952');
UPDATE `spell_template` SET `spellFamilyName` = '11' WHERE (`entry` = '45953');
