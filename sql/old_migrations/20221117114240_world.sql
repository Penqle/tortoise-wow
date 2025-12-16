-- The Ape Bounty
delete from quest_template where entry = 40724;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40724,2,5121,55,48,0,0,'The Ape Bounty','The Highvale Gorillas have terrorized Tel Co. , attacking our property and sending us all the way back to this here Basecamp. They used to be in the surrounding forests, attacking our walls and fortifications, but as of recently, they returned farther north.\n\nI know they are plotting something.\n\nYou look tough kid, maybe you can deal with these banana eating savages. You can find them up north near the Highvale Rise, and around the Derelict Camp, travel there, and get me 12 Highvale Paws from the Gorillas there.','Gather 12 Highvale Paws from the Highvale Gorillas on Tel\'abim for Sneel Fizzwack at Tel Co. Basecamp.','The apes can be a savage bunch, I would be careful out in the wild.','Well, would you look at that, perhaps you\'re as good as killing apes as O\'ggon!',60956,12,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,5250,0,0,0,0,0,0,0,0,0,0,0, 60970,1,60971,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61113, 40724);
replace into creature_involvedrelation	(id, quest) values (61113, 40724);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60956,940,'Highvale Paw',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61074, 60956, -85, 0, 1, 1, 0);

replace into item_template values
 ('60970', '4', '2', 'Fizzwack\'s Gloves of Enforcement', '', '27946', '2', '0', '1', '34588', '8647', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '92', '0', '0', '5',
 '0', '0', '0', '14089', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- The Spitefin Bounty
delete from quest_template where entry = 40725;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40725,2,5121,55,48,0,0,'The Spitefin Bounty','Ever since our operations have slowed more and more murlocs have gathered to the beaches. These murlocs are posing a direct threat to the Basecamp, and making it harder to venture out.\n\nIf we ever want to establish work once again they will need to be dealt with, and dealt with seriously!\n\nLook around the beaches and you will find their hovels packed together all around the island. Find those grubby murlocs, and gather twenty of their claws, return them to me, and I\'ll make sure you\'re paid bub.\n\nEasy yeah?','Collect 20 Spitefin Claws from murlocs around Tel\'abim for Sneel Fizzwack at Tel Co. Basecamp.','Any luck with those murlocs?','Well would you look at that, you got the claws. As much as I hate to see money go away, it needs to be done, here.',60957,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 5000,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61113, 40725);
replace into creature_involvedrelation	(id, quest) values (61113, 40725);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60957,1499,'Spitefin Claw',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61083, 60957, -70, 0, 1, 1, 0),
(61084, 60957, -70, 0, 1, 1, 0),
(61085, 60957, -70, 0, 1, 1, 0),
(61086, 60957, -70, 0, 1, 1, 0),
(61087, 60957, -70, 0, 1, 1, 0),
(61088, 60957, -70, 0, 1, 1, 0);

-- The Backup Seal-Valve
delete from quest_template where entry = 40726;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40726,2,5121,55,48,0,0,'The Backup Seal-Valve','Blasted valve, each and every day we are having more leaks from the main water pump, if Tel Co. Basecamp is to last, it needs a supply of fresh water, regardless of what Telraz or Nokrot say.\n\nMany of our backup parts were located far to the north of the island at Bixxle\'s Storehouse, but there has been -very- little traffic between us and them since, well, everything fell apart.\n\nI need you to head there, just follow the road all the way north, and rummage around for the \'Backup Seal-Valve\', Bixxle should have plenty, just look around for a crate labeled with the name, and return it to me, simple yea?','Travel to Bixxle\'s Storehouse in Northern Tel\'abim and collect the Backup Seal-Valve for Pumpworker Zalwan at Tel Co. Basecamp.','Had any luck finding the damn thing?','Would you look at that, perfect size too, thanks a bunch!',60958,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61111, 40726);
replace into creature_involvedrelation	(id, quest) values (61111, 40726);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60958,7839,'Backup Seal-Valve',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010950, 3, 24106, 'Tel Co. Backup Seal-Valve', 0, 4, 1, 43, 2010950, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010950,60958,-100,0,1,1,0);
-- Change quest requirement of 'In Your Own Defense' to 3 Ancient Dust instead of 7.
update quest_template set reqitemcount1 = 3 where entry = 40712;

-- Derelict Supplies
delete from quest_template where entry = 40727;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40727,2,5121,55,48,512,0,'Derelict Supplies','It\'s getting difficult to maintain repairs on much of the machinery, especially with all of the chaos recently.\n\nI am experienced, but I am lacking a lot of my tools bub, you know how hard it is to work with a spanner when you really need a Spin-wrench?\n\nJust to the north of here is a place called \'The Derelict Camp\', well at one point it wasn\'t so derelict, we had many operations there, wood cutting, banana collecting, and much more. It is there I lost my toolbox with all my gizmos and I want it back.\n\nYou can find the camp on the western edge of the island, follow the road up north, and you\'ll find it.','Travel to the Derelict Camp and recover Wazlon\'s Tools for Wazlon Headiron at Tel Co. Basecamp in Tel\'abim.','You find my tools yet kid?','Why, this is it! I will be honest with you, I thought the apes would tear you apart when you trundled out of here, but to actually have it in my hands...\n\nHere, take this ring, I\'m trying to save gold just incase this Tel Co. thing goes even more pear-shaped.',60959,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5100,0,0,0,0,0,0,0,0,0,0,0, 60960,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61108, 40727);
replace into creature_involvedrelation	(id, quest) values (61108, 40727);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60959,7839,'Wazlon\'s Tools',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010961, 3, 23790, 'Wazlon\'s Toolbox', 0, 4, 1, 43, 2010961, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010961,60959,-100,0,1,1,0);

replace into item_template values
 ('60960', '4', '0', 'Wazlon\'s Lucky Ring', '', '24087', '2', '0', '1', '29236', '7309', '11', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Highvale Rise
delete from quest_template where entry = 40728;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40724,40728,2,5121,58,48,512,0,'Highvale Rise','I didn\'t think you had it in you, you certainly aint no ogre, but you did survive, and bring me those paws as proof.\n\nIf we want to -really- deal with the problem, we need to fight it at the source. All of the apes come from Highvale Rise, the giant mountain at the center of Tel\'abim. It is there you will find the biggest, and strongest of their packs.\n\nTravel there, and slay fourteen Elder Highvale Gorillas, that should put a dent in their aggression, and maybe even save some wise goblin minds.','Slay 14 Elder Highvale Gorillas around Highvale Rise on Tel\'abim for Sneel Fizzwack at Tel Co. Basecamp.','What are you waiting for, we don\'t give bonus around here kid.','Maybe we stand a chance after all! You really took the fight to them, you might of even made O\'ggon jealous.\n\nNice work out there, here, as a thanks from us here at Tel Co.',0,0,0,0,0,0,0,0, 61080,14,0,0,0,0,0,0, 0,0, 5000,5750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 13446,2,13444,2,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61113, 40728);
replace into creature_involvedrelation	(id, quest) values (61113, 40728);

-- Collecting Specimens
delete from quest_template where entry = 40729;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40729,2,5121,55,48,0,0,'Collecting Specimens','My research has only just begun and already there are so many possibilities it is making my head spin!\n\nWhat do you mean you have no idea what I am talking about? I am trying to discover the secrets of the Gargantuan Banana, rumor has it that they used to grow on Tel\'abim long ago, that was until they were all harvested.\n\nNow all that remains is myth and legend, but I will get to the bottom of it!\n\nMy first hunch comes from strange banana\'s grown on the island just off the coast to the east, I haven\'t really had much luck, murlocs you see are all along the coast, and I am but one gnome, perhaps you can go there, and gather me three samples of the \'Strange Tel\'abim Banana\' that grows there.','Travel to the small island east of Tazzo\'s Shack, and collect 3 Strange Tel\'abim Banana\'s for Tazzo at Tazzo\'s Shack in Tel\'abim.','The longer you stand around, the longer my work will take, go on now, quick quick!','Why, I must say $c, you sure are resourceful. It woulda taken me a lot of cunning, or sheer luck to get my hands on these alone.\n\nAlready you\'re proving really useful to my cause!',60961,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40729);
replace into creature_involvedrelation	(id, quest) values (61100, 40729);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60961,6420,'Strange Tel\'abim Banana',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010962, 3, 25061, 'Strange Tel\'abim Banana', 0, 4, 1, 43, 2010962, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010962,60961,-100,0,1,1,0);

-- Early Testing
delete from quest_template where entry = 40730;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40729,40730,2,5121,55,48,0,0,'Early Testing','Those bananas from the island were warped, not like the Ripe Tel\'abim Bananas on the island here, but something deformed.\n\nIt seems we must turn to a different solution, but I am running out of ideas all cooped up in this Shack alone.\n\nWhy don\'t we try something, obvious. What if you procured an Elixir of Giant Growth, and we just, simply poured it over the banana, its worth a shot, right?','Gather an Elixir of Giant Growth for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, you end up finding that Elixir?','Well, here we go... Maybe it really is this simple.',6662,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1850,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40730);
replace into creature_involvedrelation	(id, quest) values (61100, 40730);

-- A Costly Favor
delete from quest_template where entry = 40731;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40730,40731,2,5121,55,48,0,0,'A Costly Favor','Well, I am stumped, All of my ideas either end up worthless, or failed. There must be something that I can...\n\n<Tazzo\'s eyes blink back to life, but soon a sigh escapes him.>\n\nThere is something actually, I just remembered. A \'friend\' of mine named Leezza used to work far in the north. When we were on better terms she once told me about seeing a ridiculously large banana, too big for her to move.\n\nThis has to be what we\'re looking for, but if we want this information, I know its going to cost me an arm and a leg... You could go to Tel Co. Basecamp, speak on my behalf, aside, I don\'t really got any gold, and I know she will ask.','Find a way to buy the information of the Gargantuan Banana from Leezza Fraxtoggle at Tel Co. Basecamp. in Tel\'abim.','Tazzo sent you huh? He\'s finally coming back crawling for that information. He made such a point about being able to figure it out all on his own, and here he is, sending a mule to do his dirty work.\n\n<Leezza begins to laugh.>\n\n That is almost as insulting as his stupidly big head wandering here and asking himself.\n\nLook $c, you want that info, it\'ll cost you.','Tazzo sent you huh? He\'s finally coming back crawling for that information. He made such a point about being able to figure it out all on his own, and here he is, sending a mule to do his dirty work.\n\n <Leezza begins to laugh.>\n\nThat is almost as insulting as his stupidly big head wandering here and asking himself.\n\nLook $c, you want that info, it\'ll cost you, lets make it one gold, fifty silver, and a favor afterwards while you\'re here.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, -15000,1050,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40731);
replace into creature_involvedrelation	(id, quest) values (61116, 40731);

