-- Wyvern Roost Hatchling
update item_template set spellid_1 = 46498 where entry = 60770;
replace into companion_spells values (60770, 49521);

update creature_template set display_id1 = 18922 where entry = 60852;
replace into creature_display_info_addon (display_id) values (18922); 

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1888
update quest_template set type = 1 where entry = 55225;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1879
update creature_template set loot_id = 3269 where entry in (60847, 60849);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1874
replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3007, 10508, 3500, 165, 205, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1671
delete from item_template where entry = 83252;	
update spell_template set effectitemtype1 = 83402 where entry = 46623;

