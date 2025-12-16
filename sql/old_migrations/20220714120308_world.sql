-- Of New and Old II
delete from quest_template where entry = 40502;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40501,40502,2,46,52,45,0,0,'Of New and Old II','Another wishes to join the Horde, so be it.\n\nI do hold concerns with those from the Blackrock Clan, for their evil runs deep, corrupted to the core. We have dealt with Old Horde refugees in the past but not an entire group looking to join us.\n\nEitrigg was once apart of the Blackrock Clan, and perhaps knows more about this \'Karfang\'. Speak with him, and figure out what he knows.','Speak with Eitrigg to find out info about Karfang for Thrall in Orgrimmar.','Yes?','Hmm, Karfang you say?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40502;
delete from creature_involvedrelation where quest = 40502;
replace into creature_questrelation (id, quest) values (4949, 40502);
replace into creature_involvedrelation (id, quest) values (3144, 40502);

delete  from creature_template where entry = 60377;
update creature_template set script_name = '' where entry = 3144;

delete from gossip_menu where entry = 41175;
delete from npc_text where ID = 30028;
delete from broadcast_text where entry = 30028;

-- Of New and Old III
delete from quest_template where entry = 40503;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40502,40503,2,46,52,45,0,0,'Of New and Old III','I haven\'t heard that name in some time, though I certainly remember it.\n\nKarfang fought with the Blackrock Clan during our invasion of Azeroth, and rose through the ranks quickly. From my knowledge, he was a strong warrior, though not as blood thirsty as others.\n\nThe Karfang I remember was smart enough to deny suicidal orders, or challenge leadership when required, I am not surprised he has lasted this long.\n\nKarfang can be trusted, he is certainly wise enough to see the doom of the Old Horde before him.\n\nThrall gives approval on my word take the Warchief\'s Response to Karfang Hold, we will see if he can prove his loyalties.','Bring the Warchief\'s Response to Karfang at Karfang Hold in Burning Steppes.','Yes?','<Karfang looks out at the Warchief\'s Response, beginning to read with caution.>\n\nSo it appears the Warchief is asking us for a test of loyalty, he shall receive his demands.',60733,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60733,1,0,1000,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40503;
delete from creature_involvedrelation where quest = 40503;
replace into creature_questrelation (id, quest) values (3144, 40503);
replace into creature_involvedrelation (id, quest) values (60770, 40503);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60733,7694,'Warchief\'s Response',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50545);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50545, 'To Warleader Karfang.\n\nI have read your letter, and have listened.\n\nThe Horde is not stranger to hardships, and adversity. All of us have had to struggle and make hard decisions as you have. We are a band of equals who share values of wisdom and honor to the wartorn and battered of this world.\n\nIf you truly wish to prove your loyalties to me as Warchief then I require something from you.\n\nThe Twilight Hammer have begun to show themselves in your region, they are a threat to this world. Remove them for me, and I will know your word is true.\n\n THRALL, WARCHIEF OF THE HORDE.', 0);
-- rename item Axe of Falgosh (60719) to Axe of Fargosh.
update item_template set name = 'Axe of Fargosh' where entry = 60719;
-- Add the following item as a loot reward for the quest 'Forest Troll Scum' (entry 40495) , it must be hidden until completion
replace into item_template values
 ('60715', '4', '0', 'Taskmaster Whip', '', '10301', '2', '0', '1', '48824', '12206', '12', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '8815', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
-- QUEST 'Removing Vital Assets' (entry 40500), change completion text to the following.
update quest_template set offerrewardtext = 'So, you\'ve done as I asked. Let\'s see what\'s in those documents.\n\n<Molk takes the documents from you, and stares intently for a few seconds.>\n\nWell, this will surely put a hamper on their plans, the information here must have taken them a while to acquire, and without it they have no leads.\n\nYou are more useful then you look, whelpling.\n\nTake this gold, as a thank you from myself.' where entry = 40500;
-- Add the following rewards to the quest 'Fueling the Blood Fury' (entry 40493), CHOICE BETWEEN 2.
replace into item_template values
 ('60742', '4', '1', 'Darkseer Acolyte Robe', '', '15232', '2', '0', '1', '61220', '15305', '5', '-1', '-1', '61',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '78', '0', '0', '0',
 '0', '10', '0', '9325', '1', '0', '0', '-1', '0', '-1', '9295', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60743', '2', '15', 'Demonblood Dirk', '', '20414', '2', '0', '1', '184756', '46189', '21', '-1', '-1', '61',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '51', '73', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '7689', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
update quest_template set rewchoiceitemid1 = 60742, rewchoiceitemcount1 = 1, rewchoiceitemid2 = 60743, rewchoiceitemcount2 = 1 where entry = 40493;
-- Quest Scrap Forager (entry 40491), change main description to the following.
update quest_template set details = 'Greetings stranger, it seems some new recruits from this new Horde are arriving at last.\n\nI\'ll keep this short, we\'re not doing so well here. It\'s like everything is being held together by worg spit, and the lack of resources certainly doesn\'t help. I\'ll say it\'s about time we fixed that.\n\nDark Iron tends to be quite scarce in the surface of the steppes, though it is carried by many. Whether it be baubles, equipment, or sitting in a creature stomach.\n\nVenture out and collect me a sizeable amount of scraps so I can keep forging equipment for our grunts to keep Karfang Hold safe.' where entry = 40491;
-- Prismatic Crystal.
update item_template set required_reputation_faction = 61, required_reputation_rank = 5, quality = 3, spellcooldown_1 = 3600000 where entry = 80805;
-- Change display ID of  Argon Halmantle (entry 91982) to 3542.
update creature_template set display_id1 = 3542 where entry = 91982;
-- Change subname of NPC Mistress Katalla to <Worg Master>.
update creature_template set subname = 'Worg Master' where entry = 60775;
-- Quest 'Make the Right Choice' (Entry 60036) update main description to the following.
update quest_template set details = 'I\'ve heard rumors of some zealous fanatics that still reside within Stratholme. Alas, it is these kinds of fanatics that I require something from, a Righteous Orb to be exact for a new design I patterned long ago.\n\nI also need another kind of orb, a Flawless Draenethyst Sphere, I was told it has, unique properties from other designers.\n\nProblem is, I don\'t know where to get it, perhaps someone knows something about it, so ask around. For all we know it could be in some blasted land.' where entry = 60036;
-- Quest 'The True High Foreman' (entry 40463), remove the following from completion.
update quest_template set offerrewardtext = 'Also, take this key, I do not intend to return to the mountain. It should open a chest within the Black Vault, if they haven\'t already taken it away.' where entry = 40463;
-- Farad - Say upon Death, Gazzirik - Say upon Death and Slaver Vilegrip - Say on Aggro fixes.
delete from creature_ai_scripts where id in (2200019,2200020,2200021);
delete from creature_ai_events where id in (2200019,2200020,2200021);
-- Slaver Vilegrip on death:
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES 
(2200019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30023, 0, 0, 0, 0, 0, 0, 0, 0, 'Slaver Vilegrip - Say on Aggro');
REPLACE INTO creature_ai_events VALUES
(2200019, 60836, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200019, 0, 0, 'Slaver Vilegrip - Say on Aggro');
-- Farad on death:
REPLACE INTO broadcast_text VALUES (30026, 'If only you knew... Maltimor, I hope the Twisting Nether... takes you...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES 
(2200020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30026, 0, 0, 0, 0, 0, 0, 0, 0, 'Farad - Say upon Death');
REPLACE INTO creature_ai_events VALUES
(2200020, 60854, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200020, 0, 0, 'Farad - Say upon Death');
-- Gazzirik on death:
REPLACE INTO broadcast_text VALUES (30027, 'That was a bad deal...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES 
(2200021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30027, 0, 0, 0, 0, 0, 0, 0, 0, 'Gazzirik - Say upon Death');
REPLACE INTO creature_ai_events VALUES
(2200021, 60859, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200021, 0, 0, 'Gazzirik - Say upon Death');
-- Scrapforged Items for Scrap Forager.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (60700, 'Scrapforged Helmet', '', 4, 4, 6, 2, 27338, 1, 0, 0, -1, -1, 49312, 12328, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 70, 456, 0, 0, 59, 0, 7, 0, 5, 0, 0, 0, 0, 4, 12, 7, 12, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (60701, 'Scrapforged Greataxe', '', 2, 1, 1, 2, 28349, 1, 0, 0, -1, -1, 207512, 51878, 17, 1, 0, 0, 1, 1, 0, 114, 179, 3200, 0, 0, 85, 0, 0, 0, 59, 0, 7, 0, 5, 0, 0, 0, 0, 4, 20, 7, 10, 0, 0, 0);

-- Polymorph Enslavement!
delete from quest_template where entry = 40513;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40513,2,215,11,5,512,0,'Polymorph Enslavement!','Baaaaa! You must help me!\n\nThe wizard in the house turned me into this form while I was out travelling.\n\nBaaaaa! Baaa!\n\nYou got to do something, he\'s residing just inside the farmhouse, kill him, and bring his Azureborn Ring to me so I can be released from this torture!\n\nBaaaaaa!\n\n<The sheep looks at you with pleading eyes.>','Gather the Azureborn Ring from Kalman Azureborn in Durotar for Lashog.','Hurry, I cannot stand another second of this! Baaaa!','Hurry, smash the ring, it contains the magic that has kept me enslaved!',60744,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,76,100,0,0,0,0,0,0,0,0,0,60745,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60846, 40513);
replace into creature_involvedrelation (id, quest) values (60846, 40513);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60744,9837,'Azureborn Ring',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 60845 where entry = 60845;
update creature_template set script_name = 'npc_lashog' where entry = 60846;
replace into creature_loot_template values
(60845,60744,-100,1,1,1,0);

replace into item_template values
 ('60745', '4', '0', 'Smashed Azureborn Ring', '', '9837', '2', '0', '1', '412', '103', '11', '-1', '-1', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO gameobject_template VALUES
(2010910, 5, 24364, 'PUNISHMENT FOR THOSE THAT DO NOT WORK HARD', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010911, 5, 24364, 'NO ENTRY UNLESS GRANTED BY HIGH FOREMAN', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010912, 5, 24364, 'JUSTICE DEMANDS SACRIFICE', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010913, 9, 25430, 'RULES AND REGULATIONS BOARD', 0, 0, 1, 50546, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO page_text VALUES
(50546, 'RULES FOR THE WORKER\n\nWork hard under the watchful gaze of the Overseer\'s, failure to do the work will result in enslavement.\n\nA full day of work is only complete upon Bargul Blackhammer\'s word.\n\nTaskmasters are here to increase production, do NOT question them.\n\n', 50547),
(50547, 'ANY INJURY NEEDS TO BE REPORTED TO A CLERIC.\n\nSpeak with crew chief\'s for daily instructions.\n\nNO LETTERS OF ANY KIND WHILE WORK IS IN PROGRESS.\n\nOrders from Shadowforge must be adhered to -ALWAYS-\n\n', 50548),
(50548, 'THE FIRELORD WATCHES OVER US ALL, THERE CAN BE NO FAILURES HERE.', 0);
-- Spellbook Drops. Loot table for items 83571, 83572, 83573, 83574, 83575, 83576:
replace into creature_loot_template values
(91928,83571,20,1,1,1,0),
(60735,83576,10,1,1,1,0),
(12459,83572,3,1,1,1,0),
(65122,83573,35,1,1,1,0),
(11492,83574,10,1,1,1,0),
(11032,83575,10,1,1,1,0);
REPLACE INTO gameobject_loot_template VALUES
(2010867,83570,20,1,1,1,0);
-- vwndors who selling item 83577:
REPLACE INTO npc_vendor VALUES
(5520, 83577, 0, 0, 0, 0),
(5749, 83577, 0, 0, 0, 0),
(5750, 83577, 0, 0, 0, 0),
(5753, 83577, 0, 0, 0, 0),
(5815, 83577, 0, 0, 0, 0),
(6027, 83577, 0, 0, 0, 0),
(6328, 83577, 0, 0, 0, 0),
(6373, 83577, 0, 0, 0, 0),
(6374, 83577, 0, 0, 0, 0),
(6376, 83577, 0, 0, 0, 0),
(6382, 83577, 0, 0, 0, 0),
(12776, 83577, 0, 0, 0, 0);
-- items fix.
update item_template set spelltrigger_2 = 1 where entry = 19826;
update item_template set spelltrigger_2 = 1 where entry = 19827;
-- add weapon 60546 to npc Har'gesh Doomcaller.
set @equip_template = 20147; set @weapon_1 = 60546; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60737;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Sentinel Stuff:
replace into item_template values
 ('60746', '4', '3', 'Sentinel\'s Breastplate', '', '6029', '2', '0', '1', '2134', '533', '5', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '69', '5', '0', '1', '0', '7', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '198', '0', '0', '0',
 '0', '0', '0', '9142', '1', '0', '0', '-1', '0', '-1', '48029', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60747', '4', '3', 'Sentinel\'s Boots', '', '6031', '2', '0', '1', '1892', '473', '8', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '69', '5', '0', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '136', '0', '0', '0',
 '0', '0', '0', '9140', '1', '0', '0', '-1', '0', '-1', '48028', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60748', '4', '3', 'Sentinel\'s Crown', '', '13368', '2', '0', '1', '2009', '502', '1', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '69', '5', '0', '1', '0', '7', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '160', '0', '0', '0',
 '0', '0', '0', '9329', '1', '0', '0', '-1', '0', '-1', '48028', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60749', '4', '3', 'Sentinel\'s Leggings', '', '6030', '2', '0', '1', '1989', '497', '7', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '69', '5', '0', '1', '0', '7', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '173', '0', '0', '0',
 '0', '0', '0', '9142', '1', '0', '0', '-1', '0', '-1', '48028', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '75', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60750', '4', '3', 'Sentinel\'s Gauntlets', '', '12092', '2', '0', '1', '1825', '456', '10', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '69', '5', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '124', '0', '0', '0',
 '0', '0', '0', '9141', '1', '0', '0', '-1', '0', '-1', '48026', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60751', '4', '3', 'Sentinel\'s Pauldrons', '', '27302', '2', '0', '1', '1912', '488', '3', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '69', '5', '0', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '149', '0', '0', '0',
 '0', '0', '0', '9140', '1', '0', '0', '-1', '0', '-1', '48026', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60752', '2', '7', 'Sentinel\'s Glaive', '', '4289', '3', '0', '1', '12893', '3223', '13', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '69', '6', '0', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '0',
 '0', '40', '75', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9142', '1', '0', '0', '-1', '0', '-1', '48031', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '90', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Sentinel Stuff - vendor list:
REPLACE INTO npc_vendor VALUES
(80959, 60746, 0, 0, 0, 0),
(80959, 60747, 0, 0, 0, 0),
(80959, 60748, 0, 0, 0, 0),
(80959, 60749, 0, 0, 0, 0),
(80959, 60750, 0, 0, 0, 0),
(80959, 60751, 0, 0, 0, 0),
(80959, 60752, 0, 0, 0, 0);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1585
update quest_template set rewxp = 210 where entry = 70048;
-- Lady Meldralis Windsong, display ID 18770, level 25, faction 371, humanoid, no weapon, quest/gossip flags, gossip text : "I hope you are well, is there anything that you require?"
-- Technician Nel’doriel, display ID 18022, level 20, faction 371, humanoid, no weapon, quest/gossip flags, gossip text : "Two plus three times four... What do you want?"
-- Broken Arcane Golem, display ID 18022, level 13, faction 371, mechanical, no weapon
-- Ansela Dawnshield, display ID 18225 , level 28, faction 371, humanoid, weapon 80500, quest/gossip flags, gossip text: "The light watches over all, do not forget that."
-- NPC Bart Natheldon, change greeting text to the following : "Azeroth sure is a mystical place, the more you read the more you can find out."
REPLACE INTO creature_template VALUES
(60874, 18770, 0, 0, 0, 'Lady Meldralis Windsong', '', 0, 25, 25, 712, 712, 0, 0, 1026, 371, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60875, 18022, 0, 0, 0, 'Technician Nel\'doriel', '', 0, 20, 20, 629, 629, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60876, 18022, 0, 0, 0, 'Broken Arcane Golem', '', 0, 13, 13, 314, 314, 0, 0, 511, 371, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 21, 27, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 9, 0, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60877, 18225, 0, 0, 0, 'Ansela Dawnshield', '', 0, 28, 28, 750, 750, 0, 0, 1090, 371, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 37, 46, 0, 112, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 55, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, '');

set @gossip_menu_id = 41178; set @magic_number = 60784;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Azeroth sure is a mystical place, the more you read the more you can find out.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41177; set @magic_number = 60877;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The light watches over all, do not forget that.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41176; set @magic_number = 60875;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Two plus three times four... What do you want?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41175; set @magic_number = 60874;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I hope you are well, is there anything that you require?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;