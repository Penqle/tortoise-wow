-- Wyvern Roost Hatchling
update item_template set spellid_1 = 46498 where entry = 60770;
replace into companion_spells values (60770, 49521);

update creature_template set display_id1 = 18922 where entry = 60852;
replace into creature_display_info_addon (display_id) values (18922);