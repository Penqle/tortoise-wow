-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1370
update item_template set material = 7 where entry = 81415;

-- Quest flags for trainers:
update creature_template set npc_flags = 7 where entry = 3091;

update item_template set stat_value1 = 8, stat_type1 = 5, spellid_2 = 18056, stat_value2 = 16, stat_value3 = 0, spellid_1 = 13669, dmg_min1 = 47, dmg_max1 = 111 where entry = 21395;