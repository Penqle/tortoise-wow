-- Buff White Items to Uncommon Items
-- Tailoring
update item_template set quality = 2, disenchant_id = 4, bonding = 1, armor = 34, buy_price = 6220, sell_price = 1244, stat_type1 = 5, stat_value1 = 8, spellid_1 = 7701, spelltrigger_1 = 1 where entry = 7048; -- Azure Silk Hood
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 49, buy_price = 16648, sell_price = 3329, stat_type1 = 5, stat_value1 = 8, spellid_1 = 9294, spelltrigger_1 = 1 where entry = 7058; -- Crimson Silk Vest
update item_template set quality = 2, disenchant_id = 5, bonding = 1, armor = 36, buy_price = 7787, sell_price = 1257, stat_type1 = 7, stat_value1 = 9, stat_type2 = 6, stat_value2 = 7 where entry = 7050; -- Silk Headband
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 45, buy_price = 19495, sell_price = 3899, stat_type1 = 5, stat_value1 = 11, stat_type2 = 6, stat_value2 = 10 where entry = 7062; -- Crimson Silk Pantaloons
update item_template set quality = 2, disenchant_id = 1, bonding = 1, armor = 15, buy_price = 1012, sell_price = 253, stat_type1 = 5, stat_value1 = 2 where entry = 2584; -- Woolen Cape
update item_template set quality = 2, disenchant_id = 4, bonding = 1, armor = 29, buy_price = 4480, sell_price = 896, stat_type1 = 7, stat_value1 = 4, stat_type2 = 6, stat_value2 = 4 where entry = 4315; -- Reinforced Woolen Shoulders
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 30, buy_price = 1792, sell_price = 358, stat_type1 = 7, stat_value1 = 5 where entry = 2582; -- Green Woolen Vest
update item_template set name = 'Azure Silk Shoulders' where entry = 8795; -- Azure Shoulders
-- Leatherworking
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 53, buy_price = 2735, sell_price = 547, stat_type1 = 3, stat_value1 = 5 where entry = 2315; -- Dark Leather Boots
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 18, buy_price = 2808, sell_price = 561, stat_type1 = 3, stat_value1 = 4 where entry = 2316; -- Dark Leather Cloak
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 106, buy_price = 24677, sell_price = 4935, stat_type1 = 7, stat_value1 = 8, stat_type2 = 6, stat_value2 = 8, stat_type3 = 3, stat_value3 = 8 where entry = 5739; -- Barbaric Harness
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 84, buy_price = 6780, sell_price = 1356, stat_type1 = 7, stat_value1 = 5, stat_type2 = 6, stat_value2 = 4, stat_type3 = 3, stat_value3 = 5 where entry = 2314; -- Toughened Leather Tunic
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 40, buy_price = 969, sell_price = 193, stat_type1 = 5, stat_value1 = 2, stat_type2 = 7, stat_value2 = 2 where entry = 4246; -- Fine Leather Belt
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 51, buy_price = 1926, sell_price = 385, stat_type1 = 5, stat_value1 = 3, stat_type2 = 7, stat_value2 = 2 where entry = 2307; -- Fine Leather Boots
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 66, buy_price = 11497, sell_price = 2299, stat_type1 = 5, stat_value1 = 8, spellid_1 = 21361, spelltrigger_1 = 1 where entry = 5966; -- Guardian Gloves
-- Blacksmithing
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 91, buy_price = 1563, sell_price = 312, stat_type1 = 4, stat_value1 = 3, stat_type2 = 7, stat_value2 = 2 where entry = 2857; -- Runed Copper Belt
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 72, buy_price = 1865, sell_price = 373, stat_type1 = 4, stat_value1 = 2, stat_type2 = 7, stat_value2 = 2 where entry = 2854; -- Runed Copper Bracers
update item_template set quality = 2, disenchant_id = 5, bonding = 1, armor = 91, buy_price = 8859, sell_price = 1771, stat_type1 = 4, stat_value1 = 4, stat_type2 = 7, stat_value2 = 5 where entry = 3835; -- Green Iron Bracers
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 96, buy_price = 12487, sell_price = 2497, stat_type1 = 4, stat_value1 = 7, spellid_1 = 48029, spelltrigger_1 = 1 where entry = 6040; -- Golden Scale Bracers
update item_template set quality = 2, disenchant_id = 7, bonding = 1, armor = 395, buy_price = 19824, sell_price = 3964, stat_type1 = 7, stat_value1 = 14 where entry = 7922; -- Steel Helm
update item_template set quality = 2, disenchant_id = 1, bonding = 1, armor = 76, buy_price = 728, sell_price = 182, stat_type1 = 4, stat_value1 = 2, stat_type2 = 7, stat_value2 = 1 where entry = 3472; -- Runed Copper Gauntlets
-- Buffing Rare Recipe Crafts to Rare Items
update item_template set quality = 3, disenchant_id = 3, armor = 50, max_durability = 90, dmg_min1 = 45, dmg_max1 = 88, buy_price = 12576, sell_price = 25141, stat_type1 = 7, stat_type2 = 4, stat_value1 = 8 where entry = 7946; -- Runed Mithril Hammer
update item_template set quality = 3, disenchant_id = 44, armor = 83, max_durability = 50, stat_value2 = 5, stat_value1 = 12, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 7390; -- Dusky Boots
update item_template set quality = 3, disenchant_id = 44, armor = 44, max_durability = 50, buy_price = 15862, sell_price = 3172, stat_value1 = 18, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 4393; -- Craftsman's Monocle
update item_template set quality = 3, disenchant_id = 44, armor = 174, max_durability = 60, buy_price = 30915, sell_price = 6183, stat_value1 = 13, stat_value2 = 0, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 3847; -- Golden Scale Boots
update item_template set quality = 3, disenchant_id = 44, armor = 177, max_durability = 70, stat_value1 = 10, stat_value2 = 0, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 3841; -- Golden Scale Shoulders
update item_template set quality = 3, disenchant_id = 46, armor = 213, max_durability = 70, buy_price = 51825, sell_price = 10365, stat_value1 = 0, stat_value2 = 0, spellid_1 = 12310, spelltrigger_1 = 1 where entry = 7932; -- Mithril Scale Shoulders
update item_template set quality = 3, disenchant_id = 43, armor = 62, max_durability = 35, buy_price = 10277, sell_price = 2055, stat_type2 = 0, stat_value2 = 0, stat_value1 = 9, spellid_1 = 9398, spelltrigger_1 = 1, spellid_2 = 21360, spelltrigger_2 = 1 where entry = 4258; -- Guardian Belt
update item_template set quality = 3, disenchant_id = 44, armor = 68, max_durability = 35, stat_value1 = 14 where entry = 4264; -- Barbaric Belt
update item_template set quality = 3, disenchant_id = 44, armor = 98, max_durability = 60, stat_value1 = 14, spellid_1 = 18676, spelltrigger_1 = 1 where entry = 8174; -- Comfortable Leather Hat
update item_template set quality = 3, disenchant_id = 45, armor = 51, max_durability = 50, spellid_1 = 18049, spelltrigger_1 = 1 where entry = 10502; -- Spellpower Goggles Xtreme
-- Crafted Pseudo-Set Buffs
-- Guardian Set
update item_template set stat_type2 = 0, stat_value2 = 0, stat_value1 = 11, spellid_1 = 21361, spelltrigger_1 = 1 where entry = 4256; -- Guardian Tunic
update item_template set stat_type2 = 0, stat_value2 = 0, stat_value1 = 6, stat_type1 = 5, spellid_1 = 21360, spelltrigger_1 = 1 where entry = 3965; -- Guardian Cloak
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 21360, spelltrigger_1 = 1, name = 'Guardian Bracers' where entry = 5966; -- Guardian Leather Bracer
update item_template set stat_type2 = 0, stat_value2 = 0, stat_value1 = 9, spellid_1 = 21361, spelltrigger_1 = 1 where entry = 5962; -- Guardian Pants
-- Mithril Scale Set
update item_template set stat_type1 = 3 where entry = 7924; -- Mithril Scale Bracers
update item_template set stat_type1 = 7 where entry = 7920; -- Mithril Scale Pants
update item_template set stat_type1 = 3 where entry = 7925; -- Mithril Scale Gloves
-- Golden Scale Set
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48034, spelltrigger_1 = 1 where entry = 3837; -- Golden Scale Coif
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48031, spelltrigger_1 = 1 where entry = 3845; -- Golden Scale Cuirass
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48029, spelltrigger_1 = 1 where entry = 9366; -- Golden Scale Gauntlets
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48030, spelltrigger_1 = 1 where entry = 3843; -- Golden Scale Leggings
-- Rough Bronze Set
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 111, buy_price = 2345, sell_price = 469, stat_type1 = 7, stat_value1 = 3, spellid_1 = 7514, spelltrigger_1 = 1 where entry = 6350; -- Rough Bronze Boots
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 177, buy_price = 6562, sell_price = 1312, stat_type1 = 7, stat_value1 = 6, spellid_1 = 7517, spelltrigger_1 = 1 where entry = 2866; -- Rough Bronze Cuirass
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 130, buy_price = 1276, sell_price = 319, stat_type1 = 7, stat_value1 = 5, spellid_1 = 7514, spelltrigger_1 = 1 where entry = 3480; -- Rough Bronze Shoulders
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 7516, spelltrigger_1 = 1 where entry = 2865; -- Rough Bronze Leggings
update item_template set stat_value1 = 3, spellid_1 = 7514, spelltrigger_1 = 1 where entry = 2867; -- Rough Bronze Bracers
-- Runic Leather Set
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 15092; -- Runic Leather Bracers
update item_template set stat_value1 = 18, stat_type2 = 0, stat_value2 = 0, spellid_1 = 23727, spelltrigger_1 = 1, spellid_2 = 9342, spelltrigger_2 = 1 where entry = 15090; -- Runic Leather Armor
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 9416, spelltrigger_1 = 1 where entry = 15093; -- Runic Leather Belt
update item_template set stat_type1 = 5, stat_value1 = 13, stat_type2 = 0, stat_value2 = 0, spellid_1 = 9416, spelltrigger_1 = 1 where entry = 15091; -- Runic Leather Gauntlets
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 9342, spelltrigger_1 = 1 where entry = 15094; -- Runic Leather Headband
update item_template set stat_type1 = 5, stat_value1 = 20, stat_type2 = 0, stat_value2 = 0, spellid_1 = 9397, spelltrigger_1 = 1, spellid_2 = 9342, spelltrigger_2 = 1 where entry = 15095; -- Runic Leather Pants
update item_template set stat_value1 = 12, stat_type2 = 0, stat_value2 = 0, spellid_1 = 9416, spelltrigger_1 = 1, spellid_2 = 25975, spelltrigger_2 = 1 where entry = 15096; -- Runic Leather Shoulders
-- Tough Scorpid Set
update item_template set stat_type2 = 7 where entry = 8209; -- Tough Scorpid Boots
update item_template set stat_type2 = 7 where entry = 8205; -- Tough Scorpid Bracers
update item_template set stat_type2 = 7 where entry = 8203; -- Tough Scorpid Breastplate
update item_template set stat_type2 = 7 where entry = 8204; -- Tough Scorpid Gloves
update item_template set stat_type2 = 7 where entry = 8208; -- Tough Scorpid Helm
update item_template set stat_type2 = 7 where entry = 8206; -- Tough Scorpid Leggings
update item_template set stat_type2 = 7 where entry = 8207; -- Tough Scorpid Shoulders
-- Heavy Scorpid Set
update item_template set stat_type2 = 4, stat_value1 = 14, stat_value2 = 9 where entry = 15082; -- Heavy Scorpid Belt
update item_template set item_level = 55, required_level = 50, armor = 130, stat_type2 = 4, stat_value1 = 10, stat_value2 = 6 where entry = 15077; -- Heavy Scorpid Bracers
update item_template set item_level = 58, required_level = 53, armor = 313, stat_type2 = 4, stat_value1 = 14, stat_value2 = 13, spellid_1 = 13669, spelltrigger_1 = 1 where entry = 15076; -- Heavy Scorpid Vest
update item_template set item_level = 60, required_level = 55, armor = 201, stat_type2 = 4, stat_value1 = 14, stat_value2 = 11 where entry = 15078; -- Heavy Scorpid Gauntlets
update item_template set stat_type2 = 4, stat_value1 = 16, stat_value2 = 11, spellid_1 = 13669, spelltrigger_1 = 1 where entry = 15080; -- Heavy Scorpid Helm
update item_template set stat_type2 = 4, stat_value1 = 19, stat_value2 = 12 where entry = 15079; -- Heavy Scorpid Leggings
update item_template set stat_type2 = 4, stat_value1 = 10, stat_value2 = 9, spellid_1 = 13669, spelltrigger_1 = 1 where entry = 15081; -- Heavy Scorpid Shoulders
-- Heavy Scorpid Recipe Bumps
update item_template set item_level = 55, required_skill_rank = 275, sell_price = 4000, buy_price = 16000  where entry = 15724; -- Pattern: Heavy Scorpid Bracers
update item_template set item_level = 58, required_skill_rank = 290, sell_price = 6000, buy_price = 24000 where entry = 15727; -- Pattern: Heavy Scorpid Vest
update item_template set item_level = 60, required_skill_rank = 300, sell_price = 10000, buy_price = 40000 where entry = 15738; -- Pattern: Heavy Scorpid Gauntlets
-- Blue Dragon Mail Set
update item_template set stat_value1 = 21, stat_value2 = 0, stat_type2 = 0, spellid_1 = 14248, spelltrigger_1 = 1 where entry = 15048; -- Blue Dragonscale Breastplate
update item_template set stat_value2 = 0, stat_type2 = 0, spellid_1 = 15714, spelltrigger_1 = 1 where entry = 20295; -- Blue Dragonscale Leggings
update item_template set stat_value1 = 17, stat_value2 = 0, stat_type2 = 0, spellid_1 = 9345, spelltrigger_1 = 1 where entry = 15049; -- Blue Dragonscale Shoulders
-- Runecloth Set
update item_template set stat_value1 = 8, stat_value2 = 9, spellid_1 = 9415, spelltrigger_1 = 1 where entry = 13856; -- Runecloth Belt
update item_template set stat_value1 = 9, stat_value2 = 9, spellid_1 = 9416, spelltrigger_1 = 1 where entry = 13864; -- Runecloth Boots
update item_template set stat_value1 = 6, stat_value2 = 6, spellid_1 = 9398, spelltrigger_1 = 1 where entry = 13860; -- Runecloth Cloak
update item_template set stat_value1 = 14, spellid_1 = 9343, spelltrigger_1 = 1 where entry = 13866; -- Runecloth Headband
update item_template set stat_value1 = 16, stat_value2 = 11, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 13865; -- Runecloth Pants
update item_template set stat_value1 = 11, stat_value2 = 12, spellid_1 = 9342, spelltrigger_1 = 1 where entry = 13858; -- Runecloth Robe
update item_template set stat_value1 = 11, stat_value2 = 12, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 13867; -- Runecloth Shoulders
update item_template set stat_value1 = 8, stat_value2 = 10, spellid_1 = 9318, spelltrigger_1 = 1 where entry = 13857; -- Runecloth Tunic