-- Two Favors For The Price of One
delete from quest_template where entry = 40732;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40731,40732,2,5121,55,48,0,0,'Two Favors For The Price of One','Hello again mule, ready for work?\n\nI will be honest, I aint sticking around on this rock as Tel Co. burns to the ground, and to get my way out, I need materials, ones a goblin can\'t find back on Kezan.\n\n All around the jungle are these flying serpents with wings. They go by the moniker \'Venomflayer\', you see, they have a really potent Sac deep within them, and it is this Venomflayer Sac that I am looking for. Lets make it eight of them, bring me eight, and I\'ll tell you about this stupidly large banana.','Collect 8 Venomwing Sacs for Leezza Fraxtoggle at Tel Co. Basecamp in Tel\'abim.','So, mule, you get those sacs yet?','Well, about time.',60962,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5100,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61116, 40732);
replace into creature_involvedrelation	(id, quest) values (61116, 40732);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60962,1438,'Venomflayer Sac',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61095, 60962, -70, 0, 1, 1, 0),
(61096, 60962, -70, 0, 1, 1, 0);

-- Gargantuan Information!
delete from quest_template where entry = 40733;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40732,40733,2,5121,55,48,0,0,'Gargantuan Information!','I suppose you did me a few favors, and paid that gold that Tazzo owed me.\n\nWhenever you\'re ready to hear my tale, let me know, and then you can bring that to Tazzo like a good mule.','Listen to the information about the Gargantuan Banana from Leezza Fraxtoggle, and bring it to Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim','So, you hear anything?','So, her rumors -were- true!\n\nThe secrets of the Gargantuan Banana were real!',0,0,0,0,0,0,0,0, 60013,1,0,0,0,0,0,0, 0,0, 0,500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Listen to the information from Leezza Fraxtoggle');

replace into creature_questrelation		(id, quest) values (61116, 40733);
replace into creature_involvedrelation	(id, quest) values (61100, 40733);

replace into creature_template values 
(60013, 328, 0, 0, 0, 0, 'quest_40733_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- A Must Have Discovery
delete from quest_template where entry = 40734;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40733,40734,2,5121,58,48,0,0,'A Must Have Discovery','Nestled deep within the largest of the Jagged Isles, tangled in roots and bushes, It\'s almost like we\'re finding a relic lost in time!\n\n<The gnome looks absolutely eager and excited with the information.>\n\nIf that is the only Gargantuan Banana left, than I must have it. I want you to recover it, and bring it here, if I had a chance to study an actual Gargantuan, I could possibly even work to replicate it!\n\nHead north, immediately, and find that banana!','Find the Gargantuan Tel\'abim Banana on the Jagged Isles and bring it to Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, do you got it?!','It\'s... It\'s...\n\n<Tazzo is lost for words, his face a mix of wonder, and amazement as he takes his time to study the banana. Placing a single hand upon the skin, the gnome would gently pat it.>\n\nBeautiful.',60963,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40734);
replace into creature_involvedrelation	(id, quest) values (61100, 40734);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60963,17881,'Gargantuan Banana',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010963, 3, 25061, 'The Gargantuan Banana', 0, 4, 3, 43, 2010963, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010963,60963,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 15, spawntimesecsmax = 15 where id = 2010963;

-- The Micro Filter Tazzo-Scope
delete from quest_template where entry = 40735;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40734,40735,2,5121,58,48,0,0,'The Micro Filter Tazzo-Scope','Would you just look at that thing? A sheer Marvel of nature itself!\n\nI wouldn\'t want to risk planting this in the ground before I use all other options. I am a mage after all, and what better way than to make a formula to transform regular bananas into something like this!\n\nFor that to be an option, I need to study the Gargantuan Banana. I need a Micro Filter Tazzo-Scope, patent pending.\n\nTo create the scope I need you to get me the following materials, but trust me, they will be worth it! I need a Star Ruby, A Blue Sapphire, and an Accurate Scope. Once you get them, come back to me, and I\'ll make it.','Collect a Star Ruby, a Blue Sapphire, and an Accurate scope for Tazzo Gearfire to create the Micro Filter Tazzo-Scope.','You get those materials yet?','My my, you are resourceful!\n\n I could probably tell you to go and get me the head of Illidan, and you\'d be back in a couple days!\n\nNow now, lets get to it..',7910,1,12361,1,4407,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40735);
replace into creature_involvedrelation	(id, quest) values (61100, 40735);

-- Gargantuan Studies
delete from quest_template where entry = 40736;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40735,40736,2,5121,58,48,0,0,'Gargantuan Studies','It took me a little bit, but I was able to fully analyze our specimen. It really is a marvel of nature, full with nutrients and extremely dense.\n\nAfter studying and taking notes I believe I may have some ideas on how to replicate such a feat. Firstly, I will need enchanting materials, their arcane properties will be maniputed by yours truly. Secondly, I need Ripe Tel\'abim Bananas, they are scattered around the island, get me five of them.\n\nOnce you have gathered everything, we can do our final testing.','Gather 1 Dream Dust, 1 Greater Eternal Essence, 1 Small Radiant Shard, and 5 Ripe Tel\'abim Bananas for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','You get a chance to find everything I need?','Brilliant, I will make sure to put them to good use.',60954,5,11176,1,16203,1,11177,1, 0,0,0,0,0,0,0,0, 0,0, 0,2550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40736);
replace into creature_involvedrelation	(id, quest) values (61100, 40736);

-- The Final Test
delete from quest_template where entry = 40737;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40736,40737,2,5121,58,48,0,0,'The Final Test','So, it appears some of these materials are not exactly cooperative with what I am trying to do, that said I think I may have figured it out!\n\nIt appears that Dream Dust, with the Banana, and some arcane energy could indeed produce what it is we are looking for. All I need to do is one final test to make sure everything works properly, so stand back, and speak to me after the experiment.','Wait for Tazzo Gearfire fo finish his experiments at Tazzo\'s Shack in Tel\'abim.','Yes?','We did it $N, with my powers, and your handiness we figured out the secret to the Gargantuan Banana. I never thought I would see the day where I could pull something off like this!\n\nI have you to thank for this, without you, I\'d still be here fiddling with bananas and putting giant elixirs on them if I was lucky.\n\nFrom now on, if you ever need another Gargantuan Tel\'abim Banana, you come here, and I\'ll make one, should you have the materials of course!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2150,0,0,0,0,0,0,0,0,0,0,0, 60955,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40737);
replace into creature_involvedrelation	(id, quest) values (61100, 40737);

-- News for Danonzo!
delete from quest_template where entry = 40738;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40737,40738,2,5121,58,48,0,0,'News for Danonzo!','I can\'t believe we were able to do it, but if there is anyone to thank aside yourself, it has to be Danonzo, he convinced me to continue my work and even vouched for me to stay here at this shack.\n\nHe has been wanting to work on a unique recipe for a while now, aparently he is having trouble thinking of something, well, special.\n\nPerhaps a Gargantuan Tel\'abim Banana will help him!','Bring a Gargantuan Tel\'abim Banana to Chef Danonzo Laxjolt in Tel\'abim.','Yes? What is it?','What is this thing, it\'s massive! Such a unique texture, this is one of those gargantuan bananas that Tazzo has been going on about, he finally did it?\n\n<The goblin smirks from ear to ear.>\n\nWith this thing I could become a legend back at Kezan. Say, why don\'t you help me develop some recipes? You help me, and I\'ll even share. With my name on them of course.',60955,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40738);
replace into creature_involvedrelation	(id, quest) values (61112, 40738);

-- The Tel'abim Banana Transmutation
delete from quest_template where entry = 40739;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40737,40739,2,5121,58,48,0,1,'The Tel\'abim Banana Transmutation','So, back around to get another Gargantuan Tel\'abim Banana are you? I know, the flavor is spectacular, I couldn\'t get enough of it!\n\nAll I require is three Ripe Tel\'abim Bananas, and a single Dream dust, once you provide me with that, I can make one for you, yes, it\'s that easy!','Gather 3 Ripe Tel\'abim Bananas and 1 Dream Dust for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, you got the stuff?','<Within a matter of seconds, the gnome processes the bananas, procuring one large, gargantuan banana before your eyes.>\n\nI have refined my technique, if you ever need more, come my way!',60954,3,11176,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0, 60955,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40739);
replace into creature_involvedrelation	(id, quest) values (61100, 40739);

-- Tel'abim Transmutations!
delete from quest_template where entry = 40740;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40737,40740,2,5121,58,48,0,1,'Tel\'abim Transmutations!','I have refined my process, and even expanded my lab, the ability to create multiple Gargantuan Bananas at one time is now possible, all I need of course is the required materials to make it happen.\n\nTo make five it should take fifteen Ripe Tel\'abim Bananas, as well as five Dream Dust, if you ever need this much banana, come to me, and I\'ll make your dreams come true.','Gather 15 Ripe Tel\'abim Bananas and 5 Dream Dust for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, you got the stuff?','<Within a matter of seconds, the gnome processes the bananas, procuring five large, gargantuan bananas before your eyes.>\n\nSee, its all refined now! If you ever need more, come my way!',60954,15,11176,5,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0, 60955,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40740);
replace into creature_involvedrelation	(id, quest) values (61100, 40740);

-- Shipments on Time
delete from quest_template where entry = 40741;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40741,2,5121,56,48,0,0,'Shipments on Time','If you\'re wanting to help kid, then buckle up. First things first though, I need bananas! Wheelbarrows full of them, buckets full of them, barrels full of them!\n\nWe have a shipment due to Kezan in a months time, and all my workers are unable to venture into the jungle. Without those bananas, there will be no more Tel Co.\n\nWithout Tel Co. there will be no more bananas seen around the world, do you see how serious this is?!\n\nNow, I know you\'re much more brave than the others, so why don\'t you go out, and get me 18 ripe bananas. That way we can at least fulfill our next shipment on time.','Gather 18 Ripe Tel\'abim Bananas on Tel\'abim for Baron Telraz at Tel Co. Basecamp to help him make his schedule.','So, you get those bananas?\n\n<Baron Telraz appears to be on edge.>','<A massive sigh of relief escapes from Baron Telraz>\n\nOh, my, you just saved my day, and my company at that, I was seriously -FREAKING OUT- here, and you went and got this all done for me.\n\nHere, I pay those that help, and for saving my hide. You can take this gold coin from me, as a gesture of good will.',60954,18,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 10000,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61102, 40741);
replace into creature_involvedrelation	(id, quest) values (61102, 40741);

