-- finishing what I started
update item_template set display_id = 33170 where entry = 55365; -- Rudeus' Focusing Cane
update item_template set required_skill = 755, required_skill_rank = 300, required_spell = 57553, spellid_3 = 14799, stat_value1 = 8, stat_type1 = 7 where entry = 56031; -- Encrusted Gemstone Ring
update item_template set stat_value1 = 34, spellid_2 = 26142 where entry = 18842; -- Staff of Dominance
update item_template set stat_value1 = 32, spellid_2 = 26395, spellid_1 = 23727, spelltrigger_2 = 1 where entry = 19355; -- Shadow Wing Focus Staff
update item_template set stat_value1 = 22, spellid_1 = 26395 where entry = 21128; -- Staff of the Qiraji Prophets
update item_template set stat_type1 = 4, stat_type2 = 7 where entry = 56061; -- Embergem Cuffs
update item_template set spellid_1 = 23727, spellid_2 = 24595 where entry = 56064; -- Mastercrafted Diamond Crown
update item_template set stat_value1 = 6, stat_value2 = 6, spellid_1 = 9345, spellid_2 = 18379, spellid_3 = 21600, spelltrigger_3 = 1 where entry = 56096; -- Mastercrafted Diamond Bangles
update item_template set stat_value1 = 11, stat_value2 = 8, spellid_1 = 14799, stat_type1 = 5, stat_type2 = 7 where entry = 55361; -- Empowered Domination Rod
update item_template set required_skill = 755, required_skill_rank = 200, spellid_1 = 45844, spellid_2 = 18379, spelltrigger_2 = 1 where entry = 56095; -- Mana Binding Signet
update item_template set inventory_type = 12 where entry = 55275; -- Slivers of Nullification
update item_template set spellid_1 = 18031 where entry = 61297; -- Marshtreader Slippers
-- proper goldsmith requirement
update item_template set required_skill = 755, required_skill_rank = 300, required_spell = 57553 where entry = 56063; -- Talisman of Hinderance
update item_template set required_spell = 57553 where entry = 56062; -- Blackwing Signet of Command
update item_template set required_skill = 755, required_skill_rank = 300, required_spell = 57553 where entry = 55359; -- Blazefury Circlet
-- Change to bind on pickup:
-- Item 70175 (Plans: Mastercrafted Diamond Crown).
update item_template set bonding = 1 where entry = 70175;
-- Item 70223 (Plans: Mastercrafted Diamond Bangles).
update item_template set bonding = 1 where entry = 70223;
-- Item 41371 (Clutch of Thanlar).
update item_template set bonding = 1 where entry = 41371;
-- Change the scale of creature Bovar'kez (Entry 61978) to 2.5.
update creature_template set scale = 2.5 where entry = 61978;