-- stuff
UPDATE `item_template` SET description = '' WHERE `entry` = 55382; -- Mitre from Prelate Ironmane
UPDATE `item_template` SET description = '' WHERE `entry` = 55388;
UPDATE `item_template` SET description = '' WHERE `entry` = 55376;
UPDATE `item_template` SET description = '' WHERE `entry` = 55377;
UPDATE `item_template` SET description = '' WHERE `entry` = 55378;
update item_template set display_id = 68230 where entry = 55133; -- Claw of the Mageweaver
update item_template set display_id = 68231 where entry = 55134; -- Rod of Permafrost
update item_template set display_id = 68232 where entry = 55135; -- Shard of Leyflow
update item_template set spellid_2 = 51265, spelltrigger_2 = 1 where entry = 55359; -- Blazefury Circlet
update item_template set spellid_1 = 51282, spellid_2 = 0, spellid_3 = 0 where entry = 55504; -- Scythe of Elune
update item_template set spelltrigger_1 = 1 where entry = 55128; -- Comet Signaller
update item_template set display_id = 9854 where entry = 55473; -- Pendant of Scarlet Rage
update item_template set description = '' where entry = 55359; -- Blazefury Circlet
UPDATE `item_template` SET max_count = 1 WHERE `entry` = 61293; -- moonfang idol
UPDATE `item_template` SET max_count = 1 WHERE `entry` = 61455; -- emerald rot idol
update item_template set spellid_1 = 18384 where entry = 55498; -- Clamshell of the Depths
update item_template set spellid_1 = 0, spellcooldown_1 = -1 where entry = 51861; -- Waters of Vision

update spell_template SET description = 'Blasts the target for 120 Frost damage, slowing movement speed by 20% for 2 seconds.' WHERE entry = 51266; -- Frost Shock for Cla'ckora item
-- item id mixup fix
-- Anchor of the Wavecutter - 
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (55504, 'Anchor of the Wavecutter', 'The anchor of Daelin Proudmoore\'s flagship, now infused by the essence of the Abyssal Pincer.', 2, 1, 1, 4, 68234, 1, 60, 1, -1, -1, 426211, 106552, 17, 1, 0, 0, 1, 1, 0, 182, 269, 3600, 0, 0, 120, 0, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 4, 13, 5, 11, 15464, 1, 0, 0, -1, 0, -1, 17367, 1, 0, 0, -1, 0, -1, 51277, 2, 0, 0, -1, 0, -1, 0, 0, 0);
-- SCYTHE OF ELUNE
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (55505, 'The Scythe of Elune', 'The veil between worlds is hidden within this relic. The dark emanations of Vorgendor are silenced for now.', 4, 0, 1, 5, 64041, 1, 60, 1, 1424, -1, 3000000, 0, 12, 0, 32, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 18382, 1, 0, 0, -1, 0, -1, 23729, 1, 0, 0, -1, 0, -1, 18056, 1, 0, 0, -1, 0, -1, 0, 0, 0);