-- The Work Must Continue
delete from quest_template where entry = 40742;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40741,40742,2,5121,56,48,512,0,'The Work Must Continue','If we ever want to get back to work, we need to make sure things are safe again. The apes are not my workers biggest concern, it is those snakes, do you believe that?\n\nAll of my workers are more terrified from those Brushtails, rather then the massive gorillas.\n\nGoblins right?\n\nThey slither in the brush and attack at dark, they need to be dealt with.\n\nOnce this monkey threat is dealt with, there will still be snakes, and I hate snakes, why don\'t you deal with them for me? The Brushtail Adders and Cobras are aggresive, attacking anything in sight. Remove them, and maybe my workers will have more courage to pick bananas.','Slay 8 Brushtail Adders, and 8 Brushtail Cobras for Baron Telraz at Tel Co. Basecamp on Tel\'abim.','Those snakes been dealt with?','Heh, those pesky Brushtails never bothered me any, maybe the workers will be able to finally get back to work with less danger out there.\n\nThanks for the work, here, as a reward, we have a bunch of extra stuff laying around these days.',0,0,0,0,0,0,0,0, 61090,8,61091,8,0,0,0,0, 0,0, 0,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60972,1,60973,1,60974,1,60975,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61102, 40742);
replace into creature_involvedrelation	(id, quest) values (61102, 40742);

replace into item_template values
 ('60972', '4', '2', 'Tel Co. Jungle Pants', '', '15020', '2', '0', '1', '69552', '17388', '7', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '0', '0', '7',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '65', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60973', '4', '1', 'Tel Co. Vest', '', '18471', '2', '0', '1', '61612', '15403', '5', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '22', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '81', '0', '0', '7',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60974', '4', '4', 'Tel Co. Protective Helmet', '', '27423', '2', '0', '1', '47752', '11938', '1', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '3', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '461', '0', '0', '7',
 '0', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60975', '4', '3', 'Tel Co. Huntsman Pauldrons', '', '33812', '2', '0', '1', '63928', '15982', '3', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '14', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '236', '0', '0', '7',
 '0', '0', '0', '21432', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '60', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
-- Quest With us or Against us change name to With Us or Against Us.
-- Quest With Us or Against Us, remove all previous quests, remove all required reputation.
update quest_template set title = 'With Us or Against Us', requiredminrepfaction = 0, requiredminrepvalue = 0, prevquestid = 0 where entry = 40609;
-- Fix for quest "Ritual of Divination".
update quest_template set ObjectiveText1 = 'Information from Paval Reethe', Objectives = 'Assist Magus Halister during the ritual and report the findings to Garran Vimes at Theramore Isle in Dustwallow Marsh.', details = 'I shall need your help during the ritual. Perhaps we may learn more from the spirit realm.\n\nLet\'s begin.' where entry = 40562;
-- New items added.
replace into item_template values
 ('60976', '0', '0', 'Danonzo\'s Tel\'Abim Surprise', '', '1483', '1', '0', '1', '1000', '250', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57041', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60977', '0', '0', 'Danonzo\'s Tel\'abim Delight', '', '24733', '1', '0', '1', '1000', '250', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57043', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60978', '0', '0', 'Danonzo\'s Tel\'abim Medley', '', '6345', '1', '0', '1', '1000', '250', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57045', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60979', '9', '5', 'Recipe: Danonzo\'s Tel\'Abim Surprise', '', '634', '3', '0', '1', '40000', '10000', '0', '-1', '-1', '65',
 '0', '185', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57048', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60980', '9', '5', 'Recipe: Danonzo\'s Tel\'Abim Delight', '', '1097', '3', '0', '1', '40000', '10000', '0', '-1', '-1', '65',
 '0', '185', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57050', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60981', '9', '5', 'Recipe: Danonzo\'s Tel\'Abim Medley', '', '15274', '3', '0', '1', '40000', '10000', '0', '-1', '-1', '65',
 '0', '185', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57052', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Set respawn timer of Turbo-Scan Filtronomitor to 5 seconds.
update gameobject set spawntimesecsmin = 5, spawntimesecsmax = 15 where id = 2010926;

-- Exchanging Foreign Food
delete from quest_template where entry = 40743;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40743,2,5130,15,5,512,0,'Exchanging Foreign Food','Winter, a time to eat, and eat well! I always love to try new foods, and exchange cultural foods of my people with others. Perhaps we can make a trade yes? I would like to sample some of the foods of other races, you find some and I will offer you a special dish in return.\n\nGather me a variety for me and my people to enjoy in feasting, and I will make sure you are well rewarded for your seasonal spirit!','Gather 5 Soft Banana Bread, 5 Cured Ham Steak, and 5 Moon Harvest Pumpkin for Chieftain Icepaw at Icepaw Village in Winter Veil Vale!','I sure am hungry, you find an assortment of food?','<Chieftain Icepaw looks on with astonishment.>\n\nYou really are a festive individual, I prepared some things for you upon the fire, a tray of our famous cookies here in Icepaw Village, I hope you enjoy them, they are fresh and right off the pan!\n\nI will share these goods with the others in the village!',4601,5,4599,5,4602,5,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1250,0,0,0,0,0,0,0,0,0,0,0, 60984,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61121, 40743);
replace into creature_involvedrelation	(id, quest) values (61121, 40743);

replace into item_template values
 ('60984', '0', '0', 'Icepaw Cookie', 'Chocolate Chip!', '66190', '1', '0', '1', '100', '25', '0', '-1', '-1', '45',
 '35', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18230', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Additional Notes:At the end of the quest have nearby Icepaw Reveler and Icepaw Celebrator say some of the following lines at random:
-- "Wow, delicious!"
-- "This tastes amazing."
-- "This is exotic food!"
-- "I cannot believe my tongue, a fine feast!" 

-- Gifts to Wrap
delete from quest_template where entry = 40744;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40744,2,5130,10,5,512,0,'Gifts to Wrap','The year has come to an end, and with it, our celebrations. Our celebrations are met with exchanging gifts, for there is no better way to rejoice and share in one anothers company.\n\nThis year we are a bit light on wrapping paper, a very cheerful gnome delivered the last batch. It did last a few years, but we will need more before long, lest our holidays be ruined!\n\nMaybe you know a place to retrieve wrapping paper?','Gather 10 Red Ribboned Wrapping Paper, and 10 Blue Ribboned Wrapping Paper for Seer Coldsnout at Icepaw Village in Winter Veil Vale!','So, have you got any wrapping paper for us?','Oh, the young ones will be pleased. I may be old, but celebrating the holiday is always the highlight of my year, and to wrap gifts for others is always a favorite past time.\n\nHere, take this, as a thanks from myself.',5042,10,5048,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,750,0,0,0,0,0,0,0,0,0,0,0, 60985,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61122, 40744);
replace into creature_involvedrelation	(id, quest) values (61122, 40744);

replace into item_template values
 ('60985', '4', '0', 'Icepaw Talisman', '', '9466', '2', '0', '1', '1000', '250', '12', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '10', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);
-- Change the following quests to Quest Zone ID 5130: 'Bracing The Inevitable', 'Grizzlore Wants Thunder', 'Jolly Holly Dances Prolly', , 'Snowball Wars: Episode I', Snowball Wars: Episode II', 'The Icy Menace'.
update quest_template set zoneorsort = 5130 where entry in (50318,50319,50320,50321,50326,50328,50330);

-- Thieving Little Grell!
delete from quest_template where entry = 40745;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40745,2,5130,10,5,0,0,'Thieving Little Grell!','Those little, thieving, coniving Grell, they pulled the snow over my eyes this year when I was least expecting it.\n\nThey stole my gift right out from beneath my nose. Though I will admit, I was a bit drunk, and awoke to find it missing, but that is here nor there.\n\nI have good suspicion that it is the Grell to the south west who are responsible. Trust me, this gift means a lot for me, and I really want to give it to someone special, do you think you could recover it from their camp for me?','Gather Carus\' Gift from the Winter Grell Camp to the south west and return it to him in Winter Veil Vale.','Have you found it yet?','I cannot thank you enough for recovering this, those Winter Grell surely got the best of me this year, but thanks to you, all is better now, here, as a token of my thanks, have some ale on me.',60986,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,850,0,0,0,0,0,0,0,0,0,0,0, 17402,2,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50652, 40745);
replace into creature_involvedrelation	(id, quest) values (50652, 40745);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60986,5666,'Carus\' Gift',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010971, 3, 24995, 'Carus\' Gift', 0, 4, 2, 43, 2010971, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where item = 60986;
replace into gameobject_loot_template values
(2010971,60986,-100,0,1,1,0);

-- The Evil Winter Grell
delete from quest_template where entry = 40746;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40746,2,5130,10,5,0,0,'The Evil Winter Grell','The Winter Grell arrive at the start of every season, their minds filled with ideas of trickery and theft to disrupt the festive seasons here in Winter Veil Vale. They are sent by their lord Krampus, an evil spirit who despises the holiday season.\n\nIt is up to brave souls like us to prevent the Winter Grell from doing their biding and stealing presents from beneath the tree at will.\n\nYou can find them to the south west, near the edge of the mountain and the frozen lake, slay them, and remove their presence. Do not worry about causing too much harm, they will simply be sent back to the realm in which they came, only to return another season.','Slay 7 Winter Grell Tricksters, and 7 Winter Grell Schemers for Carus Silversnow in Winter Veil Vale.','It is a never ending conflict with these Winter Grell..','Excellent work out there, another season of celebrations will go with less tomfoolery.',0,0,0,0,0,0,0,0, 61127,7,61128,7,0,0,0,0, 0,0, 0,800,0,0,0,0,0,0,0,0,0,0,0, 51060,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50652, 40746);
replace into creature_involvedrelation	(id, quest) values (50652, 40746);

-- A Programmer?
delete from quest_template where entry = 40747;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40747,2,876,10,1,512,0,'A Programmer?','Huh, what are you doing here, I don\'t recall you being on any lists, or expecting anyone on the island here.\n\nDid Mr. Shang send you, or Dragunastrasz?\n\nI assume you must be new here, a programmer like the others no doubt, we go through them quick around here with all the bug reports.\n\nWhen you\'re ready to begin, speak to me, and I\'ll issue you a set of Programmer Socks.\n\nYes they are required.','Speak with Jamey to obtain the Programmer Socks.','Yes?','Well, here you are, and here are your pair of Programmer Socks.\n\nThey are extremely comfortable and increase your skill by a considerable margain.\n\nI better not catch you without them.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,150,0,0,0,0,0,0,0,0,0,0,0, 60982,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61138, 40747);
replace into creature_involvedrelation	(id, quest) values (61138, 40747);

