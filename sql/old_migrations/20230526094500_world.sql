-- NPCS FOR VAGRANT CAMP:
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20403, 0, 0, 0, 0),
(20404, 0, 0, 0, 0);

REPLACE INTO creature_template VALUES
(61534, 1713, 0, 0, 0, 0, 'Councilor Ravencrest', NULL, 0, 42, 42, 2059, 2059, 0, 0, 3568, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61535, 3281, 0, 0, 0, 0, 'Camp Leader Gethenor', NULL, 0, 42, 42, 2059, 2059, 0, 0, 3568, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61536, 1696, 0, 0, 0, 0, 'Camp Chef Velden', 'Meat Vendor', 0, 40, 40, 1752, 1752, 0, 0, 1890, 84, 7, 1, 1.14286, 1, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 8, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 97, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61537, 1508, 0, 0, 0, 0, '\'Quaking\' Kevin', NULL, 0, 40, 40, 1752, 1752, 0, 0, 1890, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 8, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 97, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61538, 3553, 3554, 0, 0, 0, 'Vagrant Camp Refugee', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 84, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61539, 3664, 0, 0, 0, 0, 'Clerk Ebonmere', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61540, 20404, 0, 0, 0, 0, 'Corporal Ranworth', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 84, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61541, 20403, 0, 0, 0, 0, 'Brigade Footman', 'Gilneas Brigade', 0, 55, 55, 7842, 7842, 0, 0, 4500, 84, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 268439552, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20401; set @weapon_1 = 2496; set @weapon_2 = 61241; set @weapon_3 = 0; set @creature = 61541;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20400; set @weapon_1 = 1412; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61540;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20399; set @weapon_1 = 0; set @weapon_2 = 12863; set @weapon_3 = 0; set @creature = 61539;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20398; set @weapon_1 = 2092; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61538;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20397; set @weapon_1 = 2827; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61536;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20396; set @weapon_1 = 15231; set @weapon_2 = 15113; set @weapon_3 = 0; set @creature = 61535;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20395; set @weapon_1 = 60198; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61534;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41490; set @magic_number = 61540;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We once served Gilneas with great pride. It is an odd feeling to be fighting against the powers that hold it hostage.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41489; set @magic_number = 61539;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Ravenshire. We are accommodating to the plight of those affected by the tyranny of Greymane.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41488; set @magic_number = 61537;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Did you hear that?!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41487; set @magic_number = 61536;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It takes a lot of thinking to make a limited amount of food last for a large group of people.$B$BSawdust can be used to thicken or increase portions of food.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41486; set @magic_number = 61535;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I expected Gilneas to be a safe haven for us refugees. I never imagined it would be as bad as Silvepine Forest.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41485; set @magic_number = 61534;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Remember to be careful walking these roads. Dark times have arrived in Gilneas, and only through vigilance can it be restored.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Vendor list: Camp Chef Velden.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 1, 117, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 2, 2287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 3, 3770, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 4, 3771, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 5, 4599, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 6, 8952, 0, 0, 0, 0);

-- Npc Frell Rosewick set scale to 1.
update creature_template set scale = 1 where entry = 61381;
-- Change NPC ID 61533 to have a scale of 2.
update creature_template set scale = 2 where entry = 61533;
-- NPC Hailey Everton change faction to 84.
update creature_template set faction = 84 where entry = 61280;
-- NPC Sergeant Arbington (Entry 61265) add subname <Gilneas Brigade>
update creature_template set subname = 'Gilneas Brigade' where entry = 61265;
-- Add item 61368 as a 3% drop on its own lootgroup to npc Marshal Magnus Greystone (61423).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61423, 61368, 3, 2, 1, 1, 0);
-- Add spell 45489 on use with -1 charges to item Dreamtonic (Entry 61423).
update item_template set spellid_1 = 45489, spellcharges_1 = -1 where entry = 61423;
-- Quest Scouring Greyshire (Entry 40830), remove kill requirements from quest, chain short description to the following: "Recover the Greyshire Manuscripts from the Ruins of Greyshire for Father Oblen at Shademore Tavern in Gilneas."
update quest_template set ReqCreatureOrGOId1 = 0, ReqCreatureOrGOId2 = 0, ReqCreatureOrGOCount1 = 0, ReqCreatureOrGOCount2 = 0, Objectives = 'Recover the Greyshire Manuscripts from the Ruins of Greyshire for Father Oblen at Shademore Tavern in Gilneas.' where entry = 40830;

