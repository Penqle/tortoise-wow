-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2122
update item_template set page_text = 0 where entry = 60521;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2123
update quest_template set details = 'Makasgar, my foolish apprentice, now believes he has grown beyond the need of his master and fled north along the coast with dark mojo I had plans for.\n\nPerhaps we can make a deal if you and your minions retrieve it alongside his head.\n\nBring me what is mine and you will have what seek.' where entry = 80399;

-- Make Riding Zhevra BoP:
update item_template set bonding = 1 where entry = 50400;

-- Item cannot be repaired - Helm of Nethergarde
update item_template set item_level = 57 where entry = 60636;

-- Missing barbershop item:
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (50053, 80665, 0, 0, 0, 0);

-- NPC Bright Crawler reduce damage by half	
update creature_template set dmg_min = 110, dmg_max = 150 where entry = 91831;
update creature_template set dmg_min = 90,  dmg_max = 140 where entry = 92147;

-- reduce the damage of southsea buccaneer to halh
update creature_template set dmg_min = 64, dmg_max = 78 where entry = 91844;

-- creature shank reef ripper is humanoid, make beast
update creature_template set type = 1 where entry = 91837;

-- Change Volkan Cruelblade and Damian to Humanoid 
update creature_template set type = 7 where entry = 80851;
update creature_template set type = 7 where entry = 80854;

-- Change quest level of 'The Smasher and the Trampler' to 53
-- change Quest Level (NOT REQUIRED LEVEL) of the following quests to 48 : Garrison Armory Disaster, Recovering Armory Supplies
update quest_template set questlevel = 53 where entry = 40432;
update quest_template set questlevel = 48 where entry = 40428;
update quest_template set questlevel = 48 where entry = 40429;