-- Winter Veil Brew
delete from quest_template where entry = 40748;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40748,2,1584,55,45,512,0,'Winter Veil Brew','What a better way to cap off the end of a long year other than drinking? Of course, the best of the best only makes the celebrations better.\n\nYou heard tales of the Winter Veil Brew I made a few seasons past? Oh, it surely was magical, probably the best batch I made in my wee life.\n\nThose dastardly Dark Irons stole it, no doubt hidden away in their tavern deep within the Blackrock Depths.\n\nYou recover it, and I share some of it, that sounds like a deal, yeah?','Recover the Winter Veil Keg in the caverns of Blackrock Depths for Bomarn Fireaxe at Winter Veil Vale.','You had any luck finding the barrel down there?','<Bomarn beams with excitement.>\n\nOh, this is it, the mystical keg of Winter Veil Brew! I haven\'t had a drink in ages past.\n\n <Bomarn quickly drinks from the barrel with an eagerness.>\n\nOh, where has me manners gone, here, like I promised, take a couple tankards, only the best for a brave adventurer like yerself.',60987,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5600,0,0,0,0,0,0,0,0,0,0,0, 60983,5,60988,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50647, 40748);
replace into creature_involvedrelation	(id, quest) values (50647, 40748);

update quest_template set type = 81 where entry = 40748;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60987,8381,'Winter Veil Keg',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010967, 3, 23262, 'Winter Veil Keg', 0, 4, 1, 43, 2010967, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010967,60987,-100,0,1,1,0);
-- Object 'Winter Veil Keg' set respawn time to 25 seconds.
update gameobject set spawntimesecsmin = 25, spawntimesecsmax = 25 where id = 2010967;

replace into item_template values
 ('60988', '4', '1', 'Bomarn\'s Lucky Socks', 'Surprisingly warm and comfy.', '66299', '2', '0', '1', '400', '100', '8', '-1', '-1', '55',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '10', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0',
 '10', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Translating The Unknown
delete from quest_template where entry = 40749;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40749,2,5121,52,48,0,0,'Translating The Unknown','The parchment is written in an unknown script that appears to be logographic. Judging by your surroundings, this building does not belong to any native culture to Tel\'Abim. The calligraphy is elegant the strokes for each character appears perfect. Seek out someone who may be able to decipher the script.','Find someone capable of deciphering the script on the parchment.','Yes? What do you have there? It appears to be written in my language.','Ah, so you need someone to translate this for you? Let me see it.',60989,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60989,1, 0,1875,1010,25,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_involvedrelation	(id, quest) values (90983, 40749);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60989,7588,'A Strange Parchment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'You cannot understand hide or tail from this text but you have a sensation that it is important.',0);
update item_template set start_quest = 40749 where entry = 60989;

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010968, 3, 23431, 'Foreign Chest', 0, 0, 1, 43, 2010968, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010968,60989,100,0,1,1,0);

-- An Exile's Regret
delete from quest_template where entry = 40750;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40749,40750,2,5121,52,48,0,0,'An Exile\'s Regret','<Aneka furrows her brow for a moment as she reads.>\n\nThis is written by an exile of my people. A senshi that was afflicted by soul rot who fled the island trying to find a cure, she was filled with regret for abandoning her oath and home. It seems she was attempting a ritual to cure herself but evidently failed in doing so since you are here.\n\nSoul rot is an affliction that happens when someone is tainted by the dark Kami. Evil beings that only seek to corrupt, twist and destroy, with the ultimate aim of stealing one\'s soul. Return where you found the parchment, and seek out a totem near the dwelling, you may receive further guidance there.','Find a totem near the abandoned house in Tel\'Abim.','The totem seems to beckon you further.','As you stand before the totem, a voice touches your mind. It seems to call for help.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1375,1010,25,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation (id, quest) values (90983, 40750);
replace into gameobject_involvedrelation (id, quest) values (2010969, 40750);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010969, 2, 25942, 'Inconspicuous Totem', 0, 32, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Danonzo's Tel'Abim Surprise
delete from quest_template where entry = 40752;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40738,40752,2,5121,58,48,512,0,'Danonzo\'s Tel\'Abim Surprise','Now, where to begin, so many ideas, so many possibilities, why not a tried and true classic, with a twist. Banana bread is a staple to some and quite delicious, but Danonzo can put a twist on things.\n\nEnfusing the Gargantuan Tel\'Abim Banana into the bread with a dash of Heart of the Wild can calm the nerves and much a keen aftertaste that lingers upon the tongue.\n\nGather me the ingredients, and I can prepare it at once!','Gather a Gargantuan Tel\'Abim Banana, a Heart of the Wild and a Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel\'abim.','You gather everything yet? I\'m dying for the opportunity to cook wonderous dishes here!','Here it is, a magical delicacy for fresh minds!\n\nI present Danonzo\'s Tel\'Abim Delight, just like its name implies, a sheer treat to the tongue. A mix of both chewy and sweet textures served warm with a sheer lovely taste. Thanks to the garnish of Mountain Silversage.\n\nAs I promised, here is the recipe. Don\'t forget to tell people who figured this all out now, ya\'hear?',60955,1,10286,1,3713,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3500,0,0,0,0,0,0,0,0,0,0,0, 60976,1,60979,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61112, 40752);
replace into creature_involvedrelation	(id, quest) values (61112, 40752);

-- Danonzo's Tel'Abim Delight
delete from quest_template where entry = 40753;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40738,40753,2,5121,58,48,512,0,'Danonzo\'s Tel\'Abim Delight','My mind is flooding with ideas, so much to choose from, so much to do! I got it why don\'t we create a wonderous stew, the Gargantuan Banana itself is surely capable of producing a wonderous cream.\n\nA creamy broth served hot with fresh chunks of grilled banana overtop, now doesn\'t that sound magical!\n\nAll I need is a Gargantuan Tel\'Abim Banana, a Mountain Silversage and a Soothing Spices, bring them to me, and we can get cooking kid.','Gather a Gargantuan Tel\'Abim Banana, a Mountain Silversage and a Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel\'abim.','My destiny is ahead of me, what\'s taking you so long to collect everything?','Here it is, a magical delicacy for fresh minds!\n\n I present Danonzo\'s Tel\'Abim Delight, just like its name implies, a sheer treat to the tongue, a mix of bow chewy and sweet textures served warm with a sheer lovely taste thanks to the garnish of Mountain Silversage.\n\nAs I promised, here is the recipe, don\'t forget to tell people who figured this all out now, ya\'hear?',60955,1,13465,1,3713,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3500,0,0,0,0,0,0,0,0,0,0,0, 60977,1,60980,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61112, 40753);
replace into creature_involvedrelation	(id, quest) values (61112, 40753);

-- Danonzo's Tel'Abim Medley
delete from quest_template where entry = 40754;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40738,40754,2,5121,58,48,512,0,'Danonzo\'s Tel\'Abim Medley','Oh how the other goblins of Kezan will bask in the awe of my genius once they discover all of the recipes in my mind. My idea of a cold Banana cake filled with banana cream is the next on my mind, that sure does sound delicious, does it not?\n\nCooked at a high heat with a seperate filling added later and cooled after completion will add quite the punch of flavors, its just missing one thing... I got it!\n\nGather me the following ingredients, and I can get to work, A Gargantuan Tel\'Abim Banana, an Essence of Air, and a Soothing Spices, once you acquire them, I can get started.','Gather a Gargantuan Tel\'Abim Banana, a Essence of Air and a Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel\'abim.','I can wait no longer to start, hurry up with gathering what I need!','It is complete, Danonzo\'s Tel\'Abim Medley!\n\nServed cold, this banana cake is filled with a airy banana cream, incredibly sweet, with a crumbly outer layer! With this, I shall dominate Kezan, and potentially even other markets!\n\nI did promise to share this recipe, and I am an honest goblin, perhaps rare for my kind.\n\nJust remember where you got it huh, I don\'t want anyone stealing my ideas now, you know?',60955,1,7082,1,3713,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3500,0,0,0,0,0,0,0,0,0,0,0, 60978,1,60981,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61112, 40754);
replace into creature_involvedrelation	(id, quest) values (61112, 40754);

-- Operation Screwfuse 1000
delete from quest_template where entry = 40755;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40755,2,5121,58,50,0,0,'Operation Screwfuse 1000','Look, I have a favor I need to ask, and one that is really important to me. Do you know the meaning of sunk cost fallacy? Well, in my world it\'s completely true. I have spent years, and buckets of gold working on a machine that can sort bananas on being worthy to collect or not. It is able to judge ripeness, age, and all sorts of factors to determine if it is worth our time to collect.\n\nLet\'s just say, the buffoons that I sent it out with, got lost, and left it at the camp to the east of here.\n\nI don\'t have a bunch of people to waste getting ripped apart by Venomflayers to go get it themselves, so why don\'t you do it? Recover the Screwfuse 1000 and be sure to bring it back gently, it should be down the road to the east, at a small abandoned camp.','Find and recover the Screwfuse 1000 for Bixxle Screwfuse at Bixxle\'s Storehouse on Tel\'Abim.','So, you have any luck yet $c?','By my ears, this is it! Well done, this has saved me an extraordinary amount of time, and as you know, time is money, especially in this case.',60991,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61101, 40755);
replace into creature_involvedrelation	(id, quest) values (61101, 40755);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60991,7840,'Screwfuse 1000',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010973, 3, 25847, 'Screwfuse 1000', 0, 4, 0.6, 43, 2010973, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010973,60991,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 15, spawntimesecsmax = 15 where id = 2010973;

-- Operation FIX Screwfuse 1000
delete from quest_template where entry = 40756;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40755,40756,2,5121,58,50,0,0,'Operation FIX Screwfuse 1000','Those, absolute idiots!\n\nThe entire mechanism is broken, my backup Arcane Regulator, and my Spingadge Flange are both broken. Do you know how long it took to acquire such rare parts, special ordered from Kezan!\n\nIf only they were still alive, I\'d be the one to send them to whatever misbegotten afterlife they are rotting in. I have only one source for rare goods from Kezan, and I need you to speak with him. He goes by the name \'Jabbey\' an alias of sorts, he is an undercover operative from Kezan and works through various back channels, go speak with him, and let him know -Bixxle- sent you, bring him this list of items.','Speak with Jabbey at Steamwheedle Port in Tanaris.','Yes?','Huh, what is it you want, you here for something special?\n\nOh, Bixxle sent you huh, that idiot? He spent a good five years making some banana sorter, what does he need?',60992,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60992,1, 0,300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61101, 40756);
replace into creature_involvedrelation	(id, quest) values (8139 , 40756);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60992,7694,'Bixxle\'s Item List',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Operation Help Jabbey
delete from quest_template where entry = 40757;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40756,40757,2,1584,58,50,0,0,'Operation Help Jabbey','<Jabbey looks at the list with an expression of disbelief, and laughs.>\n\nHaha! He thinks I am going to give out such valuable items that easy? Look kid, these things are rare, and extremely valuable, but if he needs them, and wants them, I have a favor I need completed before I even consider forking over something like that. Easy yeah?\n\nI did some business with one of those Dark Iron types, he went by the name \'Darneg Darkbeard\' lets just say I leant him a considerable amount of potent goods to sell. I haven\'t heard back at all from him, and I have confirmation that I was swindled. I need you to travel to Blackrock Depths, and into Shadowforge to recover the \'Extremely Potent Snuff\' from him. He should be somewhere in the Domicile there.','Venture into Blackrock Depths, and recover the \'Extremely Potent Snuff\' from Darneg Darkbeard near the Domicile, for Jabbey at Steamwheedle Port in Tanaris.','You find that good for nothing thief, and give him justice yet?\n\nBetter yet, you recover my stuff?','<Jabbey looks on the small pile of snuff with displeasure.>\n\nWell this certainly is a disappointment.',60993,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (8139, 40757);
replace into creature_involvedrelation	(id, quest) values (8139, 40757);

