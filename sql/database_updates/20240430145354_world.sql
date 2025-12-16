-- fix a few things
update item_template set stat_type1 = 4 where entry = 9473; -- Jinxed Hoodoo Skin
update item_template set stat_value3 = 0, spellid_1 = 57158, spelltrigger_1 = 1 where entry = 9407; -- Stoneweaver Leggings
update item_template set stat_type2 = 6, stat_value2 = 6 where entry = 11311; -- Emberscale Cape
update item_template set bonding = 1, block = 17, armor = 963, disenchant_id = 26, sell_price = 7162, buy_price = 35813 where entry = 9403; -- Battered Viking Shield
update item_template set bonding = 1, dmg_min1 = 29, dmg_max1 = 55, disenchant_id = 28, sell_price = 8722, buy_price = 43611, stat_value1 = 3, stat_type1 = 3 where entry = 9400; -- Baelog's Shortbow
update item_template set stat_type2 = 5, stat_type1 = 7, stat_value2 = 7, stat_value1 = 9 where entry = 9411; -- Rockshard Pauldrons
-- maraudon changes
update item_template set disenchant_id = 47, max_durability = 30, armor = 41, sell_price = 6151, buy_price = 30755, spellid_1 = 9342, spelltrigger_1 = 1 where entry = 17750; -- Chloromesh Girdle
update item_template set disenchant_id = 47, max_durability = 75, armor = 130, sell_price = 15344, buy_price = 76720, stat_value1 = 17, stat_value2 = 16 where entry = 17751; -- Brusslehide Leggings
update item_template set stat_value2 = 0, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 17748; -- Vinerot Sandals
update item_template set stat_value2 = 11, spellid_1 = 15464, spelltrigger_1 = 1 where entry = 17754; -- Infernal Trickster Leggings