-- Change disenchant id of grayson's hat to 1:
update item_template set disenchant_id = 1 where entry = 70070;

-- Undercity bucket hat does not have a mode or in game icon
update item_template set display_id = 34495 where entry = 84037;

-- golded plated crossbbow animation is broken
update item_template set display_id = 31239 where entry = 60624;

-- karavan kodo still has the 10 minutes cooldown
replace into spell_mod (id, recoverytime) values (46483, 0);
update spell_template set recoverytime = 0 where entry = 46483;

-- Cube:
delete from item_template where entry = 0;

-- shadowcaller axe can't be repaired
update item_template set item_level = 54 where entry = 60616;

-- Embrace of the Fang Rebalance
update item_template set stat_value2 = 3 where entry = 10412; -- Belt of the Fang
update item_template set stat_value2 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10412; -- Gloves of the Fang
update item_template set stat_type2 = 7 where entry = 10412; -- Armor of the Fang
update item_template set set_id = 162 where entry = 81006; -- Cowl of the Fang
-- Defias Leather Rebalance
update item_template set stat_value2 = 4, stat_value1 = 3, required_level = 16, item_level = 21, armor = 54 where entry = 10402; -- Blackened Defias Boots
update item_template set stat_value2 = 3, stat_value1 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10401; -- Blackened Defias Gloves
update item_template set stat_value2 = 5, stat_value1 = 4, required_level = 16, item_level = 21, armor = 69 where entry = 10400; -- Blackened Defias Leggings
update item_template set stat_type1 = 7, stat_value1 = 4, allowable_race = -1, set_id = 161, bonding = 1, name = 'Blackened Defias Mask' where entry = 81007; -- Enchanted Defias Mask

-- Quest 'The Ramolus Gem' change the first sentence 'Ironforge' to 'Stormwind' in main description to be the following : "My trip to Stormwind has been a failure, and truth be told ... 

update quest_template set details = 'My trip to Stormwind has been a failure, and truth be told, I don\'t really have the courage to return just yet.\n\nI was ambushed by a group of troggs heading to Ironforge, and I just so happened to drop the most important item on me, The Ramolus Gem.\n\nThe Trogg that happened to take it was enfused with the latent arcane power of the gem, and now has some ability with magic... Or so I heard.\n\n<Ansela pouts.>\n\nCan you recover it for me by chance? The Trogg named Grash can be found deep in the Gol\'Bolar Quarry.' where entry = 40518;

/* 

Change subname of Soalara Dawnstar to <Silvermoon Remnant Quartermaster>
Change subname of Alinerenah Sunsparrow to <Alliance Cloth Quartermaster>

Change subname of Tan'Pogo to <Revantusk Trolls Quartermaster>
Change subname of Reolis Riptusk to <Horde Cloth Quartermaster>

Remove Vendor Flags from Reolis Riptusk, Alinerenah Sunsparrow.

*/

update creature_template set subname = 'Silvermoon Remnant Quartermaster' where entry = 80266;
update creature_template set subname = 'Alliance Cloth Quartermaster' where entry = 80459;

update creature_template set subname = 'Revantusk Trolls Quartermaster' where entry = 80915;
update creature_template set subname = 'Horde Cloth Quartermaster' where entry = 80807;

update creature_template set npc_flags = 3 where entry in (80459, 80807);

/*
REMOVE ALL ITEMS from Soalara Dawnstar, Alinerenah, Tan'Pogo, and Reolis Riptusk vendor tables

Add items to Soalara Dawnstar Vendor Table

https://database.turtle-wow.org/?item=80524
https://database.turtle-wow.org/?item=80523
https://database.turtle-wow.org/?item=80525
https://database.turtle-wow.org/?item=80522
https://database.turtle-wow.org/?item=80526
https://database.turtle-wow.org/?item=80317
https://database.turtle-wow.org/?item=80537
https://database.turtle-wow.org/?item=80546
https://database.turtle-wow.org/?item=80502
https://database.turtle-wow.org/?item=80504
https://database.turtle-wow.org/?item=80501
https://database.turtle-wow.org/?item=80500
https://database.turtle-wow.org/?item=80503
https://database.turtle-wow.org/?item=80536

Add items to Tan'Pogo Vendor Table

https://database.turtle-wow.org/?item=80612
https://database.turtle-wow.org/?item=80616
https://database.turtle-wow.org/?item=80615
https://database.turtle-wow.org/?item=80613
https://database.turtle-wow.org/?item=80614
https://database.turtle-wow.org/?item=80605
https://database.turtle-wow.org/?item=80606
https://database.turtle-wow.org/?item=81098
https://database.turtle-wow.org/?item=80646
https://database.turtle-wow.org/?item=80638
https://database.turtle-wow.org/?item=80602
https://database.turtle-wow.org/?item=80600
https://database.turtle-wow.org/?item=80603
https://database.turtle-wow.org/?item=80604
https://database.turtle-wow.org/?item=80636
*/