update quest_template set type = 81 where entry = 40757;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60993,2480,'\'Extremely Potent Snuff\'',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61139, 60993, -100, 0, 1, 1, 0);

-- Operation Help Jabbey 2
delete from quest_template where entry = 40758;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40757,40758,2,5121,58,50,0,0,'Operation Help Jabbey 2','Well, I hate to do this to you kid, but that dwarf went and... \'used\' most of the snuff, looks like you\'re a bit out of luck. This certainly isn\'t enough to recover even a fraction of the cost for the parts you\'re looking for, but I do have another favor, that will pay for the rest of it.\n\nLet\'s just say I have some clients that are looking to \'research\' toxic materials for, scientific, purposes. They are looking to get their hands on a \'Blighted Essence\' which can be acquired from the Blighted Horrors in Eastern Plaguelands. So, get me the Blighted Essence, and that will pay off the rest of the parts, easy yeah?','Venture to Eastern Plaguelands and gather a \'Blighted Essence\' from Blighted Horrors for Jabbey at Steamwheedle Port in Tanaris.','Careful holding that Blighted Essence when you bring it around here, last thing I want is some super disease in Steamwheedle.','Well, I didn\'t expect you to actually return, that\'s a bummer. Oh well, a goblins word means something in this world, to some people anyway.',60994,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5450,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (8139, 40758);
replace into creature_involvedrelation	(id, quest) values (8139, 40758);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60994,13709,'Blighted Essence',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(8521, 60994, -50, 0, 1, 1, 0);

-- Operation Return to Screwfuse
delete from quest_template where entry = 40759;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40758,40759,2,5121,58,50,0,0,'Operation Return to Screwfuse','Nice job in getting all that stuff for me, didn\'t take all too long as well, Kezan could use some individuals like you.\n\nNow, I boxed that fool Bixxle\'s goods, take them to him, and be quick about it, I\'ve had you linger around here too long, last thing I want is people to catch on about my business, got it?','Bring Bixxle\'s Expensive Parts to Bixxle Screwfuse at Bixxle\'s Storehouse in Tel\'Abim.','So, what did Jabbey say?','Oh, they were that hard to get huh, hope it wasn\'t too much of a fuss getting this for me, here, take some coin for all the trouble.',60995,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60995,1, 500,450,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (8139 , 40759);
replace into creature_involvedrelation	(id, quest) values (61101, 40759);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60995,7913,'Bixxle\'s Expensive Parts',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Operation Final Repairs
delete from quest_template where entry = 40760;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40759,40760,2,5121,58,50,512,0,'Operation Final Repairs','Now that I have all the materials, I just need to put in the last bits of repairing, and for that, well I\'m going to need more materials.\n\nI hope I am not being too much of a bother, but do you mind getting me some engineering supplies? I need the following, six Thorium Bars, a Gold Power Core, some Fused Wiring, and a Thorium Widget, with all of that I should be able to fix the Screwfuse 1000.','Gather 6 Thorium Bars, 1 Gold Power Core, 1 Fused Wiring, and 1 Thorium Widget for Bixxle Screwfuse at Bixxle\'s Storehouse in Tel\'Abim.','You get all those things yet?','<Bixxle let\'s out a sigh of relief, smirking from ear to ear.>\n\nYou\'ve really helped me out here, working from Tel\'Abim complicates everything, especially with how remote the location is.\n\n You came in clutch friend, and for that I should reward you with something, and I know just the thing.\n\nLook, if you ever need anything else, let me know, you\'ve saved me more gold than I would\'ve made in years, and almost as much time even!',12359,6,10558,1,7191,1,15994,1, 0,0,0,0,0,0,0,0, 0,0, 0,1250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60996,1,60997,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61101, 40760);
replace into creature_involvedrelation	(id, quest) values (61101, 40760);

replace into item_template values
 ('60996', '4', '0', 'Bixxle\'s Necklace of Control', '', '66253', '3', '0', '1', '53056', '13264', '2', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60997', '4', '0', 'Bixxle\'s Necklace of Mastery', '', '66253', '3', '0', '1', '53056', '13264', '2', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Secrets of the Dark Iron Desecrator
delete from quest_template where entry = 40761;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40760,40761,2,5121,60,55,0,0,'Secrets of the Dark Iron Desecrator','Hey look, you did me a real solid, and I still owe you for everything you\'ve done. You wouldn\'t be happen to be in the market for a gun would you? I don\'t just mean any gun, I mean a Dark Iron Desecrator. I have someone that owes me quite a lot of favors for help I offered to bring them to Steamwheedle for rare goods.\n\nIf this is something you\'re interested in, just know it will take some work to acquire. If this has your interest, then speak with Gelweg Darkbrow, let him know I sent you, and that I am asking for the plans.','Collect the Plans for the Dark Iron Desecrator from Gelweg Darkbrow at Steamwheedle Port, once they are acquired, return to Bixxle Screwfuse.','So, you speak with him yet?','I assume he complained huh?\n\n<Bixxle laughs.>\n\nYeah, this is quite secretive and a prototype build of Dark Iron Engineers, that\'s why we\'re going to master it.\n\nYou wouldn\'t imagine it but I am quite a reknowned Engineer, and have had many run ins with these \'Dark Irons\', heck I was even contracted for some stuff in their vaunted city.',60998,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,650,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61101, 40761);
replace into creature_involvedrelation	(id, quest) values (61101, 40761);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60998,7601,'Plans: Dark Iron Desecrator',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_gelweg_darkbrow' where entry = 60955;

-- The Dark Iron Desecrator
delete from quest_template where entry = 40762;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40761,40762,2,5121,60,55,512,0,'The Dark Iron Desecrator','Well, these plans are much more complicated than I first estimated, so many rare materials, most of which are not so easily available...\n\nFirst off, we will need to get a stock Dark Iron Rifle, they can be crafted by engineers with the know how to make one. Secondly, I need a Magma Condensor from within Blackrock Depths, you can find it near the Golem Laboratory. Thirdly, I require a Intricate Arcanite Barrel which can handle extreme heat. This can be found deep within Lower Blackrock Spire, near the Quartermaster there.\n\nLastly, and most difficult to find, I need a Molten Fragment. This item can be acquired from Molten Destroyers in the depths of the Molten Core.\n\nTo finish the construction, I will also need three Fiery Core found in Molten Core, and ten Enchanted Thorium Bars.\n\nOnce your collect these goods, come to me, and I can get started.','Collect a Dark Iron Rifle, a Magma Condensor, a Intricate Arcanite Barrel, a Molten Fragment, 3 Fiery Cores, and 10 Enchanted Thorium Bars for Bixxle Screwfuse at Bixxle\'s Storehouse in Tel\'Abim.','Have any luck recovering the materials yes $N?','Behold, a creation of great magnitude, the ideas of wicked dwarven design, crafted by yours truly.\n\nI hope this serves you well, and does what damage you need to deal on those that may be your enemy.\n\nWe are even now, this surely is worth quite a bit of gold after all, maybe not as much as my Screwfuse 1000, but close enough.\n\nBest of luck out there $N, I hope we cross paths again.',60999,1,61066,1,61067,1,16004,1, 0,0,0,0,0,0,0,0, 0,0, 0,500,0,0,0,0,0,0,0,0,0,0,0, 61068,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61101, 40762);
replace into creature_involvedrelation	(id, quest) values (61101, 40762);

