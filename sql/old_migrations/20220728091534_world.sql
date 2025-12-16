-- Fix teleport to Caverns of Time:
replace into spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES (52005, 1, -8170.67, -4758.11, 33.33, 4.8);

update spell_template set effect1 = 5 where entry = 52005;

-- Outline: Repaired Electro-Lantern

update item_template set spellid_1 = 46078, required_skill = 142, required_skill_rank = 90, buy_price = 100000, sell_price = 5000 where entry = 65031;
update item_template set quality = 1 where entry = 1630;

-- Double check for vendoring exploits:

update item_template set sell_price =  buy_price * 0.4 where sell_price > buy_price;

replace into item_template values
 ('80670', '4', '4', 'Sludge-drenched Sabatons', '', '27419', '2', '0', '1', '32942', '8235', '8', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '12', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '348', '0', '0', '15',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '55', '0', '0', '0', '0', '9', '0', '0', '0',
 '0', '1', NULL);
update item_template set max_count = 1, item_level = 83, spellid_2 = 9331 where entry = 84006; -- Banner of the Scarlet Crusade
update item_template set stat_value1 = 25, stat_value2 = 25, spellid_3 = 9336 where entry = 84005; -- Blindfold
update item_template set stat_value1 = 18 where entry = 84035; -- Fists of the Red Dawn
update item_template set spellid_1 = 7597 where entry = 80547; -- Quel'dorei Guardian's Battle Axe

-- Gardening Planter:

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) VALUES (50238, 9, 6, 'Outline: Simple Wooden Planter', '', 6270, 2, 64, 1, 25000, 3750, 0, -1, -1, 55, 0, 142, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46063, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');

replace into npc_vendor (entry, item) values (51531, 50238);
replace into npc_vendor (entry, item) values (51533, 50238);
delete from npc_vendor where item = 51705;

update item_template set display_id = 16368 where entry = 11508;

update quest_template set requiredraces = 434 where entry in (756, 758, 754, 748, 759, 760);

-- Baby Moonkin correct display_id:

update creature_template set display_id1 = 18926 where entry = 50038;
replace into creature_display_info_addon (display_id) values (18926);

-- https://database.turtle-wow.org/?item=60593
update item_template set spellcharges_1 = -1, spellcategory_1 = 11, spellcategorycooldown_1 = 1000 where entry = 60593;

-- New recipes should be comsumed on use:
update item_template set spellcharges_1 = -1, spellcategory_1 = 11, spellcategorycooldown_1 = 1000 where entry in (83570, 83571, 83572, 83573, 83574, 83575);
