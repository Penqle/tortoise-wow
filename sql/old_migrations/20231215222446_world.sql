-- apply new spells
update item_template set spellid_1 = 45076, spellppmrate_1 = 0.7 where entry = 40080; -- Thunderforge Lance
update item_template set spellid_1 = 45078, spellcooldown_1 = 900000, description = '' where entry = 41060; -- Refined Plague Strain
update item_template set spellid_1 = 45075 where entry = 62008; -- Thornpod
update item_template set stat_value2 = 0, spellid_1 = 23729 where entry = 61564; -- Chromie's Broken Pocket Watch
update item_template set fire_res = 10 where entry = 51265; -- Blast Shield
update item_template set display_id = 68059, spellid_1 = 45076, subclass = 5, description = '' where entry = 41076; -- Aspect of Seradane

-- fix skill req
-- helf
update item_template set required_skill_rank = 75, quality = 2 where entry = 51286;
update item_template set required_skill_rank = 75 where entry = 51285;
update item_template set required_skill_rank = 75 where entry = 51277;
-- goblin
update item_template set required_skill_rank = 75, fire_res = 0 where entry = 51265;
update item_template set required_skill_rank = 75 where entry = 51269;
update item_template set required_skill_rank = 75 where entry = 51263;

-- volatile concoction cd
update item_template set spellcooldown_1 = 300000 where entry = 51262;
update item_template set fire_res = 10 where entry = 51264; -- blast shield