update quest_template set type = 62 where entry = 40762;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60999,1136,'Magma Condensor',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(61066,4665,'Intricate Arcanite Barrel',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(61067,28258,'Molten Fragment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(11659, 61067, -100, 0, 1, 1, 0);

REPLACE INTO gameobject_template VALUES
(2010974, 3, 24109, 'Magma Condensor Crate', 0, 4, 1, 43, 2010974, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010975, 3, 24106, 'Intricate Arcanite Barrels', 0, 4, 1, 43, 2010975, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010974,60999,-100,0,1,1,0),
(2010975,61066,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 25, spawntimesecsmax = 25 where id = 2010974;
update gameobject set spawntimesecsmin = 25, spawntimesecsmax = 25 where id = 2010975;

replace into item_template values
 ('61068', '2', '3', 'Dark Iron Desecrator', 'The true embodiment of Dark Iron  construction.', '31225', '4', '0', '1', '272828', '68207', '26', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '100',
 '3', '72', '142', '0', '5', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0',
 '0', '10', '0', '18187', '0', '0', '0', '60000', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '90', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- To Heal a Soul
delete from quest_template where entry = 40751;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40750,40751,2,5121,52,48,0,0,'To heal a Soul','<A female voice seems to penetrate through your mind.>\n\nThe beast seeks to end... everything that I am. As I prepared the ritual site after years of work, one of the naga slew me, and my bones were taken. Reclaim my bones, from the slithering foe. Burn my bones in the incense bowl by the totem. A shade of the dark temptress will reveal itself, destroy it and set me free!','Gather the Senshi Bones from the Wave Crest Explorers, once collected, burn the bones at the incense brazier near the Inconspicous Totem to summon forth the Shade of the Temptress, once the Shade of the Temptress is slain, bring news to Aneka Konko at Ratchet.','You have returned...','You have helped one of my kin, redeemed her in the eyes of the kami, cast aside her dishonor, and saved her soul. Her spirit is free to be reborn once more. Take this as a symbol of my gratitude.',60990,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5875,1010,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61069,1,61070,1,0,0,0,0, 0,0,'');

replace into gameobject_questrelation (id, quest) values (2010969, 40751);
replace into creature_involvedrelation (id, quest) values (90983, 40751);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60990,940,'Senshi Bones',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61129, 60990, -15, 0, 1, 1, 0);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010970, 2, 7289, 'Incense Brazier', 0, 32, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_incense_brazier');

replace into item_template values
 ('61069', '4', '3', 'Kabuto of the Senshi', '', '66309', '2', '0', '1', '67928', '16982', '1', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '17', '3', '12',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '259', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '60', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61070', '4', '4', 'Kabuto of the Protector', '', '66309', '2', '0', '1', '55928', '13982', '1', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '21', '3', '7',
 '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '461', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- An Opportunity to Dig Deep
delete from quest_template where entry = 40763;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40763,2,5121,57,54,0,0,'An Opportunity to Dig Deep','Yo $r, fancy seeing a capable adventurer out here! Interested in some work? You see, when Tel co. came here, this place was deserted. Just monkeys and bananas.\n\nBut that wasn\'t the case before, you know? Thousands of years ago, this island was a mountain range on the border of nations, and there\'s sure to be riches hidden here. To begin with, my surveyors have discovered some ancient Zandalari ruins on the northern coast dating back over ten thousand years.\n\nThe ruins are infested with the restless ghosts, as a muscle, go there and slay those ghosts, and bring any tablets and writing you find. I\'ll make it worth your time, promise, yeah?','Slay 8 Spiritual Wanderers, and collect 4 Ancient Troll Tablets for Archaeologist Trixia Goldspark at Tel Co. Bacecamp in Tel\'Abim.','Well, how did it go?','This is a nice haul and the ghosts are gone, yeah? I will order the crew to start diggin\' once we make sure there\'s no further complications. Now let\'s see about these texts... Hmm, very fascinating! $r I may need your assistance again.',61071,4,0,0,0,0,0,0, 61094,8,0,0,0,0,0,0, 0,0, 0,4875,470,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61117, 40763);
replace into creature_involvedrelation	(id, quest) values (61117, 40763);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61071,23149,'Ancient Troll Tablet',12,1,2048,1,-1,-1,1,4,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010976, 3, 5, 'Ancient Troll Tablet', 0, 4, 1, 43, 2010976, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010976,61071,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 60, spawntimesecsmax = 60 where id = 2010976;

-- Azotha Gold
delete from quest_template where entry = 40764;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40763,40764,2,5121,57,54,0,0,'Azotha Gold','Ten thousand years ago, the Zandalari were competing against a civilization known as the Azotha. Their struggle was put at an end when the world was shattered, and oceans swallowed a large chunk of the ancestral landmass. Tel\'Abim just happens to be a region where the two clashed.\n\nThe Trolls seem to have lost the skirmish referenced on this tablet, and it mentions Trolls being sacrificed to the gods at the ritual site, their riches buried. This means there could be GOLD buried under this ritual site! And we may even have found it.\n\nHead to the western-most isle of the Jagged isles and search for an obvious ritual site, when you find it, start digging!','Dig around the ritual site and find the Azotha Ritual Cache for Archaeologist Trixia Goldspark at Tel Co. Basecamp in Tel\'Abim.','Well? Don\'t keep me in suspense, did ya do it?','Hoo mama! This is what I\'m talkin\' about! This haul will earn us lots of prestige and accolades. This is both Azotha, Troll, and  gold from other civilizations they must have buried here! You deserve your share for sure! We may work again in the future, you\'ve certainly been useful!',61072,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 50000,4500,470,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61117, 40764);
replace into creature_involvedrelation	(id, quest) values (61117, 40764);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61072,7914,'Azotha Ritual Cache',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010977, 3, 49, 'Ancient Dirt Mound', 0, 4, 1, 43, 2010977, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010977,61072,-20,0,1,1,0);

-- Finding Bixxle!
delete from quest_template where entry = 40765;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40765,2,5121,56,48,0,0,'Finding Bixxle!','We lost our communication with the Derelict Camp and Bixxle\'s Storehouse a few weeks ago. Bixxle\'s Storehouse was the key to profit for our northern harvesting. If we are ever to start up again, I need to know that the place isn\'t a wreck and covered in monkeys.\n\nMore importantly, Bixxle was a logistical mastermind, as much as his focus tends to drift towards engineering useless contraptions.\n\nHead far to the north, to Bixxle\'s Storehouse, follow the road, it should take you right to it, see if Bixxle is alive.','Head to Bixxle\'s Storehouse in Northern Tel\'Abim and report to Bixxle if he is still alive.','Yes?','Huh, Telraz sent you? I was wondering when he would check in, I guess everything has gotten quite crazy around here after all!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,650,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61102, 40765);
replace into creature_involvedrelation	(id, quest) values (61101, 40765);

-- A Report From Bixxle
delete from quest_template where entry = 40766;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40765,40766,2,5121,56,48,0,0,'A Report From Bixxle','Well, here we are, still very much alive and kicking. We did have our fair share of encounters with the local wildlife.\n\nI prepared a report to Baron Telraz, bring it back to Tel Co. Basecamp, it\'ll let him know we\'re still kicking up here, whenever he brings in the big guns to clean things up.','Bring Bixxle\'s Report to Baron Telraz at the Tel Co. Basecamp in Tel\'Abim.','So, have you heard news from Bixxle\'s Storehouse?','A report from Bixxle himself? Give me that!/n/n<Baron Telraz frantically reads the letter with utmost curiosity, letting out a sigh of relief.>\n\nMy, that certainly is a relief, without Bixxle I would have no idea how to manage things up there.\n\nThanks for the work kid, here, take some coins for the hassle of running around.',61073,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61073,1, 1500,1400,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61101, 40766);
replace into creature_involvedrelation	(id, quest) values (61102, 40766);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61073,8927,'Bixxle\'s Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Final Flight of the Venomflayer
delete from quest_template where entry = 40767;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40767,2,5121,58,50,512,0,'Final Flight of the Venomflayer','Hey there pal, you mind lending a hand?\n\nWe got all sorts of trouble with these Venomflayers lurking in the area, hell they are already responsible for a few of our casualties. If you could do me a favor and rid the local jungle of a few of \'em, that\'d make our lives a whole lot easier.\n\n\You can find them pretty much all over to the west, and south west, remove twelve of them, and return to me when you\'re done.','Slay 12 Venomflayer Serpents for Zalwiz Hardlug at Bixxle\'s Storehouse in Tel\'Abim.','You got rid of those critters yet?','My my, you sure are resourceful, I didn\'t expect you to get it done so quick.\n\nHere, take this, we have a bunch of spare ones laying around now that the enforcers took off and left south.',0,0,0,0,0,0,0,0, 61096,12,0,0,0,0,0,0, 0,0, 0,5200,0,0,0,0,0,0,0,0,0,0,0, 61074,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61105, 40767);
replace into creature_involvedrelation	(id, quest) values (61105, 40767);

replace into item_template values
 ('61074', '2', '5', 'Enforcer\'s Maul', '', '28691', '2', '0', '1', '203448', '50862', '17', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '26', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '0',
 '0', '92', '183', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '85', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Intercepting Wavecrest
delete from quest_template where entry = 40768;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40768,2,5121,58,50,512,0,'Intercepting Wavecrest','Each day more and more Naga take to the shores of the surrounding islands, they are gathering and for what purpose I do not know.\n\nI would rather have them dealt with now, than in a week when there are hundreds of them. I have heard tales of just how quick they can infest an area with their presence.\n\nYou can find them all around the surrounding Jagged Isles to the north, find them, and kill them, bring me twenty of their scales as proof.','','','',61075,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5400,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61076,1,61077,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61105, 40768);
replace into creature_involvedrelation	(id, quest) values (61105, 40768);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61075,21835,'Hatecrest Scale',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61130, 61075, -70, 0, 1, 1, 0),
(61131, 61075, -70, 0, 1, 1, 0);

replace into item_template values
 ('61076', '4', '1', 'Sash of Goblin Luck', '', '27614', '2', '0', '1', '30776', '7694', '6', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61077', '4', '1', 'Island Dungarees', '', '18911', '2', '0', '1', '61820', '15455', '7', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '66', '0', '0', '0',
 '0', '0', '0', '21637', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '55', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Chillwind Armor
delete from quest_template where entry = 40769;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40769,2,5121,56,48,512,0,'Chillwind Armor','It has been a long time since I worked on anything worthwhile, and let me tell you, I am desperate for some real work. I have been stranded here on Tel\'Abim to be nothing more than a glorified repairman now for a while.\n\nMy inner blacksmith calls to me, and I want to work on something unique before I go insane. Long ago when I worked at Everlook I was fascinated with the Chillwind Chimaera, extremely powerful creatures that roamed the snowy tundras.\n\nThere were rumors floating around about rare Frostwoven horns that have been growing on a few of the creatures, I\'d like to get my hands on one, and harness it into armor, think you can do that for me? You can find Chillwind Chimaera out in Winterspring, far to the north of here.','Slay Chillwind Chimaera and collect a Frostwoven Chillwind Horn for Razin Brasslight at Bixxle\'s Storehouse in Tel\'Abim.','You had any luck yet, or you here looking for a coat to brave the cold weather?','Well, this certainly is a rarity, while you were gone I thought of a few ideas that could work to incorporate the horn into armor, and I believe I have come up with the perfect idea.\n\nTake this, as a thanks for the assistance!',61078,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5250,0,0,0,0,0,0,0,0,0,0,0, 61079,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61106, 40769);
replace into creature_involvedrelation	(id, quest) values (61106, 40769);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61078,3737,'Frostwoven Chillwind Horn',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(7447, 61078, -15, 0, 1, 1, 0),
(7448, 61078, -25, 0, 1, 1, 0),
(7449, 61078, -33, 0, 1, 1, 0);

replace into item_template values
 ('61079', '4', '4', 'Chillwind Armor', '', '25676', '2', '0', '1', '62656', '15664', '5', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '12', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '520', '0', '0', '0',
 '5', '0', '0', '3132', '2', '0', '2', '30000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '115', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Murloc-Monkey Wars
delete from quest_template where entry = 40770;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40770,2,5121,58,50,0,0,'Murloc-Monkey Wars','Ebu helps protect tribe, tribe in danger! Long time monkey fight murloc, murloc always near monkey, always attack monkey. I keep us safe, and I fight murloc.\n\nMaybe you fight murloc too? Kill big murloc too, for Ebu, and friends, we thank you for help!','Slay 8 Spitefin Tidehunters, 6 Spitefin Wavecreepers, 4 Spitefin Oracles, and Glrgbl for Ebu at The Jagged Isles in Tel\'Abim.','You hurt murloc, beat murloc?','You help Ebu!\n\nMonkeys thank you, we thank you yes yes!',0,0,0,0,0,0,0,0, 61086,8,61087,6,61088,4,61089,1, 0,0, 0,5850,0,0,0,0,0,0,0,0,0,0,0, 60954,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61126, 40770);
replace into creature_involvedrelation	(id, quest) values (61126, 40770);

-- The Missing Friend!
delete from quest_template where entry = 40771;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40771,2,5121,58,50,512,0,'The Missing Friend!','Friend stolen from tribe, murlocs stole friend, you help us, yes?\n\nFriend near murloc camp, recover friend, save friend from murlocs, before too late! You do yes, you help yes? Nibu strong monkey, save Nibu, help tribe!','Save Nibu from the murloc camps on The Jagged Isles for Ebu in Tel\'Abim.','You find Nibu, you save Nibu?','Ebu thank you, ebu give you biggest gift of all.\n\nFrom us here, we thank you for everything!',0,0,0,0,0,0,0,0, 60014,1,0,0,0,0,0,0, 0,0, 0,5850,0,0,0,0,0,0,0,0,0,0,0, 61080,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Save Nibu');

