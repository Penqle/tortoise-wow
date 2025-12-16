-- change cooked food to give 14 stam buff
update item_template set spellid_1 = 10257 where entry = 13935; -- Baked Salmon
update item_template set spellid_1 = 10257 where entry = 13933; -- Lobster Stew
-- rename wrench
update item_template set name = 'Gartside Family Wrench', description = 'Lodged in the side of the prototype, this wrench has seen better days.' where entry = 61572; -- Wremch of Destruction
-- The Tower of Althalaxx Buffs
update item_template set stat_value1 = 11, stat_value2 = 4 where entry = 5614; -- Seraph's Strike
update item_template set stat_value1 = 7, stat_value2 = 5, spellid_1 = 7681, spelltrigger_1 = 1 where entry = 10043; -- Pious Legwraps
-- grifter set nerf
update item_template set stat_value1 = 9 where entry = 83404; -- Grifter Gauntlets
update item_template set stat_value1 = 7 where entry = 83405; -- Grifter Boots
update item_template set stat_value1 = 9 where entry = 83403; -- Grifter Belt
update item_template set stat_value1 = 13 where entry = 83400; -- Grifter Cover
update item_template set stat_value1 = 11 where entry = 83402; -- Grifter Leggings
update item_template set stat_value2 = 7, spellid_1 = 0 where entry = 83401; -- Grifter's Tunic
-- crafting recipe items
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (65015, 'Blue Dragonscale Boots', '', 4, 3, 5, 3, 34333, 2, 53, 0, -1, -1, 78715, 19678, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 60, 236, 0, 0, 58, 0, 48, 0, 0, 0, 0, 0, 6, 5, 16, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61648, 'Fury of the Timbermaw', '', 4, 4, 6, 3, 35219, 2, 53, 0, -1, -1, 35441, 8860, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 45, 341, 0, 0, 58, 0, 48, 0, 0, 0, 0, 0, 0, 4, 18, 8815, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61649, 'Pauldrons of the Timbermaw', '', 4, 4, 6, 3, 27422, 2, 59, 0, -1, -1, 74841, 18710, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 45, 500, 0, 0, 64, 0, 49, 0, 0, 0, 0, 0, 0, 4, 21, 8815, 1, 0, 0, -1, 0, -1, 0, 0, 0);
-- ITEM 61226, change spell to 45450.
update item_template set spellid_1 = 45450 where entry = 61226;
-- ITEM 61228, change spell to 45454.
update item_template set spellid_1 = 45454 where entry = 61228;
-- ITEM 8546, change cooldown to 18000000 miliseconds (5 hours) .
update item_template set spellcooldown_1 = 18000 where entry = 8546;
-- Item 61644, Runestone Chunk, rename to Runestone Scepter.
update item_template set name = 'Runestone Scepter' where entry = 61644;
-- Quest In Memory of Franklin (40982), make it so the quest is choose item reward instead of reward both.
update quest_template set RewItemId1 = 0, RewItemId2 = 0, RewItemCount1 = 0, RewItemCount2 = 0, RewChoiceItemId1 = 61633, RewChoiceItemId2 = 61634, RewChoiceItemCount1 = 1, RewChoiceItemCount2 = 1 where entry = 40982;