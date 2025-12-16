-- Add these items before duskskitterer edits.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (61610, 'Old Farmer\'s Pitchfork', '', 2, 6, 1, 2, 7464, 2, 41, 0, -1, -1, 62233, 15558, 17, 1, 0, 0, 1, 1, 0, 94, 175, 3700, 0, 0, 85, 0, 0, 0, 46, 0, 8, 0, 0, 0, 0, 0, 0, 4, 12, 3, 14, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (61611, 'Emerald Pendant', '', 4, 0, 1, 2, 6539, 2, 41, 0, -1, -1, 25544, 6386, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 8, 0, 0, 11, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61612, 'Holy Sword', '', 2, 8, 1, 2, 28552, 2, 41, 0, -1, -1, 110000, 27500, 17, 1, 0, 0, 1, 1, 0, 87, 133, 3100, 0, 0, 85, 0, 0, 0, 46, 0, 8, 0, 0, 0, 0, 0, 0, 18031, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- parry items rejoice
update item_template set stat_value1 = 7, spellid_1 = 13674 where entry = 60931; -- Grumnir's Hauberk
update item_template set spellid_1 = 13669 where entry = 60950; -- Wattapo's Bulwark
update item_template set spellid_1 = 13669 where entry = 60819; -- Dustwallow Defender
update item_template set stat_value1 = 9 where entry = 60481; -- Corsair's Leggings
update item_template set stat_value2 = 8, spellid_1 = 0 where entry = 83401; -- Grifter's Tunic
update item_template set stat_value2 = 16, stat_value1 = 12 where entry = 83493; -- Enforcer Captain's Hat
update item_template set stat_value1 = 3 where entry = 60438; -- Vambracers of Kin'Tozo
update item_template set spellid_3 = 8815, spelltrigger_3 = 1 where entry = 13056; -- Frenzied Striker
update item_template set stat_value1 = 0, stat_value2 = 0, description = 'It\'s actually pure gold.' where entry = 60187; -- Jorgy's Golden Ear-Ring
update item_template set stat_value1 = 5, stat_value2 = 0, spellid_2 = 0, spellid_1 = 9331 where entry = 60675; -- Anvilrage Shroud
update item_template set stat_value1 = 7 where entry = 60610; -- Ogre-Head Pauldrons
update item_template set stat_value2 = 13, stat_type2 = 7 where entry = 18305; -- Breakwater Legguards
update item_template set stat_value3 = 13 where entry = 60451; -- Kul Tiras Marine Helmet
update item_template set spellid_3 = 14089 where entry = 11931; -- Dreadforge Retaliator
update item_template set stat_value2 = 5, stat_value3 = 5 where entry = 81362; -- Azure-Scale Sabatons
update item_template set stat_value1 = 19, shadow_res = 10, spellid_1 = 9336 where entry = 83258; -- Coif of the Lost Soul
update item_template set stat_value1 = 20, stat_value2 = 6, armor = 632 where entry = 60736; -- Battlemaster Helm
update item_template set stat_value1 = 14 where entry = 12639; -- Stronghold Gauntlets
update item_template set stat_value1 = 24, spellid_2 = 13390 where entry = 18502; -- Monstrous Glaive
update item_template set stat_value1 = 12, stat_value2 = 14 where entry = 13163; -- Relentless Scythe
update item_template set stat_value1 = 25 where entry = 18690; -- Wraithplate Leggings
update item_template set stat_value1 = 17, stat_value2 = 17, description = 'Worn and scarred by ages of battle.' where entry = 81365; -- Kargron's Leggings
update item_template set stat_value2 = 24 where entry = 82953; -- X-54 Guardian Ocular Implants
update item_template set spellid_2 = 15806 where entry = 18537; -- Counterattack Lodestone
update item_template set spellid_2 = 13387 where entry = 60580; -- Bronze Dragonscale Leggings
update item_template set stat_value1 = 15, stat_value2 = 7, stat_value3 = 7 where entry = 50188; -- Deathforge Belt
update item_template set stat_value1 = 5, armor = 25 where entry = 60384; -- Fleet Scimitar
update item_template set stat_value1 = 16, stat_value2 = 7 where entry = 60908; -- Mantle of Centaur Authority
update item_template set stat_value2 = 13, stat_value3 = 19 where entry = 60390; -- Jacket of the Scarlet Admiral
update item_template set stat_value1 = 24 where entry = 16867; -- Legplates of Might
update item_template set stat_value2 = 9 where entry = 50428; -- Ancient Clutch
update item_template set spellid_2 = 13386 where entry = 21479; -- Gauntlets of the Immovable
update item_template set stat_value1 = 16, stat_value3 = 18, spellid_1 = 13667 where entry = 18542; -- Typhoon
update item_template set stat_value1 = 13 where entry = 19168; -- Blackguard
update item_template set stat_value1 = 22, stat_value2 = 25 where entry = 19354; -- Draconic Avenger
update item_template set stat_value2 = 22, stat_value3 = 14 where entry = 21460; -- Helm of Domination
update item_template set spellid_1 = 13667, spellid_2 = 13386 where entry = 18406; -- Onyxia Blood Talisman
update item_template set stat_value1 = 20, stat_value2 = 10 where entry = 20616; -- Dragonbone Wristguards
update item_template set stat_value1 = 20, stat_value2 = 10 where entry = 65101; -- Dragonbone Waistguard
update item_template set stat_value2 = 17 where entry = 16964; -- Gauntlets of Wrath
update item_template set stat_value2 = 14, stat_value3 = 14, spellid_2 = 13388 where entry = 21598; -- Royal Qiraji Belt

-- Add the items below to the drop tables of the following creatures in a loot table with a drop chance of 0.10% (NPC entries 61424, 61425, 61426, 61364, 61365, 61388, 61389, 61390, 61391, 61417).
REPLACE INTO reference_loot_template VALUES
(30559, 61336, 0, 1, 1, 1, 0),
(30559, 61337, 0, 1, 1, 1, 0),
(30559, 61338, 0, 1, 1, 1, 0),
(30559, 61335, 0, 1, 1, 1, 0),
(30559, 61597, 0, 1, 1, 1, 0),
(30559, 61598, 0, 1, 1, 1, 0),
(30559, 61596, 0, 1, 1, 1, 0),
(30559, 61339, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61424, 30075, 0.1, 0, -30559, 1, 0),
(61425, 30075, 0.1, 0, -30559, 1, 0),
(61426, 30075, 0.1, 0, -30559, 1, 0),
(61364, 30075, 0.1, 0, -30559, 1, 0),
(61365, 30075, 0.1, 0, -30559, 1, 0),
(61388, 30075, 0.1, 0, -30559, 1, 0),
(61389, 30075, 0.1, 0, -30559, 1, 0),
(61390, 30075, 0.1, 0, -30559, 1, 0),
(61391, 30075, 0.1, 0, -30559, 1, 0),
(61417, 30075, 0.1, 0, -30559, 1, 0);