replace into creature_questrelation		(id, quest) values (61126, 40771);
replace into creature_involvedrelation	(id, quest) values (61126, 40771);

REPLACE INTO creature_template VALUES (60014, 328, 0, 0, 0, 0, 'quest_40771_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');


replace into item_template values
 ('61080', '4', '0', 'Ebu\'s Lucky Banana', '', '6420', '2', '0', '1', '10000', '2500', '12', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10',
 '0', '0', '0', '21596', '1', '0', '0', '-1', '0', '-1', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61081', '0', '0', 'Gift of Ferocity', 'Blessed by Cenarius, this gift beholds the sheer ferocity of nature itself.', '20220', '3', '0', '1', '40000', '10000', '0', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '45739', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- The Abominable Yeti
delete from quest_template where entry = 40772;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40772,2,5130,60,50,0,0,'The Abominable Yeti','Not all of us yetis are evil, there was a time when my kind stood along side the great tree and offered presents to the denizens of Azeroth. Such a time has passed, and many of the yeti now walk a darker path.\n\nTo the south is their den, to which they house the evil Snowball, uttering such a name chills even me. I desire you to lessen their ranks, and to let those that celebrate do so in peace without the worry of evil undoing good.','Slay 8 Abominable Snow Yeti for Coldhowl in Winter Veil Vale.','I warn you friend, to bring help, they are strong, and tough opponants.','Excellent work! You might have saved the holiday season! Now many of us can sleep easy knowing that there is less evil lurking about, and for that, I want to thank you, personally.\n\nTake this, may it help you in the coldest of places.',0,0,0,0,0,0,0,0, 61135,8,0,0,0,0,0,0, 0,0, 0,5000,0,0,0,0,0,0,0,0,0,0,0, 61082,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61136, 40772);
replace into creature_involvedrelation	(id, quest) values (61136, 40772);

replace into item_template values
 ('61082', '4', '0', 'Coldhowl\'s Necklace', 'A memento of the Snow Yeti.', '9852', '2', '0', '1', '35864', '8966', '2', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '5', '0', '0', '28766', '0', '0', '0', '180000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- The Blood Elf Intrusion
delete from quest_template where entry = 40773;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40773,2,361,53,50,0,0,'The Blood Elf Intrusion','Our scouts have confirmed new presence in the area of Felwood, foreign interlopers from a far off land, loyal to outside forces from a far away land.\n\nWhat they are doing here, I am unsure of, but who they are, I am certain.\n\nThey are Blood Elves, loyal to their prince and the demon hunter Illidan. I am certain they are up to no good, and whatever plans they have, I would like to halt. You can find them gathered around an old statue of the betrayer near the Shatter Scar Vale just north east of Bloodvenom Falls, go there, and collect seven Blood Elf Badges.\n\nPerhaps they will get the message and return to where they came.','Gather 7 Blood Elf Badges from the Blood Elf Loyalists around the Shrine of the Betrayer for Torgen Blackscar at Bloodvenom Post in Felwood.','So, has the deed been done $r?','Well done, you have proved yourself, maybe now they will leave Felwood, and not return.',61083,7,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5250,76,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61166, 40773);
replace into creature_involvedrelation	(id, quest) values (61166, 40773);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61083,23713,'Blood Elf Badge',12,1,2048,1,-1,-1,1,7,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61162, 61083, -60, 0, 1, 1, 0);

-- Tainted Ooze Samples
delete from quest_template where entry = 40774;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40774,2,361,53,50,0,0,'Tainted Ooze Samples','The Royal Apothecary Society is always looking for new solutions to various problems, and new compounds with which to study and test upon.\n\nI have come to Felwood for such an issue, perhaps you can offer some assistance. All around the Bloodvenom Falls are oozes of a rather, noxious variety. From them I require Tainted Ooze Sludge for various research to be done back in Undercity.\n\nCollect fifteen samples for me, and I will pay you for the time, how does that sound?','Collect 15 Tainted Ooze Sludge from the oozes near Bloodvenom Falls for Apothecary Clarkson at Bloodvenom Post in Felwood.','Have you acquired my samples yet?','My, these sure are fascinating, full of quite toxic material.\n\nMy benefactors back in Undercity will be pleased, and here, as promised, take these coins.',61084,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 5000,5350,68,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61167, 40774);
replace into creature_involvedrelation	(id, quest) values (61167, 40774);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61084,11980,'Tainted Ooze Sludge',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(7092, 61084, -80, 0, 1, 1, 0),
(7086, 61084, -40, 0, 1, 1, 0);

-- No Questions Asked
delete from quest_template where entry = 40775;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40775,2,361,53,50,0,0,'No Questions Asked','I require aid with a matter of most discretion, or rather I don\'t wish to be bothered giving answers to questions you\'d barely understand yourself.\n\nAlthough blessed be Elune you seem to either have lost your tongue or are an adventurer of fewer words, which is rather perfect for me.\n\nThe task is quite simple. You must travel to the Bloodvenom Falls, slay the oozes around, collect their sludge and bring it back to me. Do this, speak nothing of it, ask nothing of it and you will be rewarded properly.','Collect 15 Tainted Oooze Sludge from the oozes near Bloodvenom Falls for Vana Gracefall at Talonbranch Glade in Felwood.','The sight of you is kinda overwhelming, it\'s like talking to a mindless treant, please remove yourself from my eyes.','You did well, for a treant.\n\nWell? You can go now.',61084,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 5000,5350,69,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61156, 40775);
replace into creature_involvedrelation	(id, quest) values (61156, 40775);

-- They Call Themselves Illidari
delete from quest_template where entry = 40776;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40776,2,361,53,50,0,0,'They Call Themselves Illidari','My scouts report activity east of the Shatter Scar Vale, close to what few of my people are calling nowadays the Shrine of the Betrayer. A cold statue of the once magic wielder Illidan Stormrage, a name with heavy impact on our history, one who not many dear speak out loud. And yet I feel no fear of speaking the name of a being that no longer even inhabits these lands.\n\nRegardless, this is no history lesson, if you wish for one of those, I\'d advise you to find the closest lorekeeper or a library.  At the foot of this statue, a group of sin\'dorei has settled, perhaps they fled Azshara or were simply in hiding for this long. I remember the High Priestess aiding these mongrels that remind me of the reign of Azshara, yet her sympathy will no longer be the case.\n\nThey seem to call themselves, the Illidari, and to me, they\'ve simply sealed their fate by foolishly admitting their connection to the Betrayer. Cull their numbers, these woods are already infected, and we need no more plague.','Slay 10 Blood Elf Loyalists at the Shrine of the Betrayer for Saloran Nightwell at Talonbranch Glade in Felwood.','They deserve no sympathy.','Good. They\'ve made a mockery of their legacy by dying at the hands of a paid mercenary.\n\nNo offense.',0,0,0,0,0,0,0,0, 61162,10,0,0,0,0,0,0, 0,0, 10000,5350,69,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61152, 40776);
replace into creature_involvedrelation	(id, quest) values (61152, 40776);

-- Big Green Bully
delete from quest_template where entry = 40777;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40777,2,5130,60,55,0,0,'Big Green Bully','<Linthea is sobbing while hiding her face behind her palms. As she wipes her tears away she looks at you with newfound hope.>\n\nYou\'re an adult, right? Our Matron always says we should ask adults for help if anything is wrong. And right now something is very wrong!\n\nShe had to go back this morning to get the other kids, but when she did she left us some presents behind and told us not to open them until she was back.\n\nBut now they are gone! Everyone is sad now, and it\'s just his fault, that green bully!','','Hello.','Zoki is the Horde\'s strongest warrior!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61158, 40777);
replace into creature_involvedrelation	(id, quest) values (61161, 40777);

-- Zoki is No Thief!
delete from quest_template where entry = 40778;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40777,40778,2,5130,60,55,0,0,'Zoki is No Thief!','What? Zoki is no thief! Zoki is an honorable orc, sure, Zoki reminds weak children sometimes who the strongest is but all he does is tell the truth! Linthea and Daniel are very scrawny and Vhreka just wants to be a boring old lady who talks to the elements. Zoki will be a great warrior just like Saurfang or his brother! Or maybe like Grommash, Matron says he was a Horde hero.\n\nWhy do you insist to annoy Zoki with stolen presents? I didn\'t steal anything, I promise on my honor! I remember the Matron said one of the snowmen lost their gloves and they found out eventually that they were stolen, maybe go ask them?','','Merry Winter Veil!','Zoki is still not on the naughty list, even if his words are harsh at times, he didn\'t steal anything. A gift, because you humored the children!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,500,0,0,0,0,0,0,0,0,0,0,0, 21254,10,21241,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61161, 40778);
replace into creature_involvedrelation	(id, quest) values (50654, 40778);

-- The Terrible Krampus
delete from quest_template where entry = 40779;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40778,40779,2,5130,60,55,0,0,'The Terrible Krampus','Tinsel lost his gloves a while ago and a bunch of friendly revelers helped him get them back! But with the return of his gloves, my suspicions have been confirmed. There is only one creature in this world that can summon the grell here, in the Vale and it seems his time to haunt Azeroth has come once more.\n\nGreatfather Winter\'s nemesis, Krampus! An angry spirit that shows up every winter to steal all presents from Azeroth! Luckily for us, he can\'t manifest himself in the Vale and Greatfather Winter gave me the means to find his location, which is more or less accurate.\n\nReturn the gifts to us, the celebrations must not end! But remember, Krampus is a spirit, he will not really die, and be sure that he will return next year. He can be found somewhere in Winterspring, more than likely somewhere dark, and festering of his demonic kin.','','Do you have them yet?','Thank you, thank you! Now the celebrations can go as planned. Here, you can pick something from here as your own special gift from me!',61085,1,0,0,0,0,0,0, 61163,1,0,0,0,0,0,0, 0,0, 10000,6000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61086,1,61087,1,61088,1,61089,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (50654, 40779);
replace into creature_involvedrelation	(id, quest) values (50654, 40779);

update quest_template set type = 1 where entry = 40779;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61085,1285,'Sack of Stolen Gifts',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61163, 61085, -100, 0, 1, 1, 0);

