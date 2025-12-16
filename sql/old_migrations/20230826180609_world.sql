-- fix bind on pickup
update item_template set bonding = 1 where entry = 61269; -- Clutchweave Robe
update item_template set bonding = 1 where entry = 61267; -- Sparkgrasp Gloves
update item_template set bonding = 1 where entry = 61266; -- Rune Infused Gauntlets
update item_template set stat_value1 = 22, stat_value2 = 16, stat_value3 = 22, fire_res = 10, spellid_2 = 13669, spellid_3 = 0, spellid_1 = 7597 where entry = 61265; -- Leggings of the Inferno
update item_template set stat_value1 = 20, stat_value2 = 15, stat_value3 = 20, spellid_1 = 7597, spellid_2 = 13669, spelltrigger_2 = 1 where entry = 61260; -- Flamescorched Hood
-- replacement item
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (91777, 'Araxxna\'s Husk', '', 4, 0, 1, 3, 22805, 1, 60, 1, -1, -1, 346016, 86504, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 7, 15, 13669, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Attack and casting speed should just be reduced by 15% and displayed as such.

UPDATE `spell_template` SET `auraDescription` = 'Movement speed reduced by $s2%. Attack and casting speed reduced by 15%.' WHERE `entry` = 57058;

UPDATE `creature_template` SET `display_id1` = 20496 WHERE `entry` = 89000;
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 89000;

UPDATE `item_template` SET `description` = 'For generations, the ravens of Gilneas have served as a timeless symbol of regal authority, reminding all of the lasting influence of House Greymane, even in the darkest of nights.' WHERE `entry` = 69000;
UPDATE `spell_template` SET `description` = 'For generations, the ravens of Gilneas have served as a timeless symbol of regal authority, reminding all of the lasting influence of House Greymane, even in the darkest of nights.' WHERE `entry` = 49508;

UPDATE `spell_template` SET `name` = 'Gilnean Raven' WHERE `entry` = 49508;
UPDATE `spell_template` SET `spellIconId` = 2310 WHERE `entry` = 49508;

-- Fix Druid glyph spell effects:

update spell_template set spellvisual1 = 212 where name like '%glyph of the%' and description like '%while%';