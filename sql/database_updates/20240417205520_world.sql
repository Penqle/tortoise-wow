delete from pet_spell_data where entry = 61218;
REPLACE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES (9479, 24844, 0, 0, 0);
update creature_template set pet_spell_list_id = 9479 where entry = 61218;