delete from npc_vendor where entry in (80266, 80915);

replace into npc_vendor (entry, item) values 

(80266, 80524),
(80266, 80523),
(80266, 80525),
(80266, 80522),
(80266, 80526),
(80266, 80317),
(80266, 80537),
(80266, 80546),
(80266, 80502),
(80266, 80504),
(80266, 80501),
(80266, 80500),
(80266, 80503),
(80266, 80536),

(80915, 80612),
(80915, 80616),
(80915, 80615),
(80915, 80613),
(80915, 80614),
(80915, 80605),
(80915, 80606),
(80915, 81098),
(80915, 80646),
(80915, 80638),
(80915, 80602),
(80915, 80600),
(80915, 80603),
(80915, 80604),
(80915, 80636);

/*
Map: 1 (Kalimdor) Zone: 17 (The Barrens) Area: 1697 (Raptor Grounds)
X: -2050.023193 Y: -3218.093994 Z: 91.681976 Orientation: 2.725144
grid[25,28]cell[15,2] InstanceID: 0
 ZoneX: 57.641556 ZoneY: 54.209404
GroundZ: 91.680283 FloorZ: 91.680283 Have height data (Map: 1 VMap: 1)
there is a batter chest stuck inside a hut that can't be opened 
*/

update gameobject set position_x = -2049.6, position_y = -3218.08, position_z = 91.6, orientation = 5.8 where guid = 4007546;

-- Please make a stateless monster item with displayID: 50499 it should be a fist weapon; then assign this weapon to this NPC: https://database.turtle-wow.org/?npc=80867 | make it always unsheath

