-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2000
update item_template set disenchant_id = 46 where entry = 83281;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1991
update creature_template set type = 3 where entry = 14349;

-- Remove Some of the Armor Penetration Spells from Sentinel Reputation Items
update item_template set spellid_2 = 0 where entry = 60747;
update item_template set spellid_2 = 0 where entry = 60750;
update item_template set spellid_2 = 0 where entry = 60751;
update item_template set spellid_2 = 48029 where entry = 60752;
-- Remove AP from Crown of Corruption and Ring of Demonic Fury
update item_template set spellid_2 = 0, spellid_1 = 13679 where entry = 60258;
update item_template set spellid_2 = 0, spellid_1 = 13679 where entry = 83217;
-- Otherworldy Name Fix
update item_template set name = 'Otherworldly Blade' where entry = 51793;
update item_template set name = 'Otherworldly Rifle' where entry = 51794;
update item_template set name = 'Otherworldly Robe' where entry = 51792;
-- Integrate New Stats to Nerubian Overseer Items
update item_template set spellid_2 = 14521, spelltrigger_2 = 1 where entry = 51737;
update item_template set spellid_2 = 48034, spelltrigger_2 = 1, shadow_res = 10 where entry = 51734;
update item_template set spellid_2 = 18022, stat_value3 = 22, item_level = 75 where entry = 51740;
