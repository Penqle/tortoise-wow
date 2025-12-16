-- apply new spells
update item_template set spellid_1 = 16921, spellppmrate_1 = 0.65 where entry = 40080; -- Thunderforge Lance
update item_template set spellid_1 = 45078, spellcooldown_1 = 900000, description = '' where entry = 41060; -- Refined Plague Strain
update item_template set spellid_1 = 45075 where entry = 62008; -- Thornpod
update item_template set stat_value2 = 0, spellid_1 = 23729 where entry = 61564; -- Chromie's Broken Pocket Watch
update item_template set fire_res = 10 where entry = 51265; -- Blast Shield
update item_template set display_id = 68062, spellppmrate_2 = 1.5, spellid_2 = 45076, spellid_1 = 15464, subclass = 5, description = '' where entry = 41076; -- Aspect of Seradane
update item_template set spellppmrate_1 = 2 where entry = 19353; -- drake talon cleaver
update item_template set spellppmrate_1 = 1.4 where entry = 21856; -- Neretzek, The Blood Drinker
update item_template set spellppmrate_1 = 1 where entry = 12798; -- annihilator
