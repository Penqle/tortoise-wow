-- https://database.turtle-wow.org/?quest=40753 from mountain silversage to Icecap
-- https://database.turtle-wow.org/?quest=40754 from essence of air to Golden Sansam 

UPDATE `quest_template` SET `ReqItemId2` = 13467 WHERE `entry` = 40753;
UPDATE `quest_template` SET `ReqItemId2` = 13464 WHERE `entry` = 40754;

-- Kara, require raid group to enter, limit to 10 people, make sure bosses trigger a lockout with same length as onyxia

UPDATE `map_template` SET `map_type` = 2, `reset_delay` = 7 WHERE `entry` = 532;

-- Change GUID 5016268, 5016269 to have a respawn timer of 5 seconds.

UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` IN (5016268, 5016269);

UPDATE `spell_template` SET `auraDescription` = 'Friendly units within a $a1 yard radius attack $s1% faster.' WHERE `entry` = 57078;

UPDATE `battleground_template` SET `min_players_per_team` = 3, `max_players_per_team` = 3 WHERE `id` = 4;

-- Item 80316 change display ID to 60767

-- Item 81089 change display ID to 40016

UPDATE `item_template` SET `display_id` = 60767 WHERE `entry` = 80316; 
UPDATE `item_template` SET `display_id` = 40016 WHERE `entry` = 81089; 

-- buff and adjust hyjal armory item rewards
update item_template set stat_value1 = 12, stat_value2 = 9, stat_type2 = 6, spellid_1 = 23727, spellid_2 = 9417 where entry = 61753; -- Drape of Nordrassil
update item_template set dmg_min1 = 55, dmg_max1 = 102, stat_value1 = 10, stat_value2 = 9, stat_type2 = 3, spellid_2 = 13679 where entry = 61755; -- Stagwood rabilit

update item_template set stat_value2 = 20, stat_value3 = 19, stat_value4 = 0, spellid_1 = 45530 where entry = 61756; -- Nordanaar Guardian Spaulders
update item_template set stat_value1 = 28, spellid_2 = 57158, spelltrigger_2 = 1, spellid_1 = 18031 where entry = 61757; -- Dreambreeze Cowl
update item_template set stat_value1 = 16, stat_value2 = 16, stat_value3 = 13, spellid_1 = 8815 where entry = 61758; -- Cloverlink Belt
-- ques adjustments
update item_template set display_id = 67782, stat_value1 = 13, spellid_1 = 9334 where entry = 60003; -- Remains of an Old God
update item_template set item_level = 83, spellid_1 = 28693 where entry = 22803; -- Midnight Haze
update item_template set stat_value1 = 10, stat_value2 = 8, spellid_2 = 21363, spelltrigger_2 = 1 where entry = 23029; -- Noth's Frigid Heart
update item_template set stat_value1 = 10, stat_value2 = 10, spellid_1 = 18031, spellid_2 = 8815, spelltrigger_2 = 1 where entry = 83480; -- Tome of Infalliable Truth
update item_template set stat_value1 = 15, spellid_2 = 13679 where entry = 83484; -- Desert Wind Talisman
update item_template set stat_value1 = 19, spellid_2 = 48034 where entry = 83486; -- Sandstalker's Shroud
update item_template set spellid_1 = 18036, spellid_2 = 0 where entry = 83531; -- Clutch of Mending Winds
update item_template set stat_value2 = 25, spellid_2 = 13665, spellid_3 = 13386, spelltrigger_3 = 1, nature_res = 0, shadow_res = 0, fire_res = 0, frost_res = 0, nature_res = 0 where entry = 83488; -- Uldum Construct Stompers
update item_template set stat_value2 = 18, stat_value3 = 0, shadow_res = 12, spellid_1 = 0 where entry = 83466; -- Baneforged Leggings
update item_template set spellid_1 = 7597, spellid_2 = 18098, spelltrigger_2 = 1 where entry = 83454; -- Deathrune Leggings
-- stuff
update item_template set spellid_1 = 18384, spellid_2 = 18048, spelltrigger_2 = 1 where entry = 61185; -- Dawnstone Hammer
update item_template set stat_value2 = 3, stat_value1 = 3, stat_value5 = 3 where entry = 80796; -- Tattered Cloak of the Insurgency
update item_template set spellid_2 = 7597, spellid_4 = 45433, spelltrigger_4 = 1 where entry = 50429; -- Spear of the Endless Hunt
update item_template set dmg_min1 = 66, dmg_max1 = 124, delay = 2700 where entry = 60902; -- Gelkis Earthbinder
update item_template set display_id = 34533 where entry = 61526; -- Jadestone Protector
update item_template set spellid_2 = 45859, spelltrigger_1 = 2, name = 'Breath of Solnius', description = 'Brimming with life energies.', display_id = 23285 where entry = 61527; -- Scale of Erennius
-- attach spells
update item_template set spellid_2 = 45861, spelltrigger_2 = 1, description = '' where entry = 61185; -- Chromie's Broken Pocket Watch
update item_template set spellid_1 = 45864, spelltrigger_1 = 1 where entry = 61547; -- Totem of Bad Mojo
update item_template set spellid_1 = 45863, spelltrigger_1 = 1, description = '' where entry = 61443; -- Libram of the Faithful

-- fix garden shovel
update item_template set stat_value1 = 4, dmg_max1 = 42, dmg_min1 = 22, delay = 2000, max_durability = 75 where entry = 51719; -- Garden Shovel
-- attach spell and adjust kara10 items
update item_template set spellid_3 = 45857, spelltrigger_3 = 1, description = '' where entry = 61299; -- Shawl of the Castellan
update item_template set stat_value1 = 20, nature_res = 10, armor = 167, spellid_1 = 45530 where entry = 51731; -- Venom Covered Cloak
update item_template set stat_value1 = 15, spellid_1 = 45530, spellid_2 = 45420, spelltrigger_2 = 1 where entry = 61261; -- Battlescarred Cloak
update item_template set stat_value1 = 20, nature_res = 15, spellid_1 = 45530, spellid_2 = 15714, spelltrigger_2 = 1 where entry = 61269; -- Clutchweave Robe
update item_template set spellid_1 = 45530, spellid_2 = 9417 where entry = 61294; -- Dark Rider's Signet
update item_template set spellppmRate_1 = 3 where entry = 17182; -- Sulfuras, Hand of Ragnaros

-- buff dawnstone hammer and other stuff
update item_template set spellid_1 = 18384, spellid_2 = 18048, spelltrigger_2 = 1 where entry = 61185; -- Dawnstone Hammer
update item_template set stat_value2 = 3, stat_value1 = 3, stat_value5 = 3 where entry = 80796; -- Tattered Cloak of the Insurgency
update item_template set spellid_2 = 7597, spellid_4 = 45433, spelltrigger_4 = 1 where entry = 50429; -- Spear of the Endless Hunt
update item_template set dmg_min1 = 66, dmg_max1 = 124, delay = 2700 where entry = 60902; -- Gelkis Earthbinder
update item_template set display_id = 34533 where entry = 61526; -- Jadestone Protector

-- buff and adjust hyjal armory item rewards
update item_template set stat_value1 = 12, stat_value2 = 9, stat_type2 = 6, spellid_1 = 23727, spellid_2 = 9417 where entry = 61753; -- Drape of Nordrassil
update item_template set dmg_min1 = 55, dmg_max1 = 102, stat_value1 = 10, stat_value2 = 9, stat_type2 = 3, spellid_2 = 13679 where entry = 61755; -- Stagwood Grasp
update item_template set stat_value2 = 20, stat_value3 = 19, stat_value4 = 0, spellid_1 = 45530 where entry = 61756; -- Nordanaar Guardian Spaulders
update item_template set stat_value1 = 28, spellid_2 = 57158, spelltrigger_2 = 1, spellid_1 = 18031 where entry = 61757; -- Dreambreeze Cowl
update item_template set stat_value1 = 16, stat_value2 = 16, stat_value3 = 13, spellid_1 = 8815 where entry = 61758; -- Cloverlink Belt
-- ques adjustments
update item_template set display_id = 67782, stat_value1 = 13, spellid_1 = 9334 where entry = 60003; -- Remains of an Old God
update item_template set item_level = 83, spellid_1 = 28693 where entry = 22803; -- Midnight Haze
update item_template set stat_value1 = 10, stat_value2 = 8, spellid_2 = 21363, spelltrigger_2 = 1 where entry = 23029; -- Noth's Frigid Heart
update item_template set stat_value1 = 10, stat_value2 = 10, spellid_1 = 18031, spellid_2 = 8815, spelltrigger_2 = 1 where entry = 83480; -- Tome of Infalliable Truth
update item_template set stat_value1 = 15, spellid_2 = 13679 where entry = 83484; -- Desert Wind Talisman
update item_template set stat_value1 = 19, spellid_2 = 48034 where entry = 83486; -- Sandstalker's Shroud
update item_template set spellid_1 = 18036, spellid_2 = 0 where entry = 83531; -- Clutch of Mending Winds
update item_template set stat_value2 = 25, spellid_2 = 13665, spellid_3 = 13386, spelltrigger_3 = 1, nature_res = 0, shadow_res = 0, fire_res = 0, frost_res = 0, nature_res = 0 where entry = 83488; -- Uldum Construct Stompers
update item_template set stat_value2 = 18, stat_value3 = 0, shadow_res = 12, spellid_1 = 0 where entry = 83466; -- Baneforged Leggings
update item_template set spellid_1 = 7597, spellid_2 = 18098, spelltrigger_2 = 1 where entry = 83454; -- Deathrune Leggings
-- stuff
update item_template set spellid_1 = 18384, spellid_2 = 18048, spelltrigger_2 = 1 where entry = 61185; -- Dawnstone Hammer
update item_template set stat_value2 = 3, stat_value1 = 3, stat_value5 = 3 where entry = 80796; -- Tattered Cloak of the Insurgency
update item_template set spellid_2 = 7597, spellid_4 = 45433, spelltrigger_4 = 1 where entry = 50429; -- Spear of the Endless Hunt
update item_template set dmg_min1 = 66, dmg_max1 = 124, delay = 2700 where entry = 60902; -- Gelkis Earthbinder
update item_template set display_id = 34533 where entry = 61526; -- Jadestone Protector
update item_template set spellid_2 = 45859, spelltrigger_1 = 2, name = 'Breath of Solnius', description = 'Brimming with life energies.', display_id = 23285 where entry = 61527; -- Scale of Erennius
-- attach spells
update item_template set spellid_2 = 45861, spelltrigger_2 = 1, description = '' where entry = 61185; -- Chromie's Broken Pocket Watch
update item_template set spellid_1 = 45864, spelltrigger_1 = 1 where entry = 61547; -- Totem of Bad Mojo
update item_template set spellid_1 = 45863, spelltrigger_1 = 1, description = '' where entry = 61443; -- Libram of the Faithful

-- blood ring exalted rings
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60004, 'Loop of Triage', '', 4, 0, 1, 4, 9833, 1, 60, 1, -1, -1, 254521, 63630, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 7, 13, 45530, 1, 0, 0, 0, 0, 0, 18031, 1, 0, 0, -1, 0, -1, 0, 1008, 7);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60005, 'Signet of the Battlecaster', '', 4, 0, 1, 4, 9839, 1, 60, 1, -1, -1, 253915, 63478, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 7, 13, 45530, 1, 0, 0, 0, 0, 0, 15714, 1, 0, 0, -1, 0, -1, 0, 1008, 7);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (60006, 'Ring of Blood', '', 4, 0, 1, 4, 24087, 1, 60, 1, -1, -1, 256409, 64102, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 7, 13, 45530, 1, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9332, 1, 0, 0, -1, 0, -1, 0, 1008, 7);
-- towerforge for master blacksmith guy
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank, set_id) values (60007, 'Towerforge Crown', '', 4, 3, 5, 4, 27789, 2, 60, 0, -1, -1, 156915, 39228, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 85, 343, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 4, 25, 7, 27, 8815, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 630);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank, set_id) values (60008, 'Towerforge Breastplate', '', 4, 3, 5, 4, 27784, 2, 60, 0, -1, -1, 215919, 53979, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 140, 422, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 4, 20, 7, 23, 7598, 1, 0, 0, -1, 0, -1, 13679, 1, 0, 0, 0, 0, 0, 0, 0, 0, 630);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank, set_id) values (60009, 'Towerforge Pauldrons', '', 4, 3, 5, 4, 27790, 2, 60, 0, -1, -1, 165953, 41488, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 85, 317, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 4, 17, 7, 20, 7597, 1, 0, 0, -1, 0, -1, 13679, 1, 0, 0, 0, 0, 0, 0, 0, 0, 630);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank, set_id) values (60010, 'Towerforge Demolisher', '', 2, 5, 1, 4, 67815, 2, 60, 0, -1, -1, 453683, 113420, 17, 1, 0, 0, 1, 1, 0, 173, 291, 3700, 0, 0, 120, 0, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 48102, 2, 0, 0.8, 30000, 0, -1, 0, 0, 0, 630);
-- fix
update item_template set stat_type3 = 7 where entry = 22385; -- Titanic Leggings
update item_template set dmg_min1 = 43, dmg_max1 = 92 where entry = 19910; -- Arlokk's Grasp

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (62923, 2849, 1, 5.11241, -692.71, -19.1304, 3.03684, 0, 0, 0.998629, 0.0523532, 3600, 14400, 100, 1, 0, 0);

-- remove the dummy ship that triest to stop in Southshore

DELETE FROM `transports` WHERE `guid` = 13;
DELETE FROM `gameobject_template` WHERE `entry` = 176533;

-- fix
update item_template set stat_type3 = 7 where entry = 22385; -- Titanic Leggings
update item_template set dmg_min1 = 43, dmg_max1 = 92, spellppmrate_1 = 4 where entry = 19910; -- Arlokk's Grasp
update item_template set stat_value1 = 27, stat_value2 = 23, spellid_1 = 15464, spellid_2 = 0 where entry = 23244; -- Champion's Plate Helm
update item_template set stat_value1 = 27, stat_value2 = 23, spellid_1 = 15464, spellid_2 = 0 where entry = 23314; -- Lieutenant Commander's Plate Helm

-- fifth of the effect
update spell_template SET effectBasePoints1 = 3, description = 'Increases the melee attack power bonus of your Seal of the Crusader by $s1 and the Holy damage increase of your Crusader Strike by $s2 per stack.a' WHERE entry = 23300; -- Seal of the Crusader Judgement Increase
update spell_template SET effectBasePoints2 = 6, description = 'Increases the Holy damage bonus of your Crusader Strike by $s1 per stack.' WHERE entry = 28852; -- Improved Seal of the Crusader
-- fix typo
update spell_template SET Description = 'Friendly units within a $a1 yard radius attack $s1% faster.' WHERE entry = 57078; -- Alpha Presence
-- fix spell names for their new uses
update spell_template SET Name = 'Power Surge' WHERE entry = 45496; -- Lionheart
update spell_template SET Name = 'Power Surge', SpellIconID = 122 WHERE entry = 45495; -- Lionheart
update spell_template SET Name = 'Rolfen\'s Fury' WHERE entry = 48102; -- World Breaker
update spell_template SET Description = 'You have a $s1% chance to reflect harmful spells.' WHERE entry = 45847; -- Reflect
-- buff eskhander proc chance
update spell_template SET procChance = 3 WHERE entry = 22648; -- Call of Eskhandar

-- Make sure the Kamio Fan has displayid 61015, if it already has that displayid, change it from a sword to thrown. If it does not have that displayid, then simply fix it, no need to change it from a sword. (Currently it is a cube and I am not sure why, the model and path and such is as it should be)
UPDATE `item_template` SET `display_id` = 61015 WHERE `entry` = 61773;