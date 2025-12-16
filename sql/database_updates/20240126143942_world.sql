-- molly items
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values
(41295, 'Lost Excavation Pickaxe', 'All too familiar with rocks and stones.', 2, 1, 1, 2, 14038, 2, 47, 0, -1, -1, 161789, 32377, 17, 1, 0, 0, 1, 1, 0, 90, 167, 3200, 0, 0, 85, 0, 0, 0, 52, 0, 9, 0, 0, 0, 0, 0, 0, 4, 6, 48034, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values
(41296, 'Damp Pauldrons', '', 4, 4, 6, 3, 13676, 1, 47, 0, -1, -1, 45500, 11375, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 80, 410, 0, 0, 52, 0, 47, 0, 0, 0, 0, 10, 0, 4, 10, 6, 9, 20732, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values
(41297, 'Corrosive Sabatons', '', 4, 2, 8, 2, 11832, 1, 47, 0, -1, -1, 58000, 14500, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 45, 94, 0, 0, 52, 0, 9, 0, 0, 0, 0, 0, 0, 5, 9, 6, 8, 21361, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values
(41298, 'Overloaded Heating Coil', '', 4, 0, 1, 3, 30916, 2, 47, 1, -1, -1, 28520, 7130, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 47, 0, -20, 0, 0, 0, 0, 18186, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- Loot table: M-0L1Y.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61498, 41295, 30, 1, 1, 1, 0),
(61498, 41296, 30, 1, 1, 1, 0),
(61498, 41297, 30, 1, 1, 1, 0),
(61498, 41298, 10, 1, 1, 1, 0);

-- Give NPC ID 61498 a random respawn timer between 24 and 48 hours.
update creature set spawntimesecsmin = 86400, spawntimesecsmax = 172800 where id = 61498;

-- Item inventory type fix.
update item_template set inventory_type = 26, allowable_class = 32767 where entry = 61019;
update item_template set inventory_type = 26, allowable_class = 32767 where entry = 83215;
update item_template set inventory_type = 26, allowable_class = 32767 where entry = 60427;