REPLACE INTO item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) VALUES (84017, 2, 5, 'Monster - Fist Weapon, Zul\'jin ', '', 50499, 0, 0, 1, 14, 2, 17, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update creature_template set equipment_id = 80867 where entry = 80867;
replace into creature_equip_template (entry, equipentry1) values (80867, 84017);

-- Remove https://database.turtle-wow.org/?item=50084 from Turtle WoW Shop, give it Revered requiremenemt with Dalaran and place it on the vendor table of https://database.turtle-wow.org/?npc=80953 Add 2 gold buy price and 50 silver sell price.
-- Kirin To Familiar, ENABLE LATER:
-- update item_template set required_reputation_faction = 61, required_reputation_rank = 7, buy_price = 25000, sell_price = 6250 where entry = 50084;
-- replace into npc_vendor (entry, item) value (80953, 50084);

-- Oil-Stained Gold XP reward and quest item spawn rates. #1971
update gameobject set spawntimesecsmin = 60, spawntimesecsmax = 80 where id = 1772001;
update quest_template set rewxp = 630 where entry = 70051; 

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1969

update gameobject set spawntimesecsmin = 7200, spawntimesecsmax = 7200 where guid in (5008116, 5008117);

-- https://database.turtle-wow.org/?npc=922 are stuck undeground alot

update creature set position_x = -9701.59, position_y = -4032.88, position_z = -9.3691 where guid = 32692;
update creature set position_x = -9733.64, position_y = -4066.1,  position_z = -7.65416 where guid = 34158;
update creature set position_x = -9833.01, position_y = -4166.06, position_z = -3.82848 where guid = 35230;
update creature set position_x = -9700.15, position_y = -3965.88, position_z = 2.42555 where guid = 35251;
update creature set position_x = -9767.1,  position_y = -4100.25, position_z = -6.36123 where guid = 35252;
update creature set position_x = -9900.51, position_y = -4266.59, position_z = -4.61402 where guid = 35253;
update creature set position_x = -9700.58, position_y = -4000.34, position_z = 0.98252 where guid = 37376;
update creature set position_x = -11056.5, position_y = -4068.69, position_z = -5.14192 where guid = 37590;
update creature set position_x = -9666.95, position_y = -3967.06, position_z = -9.86884 where guid = 37591;
update creature set position_x = -9743.23, position_y = -4027.73, position_z = 6.79941 where guid = 38684;
update creature set position_x = -9802.07, position_y = -4158.17, position_z = -2.37193 where guid = 38685;
update creature set position_x = -9702.47, position_y = -3912.48, position_z = 3.86439 where guid = 38687;
update creature set position_x = -9762.35, position_y = -4084.46, position_z = 0.021444 where guid = 38689;
update creature set position_x = -9814.01, position_y = -4119.4,  position_z = 3.91088 where guid = 38691;
update creature set position_x = -10941.7, position_y = -4207.12, position_z = 0.0772 where guid = 38694;
update creature set position_x = -10882.8, position_y = -4187.08, position_z = 5.47756 where guid = 38719;
update creature set position_x = -10891.1, position_y = -4161.32, position_z = 5.41886 where guid = 38720;
update creature set position_x = -10818.1, position_y = -4242.47, position_z = 1.79609 where guid = 38754;
update creature set position_x = -9846.63, position_y = -4158.63, position_z = 0.94299 where guid = 38760;
update creature set position_x = -9857.72, position_y = -4127.32, position_z = 12.7739 where guid = 38762;
update creature set position_x = -9984.33, position_y = -4292.09, position_z = 1.31476 where guid = 38763;
update creature set position_x = -9934.31, position_y = -4241.89, position_z = 2.71027 where guid = 38764;
update creature set position_x = -9898.84, position_y = -4217.92, position_z = 2.29258 where guid = 38765;
update creature set position_x = -10915.3, position_y = -4131.91, position_z = 9.70558 where guid = 38766;
update creature set position_x = -10849.8, position_y = -4283.15, position_z = -11.5076 where guid = 38873;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1977
update item_template set disenchant_id = 45 where entry = 83287;

-- Remove Some of the Armor Penetration Spells from Sentinel Reputation Items
update item_template set spellid_2 = 0 where entry = 60747;
update item_template set spellid_2 = 0 where entry = 60750;
update item_template set spellid_2 = 0 where entry = 60751;
update item_template set max_count = 1, spellid_2 = 48029 where entry = 60752;
-- Remove AP from Crown of Corruption and Ring of Demonic Fury
update item_template set spellid_2 = 0, spellid_1 = 13679 where entry = 60258;
update item_template set spellid_2 = 0, spellid_1 = 13679 where entry = 83217;
-- Change Tempest's Rage to be Unique
update item_template set max_count = 1 where entry = 83564;
-- Otherworldy Name Fix
update item_template set name = 'Otherworldly Blade' where entry = 51793;
update item_template set name = 'Otherworldly Rifle' where entry = 51794;
update item_template set name = 'Otherworldly Robe' where entry = 51792;
-- Integrate New Stats to Nerubian Overseer Items
update item_template set spellid_2 = 14521, spelltrigger_2 = 1 where entry = 51737;
update item_template set spellid_2 = 48034, spelltrigger_2 = 1, shadow_res = 10 where entry = 51734;
update item_template set spellid_2 = 18022, stat_value3 = 22, item_level = 75 where entry = 51740;
-- New Vault Rare Trash Drop Blues

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1741

update quest_template set type = 81 where entry = 40427;
update quest_template set type = 81 where entry = 40426;
update quest_template set type = 81 where entry = 40425;
update quest_template set type = 81 where entry = 40490;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1736

update creature_template set ai_name = 'EventAI' where entry = 92135;
update creature_template set ai_name = 'EventAI' where entry = 92136;
update creature_template set ai_name = 'EventAI' where entry = 92138;
update creature_template set ai_name = 'EventAI' where entry = 92139;
update creature_template set ai_name = 'EventAI' where entry = 92140;
update creature_template set ai_name = 'EventAI' where entry = 91847;

replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values
(1020, 92135, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Southsea Bootlegger - Flee at 15% HP'),
(1021, 92136, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Southsea Distiller - Flee at 15% HP'),
(1022, 92138, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Southsea Sea Wolf - Flee at 15% HP'),
(1023, 92138, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Southsea Outlaw - Flee at 15% HP'),
(1024, 92140, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Southsea Deckhand - Flee at 15% HP'),
(1025, 91847, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Southsea Pillager - Flee at 15% HP');

-- Remove riding requirement from the Immoral Charger:

update item_template set required_skill = 0, required_skill_rank = 0 where entry = 80692;
