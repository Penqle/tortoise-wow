
-- sludge boots equip fix
update item_template set armor = 4, subclass = 4, inventory_type = 8 where entry = 80670; 
-- tent and boat not unique fix
update item_template set max_count = 1 where entry = 51283; 
update item_template set max_count = 1 where entry = 51282; 
-- corossive core fix
update item_template set spellid_2 = 0, spellid_1 = 48036 where entry = 80675; 

delete from item_template where entry = 0;

-- New Hargesh Doomcaller Drops
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (51045, 'Toxic Talisman', '', 4, 0, 1, 3, 66201, 1, 54, 0, -1, -1, 51502, 12875, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 48, 0, 0, 10, 0, 0, 0, 5, 9, 9357, 1, 0, 0, -1, 0, -1, 21623, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (51046, 'Call of Shadow', '', 2, 7, 1, 3, 0, 1, 54, 0, -1, -1, 196412, 49103, 21, 3, 0, 0, 1, 1, 0, 74, 112, 2400, 0, 0, 90, 0, 0, 0, 59, 0, 48, 0, 0, 0, 0, 0, 0, 7, 8, 9413, 1, 0, 0, -1, 0, -1, 16409, 2, 0, 1.2, 3000, 0, -1, 0, 0, 0);
replace into item_template values
 ('51047', '4', '1', 'Sacrosanct Epaulets', '', '26504', '3', '0', '1', '67408', '16852', '3', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '11', '5', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '66', '0', '0', '0',
 '0', '0', '0', '9406', '1', '0', '0', '-1', '0', '-1', '21360', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('51048', '4', '0', 'The Veil of Hatred', '', '66247', '3', '0', '1', '63860', '15965', '16', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '0', '0', '9326', '1', '0', '0', '-1', '0', '-1', '9296', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
