-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1597
delete from npc_vendor where item = 5110; 
delete from npc_vendor where item = 83090; 
delete from npc_vendor where item = 81224; 
update creature_template set npc_flags = 0 where entry = 2120;
delete from creature_template where entry = 81045;
delete from creature where id = 81045;
replace into npc_vendor values (80953, 81289, 0, 0, 0, 0);
update item_template set buy_price = 50000, sell_price = 15000 where entry in (81289, 80312, 80308);
update item_template set name = 'Dalaran Warhorse (Removed)' where entry = 81224;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1593
update quest_template set requiredraces = 434 where entry = 834;
update quest_template set requiredraces = 434 where entry = 835;

-- Citadel spells and stuff
update item_template set stat_value1 = 25, stat_value2 = 25, spellid_3 = 9336 where entry = 84005;
update item_template set spellid_1 = 7597 where entry = 84005;
update item_template set spellid_1 = 46078 where entry = 65031;
update item_template set name = 'Emblem of the Scarlet Crusade', max_count = 1 where entry = 84006;
update item_template set stackable = 20 where entry = 65032;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1587

-- Mailbox (Orc)
delete from gameobject_template where name = 'Mailbox' and displayid = 2128;
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values 
(173221, 19, 2128, 'Horde Mailbox', 29, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 173221 where id in (143981, 143982, 143984, 143985, 143988, 143989, 143990, 144126, 144127, 157637, 163313, 163645, 164840, 173047, 173221, 178864, 143986, 175864, 186629, 188132);
-- Mailbox (Human)
delete from gameobject_template where name = 'Mailbox' and displayid = 1907;
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values 
(144131, 19, 1907, 'Alliance Mailbox', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 144131 where id in (142075, 142089, 142093, 142094, 142095, 143987, 144128, 144129, 144130, 144131, 144570, 153716, 164618, 181236);
-- Mailbox (Troll)
delete from gameobject_template where name = 'Mailbox' and displayid = 5971;
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values 
(179895, 19, 5971, 'Primitive Mailbox', 29, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 179895 where id in (179895, 179896, 1000455);
-- Mailbox (Night Elf)
delete from gameobject_template where name = 'Mailbox' and displayid = 1948;
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values 
(142109, 19, 1948, 'Ornamental Mailbox', 80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 142109 where id in (142109, 142110, 142111, 142117, 180451, 176319, 142119, 181639, 188123);
-- Mailbox (Gnome)
delete from gameobject_template where name = 'Mailbox' and displayid = 2190;
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values 
(144112, 19, 2190, 'Mechanical Mailbox', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 144112 where id in (144112, 144125, 144179, 171752, 176404);
-- Mailbox (Dwarf)
delete from gameobject_template where name = 'Mailbox' and displayid = 1947;
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values 
(142102, 19, 1947, 'Dwarven Mailbox', 55, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 142102 where id in (32349, 142102, 144011, 171556, 171699, 142103);
-- Mailbox (Tauren)
delete from gameobject_template where name = 'Mailbox' and displayid = 2690;
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values 
(143983, 19, 2690, 'Carved Mailbox', 29, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 143983 where id in (143983, 153578, 176324, 187260);
-- Mailbox (Undead)
update gameobject_template set name = 'Creaking Mailbox' where entry = 1000391;
-- Other
update gameobject_template set name = 'Damaged Mailbox' where entry = 177044;
update gameobject_template set name = 'Thalassian Mailbox' where entry = 3000208;
delete from gameobject_template where entry = 140908;

-- Depreated stuff:
delete from creature_template where entry = 50030;
delete from creature_template where entry = 50029;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1609
update quest_template set details = 'I\'m losing my mind down here. We\'ve been told to stay a bit under the roof for a while after the old Brightwater took a few cannonballs to the side.\n\nBeen forced to stay in refuge for a few days now and I\'m going loopy! Aaah, if only there was a way to get some booze... Wait a second, you can get booze.\n\nSince we can\'t, make a trip up to The Salty Sailor and get me the following... Ahem...\n\n5 Jugs of Bourbon\n3 Flagons of Mead\n10 Flasks of Port\n...and 10 Cherry Grogs!' where entry = 55025;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1610
update item_template set quality = 3 where entry = 60372;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1596
update creature_template set npc_flags = 16388 where entry = 91977;
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 851, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 852, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 853, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 854, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 922, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 923, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 924, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 925, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 926, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 927, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 928, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 1196, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 1197, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 1198, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2024, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2025, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2026, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2027, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2028, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2029, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2030, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2207, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2208, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2209, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2507, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2512, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 2515, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 3026, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 5439, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 11362, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 15903, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 15904, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 15905, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 15906, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 15907, 0, 0, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (91977, 15909, 0, 0, 0, 0);