replace into item_template values
 ('61086', '4', '1', 'Reveler\'s Hat', '', '33998', '3', '0', '1', '68992', '17248', '1', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '23', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '70', '0', '0', '0',
 '10', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61087', '2', '5', 'Winter Veil Branch', '', '28531', '3', '0', '1', '275820', '68955', '17', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3100', '0',
 '0', '106', '220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '4', '0', '0', '48030', '1', '0', '0', '-1', '0', '-1', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61088', '4', '2', 'Greatfather Winter\'s Belt', '', '16911', '3', '0', '1', '48832', '12208', '6', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '96', '0', '0', '0',
 '10', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '20216', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61089', '1', '0', 'Bag of Krampus', '', '4056', '3', '0', '1', '100000', '25000', '0', '-1', '-1', '55',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '20', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Inquiring About Legend
delete from quest_template where entry = 40780;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40780,2,5130,60,10,0,0,'Inquiring About Legend','Greetings $r, enjoying the celebration? You may have heard the short abridged version of why this celebration was held when it was limited to Ironforge and Orgrimmar. But as you can see, there\'s much more than dwarves here. Many races seem to have a version of Greatfather Winter in their culture.\n\nI suspect there is more to this tale. Seek out the storytellers. Let\'s start with the Night elf, Tauren, and Furbolg version of the tale so that you do not get it all mixed up. Pay attention cause their stories likely contain important clues that we will utilize.','Inquire about Greatfather winter from the Night Elf Storyteller, the Tauren Storyteller, and the Furbolg Storyteller for Mulin Snowbeard in Winter Veil Vale.','You return, how did it go?','Well done! This is a start, the legends all seem to share the characteristic of a character that arrives during the winter and brings succor and protection from the cold. Let us continue...',0,0,0,0,0,0,0,0, 60015,1,60016,1,60017,1,0,0, 0,0, 0,175,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61189, 40780);
replace into creature_involvedrelation	(id, quest) values (61189, 40780);

update quest_template set objectivetext1 = 'Inquire about Greatfather Winter to the Night elf Storyteller', objectivetext2 = 'Inquire about Greatfather Winter to the Tauren Storyteller', objectivetext3 = 'Inquire about Greatfather Winter to the Furbolg Storyteller' where entry = 40780;

REPLACE INTO creature_template VALUES
(60015, 328, 0, 0, 0, 0, 'quest_40780_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60016, 328, 0, 0, 0, 0, 'quest_40780_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60017, 328, 0, 0, 0, 0, 'quest_40780_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into broadcast_text (entry, Male_Text) values (30056, 'Yes, according to the legend, during this time of the year, the Ancient walks the land once more. Where exactly I cannot say. As previously stated, our interaction is usually through the dreams that our druids have.');
replace into npc_text (ID, BroadcastTextID0) values (30056, 30056);

replace into broadcast_text (entry, Male_Text) values (30057, 'Hmm... The tales never speak where one can physically find the Winter Patriarch, but Mulgore has been our ancestral home for ages, and even when driven away, we find our way back there. I would begin my search there.Take care when searching for legends young one, you may find answers you never sought out to begin with.');
replace into npc_text (ID, BroadcastTextID0) values (30057, 30057);

replace into broadcast_text (entry, Male_Text) values (30058, 'You seek Father Bear? Ah then Ashenvale is where you must go. It is said that Father Bear resides in the icy slopes of Mount Hyjal all year except for this time, the time of the year where he descends to Ashenvale. Be careful not to stoke his fury should you find him.');
replace into npc_text (ID, BroadcastTextID0) values (30058, 30058);

-- Further Inquiries About Legend
delete from quest_template where entry = 40781;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40781,2,5130,60,10,0,0,'Further Inquiries About Legend','Next up, I want you to talk to the Dwarven, Goblin, and Ice Troll storytellers. Yeah I know, Ice trolls aren\'t the nicest bunch but I wanna know more about their version. Like before, pay attention, if we are to investigate this legend then every detail may be crucial!','Inquire about Greatfather winter from the Dwarf Storyteller, the Goblin Storyteller, and the Ice Troll Storyteller for Mulin Snowbeard in Winter Veil Vale.','Did you speak with them yet?','Ah, very interesting! The Ice trolls call it The Spirit of Winter, perhaps it could be an elemental of some sort. The Goblin one is pretty obvious and I doubt it even counts as a legend and the Dwarven one... Well I am well familiar with it. But enough about that, now comes the good part, ohoho yes!',0,0,0,0,0,0,0,0, 60018,1,60019,1,60020,1,0,0, 0,0, 0,175,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61189, 40781);
replace into creature_involvedrelation	(id, quest) values (61189, 40781);

update quest_template set objectivetext1 = 'Inquire about Greatfather Winter to the Ice Troll Storyteller', objectivetext2 = 'Inquire about Greatfather Winter to the Dwarven Storyteller', objectivetext3 = 'Inquire about Greatfather Winter to the Goblin Storyteller' where entry = 40781;

REPLACE INTO creature_template VALUES
(60018, 328, 0, 0, 0, 0, 'quest_40781_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60019, 328, 0, 0, 0, 0, 'quest_40781_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60020, 328, 0, 0, 0, 0, 'quest_40781_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into broadcast_text (entry, Male_Text) values (30059, 'Ya be seeking \'im? Then ya need to search our land. Da Spirit was here long before da Dwarves, and will continue to be here long after they be dead.');
replace into npc_text (ID, BroadcastTextID0) values (30059, 30059);

replace into broadcast_text (entry, Male_Text) values (30060, 'Eh? Ye realize it\'s a legend? Regardless, ye wouldn\'t be the first to seek out a legend. It is said he walks the land at this time of the year blanketing it in snow. Dun Morogh is snowy year round, so I recommend searching the surrounding areas. Perhaps Loch Modan or the Wetlands? Search the mountains in between perhaps.');
replace into npc_text (ID, BroadcastTextID0) values (30060, 30060);

replace into broadcast_text (entry, Male_Text) values (30061, 'Heh? Ya wanna sit on his lap or somethin\', yer in luck cause he\'s right here in the Vale! He won\'t allow you to sit on his lap though, but for a small fee you can get a painting made with him!');
replace into npc_text (ID, BroadcastTextID0) values (30061, 30061);

-- The Legend Comes To Life!
delete from quest_template where entry = 40782;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40781,40782,2,5130,60,10,0,0,'The Legend Comes To Life!','Alright! Now that you\'ve heard the stories, it is time to search for them. There is a good chance that there is some truth to the legends. I\'ve got plenty of ale, my writing quill and plenty of time. Go out into the wilds of Kalimdor and see what you can find! You\'ll be looking for the Winter Patriarch of the Tauren, the Ancient of Winter of the Night elves, and last but not least, Father Bear of the Furbolg.','Find the Winter Patriach of the Tauren, the Ancient of Winter of the Night Elves and the Father Bear of the Furbolg, once complete, return to Mulin Snowbeard in Winter Veil Vale.','Yo?','You\'ve had some sightings? I uh... see that\'s unexpected, well I\'ll note it down. Once look into all of them, we may further inquire into the situation.',0,0,0,0,0,0,0,0, 60021,1,60022,1,60023,1,0,0, 0,0, 0,250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61189, 40782);
replace into creature_involvedrelation	(id, quest) values (61189, 40782);

update quest_template set objectivetext1 = 'Find the Winter Patriarch', objectivetext2 = 'Find the Ancient of Winter', objectivetext3 = 'Find Father Bear' where entry = 40782;

REPLACE INTO creature_template VALUES
(60021, 328, 0, 0, 0, 0, 'quest_40782_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60022, 328, 0, 0, 0, 0, 'quest_40782_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60023, 328, 0, 0, 0, 0, 'quest_40782_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Life Comes To The Legend!
delete from quest_template where entry = 40783;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40781,40783,2,5130,60,10,0,0,'Life Comes To The Legend!','Alright! Now that you\'ve heard the stories, it\'s time to get in there on a hunt. I bet that there\'s some truth to the legends. I\'m all set up here to wait for your report. We should dig into the nearby lands and see what you can find! I\'ll give you a freebie! Find me the Goblin hired Great-Father Winter... Hehe! And look for the source of our Greatfather Winter, as well as the Great Winter Spirit or whatever they called it.','Find the Great-Father of the Goblins, Greatfather Winter of the Dwarves, and the Great Spirit of Winter of the Ice Trolls for Mulin Snowbeard in Winter Veil Vale.','You\'re back?','You\'ve had some sightings? R-Really? Uhm... Give me a moment as I note this stuff down. Well once we have all six I suppose we\'ll move on to the next stage of this.',0,0,0,0,0,0,0,0, 60024,1,60025,1,60026,1,0,0, 0,0, 0,250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61189, 40783);
replace into creature_involvedrelation	(id, quest) values (61189, 40783);

update quest_template set objectivetext1 = 'Find the Great Spirit of Winter', objectivetext2 = 'Find the Greatfather Winter', objectivetext3 = 'Find Great-father Winter' where entry = 40783;

REPLACE INTO creature_template VALUES
(60024, 328, 0, 0, 0, 0, 'quest_40783_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60025, 328, 0, 0, 0, 0, 'quest_40783_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60026, 328, 0, 0, 0, 0, 'quest_40783_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- A Voucher Of A Lifetime!
delete from quest_template where entry = 40784;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40784,2,5130,60,10,0,0,'A Voucher Of A Lifetime!','You really found them then? All of them were real, not just the Orc? And of course you brought no proof back with you… Look I can\'t just take your word for it you know? We may have to- Now now! Don\'t get angry! If you insist so vehemently than I believe you, it\'s just that... Nevermind!\n\nLook, how about this? I\'ve got a spare Reindeer Voucher I won in a game of dice a few years back. I\'m sure you\'ll enjoy riding your new friend so chill out! Please take this voucher to Quark here in the Vale and he\'ll dispense with the product for you. I did note your findings in the log! I was drunk but I can still write, rest assured it\'ll go to the organization I work for.','Take the Reindeer Voucher to Quark in Winter Veil Vale to claim your just rewards!','Yes?','Eh? You got a voucher for a Reindeer? Blast! It\'s been a long time since I\'ve seen one of those, kid! They were a special promotion years back... You say you got tricked by Mulin? Hah, old coot is officially here to research legends, but in actuality he just wants to drink and feast. I bet his employees won\'t approve if they found out he used his research funding on feasting so that\'s why he cooked up this whole scheme. Well that\'s none of my business now is it? Well the Vouchers do not expire, so a deal is a deal, enjoy your new Reindeer!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1850,0,0,0,0,0,0,0,0,0,0,0, 21044,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61189, 40784);
replace into creature_involvedrelation	(id, quest) values (80601, 40784);

update quest_template set exclusivegroup = -40784, nextquestid = 40784 where entry in (40782,40783);
-- Change level requirement of the item 21044 (Winter Veil Reindeer) to level 40, change description of this item to the following "Happy New Year, and Merry Winter Veil!" 
update item_template set required_level = 40, description = 'Happy New Year, and Merry Winter Veil!' where entry = 21044;