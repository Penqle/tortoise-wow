-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2092
update quest_template set questlevel = 12 where entry = 80320;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2068 																		
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (3890, 6009, 0, -11451.6, -2714.16, 5.99178, 2.2986, 300, 300, 5, 100, 100, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (2783, 6009, 0, -11264.5, -2560.85, 97.0773, 2.51125, 300, 300, 0, 100, 100, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (2734, 6009, 0, -11275.2, -2557.91, 96.9977, 1.77635, 300, 300, 0, 100, 100, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (2726, 6009, 0, -11261.1, -2525.3, 97.0219, 2.67461, 300, 300, 0, 100, 100, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (2638, 6009, 0, -11513.1, -2685.72, 8.02382, 0.839288, 300, 300, 5, 100, 100, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (2636, 6009, 0, -11306.4, -2551.44, 97.0359, 1.86254, 300, 300, 0, 100, 100, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2056
update quest_template set offerrewardtext = 'Revenge, such a sweet thing, perhaps now, people will know not to step all over Shizwackle!\n\nI\'ve learned a valueable lesson thanks to you pal, not to just trust every old sap with a bundle of gold offering riches.\n\nTake this coin for the trouble, I actually pay people for work!', details = 'Howdy there, don\'t suppose you\'re looking to help out a goblin who has a deep need for revenge huh?\n\nYou see, I used to help out the Venture Co. back in my hayday, and honestly, it was a big mistake. They offered me the deal of a lifetime for my friendship, to supply them with some metal under the table for big profit.\n\nNow, I think its in a goblins blood to follow the smell of gold, but I was robbed, and hoodwinked.\n\nI put my butt on the line for those guys, and they up and haven\'t even contacted me since, I want you to give them a message, no one screws with Shizwackle and lives to tell about it.\n\nI do have a reputation to keep if I ever want to survive out here after all. Head up to The Sludge Fen far to the north, kill their Drudgers and Mercenaries, its with my metal they started this refinery there, maybe when they have less workers they will pay attention.' where entry = 40216;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2057
update quest_template set srcitemid = 5438, srcitemcount = 1 where entry = 40099;
update item_template set name = 'Grelda\'s Poison Vial' where entry = 5438;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2042
update quest_template set questlevel = 22 where entry = 40121;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2034
update item_template set item_level = 10 where entry = 60495;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2018
update item_template set name = 'Gray Kodo' where entry = 15277;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2013
update item_template set display_id = 5228 where entry = 50631;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2025
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23159, 5472, 1, -8490.94, -3029.45, 9.00176, 2.52157, 300, 300, 0, 100, 0, 2);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23158, 5472, 1, -8917.38, -3549.92, 11.1132, 6.0912, 300, 300, 15, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23157, 5472, 1, -8484.69, -3053.96, 10.5458, 4.76781, 300, 300, 5, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23156, 5472, 1, -8544.89, -2971.02, 9.37676, 2.91302, 300, 300, 5, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23155, 5472, 1, -8887.55, -3388.78, 15.2814, 4.597, 300, 300, 15, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23154, 5472, 1, -8359.23, -3022.23, 8.87016, 3.92335, 300, 300, 3, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23153, 5472, 1, -8328.71, -3130.84, 8.74971, 1.79072, 300, 300, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23152, 5472, 1, -8548.93, -2890.6, 10.6462, 2.42978, 300, 300, 15, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23151, 5472, 1, -8513.93, -2835.31, 8.95512, 1.36957, 300, 300, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23150, 5472, 1, -8393, -2877.2, 8.74971, 5.81982, 300, 300, 5, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23149, 5472, 1, -8477.18, -2826.31, 10.3541, 5.64182, 300, 300, 10, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23148, 5472, 1, -8235.05, -2987.86, 9.74969, 5.89639, 300, 300, 3, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23147, 5472, 1, -8604.91, -2846.81, 10.2497, 2.0564, 300, 300, 5, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23146, 5472, 1, -8231.49, -2953.68, 11.8868, 4.20167, 300, 300, 5, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23145, 5472, 1, -8504.63, -2861.31, 10.4551, 4.04395, 300, 300, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23144, 5472, 1, -8290.93, -2893.67, 10.522, 2.56365, 300, 300, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23143, 5472, 1, -8217.24, -2969.27, 11.1536, 5.81989, 300, 300, 5, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23142, 5472, 1, -8379.53, -2981.73, 8.69705, 0.687795, 300, 300, 5, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23141, 5472, 1, -8264.7, -2899.89, 14.1121, 4.31076, 300, 300, 10, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23140, 5472, 1, -9184.15, -2949.53, 24.4053, 3.31613, 300, 300, 15, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23139, 5472, 1, -9216.96, -2983.53, 19.2699, 3.89208, 300, 300, 15, 100, 0, 1);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23138, 5472, 1, -9249.54, -2882.65, 13.7056, 5.07891, 300, 300, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23137, 5472, 1, -8307.03, -2865.59, 10.944, 5.31074, 300, 300, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23136, 5472, 1, -8783.32, -3482.09, 10.1993, 5.16617, 300, 300, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (23135, 5472, 1, -9216.69, -3050.45, 20.8111, 2.46091, 300, 300, 30, 100, 0, 1);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2080
update quest_template set rewxp = 3450 where entry = 70050;
update quest_template set rewxp = 3450 where entry = 70049;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2081
update creature_loot_template set chanceorquestchance = -50 where item = 60208;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2010
delete from creature where id = 14866;
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (54426, 14866, 1, -1543.12, 170.697, -7.79227, 5.44594, 630, 630, 0, 100, 0, 0);
replace into creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type) values (56624, 14866, 0, -9582.77, 37.0359, 60.3921, 4.62012, 270, 270, 0, 100, 0, 0);

-- Embrace of the Fang Rebalance
update item_template set stat_value2 = 3, stat_type1 = 3, armor = 44 where entry = 10412; -- Belt of the Fang
update item_template set stat_value2 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10413; -- Gloves of the Fang
update item_template set stat_type2 = 7 where entry = 6473; -- Armor of the Fang
update item_template set set_id = 162 where entry = 81006; -- Cowl of the Fang
-- Defias Leather Rebalance
update item_template set stat_value2 = 4, stat_value1 = 3, required_level = 16, item_level = 21, armor = 54 where entry = 10402; -- Blackened Defias Boots
update item_template set stat_value2 = 3, stat_value1 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10401; -- Blackened Defias Gloves
update item_template set stat_value2 = 5, stat_value1 = 4, required_level = 16, item_level = 21, armor = 69 where entry = 10400; -- Blackened Defias Leggings
update item_template set stat_type1 = 7, stat_value1 = 4, allowable_race = -1, set_id = 161, bonding = 1, name = 'Blackened Defias Mask' where entry = 81007; -- Enchanted Defias Mask

-- Remove level requirement from Darkwind Glaive
update item_template set required_level = 0 where entry = 60536;

-- Quest 40368, reduce money reward to 5 silver
update quest_template set reworreqmoney = 50 where entry = 40368;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2012
update quest_template set offerrewardtext = 'It brings back good memories to work with the same tools she passed down to me.\n\nI get to weave the same stitches as the ones she taught me before she passed, and that warms my heart.\n\nYou\'ve been a real help to this little ol\' farm family, $N. Bless you.' where entry = 60008;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1884
delete from skill_line_ability where id = 30038;
update skill_line_ability set min_value = 250, max_value = 270 where id = 15079;

-- Some grammar fixes:
update quest_template set details = 'When Gnomeregan first sent us here, they tasked us to obtain an Azure Scale from the Blue Dragonflight. Sadly, we have not had the means to do so!\n\nWe\'ve been too busy with other projects, and—well—we didn\'t want to stir the hive. Especially since we don\'t have any actual military capabilities! Now with you around, there is a possibility!\n\nThe Dragonflight has gathered around Lake Mennar to the northwest. Get me an Azure Scale from the Blue Dragonflight, and make sure to bring buddies.\n\nI\'d hate to have you die on my account!' where entry = 40062;