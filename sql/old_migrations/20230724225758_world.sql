-- fix up ornate bloodstone dagger craft recipe
update spell_template SET reagentCount1 = 14, reagentCount3 = 1, reagentCount4 = 1, reagent5 = 8846 WHERE entry = 46657; -- Ornate Bloodstone Dagger
-- attach buckle items to recipes
update spell_template SET EffectItemType1 = 61779 WHERE entry = 57163; -- Copper Buckle
update spell_template SET EffectItemType1 = 61780 WHERE entry = 57166; -- Bronze Buckle
update spell_template SET EffectItemType1 = 61781 WHERE entry = 57169; -- Iron Buckle
update spell_template SET EffectItemType1 = 61782 WHERE entry = 57172; -- Mithril Buckle
update spell_template SET EffectItemType1 = 61783 WHERE entry = 57175; -- Thorium Buckle
update spell_template SET EffectItemType1 = 61784 WHERE entry = 57178; -- Arcanite Buckle
update spell_template SET EffectItemType1 = 61785 WHERE entry = 57181; -- Dreamsteel Buckle
-- fix rugged leather armor kit
update spell_template SET Name = 'Armor +40/Stamina +5', Description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 40 and Stamina by 5. Only usable on items level 35 and above.' WHERE entry = 19057; -- Armor +40 (Rugged Armor Kit


-- fix up ornate bloodstone dagger craft recip
update spell_template SET reagentCount1 = 14, reagentCount3 = 1, reagentCount4 = 1, reagent5 = 8846 WHERE entry = 46657; -- Ornate Bloodstone Dagger
-- attach buckle items to recipes
update spell_template SET EffectItemType1 = 61779 WHERE entry = 57163; -- Copper Buckle
update spell_template SET EffectItemType1 = 61780 WHERE entry = 57166; -- Bronze Buckle
update spell_template SET EffectItemType1 = 61781 WHERE entry = 57169; -- Iron Buckle
update spell_template SET EffectItemType1 = 61782 WHERE entry = 57172; -- Mithril Buckle
update spell_template SET EffectItemType1 = 61783 WHERE entry = 57175; -- Thorium Buckle
update spell_template SET EffectItemType1 = 61784 WHERE entry = 57178; -- Arcanite Buckle
update spell_template SET EffectItemType1 = 61785 WHERE entry = 57181; -- Dreamsteel Buckle
-- fix rugged leather armor kit
update spell_template SET Name = 'Armor +40/Stamina +5', Description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 40 and Stamina by 5. Only usable on items level 35 and above.' WHERE entry = 19057; -- Armor +40 (Rugged Armor Kit)

-- fix stuff
update item_template set spellid_2 = 45861, spelltrigger_2 = 1, description = '' where entry = 61564; -- Chromie's Broken Pocket Watch
update item_template set spellid_1 = 18384, spellid_2 = 18048, spelltrigger_2 = 1 where entry = 61185; -- Dawnstone Hammer
update item_template set required_spell = 17040 where entry = 61189; -- Plans: Dawnstone Hammer
update item_template set spelltrigger_1 = 1, spelltrigger_2 = 1 where entry = 61527; -- Breath of Solnius
update item_template set spellid_1 = 16928, spellppmrate_1 = 1 where entry = 12798; -- Annihilator
update item_template set stat_value3 = 16, stat_value1 = 26, stat_value2 = 21, stat_type3 = 5, stat_type2 = 7, spellid_3 = 9344 where entry = 61239; -- Ancient Jade Leggings
update item_template set required_skill_rank = 300 where entry = 61785; -- Dreamsteel Buckle
-- link towerforge armor set
update item_template set set_id = 630 where entry = 60007;
update item_template set set_id = 630 where entry = 60008;
update item_template set set_id = 630 where entry = 60009;
update item_template set set_id = 630 where entry = 60010;
-- fix text
update item_template set description = 'Swirling with powerful arcane magics.', name = 'Enchanted Brass Key' where entry = 60242; -- Enchanted Brass key
