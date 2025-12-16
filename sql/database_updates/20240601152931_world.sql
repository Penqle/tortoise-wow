-- royal seal of eldre'thalas buffs
update item_template set spellid_1 = 14047 where entry = 18468; -- Royal Seal of Eldre'Thalas (Mage)
update item_template set spellid_1 = 9346, spellid_2 = 7681, spellid_3 = 21619, spelltrigger_3 = 1 where entry = 18469; -- Royal Seal of Eldre'Thalas (Priest)
update item_template set spellid_1 = 14047, spellid_2 = 9408, spelltrigger_2 = 1 where entry = 18470; -- Royal Seal of Eldre'Thalas (Druid)
update item_template set spellid_1 = 14047, spellid_2 = 9408, spelltrigger_2 = 1 where entry = 18471; -- Royal Seal of Eldre'Thalas (Shaman)
update item_template set spellid_1 = 15808, spellid_2 = 21429, spelltrigger_2 = 1 where entry = 18473; -- Royal Seal of Eldre'Thalas (Hunter)
update item_template set spellid_1 = 13387, spellid_2 = 9336, spelltrigger_2 = 1 where entry = 18466; -- Royal Seal of Eldre'Thalas (Warrior)
update item_template set spellid_1 = 13387, spellid_2 = 9346, spellid_3 = 7681, spelltrigger_3 = 1 where entry = 18472; -- Royal Seal of Eldre'Thalas (Paladin)

-- misc fix
update item_template set armor = 339, item_level = 71, stat_value2 = 19, stat_value1 = 17, stat_type1 = 5, stat_type2 = 7, spellid_1 = 45530, spellid_2 = 14799, spelltrigger_2 = 1, spellid_3 = 21618, spelltrigger_3 = 1, stat_value3 = 0, stat_value4 = 0, allowable_class = 64 where entry = 20203; -- Defiler's Mail Pauldrons
update item_template set armor = 414, item_level = 68, required_level = 60, stat_value1 = 12, stat_value2 = 6, stat_value3 = 0, spellid_2 = 45530, spellid_1 = 18384, spelltrigger_2 = 1, spellid_3 = 9346, spelltrigger_3 = 1, allowable_class = 64 where entry = 20195; -- Defiler's Mail Girdle
update item_template set armor = 170, item_level = 68, required_level = 60, stat_value1 = 12, stat_value2 = 6, stat_value3 = 0, spellid_2 = 45530, spellid_1 = 18384, spelltrigger_2 = 1, spellid_3 = 9346, spelltrigger_3 = 1 where entry = 20046; -- Highlander's Lizardhide Girdle
update item_template set armor = 170, item_level = 68, required_level = 60, stat_value1 = 12, stat_value2 = 6, stat_value3 = 0, spellid_2 = 45530, spellid_1 = 18384, spelltrigger_2 = 1, spellid_3 = 9346, spelltrigger_3 = 1 where entry = 20171; -- Defiler's Lizardhide Girdle
update item_template set armor = 285, item_level = 71, required_level = 60, stat_value1 = 16, stat_value2 = 4, stat_value3 = 0, stat_type2 = 5, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 23990, spelltrigger_3 = 1, spellid_4 = 21362, spelltrigger_4 = 1, spelltrigger_2 = 1, allowable_class = 64 where entry = 20199; -- Defiler's Mail Greaves
update item_template set armor = 224, item_level = 71, required_level = 60, stat_value1 = 17, stat_value2 = 15, spellid_1 = 45530, spellid_2 = 9331 where entry = 20052; -- Highlander's Leather Boots
update item_template set armor = 224, item_level = 71, required_level = 60, stat_value1 = 17, stat_value2 = 15, spellid_1 = 45530, spellid_2 = 9331 where entry = 20186; -- Defiler's Leather Boots
update item_template set allowable_class = 2 where entry = 20042; -- Highlander's Lamellar Girdle
update item_template set allowable_class = 2 where entry = 20049; -- Highlander's Lamellar Greaves
update item_template set allowable_class = 2 where entry = 20058; -- Highlander's Lamellar Spaulders
update item_template set allowable_class = 2 where entry = 22753; -- Sentinel's Lamellar Legguards
update item_template set allowable_class = 64 where entry = 22676; -- Outrider's Mail Leggings
update item_template set armor = 5 where entry = 55374; -- Enraging Waistwraps
update item_template set armor = 17 where entry = 55377; -- Chemist's Shawl
update item_template set spellid_1 = 51152, spelltrigger_1 = 1, display_id = 18858 where entry = 55378;