-- Item fixes by Dragunovi:
-- stuff
update item_template set stat_value1 = 25, stat_value2 = 24, spellid_1 = 7597 where entry = 61291; -- Darkflame Helm
update item_template set stat_value1 = 25, stat_value2 = 25, stat_value3 = 26, spellid_1 = 15464, spelltrigger_1 = 1 where entry = 19372; -- Helm of Endless Rage
update item_template set inventory_type = 9 where entry = 61449; -- Searhide Bracers
update item_template set stat_type1= 7 where entry = 12640; -- LIONHEART HELM
update item_template set stat_value1 = 15, stat_value2 = 15, spellid_1 = 9343 where entry = 61252; -- Red Hat of Destruction
update item_template set dmg_min1 = 68, dmg_max1 = 127 where entry = 21395; -- Blade of Eternal Justice
update item_template set spellid_1 = 18055, spelltrigger_1 = 1, spellid_2 = 26789, spelltrigger_2 = 2, spellcooldown_2 = 150000 where entry = 21891; -- Shard of the Fallen Star
update item_template set spellid_1 = 48035, spelltrigger_1 = 1 where entry = 12798; -- Annihilator
update item_template set armor = 136, stat_value1 = 9, nature_res = 10, spellid_1 = 13670, spelltrigger_1 = 1 where entry = 51731; -- Venom Covered Cloak
update item_template set spellid_1 = 45494, spelltrigger_1 = 1 where entry = 61337; -- Libram of the Justicar
update item_template set spellid_1 = 45523, spelltrigger_1 = 1, description = '' where entry = 61455; -- Idol of the Emerald Rot
update item_template set spellid_2 = 45530, spelltrigger_2 = 1, description = '' where entry = 61294; -- Dark Rider's Signet
update item_template set spellid_1 = 45531, spelltrigger_1 = 1, description = '' where entry = 61251; -- Battlescarred Cloak
update item_template set spellid_2 = 45531, spelltrigger_2 = 1, description = '' where entry = 61269; -- Clutchweave Robe
-- rename stuff for black morass revamp
update item_template set name = 'Greaves of the Elusive' where entry = 61024; -- Greaves of the Ceaseless Expanse
update item_template set name = 'Nightwind Leggings' where entry = 61033; -- Void-Warped Leggings
update item_template set name = 'Gavel of the Northwind' where entry = 61044; -- Gavel of Aqir Superiority
update item_template set name = 'Pauldrons of the Timeless' where entry = 61038; -- Pauldrons of the Black Empire
update item_template set name = 'Lodestone' where entry = 61020; -- Voidstar
-- Feral AP for polearms
update item_template set spellid_1 = 45428, spelltrigger_1 = 1 where entry = 22314; -- Huntsman's Harpoon
update item_template set spellid_1 = 45430, spelltrigger_1 = 1 where entry = 19106; -- Ice Barbed Spear
update item_template set spellid_2 = 45430, spelltrigger_2 = 1 where entry = 20696; -- Crystal Spiked Maul
update item_template set spellid_1 = 45432, spelltrigger_1 = 1 where entry = 60498; -- Halberd of the Bronze Defender
update item_template set spellid_2 = 45432, spelltrigger_2 = 1, required_level = 60, item_level = 65 where entry = 83461; -- Cryptkeeper's Pike
update item_template set spellid_2 = 45433, spelltrigger_2 = 1 where entry = 19167; -- Blackfury
update item_template set spellid_2 = 45433, spelltrigger_2 = 1 where entry = 50429; -- Spear of the Endless Hunt
update item_template set spellid_3 = 45435, spelltrigger_3 = 1 where entry = 19946; -- Tigule's Harpoon
update item_template set spellid_1 = 45442, spelltrigger_1 = 1 where entry = 21635; -- Barb of the Sand Reaver
update item_template set spellid_2 = 45443, spelltrigger_1 = 2 where entry = 18871; -- High Warlord's Pig Sticker
update item_template set spellid_2 = 45443, spelltrigger_1 = 2 where entry = 18869; -- Grand Marshal's Glaive
update item_template set spellid_4 = 45448, spelltrigger_4 = 2 where entry = 23039; -- The Eye of Nerub
-- Rare Drops
-- Shade Mage
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (61500, 'Shadestaff', '', 2, 10, 1, 2, 20446, 1, 14, 0, -1, -1, 6005, 1501, 17, 1, 0, 0, 1, 1, 0, 31, 47, 3100, 0, 0, 65, 0, 0, 0, 19, 0, 22, 0, 0, 0, 0, 0, 0, 5, 8, 6, -4, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (61501, 'Silent Sneakers', '', 4, 2, 8, 2, 27524, 2, 14, 0, -1, -1, 1800, 450, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 52, 0, 0, 19, 0, 22, 0, 0, 0, 0, 0, 0, 3, 2, 6, 3, 0, 0, 0);
-- Earthcaller Rezengal
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61502, 'Earthcaller Staff', '', 2, 10, 1, 2, 20395, 2, 14, 0, -1, -1, 6300, 1575, 17, 1, 0, 0, 1, 1, 0, 28, 42, 2800, 0, 0, 65, 0, 0, 0, 19, 0, 22, 0, 0, 0, 0, 0, 0, 7695, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, random_property, required_reputation_faction, required_reputation_rank) values (61503, 'Rezengal\'s Robe', '', 4, 1, 7, 2, 16522, 2, 14, 0, -1, -1, 1843, 460, 20, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 60, 33, 0, 0, 19, 0, 2, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 0);
-- Blazespark
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (61504, 'Wildfire Girdle', '', 4, 3, 5, 2, 27029, 2, 21, 0, -1, -1, 3515, 878, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 105, 0, 0, 26, 0, 4, 0, 0, 0, 0, 0, 0, 4, 9, 6, -5, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61505, 'Leggings of Fiery Temper', '', 4, 2, 8, 2, 19041, 2, 21, 0, -1, -1, 6315, 1578, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 60, 76, 0, 0, 26, 0, 4, 0, 0, 0, 0, 0, 0, 6, -6, 7711, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- Witch Doctor Tan'zo
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (61506, 'Shard of Wild Hexes', '', 4, 0, 1, 2, 66418, 2, 32, 0, -1, -1, 18493, 4623, 23, 6, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 26, 0, 0, 0, 0, 0, 0, 6, 3, 7710, 1, 0, 0, -1, 0, -1, 7695, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (61507, 'Pendant of Wilderness', '', 4, 0, 1, 2, 6539, 2, 32, 0, -1, -1, 15700, 3925, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 6, 0, 0, 0, 0, 0, 0, 3, 5, 6, 6, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61508, 'Thorned Branch', '', 4, 0, 1, 2, 34924, 2, 32, 1, -1, -1, 16553, 4138, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 6, 0, 0, 0, 0, 0, 0, 6, 6, 20887, 1, 0, 0, -1, 0, -1, 0, 0, 0);
-- Highvale Silverback
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61518, 'Apefist Pummelers', '', 4, 2, 8, 2, 14445, 2, 55, 0, -1, -1, 40887, 10221, 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 30, 96, 0, 0, 60, 0, 29, 0, 0, 0, 0, 0, 0, 4, 15, 48034, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61519, 'Tel Co. Chestguard', '', 4, 4, 6, 2, 16109, 2, 55, 0, -1, -1, 63187, 15796, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 115, 520, 0, 0, 60, 0, 29, 0, 0, 0, 0, 0, 0, 4, 12, 7, 15, 13387, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61520, 'The Golden Banana', 'Holds power over the apekind, yet it\'s afflicted with a terrible curse.', 4, 0, 1, 2, 3288, 2, 55, 1, -1, -1, 30000, 7500, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 10, 0, 0, 0, 0, 0, 0, 5, -8, 3, -5, 18207, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- Stoneshell
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, random_property, required_reputation_faction, required_reputation_rank) values (61509, 'Stoneshell Shield', '', 4, 6, 6, 2, 28269, 2, 53, 0, -1, -1, 101015, 25253, 14, 4, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 85, 1776, 32, 0, 58, 0, 10, 0, 0, 0, 0, 0, 0, 7, 13, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, random_property, required_reputation_faction, required_reputation_rank) values (61510, 'Stonehewn Pauldrons', '', 4, 4, 6, 2, 27396, 2, 53, 0, -1, -1, 45684, 11421, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 70, 499, 32, 0, 58, 0, 10, 0, 0, 0, 0, 0, 0, 7, 13, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61511, 'Scale of the Makrura', '', 4, 0, 1, 2, 23148, 2, 53, 1, -1, -1, 30000, 7500, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 58, 0, 10, 0, 0, 0, 0, 0, 0, 7518, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- Wojitek Quest Rewards
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61512, 'Feralkin Necklace', '', 4, 0, 1, 2, 9860, 1, 0, 0, -1, -1, 21695, 5423, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 8, 0, 0, 0, 0, 0, 0, 3, 4, 24362, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (61513, 'Savage Helmet', '', 4, 4, 6, 2, 32900, 1, 0, 0, -1, -1, 25815, 6453, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 70, 376, 0, 0, 48, 0, 8, 0, 0, 0, 0, 0, 0, 4, 13, 3, 13, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61514, 'Camouflaged Tunic', '', 4, 1, 7, 2, 11892, 1, 0, 0, -1, -1, 34474, 8618, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 70, 63, 0, 0, 48, 0, 8, 0, 0, 0, 0, 0, 0, 6, 14, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61515, 'Leafcovered Leggings', '', 4, 1, 7, 2, 7950, 1, 0, 0, -1, -1, 58310, 14577, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 55, 65, 0, 0, 57, 0, 10, 0, 0, 0, 0, 0, 0, 3, 17, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61516, 'Corrupt Chainmail', '', 4, 3, 5, 2, 25671, 1, 0, 0, -1, -1, 81298, 20324, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 100, 307, 0, 0, 57, 0, 10, 0, 0, 0, 0, 0, 0, 7, 18, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61521, 'Strongstep Boots', '', 4, 2, 8, 2, 18967, 1, 0, 0, -1, -1, 54615, 13653, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 45, 102, 0, 0, 57, 0, 10, 0, 0, 0, 0, 0, 0, 4, 16, 13679, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61517, 'Chimaera\'s Eye', 'This magical gem seems to slowly exude a corossive poison that no armor of man nor monster can endure.', 4, 0, 1, 3, 3491, 1, 0, 1, -1, -1, 40000, 10000, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 47, 0, 0, 0, 0, 0, 0, 48036, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Items made by Ques, includes grammar fix:
-- Ruk'thok items
replace into item_template values
 ('61497', '4', '2', 'Burnt Explorer\'s Tunic', '', '27518', '2', '0', '1', '75480', '18870', '5', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '13', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150', '0', '18', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '0', '1', '0', '0', '85', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('61498', '4', '1', 'Ruk\'thok Slippers', '', '28151', '2', '0', '1', '46056', '11514', '8', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '13', '7', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '51', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '0', '1', '0', '0', '35', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('61499', '2', '19', 'Burning Torch', 'It\'s hot!', '28631', '2', '0', '1', '117096', '29274', '15', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1600', '100',
 '0', '57', '105', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9399', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '2', '0', '0', '0', '55', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
