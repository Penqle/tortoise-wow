-- An Unusual Find
delete from quest_template where entry = 40540;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40540,2,47,45,40,0,0,'An Unusual Find','As you walk across the shore, you notice something out of the ordinary. A murloc tadpole, left alone in the reeds. It looks malnourished. You should feed it. It probably likes turtle meat.','Find some turtle meat for the murloc tadpole in Hinterlands.','<The murloc tadpole gurgles.>','You pass the meat to the murloc. Let\'s see if it really was that hungry.',3712,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60946, 40540);
replace into creature_involvedrelation	(id, quest) values (60946, 40540);

REPLACE INTO gameobject_template VALUES
(2010917, 1, 29560, 'Turtle Meat', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Upon completion, spawn a gobject that looks like meat close to Murloc Tadpole. He should walk up to it, then stand for a while, and emote should show:
-- ‘Murloc Tadpole eats the turtle meat with an avidity you\'ve never seen before.\'
-- Turtle meat should disappear, and Murloc Tadpole should go back to his original position

-- Family Above All
delete from quest_template where entry = 40541;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40540,40541,2,47,45,40,0,0,'Family Above All','The murloc tadpole stares at you, like it still wants something. But what? More food? No, it\'s impossible. Maybe it got lost and is looking for its parents? You should look on the shore, they must be somewhere around here.','Search for the parents of the lost murloc, then return to the murloc tadpole. They should be somewhere on the shore.','Gurglglgl!','Poor little murloc. The search yielded no results. Maybe the locals would know what happened to the murloc family?',0,0,0,0,0,0,0,0,60383,1,60384,1,0,0,0,0,0,0,0,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Murloc Hut checked','Murloc Nest searched');

replace into creature_questrelation		(id, quest) values (60946, 40541);
replace into creature_involvedrelation	(id, quest) values (60946, 40541);

REPLACE INTO creature_template VALUES
(60383, 328, 0, 0, 0, 0, 'quest_40541_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60384, 328, 0, 0, 0, 0, 'quest_40541_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO gameobject_template VALUES
(2010918, 1, 23009, 'Abandoned Murloc Hut', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_abandoned_murloc'),
(2010919, 1, 27020, 'Abandoned Murloc Nest', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_abandoned_murloc');

replace into npc_text (ID, BroadcastTextID0) values (30033,30033);
replace into npc_text (ID, BroadcastTextID0) values (30034,30034);
REPLACE INTO broadcast_text VALUES
(30033, 'The murloc hut looks abandoned, and unkempt.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30034, 'The nest is empty.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Loneliest Murloc in the World (A)
delete from quest_template where entry = 40542;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40541,40542,2,47,45,40,0,0,'Loneliest Murloc in the World','If anyone here could know anything about the murloc family, it would be the gryphon riders of Aerie Peak. Maybe they have noticed something unusual during one of their flights? You should ask.','Venture to Aerie Peak and ask about the murloc family.','The Aerie Peak welcomes you, outsider.','Weird question, $r. But to my knowledge, none of my gryphon riders reported murloc presence on the shore. Revantusk, yes, but no murlocs. Are you sure your information is correct?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60946, 40542);
replace into creature_involvedrelation	(id, quest) values (5635 , 40542);
update quest_template set requiredraces = 589		where  entry = 40542;

-- Loneliest Murloc in the World (H)
delete from quest_template where entry = 40543;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40541,40543,2,47,45,40,0,0,'Loneliest Murloc in the World','If anyone here could know anything about the murloc family, it would be the Revantusk trolls. Maybe they have noticed something? You should ask.','Venture to Revantusk Village and ask about the murloc family.','Katoom be fishin\', mon. Be quiet.','Kattom be not seein\' any murlocs around here, mon. Da turtles ate dem all. Murlocs be good snack, taste like fish, but betta\'.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60946, 40543);
replace into creature_involvedrelation	(id, quest) values (14740, 40543);
update quest_template set requiredraces = 434		where  entry = 40543;

-- Nat Pagle, Murloc Expert (H)
delete from quest_template where entry = 40544;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40543,40544,2,47,45,40,0,0,'Nat Pagle, Murloc Expert','If ya be wanting to help your little murloc friend, ya better find Nat Pagle. He be the best fishermon in da world. He be legendary among us. Katoom knows dat he be spending a lot of time among murlocs, to learn fishing from dem, mon. He must be knowing somethin\'!\n\nKatoom be not knowing where to find Nat Pagle. He traveled to Kalimdor some time ago.','Find Nat Pagle and ask him about murloc customs.','I am Nat Pagle, master fisherman. What can I help you with?','Murlocs... I have spent months amongst them, trying to learn their fishing techniques. During this time, I learned a lot about their customs and behavior.\n\nSometimes, I feel like I can understand their language. It creeps me out.\n\nRegardless, when it comes to your little friend, I don\'t have good news...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (14740, 40544);
replace into creature_involvedrelation	(id, quest) values (12919, 40544);
update quest_template set requiredraces = 434		where  entry = 40544;

-- Nat Pagle, Murloc Expert (A)
delete from quest_template where entry = 40545;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40542,40545,2,47,45,40,0,0,'Nat Pagle, Murloc Expert','So you want to help the little murloc? Valiant effort. We, the Wildhammer, value compassion above all. Unfortunately, I can\'t help you find his parents.\n\nBut I know one person who could.\n\nNat Pagle. The legendary fisherman. When I last met him, he wanted to learn fishing secrets from murlocs. If you are committed, you could try to find him. Maybe he knows their language? I heard he is now in Kalimdor.','Find Nat Pagle and ask him about murloc customs.','I am Nat Pagle, master fisherman. What can I help you with?','Murlocs... I have spent months amongst them, trying to learn their fishing techniques. During this time, I learned a lot about their customs and behavior.\n\nSometimes, I feel like I can understand their language. It creeps me out.\n\nRegardless, when it comes to your little friend, I don\'t have good news...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5635 , 40545);
replace into creature_involvedrelation	(id, quest) values (12919, 40545);
update quest_template set requiredraces = 589		where  entry = 40545;

-- Small Murloc in a Big Pond (A)
delete from quest_template where entry = 40546;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40545,40546,2,47,45,40,0,0,'Small Murloc in a Big Pond','It pains me to tell this, but his parents are probably... ehm, dead. Murlocs, while ferocious and territorial, care deeply for their tadpoles. I have seen them sacrificing themselves so their children could live. Truly, we should appreciate these creatures more.\n\nAnd one more thing. If you want this little murloc to live, it will need your help. Hinterlands are dangerous. It won\'t survive on its own.','Go back to the murloc tadpole in Hinterlands.','Grmrglgl!','The tadpole is waiting for you. You are the only one who can save him now. You will become his new family, his new friend.\n\nBut wait, it needs a name. Gurky! Gurky is perfect.\n\n<Gurky hops into your pocket.>\n\nOh, the adventures you will have together!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,0,0,0,0,0,0,0,0,0,0,0,22114,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (12919, 40546);
replace into creature_involvedrelation	(id, quest) values (60946, 40546);
update quest_template set requiredraces = 589		where  entry = 40546;

-- Small Murloc in a Big Pond (H)
delete from quest_template where entry = 40547;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40544,40547,2,47,45,40,0,0,'Small Murloc in a Big Pond','It pains me to tell this, but his parents are probably... ehm, dead. Murlocs, while ferocious and territorial, care deeply for their tadpoles. I have seen them sacrificing themselves so their children could live. Truly, we should appreciate these creatures more.\n\nAnd one more thing. If you want this little murloc to live, it will need your help. Hinterlands are dangerous. It won\'t survive on its own.','Go back to the murloc tadpole in Hinterlands.','Grmrglgl!','The tadpole is waiting for you. You are the only one who can save him now. You will become his new family, his new friend.\n\nBut wait, it needs a name. Gurky! Gurky is perfect.\n\n<Gurky hops into your pocket.>\n\nOh, the adventures you will have together!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,0,0,0,0,0,0,0,0,0,0,0,22114,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (12919, 40547);
replace into creature_involvedrelation	(id, quest) values (60946, 40547);
update quest_template set requiredraces = 434		where  entry = 40547;

-- Report from Falgran
delete from quest_template where entry = 40548;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (1284,40548,2,15,35,30,0,0,'Report from Falgran','Alright, $c. While you were gone I received a report from Falgran, the scout who I sent to investigate the footprints. He requires your immediate assistance. He set up a camp somewhere close to the border with the Barrens, between Shady Rest and Lost Point.','Report to Falgran Hastil close to the border with the Barrens.','$N, right? Thanks for coming so fast.','I followed the footprints and I found our suspect. I couldn\'t do much more. I\'m just a scout.\n\nThat\'s why you are here.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40548);
replace into creature_involvedrelation	(id, quest) values (5088, 40548);

update quest_template set exclusivegroup = -1284 where entry IN (1284,1287,1320);

update creature_template set npc_flags = 3 where entry = 5088;
set @gossip_menu_id = 41209; set @magic_number = 50880;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What is it you need?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 5088;

-- The Quillboar Suspects
delete from quest_template where entry = 40549;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40548,40549,2,15,35,30,512,0,'The Quillboar Suspects','So, $N, the footprints were definitely quillboar hooves. I followed them well into the Barrens, thinking they would lead me to the Razorfen Kraul. I was wrong. The raiding party actually stopped just outside of it, which makes your job easier.\n\nVenturing into the Kraul... The mere thought makes me shudder.\n\nBack to the topic. The camp is north of the Kraul, close to the road. You should have no trouble finding it. Try to sneak in, or kill them all. Doesn\'t matter to me. What is important - find some evidence, maybe some items that could\'ve been taken from the inn.','Investigate the quillboar camp north of Razorfen Kraul for any evidence.','Back so soon? The camp is west of here.','You say that their chieftain had this tablet with drawings resembling the burned in... curious. We will need someone able to read the quillboar scripture.',60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,1011,100,0,0,0,0,0,0,0,0,0,60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5088, 40549);
replace into creature_involvedrelation	(id, quest) values (5088, 40549);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60810,31287,'Quillboar Tablet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Goblin Linguist
delete from quest_template where entry = 40550;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40549,40550,2,15,35,30,0,0,'The Goblin Linguist','Let\'s think... If anyone is able to translate this, it would be some goblin. These fellows do trade with everyone, there must be someone who has at least a basic understanding of this language. Could you please take this to Ratchet? I will stay here for now and observe the camp.','Find someone who is able to translate the tablet. Ratchet is a good place to start.','New customer?','Ah yes, quillboar writing. Very hard to learn, very hard. I can read it, though. Did some business with them a long time ago. Nasty bunch, I tell you.\n\nHowever, you know how it is here. Everything has a price.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,1011,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5088, 40550);
replace into creature_involvedrelation	(id, quest) values (3442, 40550);

-- A Strangle Favor
delete from quest_template where entry = 40551;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40550,40551,2,15,35,30,0,0,'A Strangle Favor','While I am busy translating this, you help me. Easy.\n\nI need something from Stranglethorn Vale. I know, it\'s far, but fortunately, we have a beautiful ship that will take you straight to Booty Bay! Wonderful, isn\'t it?\n\nI heard about some mining operations being done in the northern region, close to some lake or something. By no other than our competitor, Venture Company. I need you to go there and, ehm, borrow some stuff from them.\n\nBring me 10 samples of ‘the thing\' they are excavating. I heard it\'s some blue crystals. I think you will be able to find them on their dead bodies. But you didn\'t hear that from me.','Bring 10 Strange Blue Shards from the Venture Company in Stranglethorn Vale for Sputtervalve in Ratchet.','Got it?','Hah, good job. I hope you didn\'t have to dispose of too many Venture Co. workers... And I hope their insurance covers this!\n\n<Sputtervalve laughs.>\n\nLet\'s get to translating this thing.',60811,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2800,470,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3442, 40551);
replace into creature_involvedrelation	(id, quest) values (3442, 40551);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60811,20657,'Strange Blue Shard',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(1096, 60811, -80, 0, 1, 1, 0),
(1097, 60811, -80, 0, 1, 1, 0),
(1094, 60811, -80, 0, 1, 1, 0),
(921 , 60811, -80, 0, 1, 1, 0);

-- Back to Falgran
delete from quest_template where entry = 40552;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40551,40552,2,15,35,30,0,0,'Back to Falgran','<Sputtervale focuses on the tablet.>\n\nTheir writing is not exactly like ours. They just draw some pictures, and you have to interpret it on your own. There are some clues that help you with grasping the meaning but...\n\nYou probably aren\'t interested in quillboar lore, yeah.\n\nSo, what I get from this: a band of quillboars wants to attack an inn. They go there with a raiding party, but they find the inn already burned to the ground. Then some angry pictures. I guess they wanted violence.\n\nSo, yeah. This is what I got from this, pal.','Report back to Falgran on the border with Barrens.','Were you able to translate the tablet?','So it wasn\'t them... Unless the quillboars are the masters of deception, we reached a dead end.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3442, 40552);
replace into creature_involvedrelation	(id, quest) values (5088, 40552);

-- Suspicious No More
delete from quest_template where entry = 40553;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40552,40553,2,15,35,30,0,0,'Suspicious No More','Go and report our findings to Captain Vimes. I will stay here for some time, to watch over the inn. I got some reports that the Horde is sniffing around.\n\nIt can\'t mean anything good.','Report back to Captain Garran Vimes in Theramore.','Welcome back, $N. What did you discover?','Damn it. If it was the quillboars, it would make it so easy. Shame, but at least we ruled out one of the suspects.\n\nNevertheless, good work. Finally we got at least a step closer to solving this mystery. Please, take this gold as a reward from lady Jaina herself.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,500,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5088, 40553);
replace into creature_involvedrelation	(id, quest) values (4944, 40553);

-- The Shield's Owner
delete from quest_template where entry = 40554;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2,objectivetext3) values (40553,40554,2,15,35,30,0,0,'The Shield\'s Owner','I had a talk with one of our scouts. He is, well, responsible for spying on Camp Taurajo, deep in the barrens. And he is certain, and I believe him, that no Taurajo tauren ever wielded this shield.\n\nI tell you about this, because if it was really of Tauren craftsmanship, then the owner of the shield  must\'ve lived in the swamp for some time.\n\nI sent our infiltrators to check upon the Brackenwall Village, the horde outpost here for any sign of Taurens. While they are on their mission, I have a request. Gather intel from our watchtowers in the marsh. Maybe our soldiers remember something remarkable.','Gather information from the nearby watchtowers and return to Captain Garran Vimes in Thermore.','Were our scouts of any use?','So this is all we have. Well, it is a lead as good as any other. But what can we do with this information?',0,0,0,0,0,0,0,0,60385,1,60386,1,60387,1,0,0,0,0,0,950,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Report from Talmand','Report from Sleightor','Report from Valnor');

replace into creature_questrelation		(id, quest) values (4944, 40554);
replace into creature_involvedrelation	(id, quest) values (4944, 40554);

REPLACE INTO creature_template VALUES
(60385, 328, 0, 0, 0, 0, 'quest_40554_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60386, 328, 0, 0, 0, 0, 'quest_40554_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60387, 328, 0, 0, 0, 0, 'quest_40554_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- The Search for the Grave
delete from quest_template where entry = 40555;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40554,40555,2,15,35,30,0,0,'The Search for the Grave','These Grimtotem have been under our constant observation since they moved into Dustwallow. They are a nasty bunch, but I assure you, if it was them, we would already know. However, if this tauren the scouts spoke of really existed, we could ask about him in Brackenwall Village.\n\nIn theory.\n\nTensions with the Horde are high, and I don\'t want my men to see us negotiate with them. I had way too many deserters in recent months. You could try to find his grave. The tauren mummify their dead, but since he was the only one here, I doubt the ogres knew about it. Just search for a graveyard, or something like this close to Brackenwall. I doubt you will find anything, but it is the only lead we have.\n\nAnd let\'s hope Lieutenant Caldwell returns soon with some information about Reethe.','Find the grave of a tauren warrior close to Brackenwall Village.','This grave is big enough to fit a tauren for sure. It\'s worth investigating.','In the grave, you find skeletal remains of a tauren. He must\'ve died at least a few years ago.\n\nThe grave, however, has been recently dug up and hastily buried with earth. The dirt is still loose, it must\'ve been no longer than a few weeks.\n\nSome equipment is buried with the tauren too. Leather straps, metal coins and pauldrons, and a beautiful, one handed axe.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40555);
replace into gameobject_involvedrelation (id, quest) values (2010920, 40555);

replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010920, 2, 49, 1, 'Turmoiled Grave', 32, '');

-- Another Mystery to Solve
delete from quest_template where entry = 40556;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40555,40556,2,15,35,30,0,0,'Another Mystery to Solve','Who dug up the grave? Why? Did they take the shield from it?\n\nMore questions, still no answers. You should report back to Captain Garran Vimes.','Go back to Captain Garran Vimes at Theramore Keep with your findings.','Have you found anything?','A dug-up grave of a tauren warrior... Another mystery, another question.\n\nLet me gather my thoughts on this.\n\nSo, $N, you say that he died a long time ago. It is no coincidence. The shield must\'ve been taken from his grave. But... why?\n\nWhy would anyone do this? This doesn\'t make any sense. If someone wanted us to blame the Horde, they could\'ve found a better way to do it for sure...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation	(id, quest) values (2010920, 40556);
replace into creature_involvedrelation	(id, quest) values (4944, 40556);

-- The Troubles Ahead
delete from quest_template where entry = 40557;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40553,40557,2,15,35,30,0,0,'The Troubles Ahead','Lieutenant Caldwell still hasn\'t returned from his mission to find Paval Reethe. I fear the worst. But, alas, we can only wait.\n\nWhen it comes to our investigation. Well, another dead end.\n\nHowever, Falgran reported that the horde has been sniffing around the inn. Please, assist him with this matter. He is where you met him before.','Meet with Falgran Hastil on the road between Shady Rest Inn and the Lost Point in Dustwallow Marsh.','$N! Nice to see you.','I suspect they might know something...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40557);
replace into creature_involvedrelation	(id, quest) values (5088, 40557);

update quest_template set exclusivegroup = -40553 where entry IN (40553,40556);

-- The Meeting with the Enemy
delete from quest_template where entry = 40558;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40557,40558,2,15,35,30,0,0,'The Meeting with the Enemy','The Horde diplomat will be here any moment now. I wonder what they have to say...\n\nAnd, $N, please, try to remain calm and do not provoke them. I know it may prove hard because of our history, but they are just like you and me.\n\nJust much more green.','Assist Falgran with the meeting.','Back already? What did you learn?','You met with the Horde unauthorized? This could\'ve provoked a major diplomatic incident!\n\nAt least you learned important information.',0,0,0,0,0,0,0,0,60388,1,0,0,0,0,0,0,0,0,0,1050,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Assist Falgran with the meeting');

replace into creature_questrelation		(id, quest) values (5088, 40558);
replace into creature_involvedrelation	(id, quest) values (4944, 40558);

REPLACE INTO creature_template VALUES
(60388, 328, 0, 0, 0, 0, 'quest_40558_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set script_name = 'npc_falgran_hastil' where entry = 5088;

-- The Betrayal from Within
delete from quest_template where entry = 40559;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40558,40559,2,15,35,30,0,0,'The Betrayal from Within','So the shield really belonged to the tauren from Brackenwall. Good work.\n\nOn the other hand, the reported killing of Paval Reethe by our soldiers is troubling. Deeply troubling. I cannot just trust the Horde on this. My role, as a captain, is not only to order, but also to serve.\n\nI\'m worried that Lieutenant Caldwell only acted in his self defence. But, if the orc was really speaking the truth, you may find some evidence in Caldwell\'s belongings. You can find his quarters downstairs. He was sent there with a soldier named Hallan, check hers too.\n\nI will prepare the report for lady Jaina.','Check the belongings of Caldwell and Hallan downstairs, then report to Captain Vimes.','Have you found their rooms? They should be downstairs.','This is embarrassing. Especially for me, as a Captain.',60812,1,60813,1,60814,1,0,0,0,0,0,0,0,0,0,0,0,0,0,850,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40559);
replace into creature_involvedrelation	(id, quest) values (4944, 40559);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60812,18815,'Kul Tiran Badge',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60813,4804,'Hidden Weapons',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60814,13430,'Letter to Voss',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50549);

REPLACE INTO page_text VALUES
(50549, 'Voss,\n\nMy sabotage is working. Day by day, weapons are disappearing from the armory and no one notices. Soon, soldiers will fight with wooden sticks.\n\nI can\'t hide here anymore. Mere thought of staying here for a second longer with these traitors makes me sick. Let me and Hallan join you and your men. Soon, we will outnumber soldiers of Theramore. And then...\n\nHe will have his vengeance.\n\nCaldwell.', 0);

REPLACE INTO gameobject_template VALUES
(2010921, 3, 259, 'Theramore Trunk', 0, 4, 0.5, 43, 2010921, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010922, 3, 24637, 'Personal Belongings', 0, 4, 1, 43, 2010922, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010921,60812,-100,0,1,1,0),
(2010921,60813,-100,0,1,1,0),
(2010922,60814,-100,0,1,1,0);

-- The Betrayal from Within
delete from quest_template where entry = 40560;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40559,40560,2,15,35,30,0,0,'The Betrayal from Within','So it is true. My soldiers, whomst I thought as most loyal, were actually deserters. I wonder how many more hide in our midst.\n\nBut for now, let\'s gather the information. Caldwell and Hallan were deserters. They killed Paval Reethe, when he was questioned by the Horde. Did they do it just to spite the Horde, or... He knew something...\n\nOnce again, our findings lead us to the deserters in the swamp. Well, I doubt that we could make them talk. They hate us, maybe even more than they hate the Horde. Any mindless attack on their abode will not provide us with answers.\n\nWe need to turn to magic. Forbidden magic. If we had something that belonged to Paval Reethe, we could commune with his spirit. It is a dangerous practice, many would even consider it unethical.\n\nThe ends justify the means. And fortunately, we have his badge. Since he passed recently with unfinished business, his spirit may still be in Azeroth.\n\nGo to the Mage Tower here and explain the situation to Magus Halister.','Speak with Magus Halister at the tower of Theramore Isle in Dustwallow Marsh.','I studied the Arcane Arts for decades. Yet I always craved... Something more.','The Ritual of Divination. Yes, I am able to perform it. But be wary, $r. It is extremely dangerous for the spirit, and for the caster.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944 , 40560);
replace into creature_involvedrelation	(id, quest) values (60731, 40560);

-- Preparation for Divination
delete from quest_template where entry = 40561;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40560,40561,2,15,35,30,0,0,'Preparation for Divination','Very well. If it is Captain Vimes wish... who am I to say no. But, if we are to make the ritual as safe as possible to the spirit, and to us, I will need some rare ingredients. Your best bet would be buying them in Dalaran, if, well, it still existed.\n\nI have heard rumors that Kirin Tor is trying to rebuild the magical city, so if you don\'t mind traveling... Maybe they have some ingredients needed. The rest can be found in these swamps, if you have a keen eye.\n\nI need 1 Arcane Resonator from Dalaran, 3 Moonstones and 10 Swamp Ooze Ichors. I heard reports of ooze abominations in the south.','Bring 1 Arcane Resonator, 3 Moonstones and 10 Swamp Ooze Ichors to Magus Halister at Theramore Isle in Dustwallow Marsh.','Back from Dalaran already?','Ah, the Arcane Resonator. I thought this technology to be lost when Archimonde crushed Dalaran. Fortunately, Kirin Tor is tougher than I expected.\n\nShall we begin?',60815,1,1705,3,60816,10,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,1011,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60731, 40561);
replace into creature_involvedrelation	(id, quest) values (60731, 40561);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60815,31205,'Arcane Resonator',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60816,3663,'Swamp Ooze Ichor',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4391,60816,-85,0,1,1,0),
(4392,60816,-90,0,1,1,0),
(4393,60816,-90,0,1,1,0);

-- Ritual of Divination
delete from quest_template where entry = 40562;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40561,40562,2,15,35,30,3,0,'Ritual of Divination','I shall need your protection during the ritual. Some unwanted spirits may also come. Dispose of them.\n\nLet\'s begin.','Protect Magus Halister during the ritual and report the finding to Garran Vimes at Theramore Isle in Dustwallow Marsh.','I heard terrible noises coming from the Mage Tower. What happened?','So it was the deserters. Very well, I suspected it, to be honest. These people have no honor. We shall send our best men to deal with them. But before this, I think the Horde should also get an explanation and... an apology.\n\nAnd when it comes to this Mariner, let me consult with some of my advisors. I think I may have heard of this man before.',0,0,0,0,0,0,0,0,60389,1,0,0,0,0,0,0,0,0,0,2850,1011,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Protect Magus Halister');

replace into creature_questrelation		(id, quest) values (60731, 40562);
replace into creature_involvedrelation	(id, quest) values (4944 , 40562);

update creature_template set script_name = 'npc_magus_halister' where entry = 60731;

REPLACE INTO creature_template VALUES
(60389, 328, 0, 0, 0, 0, 'quest_40562_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Upon accepting the quest, Magus Halister begins to cast a spell.
-- Magus Halister: Spirits! I call upon thee! If one called Paval Reethe is listening, come! We need your help!
-- Two 'Disturbed Ghost' should spawn and attack Magus Halister and Magus Halister. If a player or magus dies the quest is failed.
-- Upon defeating two spirits:
-- Magus Halister says the following lines
-- Paval Reethe! Come, if you want to see justice, I call upon you!
-- Paval Reethe spawns at the location : Map1, X:-3748.31, Y:-4440.36, Z: 30.56, Orientation:2.75
--  (Put a ghost effect on Pavel Reethe)
-- (wait 2 seconds)
-- Paval Reethe: Who disturbs my rest? Do I owe my service to the Alliance even in death? Let me pass to the Spirit Realm in peace.
-- (Wait 5 seconds)
-- Magus Halister: Paval Reethe. In life, you failed to uphold honor. You deserted your friends, your family. Now you have a chance to redeem yourself.
-- (Wait 7 seconds)
-- Paval Reethe: What do you want? Is this about Shady Rest Inn? You still haven\'t figured it out?
-- (Wait 5 seconds)
-- Magus Halister: Indeed. Tell us, what happened. Who burned the inn?
-- (Wait 4 seconds)
-- Paval Reethe: Isn\'t it obvious? The deserters did it. Not me, though. In my last days, I did what was right. I tried to stop them. That\'s why they left me in the swamp.
-- (Wait 8 seconds)
-- Magus Halister: Why? Why did they burn it?
-- (Wait 4 seconds)
-- Paval Reethe: Shady Rest Inn was open to everyone. Even us. We have spent many evenings there, laughing and drinking. But one time, some of our people got too drunk. They started meddling with the innkeeper. Until they said too much. Something about the Vengeful Mariner. They couldn\'t allow this to reach Theramore, so they burned the inn. No witnesses.
-- (Wait 13 seconds)
-- Magus Halister: Vengeful Mariner? 
-- (Wait 3 seconds)
-- Paval Reethe: I wanted to stop them, I wanted them to just, you know, talk it out. But they wouldn\'t listen. They beat me unconscious and threw me out in the swamp to die. After this, some of them wanted to blame it on the Horde, but in their drunken state, they could only find some old shield. Nonsense.
-- (Wait 15 seconds)
-- Magus Halister: Who is this Vengeful Mariner? Why couldn\'t the news about him reach Theramore? Speak, spirit!
-- (Wait 8 seconds)
-- Paval Reethe: I couldn't do anything to save them, right? I was alone. I couldn\'t save his family. I couldn\'t save his wife... his little son. Oh, what have we done...
-- (Wait 8 seconds)
-- Magus Halister: Paval Reethe, I command you to speak! Who is the Vengeful Mariner!?
-- (Wait 6 seconds)
-- Paval Reethe: You old fool. Do you really think so many deserters rally behind this halfwit Voss? Vengeful Mariner is our true leader. He is... you wouldn\'t understand, anyway.
-- (Wait 10 seconds)
-- (Delete the NPC of Pavel Reethe)
-- Magus Halister: Paval! I curse you, come back! Reethe!
-- (Wait 5 seconds)
-- Magus Halister: Who is the Vengeful Mariner!? 
-- (Wait 5 seconds)
-- (EMOTE)Magus Halister sighs.
-- Magus Halister: Well, looks like he left us for good. At least we got some answers out of him. Now, go back to Captain Garran 
-- Vimes. He will know what to do next.
-- (Wait 7 seconds, and complete quest) 

-- To Meet Again
delete from quest_template where entry = 40563;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40562,40563,2,15,35,30,0,0,'To Meet Again','Go to Falgran and tell him to arrange the meeting with the Horde. Explain the situation to them and... apologize for us blaming them. We need to make this right and show our good will.\n\nAfter this, meet me at the deserter\'s tower. We are going to deal with them.','Report back to Falgran Hastil on the road between Shady Rest Inn and the Lost Point.','Did our people really betray us?','The deserters. I knew they were vile people, but to burn innocents alive... Light, save the souls of these poor people.\n\nSo be it. Kagoro is already around here, we should meet him at once.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40563);
replace into creature_involvedrelation	(id, quest) values (5088, 40563);

-- The Second Meeting
delete from quest_template where entry = 40564;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40563,40564,2,15,35,30,0,0,'The Second Meeting','Go to Falgran and tell him to arrange the meeting with the Horde. Explain the situation to them and... apologize for us blaming them. We need to make this right and show our good will.\n\nAfter this, meet me at the deserter\'s tower. We are going to deal with them.','Assist Falgran with the meeting.','Finally.','I hope Captain Vimes will share Kagoro\'s enthusiasm about this...',0,0,0,0,0,0,0,0,60390,1,0,0,0,0,0,0,0,0,0,750,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Assist Falgran with the meeting');

replace into creature_questrelation		(id, quest) values (5088, 40564);
replace into creature_involvedrelation	(id, quest) values (4944, 40564);

REPLACE INTO creature_template VALUES
(60390, 328, 0, 0, 0, 0, 'quest_40564_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- And Justice for All
delete from quest_template where entry = 40565;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40564,40565,2,15,35,30,0,0,'And Justice for All','It does appear that the Deserter\'s are behind the burning of the inn. If there is ever to be justice, we must stop them from continually dragging more and more of our most loyal into their ranks.\n\nThere shall be no quarter, they are wanted and we shall dole out justice, for all of the lives lost. For the deceit caused.\n\nDirectly to the west of Theramore, to the north eastern edge of the Quagmire is the Deserter\'s Hideout, it is there that they gain their strength. Find Sellick Voss, the new leader of the camp, slay him, and bring his medallion to me as proof of the deed.','Find Sellick Voss, slay him, and bring his medallion to Captain Garran Vimes at Theramore Isle in Dustwallow Marsh.','You fought well. I wish you could stay with me in Theramore as my personal assistant, but I know that adventure calls.','Without you, we would still be in the dark. Who knows, maybe you stopped another war between the Horde and the Alliance? You are a hero of Theramore, for all of the work you have done to ease the tensions, and solve this mystery.\n\nFor this, I would like you to take one of these weapons from my personal armory.\n\nConcerning the Vengeful Mariner. Sailors coming to Theramore have reported seeing a shadowy figure stalking the coast. Some of our fishermen have gone missing in recent months, too. It may be connected. But, a question remains. Why was he so important to the deserters, that they killed innocents to keep this a secret for just a while longer? We need to get to the bottom of this.',60817,1,0,0,0,0,0,0,60941,1,0,0,0,0,0,0,0,0,10000,3950,1011,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60818,1,60819,1,60820,1,60821,1,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40565);
replace into creature_involvedrelation	(id, quest) values (4944, 40565);

update quest_template set type = 1 where entry = 40565;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60817,1012,'Medallion of Voss',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60818', '2', '6', 'Garran\'s Pike', '', '22235', '3', '0', '1', '66820', '16705', '17', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '0',
 '0', '81', '125', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '100', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60819', '4', '6', 'Dustwallow Defender', '', '7559', '3', '0', '1', '30420', '7605', '14', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1108', '0', '0', '5',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '4', '0', '0', '100', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60820', '2', '15', 'Ornate Dagger of Jalvan', '', '20383', '3', '0', '1', '50624', '12656', '13', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '-3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1500', '0',
 '0', '31', '47', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9397', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60821', '2', '18', 'Theramore Arbalest', '', '10671', '3', '0', '1', '39220', '9805', '15', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '100',
 '2', '59', '74', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);
update item_template set inventory_type = 26 where entry = 60821;

-- Sleep Paralysis
delete from quest_template where entry = 40566;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40566,2,11,21,17,0,0,'Sleep Paralysis','Excuse me, $c!\n\n<The lady seems to force a smile, but her eyes betray a deep fury.>\n\nYou look the gallant sort, the sort to help a poor damsel, yes? I find myself in need of some rather... odd substances. They may even be dangerous to acquire, but looking at you – I think you can certainly handle it. I will even pay some decent coin for your troubles!\n\nI need some poison. But not just any poison. There are spiders in a cave somewhere East of here, that have a very painful bite, even causing brief paralysis. If you could collect for me a few vials of their venom, I would be eternally grateful! Surely you aren\'t afraid of a few little arachnids, no?\n\nAnd what do you mean, why? Are you truly asking a lady her personal business?','Acquire five Leech Stalker Venom samples for Rose Dolohov.','Have you got what I need, or are you just being nosy?','Oh perfect, thank you! This should teach him a lesson. here\'s your silver, now shoo!',60822,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,1500,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (52045, 40566);
replace into creature_involvedrelation	(id, quest) values (52045, 40566);

update creature_template set npc_flags = 3 where entry = 52045;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60822,11980,'Leech Stalker Venom',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4040,60822,-35,0,1,1,0),
(1111,60822,-35,0,1,1,0);

-- Sleepwalking at Day
delete from quest_template where entry = 40567;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40566,40567,2,11,21,18,0,0,'Sleepwalking at Day','Oh, I can\'t do this.\n\n<She sighs loudly and massages her eyes.>\n\nMy fiancé is dog-tired all the time, disappears randomly during the night, and recently I found long black hair on his clothes.\n\nI just can\'t figure out how he could do this to me! But I must be certain. Please, $C, can you go look into this for me? Before I do anything rash. I can\'t even bear to speak to him, never mind go back to our old bedroom. Just find out his damned side of things, and tell me what lies he speaks. Any extra evidence you can find would be good too, I suppose.\n\n<She screws her face up tightly.> He\'s probably avoiding me and pretending to be useful, chopping wood by the lumber mill. Bert Mano is his name.','Speak to Bert Mano in Hawk\'s Vigil, and see where your investigation leads.','Can I help you?','Poison? Wow, this complicates things greatly. We may need to take a more direct approach.',0,0,0,0,0,0,0,0,60391,1,0,0,0,0,0,0,0,0,0,450,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak to Bert Mano');

replace into creature_questrelation		(id, quest) values (52045, 40567);
replace into creature_involvedrelation	(id, quest) values (52039, 40567);

update creature_template set script_name = 'npc_bert_mano' where entry = 52017;

REPLACE INTO creature_template VALUES
(60391, 328, 0, 0, 0, 0, 'quest_40567_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into broadcast_text (entry, Male_Text) values (30035, 'What? She told this to a stranger? Oh by the light, this is... this is worse than I thought. Please, speak to Marge Blackwood, she is the investigator in this town, and responsible for several cases currently. Speak to her, she will explain it all. Somehow I think I\'m sleeping outside tonight anyhow.');
replace into npc_text (ID, BroadcastTextID0) values (30035, 30035);

-- Daydreaming at Night
delete from quest_template where entry = 40568;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40567,40568,2,11,22,18,0,0,'Daydreaming at Night','Okay, okay, I know it looks bad. But Bert has been suffering with sleep paralysis of a very interesting kind, you see. The poor soul has something, and I have my suspicions what, reaching out to him during his dreams. I was skeptical too, until I witnessed it myself while observing him slumber.\n\nI am sure it is a demon! The peasants have countless stories of this sort of thing, but it\'s the first time I\'ve gotten irrefutable evidence of it happening! Regardless, my studies must be put on hold, if his marriage and, if you are correct, his life may be in danger.\n\nThis demon must be either expelled or brought into the physical plane, then killed. Unfortunately, I have very little idea how to do so directly. \n\n But I know who does. I made contact with a shady fellow in Stormwind. He conducts his business from a cabal hidden away in the basement of a tavern there. I do not know which one unfortunately. His name is Gakin the Darkbinder.\n\nPlease, hurry, $C. Bert isn\'t a perfect man, but he doesn\'t deserve this.','Find Gakin the Darkbinder in the basement of a tavern at Stormwind City.','Hmm?','From Hawk\'s Vigil? What a juicy predicament indeed!\n\n<He trails off into a quiet, throaty laughter.>',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (52039, 40568);
replace into creature_involvedrelation	(id, quest) values (6122 , 40568);

-- Sweet Dreams are Made of This
delete from quest_template where entry = 40569;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40568,40569,2,11,24,18,0,0,'Sweet Dreams are Made of This','Okay, $R  your first task for me.\n\nWhat, you thought I would do this for free? No, no no! Oh by fel no. In any normal circumstance I would have you killed for stumbling down here, but it just so happens, I need some materials myself, and some of these will also be required to solve your. Predicament.\n\nA connection to the void will be required, plus some sort of tonic that elicits lucid dreaming to bring forth this night-demon of yours, and banish it. My colleagues have whispered about a certain location that may just do the trick!\n\n<He smirks wickedly.> \n\n Fire Scar Shrine. Name ring a bell? I doubt it. You can find it in Ashenvale, south west of Astranaar. There are foul beasts dwelling there, dog-like, ravenous and demonic. I need you to go there, kill them, and bring me their hearts. I will need one for you, but I never, ever work for free. Make it ten.','Go to Fire Scar Shrine in Ashenvale and gather the hearts of the demons described there for Gakin the Darkbinder at the Slaughtered Lamb in Stormwind City.','Have you given up yet?','Well well, look at those beautifully tainted hearts. Perfect. You have done me a great service today, $r. Here... When you feel strong enough, take one of my special creations, a token of thanks.',60823,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1750,0,0,0,0,0,0,0,0,0,0,0,9197,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (6122, 40569);
replace into creature_involvedrelation	(id, quest) values (6122, 40569);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60823,3320,'Lesser Felguard Heart',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(3772,60823,-85,0,1,1,0);

-- Back to Reality
delete from quest_template where entry = 40570;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40569,40570,2,11,24,18,0,0,'Back to Reality','You know what? You\'ve actually impressed me, $r. I will consider your payment complete. Take this pendant back with you. It has a powerful tether which will draw demonic energies into our world. Needless to say it is HIGHLY forbidden, so do not show it to anyone but the one who sent you here.','Bring the Felbound Pendant to Marge Blackwood at Hawk\'s Vigil in Wetlands.','You have returned! What news do you bring?','This? This will do what I think it will, yes? Then I think I have one more thing to ask of you, $C.',60824,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60824,1,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (6122 , 40570);
replace into creature_involvedrelation	(id, quest) values (52039, 40570);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60824,32073,'Felbound Pendant',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Strange Bedfellows
delete from quest_template where entry = 40571;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40570,40571,2,11,25,18,0,0,'Strange Bedfellows','This is it. If you have any friends who can work discreetly, I suggest you contact them now.\n\nThe energy will be strongest either around Bert himself or where he sleeps. Hold out the pendant and see if it reacts. Hopefully, this will give you the opportunity to confront this demon and put an end to the torment.\n\nYou should probably take some evidence of its existence once you kill it, too, you know. So he can prove his situation and resolve the troubles with his fiance.','Find a way to summon the demon, slay it, and take its head to Bert Mano.','I haven\'t slept a wink. Not only with this damn evil presence, but my wife kicked me out the house too!','By the light, what is that! This is what tormented me for months? I... I think I remember those eyes, yes.\n\nAs much as it pains me to do so, I must show this to Rose. There is no other way to prove what she means to me, that I would never do what she thinks I did!\n\nAnd your name, friend? Ah, thank you $N.',60825,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,2500,72,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60826,1,60827,1,60828,1,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (52039, 40571);
replace into creature_involvedrelation	(id, quest) values (52017, 40571);

update quest_template set type = 1 where entry = 40571;
update creature_template set npc_flags = 3 where entry = 52017;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60825,4777,'Hedania\'s Heart',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60954,60825,-100,0,1,1,0);

replace into item_template values
 ('60826', '4', '0', 'Discarded Engagement Ring', '', '224', '2', '0', '1', '6240', '1560', '11', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '2', '5', '3',
 '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60827', '4', '1', 'Satin Blindfold', '', '12537', '2', '0', '1', '4412', '1103', '1', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '0', '0',
 '0', '0', '0', '7676', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '45', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60828', '2', '15', 'Jeweled Letter Opener', '', '6460', '2', '0', '1', '8352', '2088', '13', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '2', '3', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1800', '0',
 '0', '15', '34', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '45', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '1', NULL);

-- Aid Kagoro
delete from quest_template where entry = 40572;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40572,2,17,35,30,0,0,'Aid Kagoro','Kagoro had just left to investigate the hoofprints. He should be scouting the road to the Southern Barrens. A scout like no other, that orc, for many days has he tried to be worthy of a surname.\n\n His actions will one day speak, and when that day comes he will earn his honor. I hold high respect for Kagoro, $R, but I believe he will be in need of your help if you were willing to offer it.','Find Kagoro on the road to the Barrens in Dustwallow Marsh.','Yes?','Krog says you were the one to find the hoofprints. You have a keen eye, I\'m more than willing to accept your aid.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4926, 40572);
replace into creature_involvedrelation	(id, quest) values (4972, 40572);

update creature_template set npc_flags = 2 where entry = 4972;

-- On a Boar's Trail
delete from quest_template where entry = 40573;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40572,40573,2,17,35,30,512,0,'On a Boar\'s Trail','Krog\'s suspicions were founded, he was right to believe the quilboar may have had something to do with the burning of the inn.\n\nBefore you arrived, so did I. I followed a track, or should I say smell towards a pack of quilboar, they donned the colour of war and were headed towards the Razorfen Kraul, their main den.\n\nLuckily for us, they have stopped in their trails close to it, conveniently near the road.\n\nYour task will be to extract information from them, if any. Although I highly trust my tracking skills, I find my brute force lacking. Judge me if you must, but see the deed done.','Hunt the quilboar party in the Barrens near Razorfen Kraul and retrieve the Quilboar Tablet for Kagoro in Dustwallow Marsh.','Have you found anything?','This isn\'t much $N, but we\'ll make do.\n\nSomething seems to be scribbled on this tablet, you said you found it on one of them?',60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,76,150,0,0,0,0,0,0,0,0,0,60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4972, 40573);
replace into creature_involvedrelation	(id, quest) values (4972, 40573);

-- Someone With A Pig's Tongue
delete from quest_template where entry = 40574;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40573,40574,2,17,35,30,0,0,'Someone With A Pig\'s Tongue','I\'m afraid I can\'t make anything out of these symbols, we must find someone who knows this type of speech and who would be willing to aid us.\n\n<Kagoro ponders for a moment.>\n\nI hear the Tauren of Camp Taurajo recently captured a quilboar, perhaps he\'s willing to hold a conversation. Nothing to lose after all, he\'s a prisoner, force him if he\'s not willing.','Speak with the Quilboar Mangletooth in Camp Taurajo for more information.','Speak.','Mangletooth\n\n<snorts.>\n\ngreets you $R.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4972, 40574);
replace into creature_involvedrelation	(id, quest) values (3430, 40574);

-- Willing to Serve
delete from quest_template where entry = 40575;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40574,40575,2,17,35,30,0,0,'Willing to Serve','You need Mangletooth to translate you a <snort.> tablet?\n\nMangletooth will do so for a special treat!<snort.>Mangletooth craves for basilisk eyes, down in Thousand Needles you will find <snort.> Saltstone Basilisks, at Shimmering Flats!\n\nBring about <snort.> 20 of them and Mangletooth translates, favor for a <snort.> favor!','Brink 20 Saltstone Eyes from basilisks in the Shimmering Flat to Mangletooth.','Mangletooth could <snort>. really <snort.> <snort.> REALLY enjoy some <snort.> eyes right now.','Mangletooth happy, give Mangletooth eyes!\n\n<Mangletooth snorts loudly as he munches the eyes with gluttony, a real pig in your eyes.>',60829,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2800,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3430, 40575);
replace into creature_involvedrelation	(id, quest) values (3430, 40575);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60829,13012,'Saltstone Eye',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4147, 60829, -100, 0, 1, 1, 0),
(4150, 60829, -100, 0, 1, 1, 0),
(4151, 60829, -100, 0, 1, 1, 0);

-- A Glutton's Honesty
delete from quest_template where entry = 40576;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40575,40576,2,17,35,30,0,0,'A Glutton\'s Honesty','<Snorts happily.>\n\nA feast! A feast for Mangletooth! Now about that <snort.> tablet. It was meant to <snort.> reach the leader of the Kraul as report that the quilboar did indeed <snort.> wish to attack the inn but when they reached it, it was already <snort.> burnt!\n\nNot sure which <snort.> inn they are talking about <snort.>, but seems like you do.\n\nMangletooth happy to <snort.> help, the Tauren are really nice to Mangletooth.\n\nEven this cage is <snort.> now open, but I choose to <snort.> stay.','Report back to Kagoro.','Something to say?','This makes no sense, $N, the quilboar were a good lead but it only sent us to a dead end.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,76,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3430, 40576);
replace into creature_involvedrelation	(id, quest) values (4972, 40576);

-- Behind the Hoofprints
delete from quest_template where entry = 40577;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40576,40577,2,17,35,30,0,0,'Behind the Hoofprints','I\'ll keep looking around the ruins, meanwhile you should go back to Krog, and inform him of our findings.\n\nThere\'s simply nothing more we can do here $N. As little as it may mean, you have my appreciation for the help, Lok\'tar.','Bring news to Krog at Brackenwall Village in Dustwallow Marsh.','Quickly now.','From frog in the well to frog in the ocean it is then. It would\'ve been so easy if the quilboar had done it, but the ancestors test us still.\n\nIt is time to evaluate the evidence we have and look to the other leads perhaps.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,800,76,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4972, 40577);
replace into creature_involvedrelation	(id, quest) values (4926, 40577);

-- Dragging It Back To Brackenwall
delete from quest_template where entry = 40578;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (1276,40578,2,15,35,30,0,0,'Dragging It Back To Brackenwall','No matter how many times I may look at it, $R, I simply can\'t recall to whom I\'ve sold or for whom I\'ve forged this.\n\nThe sole thing I can say is it was meant for a Tauren to bear. The size, the grip, it feels natural in the hands of a Tauren. You have my sincere apologies but this is all I can offer.\n\nTell Krog to take good care of his armor, farewell.','Tell Krog of your findings in Dustwallow Marsh.','I\'m listening.','Another dead end.\n\n<Krog ponders for a moment.>\n\nDead end. Exactly!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4943, 40578);
replace into creature_involvedrelation	(id, quest) values (4926, 40578);

-- Memory of An Ogre
delete from quest_template where entry = 40579;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40579,2,15,35,30,0,0,'Memory of An Ogre','I remember Do\'gol speaking of a friend of his, a Tauren to be more precise. He said the Tauren befriended the ogres during the siege of Theramore, quite always mentioning how much of an unstoppable shield he was.\n\nI wonder, Do\'gol, as many ogres, may be a bit slow, if we were to jog up his memory about this Tauren perhaps we can find out if the Tauren itself was the shield or that he carried a shield.\n\nI have this feeling $N.','Ask Do\'gol in Brackenwall Village about the Tauren.','What now?','You again? Need something fixed, I fix it good.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4926, 40579);
replace into creature_involvedrelation	(id, quest) values (5087, 40579);

-- Mighty Wattapo, the Wall
delete from quest_template where entry = 40580;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40579,40580,2,17,35,30,0,0,'Mighty Wattapo, the Wall','Tauren friend? What Tauren friend.\n\nFound anything about shield yet? Wait.\n\n<Do\'gol is trying very hard to think for a second.>\n\nTauren, shield, large shield. Wattapo!\n\nYes, yes. Tauren friend name was Wattapo, we call him the Wall. Great warrior with big shield! He died, his shield buried with him. Grave next to the rest, you can find him there.','Find Wattapo\'s Grave near Brackenwall Village in Dustwallow Marsh.','The grave was dug out, you can see a Tauren skeleton but no shield.','As you look around, some of the other graves seem to have also be tampered with.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,400,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		 (id, quest) values (5087	, 40580);
replace into gameobject_involvedrelation (id, quest) values (2010923, 40580);

replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010923, 2, 49, 1, 'A Turmoiled Grave', 32, '');

-- Mysterious Shield No More
delete from quest_template where entry = 40581;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40580,40581,2,17,35,30,0,0,'Mysterious Shield No More','You\'re saying this Tauren was supposed to be buried with his shield and there was no actual shield? I knew I had a weird feeling about this. This could only mean one thing and one thing only, someone came to rob our graveyard, for something that would incriminate the Horde if placed in the burned inn.\n\nBut who, and why? Give me a second to go through all of this.','Reassure Krog at Brackenwall Village by giving him a pat on the shoulder.','Huh?','I apologize, I was deep in thought. I know what our next action is.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation  (id, quest) values (2010923, 40581);
replace into creature_involvedrelation (id, quest) values (4926   , 40581);

-- Additional notes: The quest objective for this is to literally use the /pat emote on Korg, just like the /sit emote for the Tirion quest (5742).

-- Tedious Diplomacy
delete from quest_template where entry = 40582;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40581,40582,2,17,35,30,0,0,'Tedious Diplomacy','I\'m more than certain this was meant to brew turmoil between us and Theramore, however, I am not sure why. While you were out trying to figure out the shield part of the mystery, Kagoro returned and said he spotted a scout from Theramore investigating the inn but didn\'t approach.\n\nI\'ll send Kagoro and you to meet with him and share the information we\'ve gathered. For all that we know we\'re all simply trying to get to the bottom of this, without any more bloodshed between the factions.\n\nIf they sniffed around the inn, they probably know that we killed their soldiers in self defence, when we were questioning Reethe. Or at least they are wondering what happened to them. We need to explain the situation. It is really important, approach diplomatically.\n\n<Krog groans>\n\nAh, one more thing. Our goblin allies of Mudsprocket have sent me a message. They believe that the Black Dragonflight could have something to do with the burning of the inn. It makes sense, to be fair. We will check this later.','Meet with Kagoro on the road between Shady Rest Inn and Brackenwall Village in Dustwallow Marsh.','We\'re getting closer.','The alliance representative should be here any second, $N. I\'m afraid that the human won\'t act rationally when we tell them about the death of their comrades. They will think of us as savages.\n\nI hope your diplomacy is better than mine. It\'s customary to speak in their tongue if you are to call the meeting, but we\'ve only learned some of their tongue in internment camps. Bah!\n\nNow that I think about it, you don\'t talk much, do you? We\'re doomed.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4926, 40582);
replace into creature_involvedrelation	(id, quest) values (4972, 40582);

-- A Curious Leaf
delete from quest_template where entry = 40583;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40583,2,215,5,1,0,0,'A Curious Leaf','You have found what appears to be a rich lively leaf on the ground. Touching the leaf gives you an odd sensation, there is also no sign of the leaf dessecating. Perhaps the Druid trainer in Bloodhoof Village would know more?','Take the Mysterious Leaf to Gennia Runetotem at Bloodhoof Village in Mulgore.','Greetings young $c, what can I do for you?','By the Spirits?! That is no ordinary leaf. I have only seen a leaf like this during my time as an apprentice in Moonglade. This may be very urgent $c, and I will need your help.',60830,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60830,1,112,175,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation		(id, quest) values (2010924, 40583);
replace into creature_involvedrelation		(id, quest) values (3064   , 40583);

replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010924, 2, 22932, 1, 'A Curious Leaf', 32, 'go_curious_leaf');

set @magic_number = 2010924;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Plant holds mysterious leafs that look to have grown out of place in Mulgore.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60830,1646,'Mysterious Leaf',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- A Dryad in Mulgore
delete from quest_template where entry = 40584;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40583,40584,2,215,5,1,0,0,'A Dryad in Mulgore','Such leaves do not grow on plants $c , but on Dryads. Dryads are the children of Cenarius, the one who is said to have originally taught us the way of druidism.\n\nThey are kind, gentle, and nurturing under normal circumstances but will become fierce and deadly if their forests or the wild are in danger. Why would a Dryad be here? This is a fresh specimen that was removed from the Dryad very recently so she cannot have gone far.\n\nPlease scout the area where you found this leaf and do your best to locate this Dryad.','Take the Mysterious Leaf to its owner.','Oh hello! It\'s urgent, it\'s really bad!','Oh? Wait, that is my leaf! Did someone send you to find me? I appreciate it! My name is Melyndella. I have no time to chat though, things are bad! Kaylee was poisoned by Centaurs.',60830,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60830,1,112,175,81,150,609,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3064 , 40584);
replace into creature_involvedrelation	(id, quest) values (60977, 40584);

-- A Quest For an Antidote
delete from quest_template where entry = 40585;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40584,40585,2,215,5,1,0,0,'A Quest For an Antidote','Kaylee and I were coming to Mulgore, for... Stuff! I\'ll tell you later, but she was poisoned by one of their arrows. It\'s taking all my concentration and power to slow the poison down and not let her die. Please find someone that can help wherever you came from! I need an antidote!','Seek out someone that can help at Bloodhoof Village in Mulgore.','Hail friend, what is the matter?','You need an antidote for Centaur poison? I\'m afraid my last batch was used days ago... Do not despair though, I may  still be able to help!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,160,175,81,275,609,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60977, 40585);
replace into creature_involvedrelation	(id, quest) values (5939 , 40585);

-- One Small Favor
delete from quest_template where entry = 40586;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40585,40586,2,215,8,1,0,0,'One Small Favor','I cannot give you a batch, but I can help you prepare it. You can find the herb known as Cottontail out on the plains. Bring me six sprigs of the herb and I will fashion an antidote for you that you can take to your friend.','Bring 6 Cottontail Sprig to Vira Younghoof at Bloodhoof Village in Mulgore.','Did you get them?','Well done $c. I will now prepare an antidote for you.',60831,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,204,780,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5939, 40586);
replace into creature_involvedrelation	(id, quest) values (5939, 40586);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60831,18168,'Cottontail Sprig',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010925, 3, 22933, 'Cottontail Sprig', 0, 4, 1, 43, 2010925, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010925,60831,-100,0,1,1,0);

-- A Dryad's Gratitude
delete from quest_template where entry = 40587;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40586,40587,2,215,8,1,0,0,'A Dryad\'s Gratitude','Now, hurry and give the batch to your friend before it is too late. Time is of the essence!','Bring <Vira\'s Antidote.> to Melyndella before the time runs out.','Oh it\'s you! Did you get it? Did you?','Yay! This is amazing! Stand back, I will heal her to speed up the antidote\'s effect!',60831,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60831,6,204,275,81,150,609,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5939 , 40587);
replace into creature_involvedrelation	(id, quest) values (60977, 40587);

update quest_template set LimitTime = 300 where entry = 40587;

-- After turning in the quest, Melyndella will cast spell 5185 on Kaylee.

-- The Story of a Dryad
delete from quest_template where entry = 40588;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40587,40588,2,215,5,1,0,0,'The Story of a Dryad','Thank you so much $N! I should properly explain why I came. A long time ago, my great grandfather taught the Tauren people the ways of Druidism. These teachings have since been lost but have recently been rediscovered.\n\nMy Grandfather Remulos even helped the Tauren rejoin the Cenarion Circle. In spite of that though, many Tauren know very little about my people, and we in turn know little of them.\n\nI\'ve come here to live in Mulgore so we can learn about each other. Kaylee is my friend and a druid student. I will help her recover then join you, please return to whoever sent you and inform them that we\'re coming!','Return to Gennia Runetotem at Bloodhoof Village in Mulgore.','Welcome back young $c, it has been a while.','So you have not only earned the friendship of a Dryad, but saved someone in need? We are blessed to have a Dryad living among us, truthfully I am impressed with your deeds.\n\nI will make sure to inform the village and ensure that Melyndella is properly accommodated here. May the ancestors smile upon you friend!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,900,81,150,609,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60977, 40588);
replace into creature_involvedrelation	(id, quest) values (5939 , 40588);

-- Chasing Sand
delete from quest_template where entry = 40589;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40589,2,440,45,40,0,0,'Chasing Sand','We sent out a crew weeks ago to begin doing some studies over the ruins down south and they haven\'t showed up yet, not even a peep.\n\nThe desert is a dangerous place so now rumor is going around they may have met some terrible fate. It is possible I suppose!\n\nWhat is really important is what we sent out with them, you see, when we trust someone, we usually give them some valueable gear, something worth a lot of coin, you dig?\n\nI need you to go out there and find that crew, or more importantly, get the Turbo-Scan Filtronomitor from whatever is left!\n\nThey should have been down near Southmoon Ruins, check around there.','Find the Steamwheedle Crew and return the Turbo-Scan Filtronomitor back to Baggle Hackrust at Steamwheedle Port in Tanaris.','That Turbo-Scan Filtronomitor is state of the art, losing that is like losing twenty goblins.','Oh baby, its still intact, look at this thing, a bit of heat damage, and some sand where it shouldn\'t be, but its not broken.\n\nYou saved us a heaping pile of gold recovering this thing, and that\'s like giving it to me yourself!\n\nHere, this should make up for the work you did.',60832,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,4950,1001,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60957, 40589);
replace into creature_involvedrelation	(id, quest) values (60957, 40589);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60832,7572,'Turbo-Scan Filtronomitor',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010926, 3, 25847, 'Turbo-Scan Filtronomitor', 0, 4, 0.5, 43, 2010926, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010926,60832,-100,0,1,1,0);

-- Golden Glasshide Scales
delete from quest_template where entry = 40590;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40590,2,440,46,40,0,0,'Golden Glasshide Scales','The desert, such a unique place, I\'ve heard rumors of people perishing from the harsh and brutal sands, the extreme heat, and the lack of water. It kind of reminds me of where I come from aye?\n\nIn such a place only the most brutal creatures can survive, one of which has spent its entire life within the sun.\n\nThe Glasshide Gazer has a distinctive golden scale that my benefactor wants to get ahold of.\n\nYou can find them down in the south roaming the vast desert, collect me twelve of these scales and I will make sure you get paid well.','Collect 12 Golden Glasshide Scales for Gelweg Darkbrow at Steamwheedle Port in Tanaris.','Aye, it be hot out there huh?\n\nAny luck with them scales?','Oh, would ye look at these, so bright and shiny, they practically look like golden coins!',60833,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4500,4550,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60955, 40590);
replace into creature_involvedrelation	(id, quest) values (60955, 40590);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60833,7594,'Golden Glasshide Scale',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5420, 60833, -90, 0, 1, 1, 0);

-- Favor for Gelweg
delete from quest_template where entry = 40591;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40590,40591,2,440,48,40,0,0,'Favor for Gelweg','Hey, look I appreciate all you did for me with those scales, my higher ups at Shadowfor - Err, back out in the Eastern Kingdoms are going to be very pleased, and that pleases me!\n\nBut I just have one more favor to ask for you.\n\nDown to south you\'ll find a place called Southbreak Shore, it might be tricky, just a bit southeast of the Caverns of Time.\n\nAll along that coast are large Coast Striders, massive giants that roam the coast and call it home. Well you see, I need an eyeball from one of them, and I really don\'t think they\'ll give it to you, infact they probably will hate you for being there!\n\nSo, you go and gather a friend or two, get me an eyeball, and we finish our dealings, aye?','Gather a Sea Giant Eyeball for Gelwig Darkbrow at Steamwheedle Port in Tanaris.','Well I see you\'re not smashed to a pulp, any luck?','Would ye look at that? Well, you actually went ahead and did it then aye?\n\nMe and my benefactors appreciate all the work, this has really scratched off the main difficult things I needed.\n\nWell I suppose you earned something, here, take these, they should do you well, with all your adventuring and what not.',60834,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60835,1,60847,1,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60955, 40591);
replace into creature_involvedrelation	(id, quest) values (60955, 40591);
update quest_template set type = 1 where entry = 40591;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60834,7986,'Sea Giant Eyeball',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5466, 60834, -80, 0, 1, 1, 0);

replace into item_template values
 ('60835', '4', '0', 'Gelwig\'s Ring', '', '66202', '2', '0', '1', '31820', '7955', '11', '-1', '-1', '51',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '14', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '28', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60847', '4', '0', 'Darkbrow Scepter', '', '27929', '2', '0', '1', '43952', '10988', '23', '-1', '-1', '51',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '28', '0', '0', '0',
 '0', '1', NULL);

-- Gusting Vortex's
delete from quest_template where entry = 40592;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40592,2,440,45,40,0,0,'Gusting Vortex\'s','This desert holds many secrets and magical properties, much of which is buried deep within the sand. Leaking emanations have begun to stir up the ground into swirling elementals of sand and wind!\n\nAt least, that is what I am here to look into anyway!\n\nTo get concrete proof I\'d like you to find one of the many Gusting Vortex\'s that roam all across Tanaris, kill them, and collect a single collection of Harmonized Sand.\n\nI warn you, Harmonized Sand is rare, and valueable, many brave travelers have died in search of it.\n\nNot all of the Gusting Vortex elementals will be within a harmonized state, so don\'t give up, and keep looking until you find it!','Slay Gusting Vortex, and find a single Harmonized Sand for Ginlo Taxxo at Steamwheedle Port in Tanaris.','Have you had any luck in finding that fabled Harmonized Sand?','Oh, would ye look at these, so bright and shiny, they practically look like golden coins!',60836,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,5850,1001,200,0,0,0,0,0,0,0,0,0,60837,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60958, 40592);
replace into creature_involvedrelation	(id, quest) values (60958, 40592);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60836,31325,'Harmonized Sand',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(8667, 60836, -18, 0, 1, 1, 0);

replace into item_template values
 ('60837', '4', '2', 'Dunewind Sash', '', '27976', '2', '0', '1', '19304', '4826', '6', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '74', '0', '0', '0',
 '0', '0', '0', '7694', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);

-- The Old Church of Westfall
delete from quest_template where entry = 40593;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40593,2,40,13,8,0,0,'The Old Church of Westfall','Upon opening the chest you discover several old, and worn out items, various church tomes and writings with a small out of place letter resting at the top, it looks aged, and written in a shrewn handwritting which reads :\n\n<Carver, we have done as you asked and have forced the old man out, David was a bit rough and injured him. We made sure to -really- send a message, and he won\'t be coming back. We even got the key and locked the doors tight if anyone came back, they will soon understand it is their time to leave as well.>\n\nYou should bring this information to a higher authority.','Bring the Abandoned Letter to Gryan Stoutmantle at Sentinel Hill in Westfall.','Yes?','What is this, a letter?',60838,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60838,1,0,150,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation	(id, quest) values (2010927, 40593);
replace into creature_involvedrelation	(id, quest) values (234    , 40593);

replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010927, 2, 23431, 1, 'Abandoned Footlocker', 32, '');

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60838,8927,'Abandoned Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Old Church of Westfall II
delete from quest_template where entry = 40594;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40593,40594,2,40,14,8,0,0,'The Old Church of Westfall II','You found this at the Westfall Church?\n\nIt has been a long time since I have heard anything about that place, another abandoned relic of a potentially bright past. It is a shame what happened there, but it is a story that is much like the rest of the region.\n\nThe western side of Westfall was the first to be removed, and there are not many who remain who can give us information, many of those farmers were either murdered, or disappeared into secrecy.\n\nThere is someone that I can think of, Baros Alexston, he made something of himself after everything went down, and became an Architect in Stormwind City, you can find him in Cathedral Square if you don\'t mind looking into this matter, maybe he can give us some details about who ran the church, or even what happened to it.','Speak with Baros Alexston in Stormwind.','Yes?','Why hello there, are you here to inquire about civil architecture in the city of Stormwind?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,200,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (234 , 40594);
replace into creature_involvedrelation	(id, quest) values (1646, 40594);

-- The Old Church of Westfall III
delete from quest_template where entry = 40595;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40594,40595,2,40,14,8,0,0,'The Old Church of Westfall III','Oh, so you speak of that old church, out in Westfall? It has been a long time since I have been there, an incredibly long time. I must say that I do not believe I will be much of a help. Most of what I can remember is the sun beating down on me as I walked there and back.\n\n<Baros Alexston lets out a small laugh at the memory.>\n\nThe one who ran it was an old fellow though, always was quite nice, and cheerful. He raised many spirits of the downtrodden farmers back then and helped out where he could.\n\nSuch a shame that such a thing could happen to an honorable man. If you\'re looking for information, your best bet would probably be the Cathedral here in the city, find Bishop Farthing, he might have an idea.','Speak with Bishop Farthing at the Cathedral of Light in Stormwind.','Yes?','Why hello there, is there anything that I can help you with $r?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (1646, 40595);
replace into creature_involvedrelation	(id, quest) values (1212, 40595);

-- The Old Church of Westfall IV
delete from quest_template where entry = 40596;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40595,40596,2,40,14,8,0,0,'The Old Church of Westfall IV','A priest from Westfall huh? Well that is certainly familiar, there was only one church there, and I recall him having had all sorts of trouble, from brigands to thugs who threatened to end his life. The light can be testing at times, but no one should go through something like that.\n\nHe spent some time here in the Cathedral of Light before he moved on to Northshire Abbey, he helps out around there from time to time, he goes by the name Brother Neals.','Speak with Brother Neals at the Northshire Abbey in Elwynn Forest.','Yes?','Oh, that is why you are here.\n\n It\'s been a long time since my Westfall days, but hopefully I can be of help.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (1212, 40596);
replace into creature_involvedrelation	(id, quest) values (952 , 40596);

-- The Old Church of Westfall V
delete from quest_template where entry = 40597;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40596,40597,2,40,14,8,0,0,'The Old Church of Westfall V','So, you\'re here about the Old Church in Westfall huh? Well its been a while since anyone has asked about such a thing, the Cathedral inquired what happened, but nothing ended up coming of it.\n\nThe crooks got away with what they did, and so I decided I would just retire to some peaceful corner, only to hear that they are now here in Northshire as well.\n\n<Brother Neals lets out a soft sigh.>\n\nI\'ll go over what happened when you\'re ready, it might be a bit.','Listen to Brother Neals recounting of his time in Westfall.','Yes?','So, do you see what has happened, and who is behind it all now?',0,0,0,0,0,0,0,0,60392,1,0,0,0,0,0,0,0,0,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Listen to Brother Neals');

replace into creature_questrelation		(id, quest) values (952, 40597);
replace into creature_involvedrelation	(id, quest) values (952, 40597);

update creature_template set script_name = 'npc_broter_neals' where entry = 952;

replace into creature_template values
(60392, 328, 0, 0, 0, 0, 'quest_40597_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- The Old Church of Westfall VI
delete from quest_template where entry = 40598;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40597,40598,2,40,16,8,0,0,'The Old Church of Westfall VI','Now that you\'ve heard my story you can understand what has happened. If anyone is responsible for shutting down the church and the murder of the Easton Family, my suspicions lay toward Carver Molsen. He inherited that farmstead and was always greedy for more, even going so far as to join the Defias.\n\nHopefully my information is relevant for you, perhaps you can bring it to Gryan Stoutmantle, he is in charge of the People\'s Militia there.','Bring your findings to Gryan Stoutmantle at Sentinel Hill in Westfall.','Yes?','So you find the priest who led the church, has he said anything about what happened?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (952, 40598);
replace into creature_involvedrelation	(id, quest) values (234, 40598);

-- The Old Church of Westfall VII
delete from quest_template where entry = 40599;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40598,40599,2,40,16,8,0,0,'The Old Church of Westfall VII','Carver Molsen.\n\nThis is a familiar name, he leads various gangs and crews of thugs in the region. If the rumors and word from Brother Neals is correct, then he is no doubt in possession of the missing deeds for both the Molsen and Easton plots.\n\nThere is an insider within Stormwind named Larry Ryder, he has given us some information on the Defias, perhaps he knows information on how to find this \'Carver Molsen\'.\n\nYou can find him in Stormwind, usually skulking about the Pig and Whistle in Old Town.','Find Larry Ryder, usually found at the Pig and Whistle in Stormwind.','Yes?','So, what you want information? It won\'t come easy.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,210,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (234  , 40599);
replace into creature_involvedrelation	(id, quest) values (60879, 40599);

-- The Old Church of Westfall VIII
delete from quest_template where entry = 40600;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40599,40600,2,40,16,8,0,0,'The Old Church of Westfall VIII','Oh, I know who you\'re looking for, rowdy type, wants more than he has.\n\nYou know what I\'m talking about.\n\nIf you want information then I\'m going to need help, you do a favor for me, I do a favor for you, understood? I have a few contacts that are looking for a somewhat rare poison that comes from Greater Tarantula Venom. You can find it from those Greater Tarantulas out in Redridge Mountains.\n\nGo there, get me seven, and come back, easy right? So don\'t take that long, I don\'t like waiting.','Bring 7 Greater Taratula Venom to Larry Ryder in the Pig and Whistle in Stormwind.','Have you got the Venom yet? My contacts won\'t be happy waiting around.','Well, would you look at that, you survived the trip, most people around here don\'t really want to collect venom from giant spiders.\n\nEither way, you did good by me, so I\'ll do good by you.',60839,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1300,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60879, 40600);
replace into creature_involvedrelation	(id, quest) values (60879, 40600);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60839,3152,'Greater Tarantula Venom',12,1,2048,1,-1,-1,1,7,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(505, 60839, -70, 0, 1, 1, 0);

-- The Old Church of Westfall IX
delete from quest_template where entry = 40601;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40600,40601,2,40,16,8,0,0,'The Old Church of Westfall IX','So, who was this about, Marven Horsen? Larsen Wormen?\n\n<Larry lets a crass smirk rest on his face.>\n\nCarver Molsen, he certainly is a character, hangs around that old farmstead, goes by the name \'The Dead Arce\' these days, used to be called the Easton Fields.\n\nYou got what you needed, now go on, and tell who you need to.','Bring the location of Carver Molsen to Gryan Stoutmantle at Sentinel Hill in Westfall.','Yes?','The Dead Acre huh, interesting.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,400,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60879, 40601);
replace into creature_involvedrelation	(id, quest) values (234  , 40601);

-- The Old Church of Westfall X
delete from quest_template where entry = 40602;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40601,40602,2,40,22,15,0,0,'The Old Church of Westfall X','It is time for justice to be dealt. For the murder of the Easton family, and the disruption of peace in Westfall, Carver Molsen shall not be spared any mercy in these lands.\n\nBring some good news to the remaining people of Westfall, and travel to the Dead Acre, just to the south east. Kill him, and recover the Deed of Easton Fields , the Deed of Molsen Farm, and the Westfall Church Key.\n\nWith him gone, there may yet be hope for a future in these lands.','Travel to the Dead Arce, and kill Carver Molsen, recover the Deed to Easton Fields, the Deed to Molsen Farm and the Westfall Church for Gryan Stoutmantle at Sentinel Hill in Westfall.','Has he been brought to justice $N?','You have brought justice to the Eastons, and have removed a dangerous criminal from our lands, for that we cannot be more greatful.\n\nWith these Deeds there is hope we may resettle the land once the Defias threat is removed, let us hope such a future comes quick $N.\n\nFor your efforts I have prepared some items, they should serve you well.',60840,1,60841,1,60842,1,0,0,60878,1,0,0,0,0,0,0,0,0,0,1600,72,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60843,1,60844,1,60845,1,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (234, 40602);
replace into creature_involvedrelation	(id, quest) values (234, 40602);
update quest_template set type = 1 where entry = 40602;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60840,811,'Deed to Easton Fields',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60841,811,'Deed to Molsen Farm',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60842,16453,'Westfall Church Key',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010928, 3, 23434, 'Carver\'s Chest', 0, 4, 0.5, 43, 2010928, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010928,60841,-100,0,1,1,0),
(2010928,60842,-100,0,1,1,0);

replace into item_template values
 ('60843', '4', '0', 'Drape of Westfall', '', '26173', '2', '0', '1', '5048', '1262', '16', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '3', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60844', '4', '6', 'The People\'s Defender', '', '4458', '2', '0', '1', '7688', '1922', '14', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '494', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '4', '0', '0', '75', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60845', '2', '7', 'Blade of Sentinel Hill', '', '7313', '2', '0', '1', '8832', '2208', '21', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '4', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '20', '37', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

-- The Old Church of Westfall XI
delete from quest_template where entry = 40603;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40602,40603,2,40,22,15,0,0,'The Old Church of Westfall XI','There is one last thing I ask of you in regards to the matter of the Old Westfall Church. Brother Neals is responsible for much of the information we have discovered, I have prepared a letter to be sent to him.\n\nI have also included the Westfall Church Key, when this land is restored to order, I would think of one no better to return it to working order.\n\nHead to Northshire Abbey, and bring it to him with my letter.','Deliver the Letter to Brother Neals, and the Westfall Church Key to Brother Neals at Northshire Abbey in Elwynn Forest.','So, what news comes from Westfall?','<Brother Neals reads the letter, his face easing, and an expression of relief washes over him.>\n\nIt feels good to know justice has been met out to that ruffian, for all the misery he has caused.\n\nI am just happy that my information was able to assist and bring justice to that lawless land.\n\n<Brother Neals takes the Westfall Church Key, tucking it into a pocket of his robe carefully.>',60842,1,60846,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,72,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (234, 40603);
replace into creature_involvedrelation	(id, quest) values (952, 40603);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60846,3020,'Letter to Brother Neals',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50550);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50550, 'To Brother Neals\n\nThe information you have provided proved to be paramount in finding the criminal known as Carver Molsen and bringing him to justice. At last the murders of the Easton family have been avenged in the name of the light. Westfall grows just a bit hopeful thanks to your actions.\n\nThe person bearing this letter also managed to find the key for the Old Westfall Church, when this mess is cleaned up, and the land is restored, I do hope that you return.\n\nSigned Gryan Stoutmantle.', 0);

update creature_template set script_name = 'npc_gryan_stoutmantle' where entry = 234;

-- Digsite Deterioration
delete from quest_template where entry = 40604;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40604,2,3,42,36,0,0,'Digsite Deterioration','I was sent here to get an estimate of the damage done, and it looks to be beyond salvage. The troggs have gone and smashed much of the track, rail and work that was done within that valley. If I am to send a report back I hope to atleast show some sign that it is recoverable, maybe that is where you can come in.\n\nThe trogg infestation needs to be dealt with before the real work can be done, head just past this tunnel \'ere, and clean them out, do some real good skullthumping, and return to me, aye?','Slay 7 Stonevault Pillager\'s and 7 Stonevault Brute\'s for Surveyor Bronzehorn at Redbrand\'s Digsite in the Badlands.','Any progress with those troggs?','Why, you managed to thin their numbers aye?\n\nImpressive work, more then I expected even. Now I can get to work with gathering my report.',0,0,0,0,0,0,0,0,60918,7,60919,7,0,0,0,0,0,0,4500,2850,47,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60923, 40604);
replace into creature_involvedrelation	(id, quest) values (60923, 40604);

-- The Redbrand Archive
delete from quest_template where entry = 40605;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40604,40605,2,3,43,36,0,0,'The Redbrand Archive','The Redbrand Digsite was a location of both mining and archelogy, many of their records and achievements are recorded in a book named the Redbrand Archive.\n\nI was primarily sent here to recover that book, and return it to Torwyn Redbrand back in Ironforge. If you could do me a favor, and gather that for me, it would mean a lot while I remain and clean up this mess. It should be located within the main building of the digsite, gather it, and bring it to Torwyn, you can find him at the Mystic Ward near the Redbrand Estate.','Gather the Redbrand Archive and return it to Torwyn Redbrand in Ironforge.','Can I help you with anything $C?','Why, this is the Archive from our digsite in the Badlands, is it not?\n\n<Torwyn lets out a small chuckle of approval.>\n\nBy my beard, we\'ve been looking for this, a chance to log it within our shelves, you\'ve done good work recovering it, you have our gratitude.',60848,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,2250,47,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60923, 40605);
replace into creature_involvedrelation	(id, quest) values (61010, 40605);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60848,918,'Redbrand Archive',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010929, 3, 24025, 'Redbrand Archive', 0, 4, 1, 43, 2010929, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010929,60848,-100,0,1,1,0);

-- Lost Secrets of the Witherbark
delete from quest_template where entry = 40606;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40606,2,47,41,40,0,0,'Lost Secrets of the Witherbark','You again?! I\'ll forgive your bar tab if you do me a favor. What do you mean, you don\'t have an open tab?\n\nI suppose I might be mistaken, all of you $c types look the same to me.\n\nLook, the Witherbarks have developed a secret ritual that produces alchemical products with powerful properties, or so the tale goes. I\'ve got to get ahold of it - these are vital secrets that could change the whole situation around here! Nobody around here seems to know any details, but perhaps the Elves down by their waterfall have an idea - ask for Lieren\'s sister, she\'s usually clever about these sorts of things. Oh, and don\'t mention this, but would you mind getting this taken care of before the holiday party?','Ask Loania at the Quel\'Danil Lodge in the Hinterlands for further directions.','Yes?','"Ritual secrets", is that the line that mangy dwarf fed you?\n\nOn the other hand, he\'s been generous with his wares, and I suppose he isn\'t too terribly looking, either. Perhaps just a little bit of information couldn\'t hurt.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1150,471,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values ( 4782, 40606);
replace into creature_involvedrelation	(id, quest) values (81042, 40606);

-- Ritual Secrets of the Witherbark
delete from quest_template where entry = 40607;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40606,40607,2,47,45,40,0,0,'Ritual Secrets of the Witherbark','The Witherbark are descended from our oldest enemies, the Amani Empire, but have since lost even the veneer of civilization. I don\'t even want hazard what sort of dark practices happen when they cook their ritual secrets in those boiling cauldrons of theirs, but supposedly those concoctions are careful and deliberate. A quaff of their brew serves as anesthetic for their cruel and barbaric rituals; the victim is rendered indistinguishable from a blind drunk for hours, and remembers little afterwards. If you want a copy of this dark formula, you\'ll have to snatch them from the Witherbark Callers of Shadra\'Alor.\n\nDo be careful, will you? You don\'t seem the type to drink poison deliberately.','Bring a Witherbark Tablet back to Truk Wildbeard at Aerie Peak in the Hinterlands.','I knew plying those elves with some ale would pay off one day! Where did Loania say to get the recipe?','Up a pyramid, you say? Never would\'ve guessed!\n\nYou\'ve done good, but these trolls might as well be doctors for how readable their handwriting is! I\'m not even sure if this recipe calls for fresh cherries, or if grenadine will do... heck, we\'ll just have to try it out both ways!\n\nAt any rate, have one on the house!',60849,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4000,4850,471,300,0,0,0,0,0,0,0,0,0,4600,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (81042, 40607);
replace into creature_involvedrelation	(id, quest) values ( 4782, 40607);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60849,9110,'Witherbark Tablet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(2654, 60849, -90, 0, 1, 1, 0);

-- Salvaging the Crops
delete from quest_template where entry = 40608;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40608,2,406,18,13,0,0,'Salvaging the Crops','Weeks it took to fertilize, and toil that ground, and make useable soil, all ruined by a flock of buzzards that swooped down, and ravaged the place for some fresh feed.\n\nBah, dang dumb buzzards!\n\nThere may still be some of the crop harvest left, lucky for us I had just finished bundling it all before those bastards came down and sent me running. Head down the hill toward the farm, kill some to make the rest think twice about freeloading there too long, and gather up 4 bundles of crop harvest, would ye?','Travel to the farm at Bael Hardul beneath the town, slay 7 Plateau Fleshrippers, and gather 4 Bundled Crop Harvest for Segwar Ironback in Stonetalon Mountains.','We can\'t take all day now, if you wait too long they might eat it all up.','Ahh, ye done it!\n\nI be a bit too old to fight them off, it\'s a good thing you came around.',60850,4,0,0,0,0,0,0,61018,7,0,0,0,0,0,0,0,0,0,1650,47,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61001, 40608);
replace into creature_involvedrelation	(id, quest) values (61001, 40608);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60850,1297,'Bundled Crop Harvest',12,1,2048,1,-1,-1,1,4,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010930, 3, 22749, 'Crop Harvest', 0, 4, 1, 43, 2010930, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010930,60850,-100,0,1,1,0);

-- With us or Against us
delete from quest_template where entry = 40609;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40609,2,405,35,30,0,0,'With us or Against us','Hah! Who is this puny $r? You dare speak to Warug?\n\nI spit on your words! You come back after you show strength and allegiance. Kill Gelkis until you are soaked with their blood. Only then will you speak to Warug.','Slay Gelkis centaur to prove your allegiance with the Magram, then return to Warug near Magram Village in Desolace.','What did I say!','You are red. Is that Gelkis blood? You smell of death. Perhaps you can speak with Warug after all.',0,0,0,0,0,0,0,0,4646,8,4647,8,4648,8,4649,4,0,0,0,2250,93,500,92,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5398, 40609);
replace into creature_involvedrelation	(id, quest) values (5398, 40609);

update quest_template set requiredminrepfaction = 93, requiredminrepvalue = 3000 where entry = 40609;

-- Fighting the Pack
delete from quest_template where entry = 40610;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40610,2,405,32,30,0,0,'Fighting the Pack','You want me to sing your name to the tribe? Then excite me. Fight against the scariest creatures of Mashan\'she.\n\nBest fights are with multiple enemies! To the death! Seek the Bonepaw of the north. They hunt in packs. They rip apart their foes. They pull organs out of bellies and fight over your scraps when you fall.\n\n<She swishes her tail and paces with her hooves in excitement while  thinking about it.>','Slay 8 Starving Bonepaws to prove yourself to Jochi at Magram Village in Desolace.','You are still alive, then you have not done as I asked.','You have bested them, very good. But they were wasting away, weak. You have more yet to fight.',0,0,0,0,0,0,0,0,4689,8,0,0,0,0,0,0,0,0,0,2350,93,500,92,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61040, 40610);
replace into creature_involvedrelation	(id, quest) values (61040, 40610);

-- The Blood of Lizards
delete from quest_template where entry = 40611;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40611,2,405,34,30,0,0,'The Blood of Lizards','There is something else that excites me. Fighting when the enemy is so much larger than you! Hah! The satisfaction when they fall!\n\nIf you do as I ask, then seek the giant lizards to the north. You can see some from Magram Village even! They will leave you a charred corpse trampled underfoot.','Slay 8 Raging Thunder Lizards to prove yourself to Jochi at Magram Village in Desolace.','You return alive?','Scouts say they see you bringing down mighty lizards. I am impressed. But there are bigger ones out there yet.',0,0,0,0,0,0,0,0,4726,8,0,0,0,0,0,0,0,0,0,2500,93,500,92,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61040, 40611);
replace into creature_involvedrelation	(id, quest) values (61040, 40611);

-- Earning Respect
delete from quest_template where entry = 40612;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40612,2,405,35,30,0,0,'Earning Respect','You have done strong deeds already. Continue to prove yourself to me, to us! When we talk your name at our campfires, I will tell you of the greatest challenges we set to mightiest Magram.','Reach Honored reputation with the Magram Centaur, then return to Jochi at Magram Village in Desolace.','Welcome back, $N.','You have the heart of a Magram. It is a shame you were not born with four hooves, hah!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,93,500,92,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61040, 40612);
replace into creature_involvedrelation	(id, quest) values (61040, 40612);

update quest_template set repobjectivefaction = 93, repobjectivevalue = 9000 where entry = 40612;

-- The Forbidden Arts
delete from quest_template where entry = 40613;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40612,40613,2,405,39,30,0,0,'The Forbidden Arts','There was a time when we would do anything for power. Shamans, dark arts, rituals and sacrifices. But when we rejected the protections of Theradras, we also rejected many weak magics!\n\n<She growls deeply.>\n\nWe are Magram! We are strong! We do not need tricks, we do not need mothering! We smash what we can smash and burn what we cannot. See the burning forests north! Puny elven lands are proof!\n\nWe cast out those who would not drop dark arts. But they threaten us with risen dead thanks to our foolish mercy at not killing our own. Find our outcast sisters nearby. Show them no mercy, for we never should have to them.','Slay 4 Outcast Necromancers for Jochi at Magram Village in Desolace.','You have done as I asked? Yes? No?','And did you laugh as you cut them down, $N?',0,0,0,0,0,0,0,0,11559,8,0,0,0,0,0,0,0,0,0,2650,93,500,92,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61040, 40613);
replace into creature_involvedrelation	(id, quest) values (61040, 40613);

-- Almaudrak
delete from quest_template where entry = 40614;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40613,40614,2,405,40,30,0,0,'Almaudrak','$N, it is good you are here this day. Come, sit, listen.\n\nWhen we returned from the northern mountain forests, we were glorious, high spirits, sharing stories of our kills! But many of us did not make it back to village. Something vengeful sought us out...\n\n\We named the beast Almaudrak. He is a bringer of death. He circles the dark skies still. Rarely do I tell anyone of Almaudrak. Many think he is legend. Whoever seeks him out is never seen again. But I know his lair. It is far to the north, near the path to the mountain forests, near ruined elven tower.\n\nIf you wish to be a true name among us. Find and kill Almaudrak.','Find Almaudrak, slay him and return his heart to Jochi at Magram Village in Desolace.','How goes your tracking, $N?','I cannot believe my eyes. This is his heart. It is bigger than my head! You are always welcome now, in Magram Village. I will tell of your tales!',60851,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3600,93,750,92,-2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61040, 40614);
replace into creature_involvedrelation	(id, quest) values (61040, 40614);

update quest_template set type = 1 where entry = 40614;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60851,1290,'Almaudrak\'s Heart',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61042, 60851, -100, 0, 1, 1, 0);

-- Fear Incarnate
delete from quest_template where entry = 40615;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40614,40615,2,405,41,30,0,0,'Fear Incarnate','There is but one more thing in these lands I dare not tell of the tribes, $N.\n\nMagram would never claim to be scared of anything! We are strong! We are the rightful conquerors of Mashan\'she! But... even we do not war with demons to the west. Foul magic, fire, death and decay.\n\n<She tenses her hands into fists for a long moment.>\n\nThere is something I have seen there. Giant, green fire, pure anger and destruction. I do not believe anything could bring it down. I respect you already, $N, and you are liked among us. If you wish to become legend... find and kill Baelfyr.','Find Baelfyr in Mannoroc Coven, kill it and bring evidence to Jochi at Magram Village in Desolace.','You do not need to do this, $N.','<She lets out an ear piercing war-cry at the sight of the infernal\'s head.>',60852,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3700,93,1000,92,-2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61040, 40615);
replace into creature_involvedrelation	(id, quest) values (61040, 40615);

update quest_template set type = 1 where entry = 40615;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60852,23658,'Smouldering Infernal Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61043, 60852, -100, 0, 1, 1, 0);

-- One of Us
delete from quest_template where entry = 40616;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40615,40616,2,405,41,30,512,0,'One of Us','You are a hero among our tribe. When we crush our enemies underhoof, you will be at our side, yes?\n\n<She lets out another loud war cry, and for a moment, something approaching a smile appears on her savage face.>\n\nGo! Speak to true Khan! He has heard of your victories. It is time to join us, $N.','Speak to Khan Jera and follow his instructions.','$N.','From now, you are $N the Fearless! Walk among us with pride. We share with you, now.',0,0,0,0,0,0,0,0,60393,1,0,0,0,0,0,0,0,0,0,4000,93,1750,92,-2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60853,1,60854,1,60855,1,0,0,0,0,'Speak to Khan Jera and follow his instructions');

replace into creature_questrelation		(id, quest) values (61040, 40616);
replace into creature_involvedrelation	(id, quest) values ( 5601, 40616);

REPLACE INTO creature_template VALUES
(60393, 328, 0, 0, 0, 0, 'quest_40616_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 3, script_name = 'npc_khan_jehn' where entry = 5601;

replace into gossip_menu (entry, text_id, condition_id) VALUES (41256, 560101, '0'); 
replace into broadcast_text (entry, Male_Text) values (30040, '<The Khan stares with wild eyes.>');
replace into npc_text (ID, BroadcastTextID0) values (560101, 30040);

replace into gossip_menu (entry, text_id, condition_id) VALUES (41257, 560102, '0'); 
replace into broadcast_text (entry, Male_Text) values (30041, 'You have spirit of Magram. Drink. Share of our blood. Become Magram. Become strong. Become us!\n\n\<The towering Khan holds out a filled skull goblet filled with curdling red blood.>');
replace into npc_text (ID, BroadcastTextID0) values (560102, 30041);

replace into item_template values
 ('60853', '4', '0', 'Dyad of Twitching Elven Ears', 'Perking at the slightest sound.', '21365', '3', '0', '1', '19116', '4779', '12', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '23217', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60854', '4', '0', 'Blood of the First Khan', 'Blood of my blood.', '15711', '3', '0', '1', '19116', '4779', '12', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9163', '0', '0', '0', '600000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60855', '4', '0', 'Ritual Dust of Satiation', 'Stirs something deep within.', '31324', '3', '0', '1', '19116', '4779', '12', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21625', '1', '0', '0', '-1', '0', '-1', '21598', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

-- The Maraudine Front
delete from quest_template where entry = 40617;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40617,2,405,38,30,0,1,'The Maraudine Front','The Maraudine are the strongest in the region, and could pose a more significant threat if their leadership ever had the desire to spread influence.\n\nThey hold our most sacred site, Maraudon as home, for this alone, they should be wiped off the map.\n\nIf you truly wish to become an ally of the Magram, then you will need to prove yourself. Gather ten Maraudine Bracers, and bring them to me as proof of your loyalty.','Gather 10 Maraudine Bracers from Maraudine Centaur in and around the Valley of Spears, then return to Warcaller Dekshar at Magram Village in Desolace.','Ride into battle with swiftness, it is the only way to victory.','You have checked their arrogance, and weakened their position, this is good.\n\nI will spread word of your accomplishments outsider.',60856,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,275,93,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61041, 40617);
replace into creature_involvedrelation	(id, quest) values (61041, 40617);

replace into item_template values
 ('60856', '7', '0', 'Maraudine Bracer', '', '3652', '1', '0', '1', '300', '75', '0', '-1', '-1', '35',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
update  item_template set stackable = 10 where entry = 60856;

replace into creature_loot_template values (4654,  60856, -100, 0, 1, 1, 0);
replace into creature_loot_template values (4655,  60856, -45, 0, 1, 1, 0);
replace into creature_loot_template values (4656,  60856, -45, 0, 1, 1, 0);
replace into creature_loot_template values (4657,  60856, -45, 0, 1, 1, 0);
replace into creature_loot_template values (4658,  60856, -50, 0, 1, 1, 0);
replace into creature_loot_template values (11685, 60856, -80, 0, 1, 1, 0);

-- Raiding The Lesser Tribes
delete from quest_template where entry = 40618;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40618,2,405,35,30,0,1,'Raiding The Lesser Tribes','Desolace is filled with the weak, those that should be culled so the strong can rise to dominate. I speak of the lesser tribes that hide in our mighty shadow, those that tremble in fear of our wrath.\n\nThe lesser tribes of the Gelkis and Kolkar need to be raided, and reminded of their place, and you will enact our fury.\n\nTravel to the Kolkar Village to the north, cut down their battle lords. To the west, head to Gelkis Village, slaughter their stampers, earthcallers, and windchasers.\n\nMake sure they learn their place in the natural order.','Slay 6 Gelkis Stampers, 6 Gelkis Earthcallers, 6 Gelkis Windchasers, and 8 Kolkar Battle Lords, then return to Warcaller Dekshar at Magram Village in Desolace.','Unleash our dominance upon the lands, trample them to dust!','It is only a matter of time until the Magram rise to their destiny.\n\nYour actions are worthy of praise, and I will let the others know of your deeds.',0,0,0,0,0,0,0,0,4648,6,4651,6,4649,6,4636,8,0,0,0,375,93,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61041, 40618);
replace into creature_involvedrelation	(id, quest) values (61041, 40618);

-- The War for Food
delete from quest_template where entry = 40619;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40619,2,405,38,30,0,1,'The War for Food','If anything has been learned from our state of warfare it is that food is more important then even the most deadliest of weapons. Without energy, one cannot fight, and it is from this constant need for food in such a desolate landscape that we have been held back from our true aims.\n\nI desire you to remedy this situation.\n\nAcross Desolace you can find the mighty kodo, their meat is thick, and heavy. It makes for the perfect meal of a warrior.\n\nRide out, and collect seven Heavy Kodo Meat for the Magram.','Collect 7 Heavy Kodo Meat for Warcaller Dekshar at Magram Village in Desolace.','Having trouble finding such a large beast?\n\n<Warcaller Dekshar smirks at you.>','This food will fill the stomachs of our warriors, they shall know of your contributions to our efforts.',12204,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,275,93,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61041, 40619);
replace into creature_involvedrelation	(id, quest) values (61041, 40619);

-- Picking a Side
delete from quest_template where entry = 40620;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40620,2,405,35,30,0,0,'Picking a Side','You are not Gelkis. You are not even centaur at all. Leave now!\n\n\We have no reason to speak. Little will prove your friendship or worth to me. Except perhaps the conquering of the Magram, hah!\n\nI am wise enough to know you would never wage war on our behalf, and you are not even strong enough to do so anyway.','Slay Magram Tribe centaur to prove yourself to Uthek the Wise at Gelkis Village in Desolace.','Did I not tell you to leave?','You did what? How many?',0,0,0,0,0,0,0,0,4638,8,4639,8,4640,8,4641,4,0,0,0,2650,92,500,93,-2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5397, 40620);
replace into creature_involvedrelation	(id, quest) values (5397, 40620);

update quest_template set requiredminrepfaction = 92, requiredminrepvalue = 0 where entry = 40620;

-- Meeting an Elder Centaur
delete from quest_template where entry = 40621;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40620,40621,2,405,35,30,0,0,'Meeting an Elder Centaur','Perhaps there is more to you than meets the eye, $r. You have shown yourself willing to be an enemy of the Magram, but that does not make you a friend of the Gelkis.\n\n\But, you may be in time. That is not for me to decide. In the tents nearby, seek out the oldest among us. He has even more stories to his name than I do. His name is Yesu\'gei.','Find and speak with Yesu\'gei.','Hmm, yes?','You are the one the scouts spoke of, hmm? The one who slaughtered Magram?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,92,150,93,-300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values ( 5397, 40621);
replace into creature_involvedrelation	(id, quest) values (61044, 40621);

-- Spawn of Earth and Cinder
delete from quest_template where entry = 40622;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40621,40622,2,405,37,30,0,0,'Spawn of Earth and Cinder','Sit... and listen. Hmm. Let me think. It was a while ago now, perhaps a decade, not more than a dozen years, when Mother Theradras infused us with her power and we burst into the surrounding hills and forests, burning and conquering. I was much younger at the time, I was caught in the bloodlust and ecstasy of pillaging.\n\nRecently I visited the valley of Stonetalon, and saw what our transgressions have done. The trees aflame, the spirits of the land mobile and furious. This was not what we intended, not at all.\n\nI do not regret those victorious days, but we shall not get the protection of the elements while they still rage over the past. Go back to those lands, and disperse them. Allow the spirits to rest once more.','Banish the elementals of the Charred Vale in Stonetalon Mountains for Yesu\'gei at Gelkis Village in Desolace.','Have you done as I asked, $r?','Good, good. This will be a necessary step to securing our place in Mashan\'she once more.',0,0,0,0,0,0,0,0,4038,7,4035,3,0,0,0,0,0,0,0,2000,92,500,93,-2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40622);
replace into creature_involvedrelation	(id, quest) values (61044, 40622);

-- Sympathy for the Dead
delete from quest_template where entry = 40622;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40621,40622,2,405,32,30,0,0,'Sympathy for the Dead','You may think that a death is simply a death, $r. But that would be a foolish thought, a foolish thought indeed. To die in glorious combat, received back into the earth, this is a good death.\n\nHmm, I remember friends, good Gelkis, falling down as they trotted, poisoned by stings from Scoropashi. I have seen those laid to rest, picked apart by giant carrion birds. This is disgraceful, and I will not have it happen to any more of my tribe.\n\nProve yourself useful. Go out and kill as many of these creatures to the north as you can find.','Slay 8 Scorpashi Snappers and 8 Dread Swoops for Yesu\'gei at Gelkis Village in Desolace.','Have you avenged those disrespected Gelkis?','This brings me some solace, $r, and I am sure the fallen would cheer if they could.',0,0,0,0,0,0,0,0,4696,8,4692,8,0,0,0,0,0,0,0,2500,92,500,93,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40622);
replace into creature_involvedrelation	(id, quest) values (61044, 40622);

-- Troubling Winds
delete from quest_template where entry = 40623;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40621,40623,2,405,35,30,0,0,'Troubling Winds','It is a mistake to ignore nature. We, Gelkis, can learn a lot from a troubling breeze, a red sky, a lightning air.\n\nHmm. Recently the land has been scoured, even the rocks themselves, by roving air elementals. I cannot tell why they are so agitated! Ignoring their presence is a danger to us, and also ignoring omens of things to come.\n\n\Disperse any that you see, $r, and bring me their cores. We may give these to our shamans, and we may learn from them. We will bolster our magic directly with the elements!','Slay the wayward elementals and bring 8 Airy Cores to Yesu\'gei at Gelkis Village in Desolace.','Do you bring good news?','These are far lighter than I imagined, hmm.',60857,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,92,500,93,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40623);
replace into creature_involvedrelation	(id, quest) values (61044, 40623);

update quest_template set requiredminrepfaction = 92, requiredminrepvalue = 3000 where entry = 40623;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60857,23755,'Airy Core',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(11576, 60857, -66, 0, 1, 1, 0),
(11577, 60857, -66, 0, 1, 1, 0),
(11578, 60857, -66, 0, 1, 1, 0);

-- Protecting the Weak
delete from quest_template where entry = 40624;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40622,40624,2,405,36,30,0,0,'Protecting the Weak','You have done well so far, but there are bigger predators yet that must be felled. To the north there are the remains of mighty kodo. Majestic creatures, and in death they nourish the earth with their bodies. However, they have made the carrion birds greedy, and they attack weakened centaur too.\n\nGo. Kill the venomous creatures you find, and any carrion birds that may threaten Gelkis Village. You will earn my respect if you do this.','Slay 8 Scorpashi Lashers and 8 Dread Flyers for Yesu\'gei at Gelkis Village in Desolace.','Have you brought some protection to the village yet?','I am beginning to like you, hmm.',0,0,0,0,0,0,0,0,4697,8,4693,8,0,0,0,0,0,0,0,2800,92,500,93,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40624);
replace into creature_involvedrelation	(id, quest) values (61044, 40624);

-- A Friend of the Tribe
delete from quest_template where entry = 40625;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40625,2,405,35,30,0,0,'A Friend of the Tribe','Hmm. One day you may walk among us as an esteemed visitor, $r. You should be thankful some already respect your actions.\n\nWhen we think you have helped us enough, I will speak to you further. There are some matters that I will not discuss with an outsider, nor with many in the tribe proper.\n\n<He seems to find it difficult to stop talking, mumbling quietly to himself for a long time after.>','Reach honored reputation with the Gelkis Centaur, when complete, return to Yesu\'gei at Gelkis Village in Desolace.','Perhaps your time draws near?','What is your name, $r? $N? Very well... listen to what I have to say next, you have earned it.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,92,500,93,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40625);
replace into creature_involvedrelation	(id, quest) values (61044, 40625);

update quest_template set repobjectivefaction = 92, repobjectivevalue = 9000 where entry = 40625;

-- Contempt for Necromancy
delete from quest_template where entry = 40626;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40625,40626,2,405,39,30,0,0,'Contempt for Necromancy','Our mother, Theradras, provides and protects even in this harsh land, $N. Perhaps you do not fully understand it. But know one thing: she cannot abide those who desecrate the dead.\n\nThe Gelkis would never stoop to such dark magic as to manipulate the dead for strength and personal benefit. The thought alone is enough to make my hooves itch.\n\n<He shakes himself and a few grey hairs fall to the ground.>\n\nHmm, I do not know which of the tribes have been practicing necromancy, but recently there have been sightings of centaur doing just that to the East. Do not bother trying to converse... simply remove their wretched lives from their bodies. And make it slow, if you can, a merciful death is too good for those who deny souls their proper rest.','Slay 4 Outcast Necromancers and return to Yesu\'gei at Gelkis Village in Desolace.','Welcome back, $N.','Do not feel any remorse, this goes far beyond a petty tribal war. I imagine any sane centaur would have wanted them dead.',0,0,0,0,0,0,0,0,11559,4,0,0,0,0,0,0,0,0,0,2950,92,500,93,-2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40626);
replace into creature_involvedrelation	(id, quest) values (61044, 40626);

-- Unforgotten and Unforgiven
delete from quest_template where entry = 40627;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40626,40627,2,405,40,30,0,0,'Unforgotten and Unforgiven','I do not believe in coincidences, I do not. Hmm... I firmly believe in our desecration of the Northern vales, the centaur provoked a being of vengeance to menace us. Do you know of what I speak? Hopefully not, if you had seen or heard him, you would likely not be alive.\n\nI hardly expect you to do this, $N, but if you are equally brave and foolish, then seek Almaudrak to the north, just before the path opens to the fiery woodland vale. The winged horror stalks the road and makes nest in the western mountains.\n\nYou will truly be an honored name amongst the Gelkis if you can bring me his heart.','Find Almaudrak, slay him and return his heart to Yesu\'gei at Gelkis Village in Desolace.','I do not blame you for not wanting to seek him out.','Hmm, you are a special sort, $N. This heart will make a fantastic feast, and all will know you were the one to provide the Gelkis their strength this night!',60851,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3600,92,750,93,-2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40627);
replace into creature_involvedrelation	(id, quest) values (61044, 40627);

update quest_template set type = 1 where entry = 40627;

-- The Raging Oceans Blue
delete from quest_template where entry = 40628;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40627,40628,2,405,41,30,0,0,'The Raging Oceans Blue','I have kept one bit of information from all the tribe, save the Khan himself, $N. Even Uthek, for all her wisdom, I do not trust to not act rashly upon this.\n\nWhile we do not fish much, the seas provide life and nourishment to surrounding creatures... which we may in turn eat. We rely on her as much as the land, this suffering land, despite what others may think. Which is what it pains me to say, something has angered the elements of the deeps too. I can feel it, $N.\n\nI sense, far to the north, where the mountains overlook the sea. There is something roiling, raging, ready to enact vengeance for the suffering land, or perhaps some transgressions I am not aware of. This is something we cannot ignore, and it will panic the Gelkis if it becomes common knowledge! Our village is not miles from the sea after all. We are not great swimmers.\n\nFind a way to quell this being, and I promise, you will become an honored visitor in this village. Perhaps more.','Find and quell the elemental Yesu\'gei speaks of, once complete, return to Yesu\'gei, at Gelkis Village in Desolace.','Dare I ask if you have news?','That! That is a core! Is it over? Yes... I can feel peace dawning once more...',60858,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4000,92,1250,93,-2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61044, 40628);
replace into creature_involvedrelation	(id, quest) values (61044, 40628);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60858,26571,'Core of Fontenus',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61046, 60858, -100, 0, 1, 1, 0);

-- An Honorary Gelkis
delete from quest_template where entry = 40629;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40628,40629,2,405,41,30,512,0,'An Honorary Gelkis','I may be respected for my age, $N, but I cannot offer the proper thanks you deserve. Khan Shaka, our leader, wishes to meet with you directly now. He never meets with outsiders so this must be important.\n\nHe is communing with the earthen spirits within the cave at the centre of our village. Do not delay. And, $N? I am glad you came and listened to this old centaur.\n\n<He retires to his tent with a loud sigh, old bones creaking the entire way.>','Speak to Khan Shaka deep within the cave of Bolgan\'s Hole, and follow his instructions.','I am unsure how to speak to outsider.','You are Gelkis now. $N the Earthstrider! Yes! You feel strong, can feel the earth spirits whisper your name? Yes? No? In time.',0,0,0,0,0,0,0,0,60394,1,0,0,0,0,0,0,0,0,0,4000,92,1500,93,-5000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60854,1,60859,1,60860,1,0,0,0,0,'Speak to Khan Shaka deep within the cave of Bolgan\'s Hole, and follow his instructions');

replace into creature_questrelation		(id, quest) values (61044, 40629);
replace into creature_involvedrelation	(id, quest) values ( 5602, 40629);

REPLACE INTO creature_template VALUES
(60394, 328, 0, 0, 0, 0, 'quest_40629_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 3, script_name = 'npc_khan_shaka' where entry = 5602;

replace into gossip_menu (entry, text_id, condition_id) VALUES (41262, 560201, '0'); 
replace into broadcast_text (entry, Male_Text) values (30045, 'You have helped Gelkis more than any outsider before. We wish to offer you blessing, make you honorary Gelkis!\n\n<The towering Khan holds out a ritualistic bowl of powerful incense.>');
replace into npc_text (ID, BroadcastTextID0) values (560201, 30045);

replace into item_template values
 ('60859', '4', '0', 'Theradras\' Shed Tear', 'Glistening with emotion.', '33296', '3', '0', '1', '19116', '4779', '12', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60860', '4', '0', 'Triskelion of Roving Elements', 'Pulses impatiently when you stop moving.', '29895', '3', '0', '1', '19116', '4779', '12', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '24090', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

-- Collapse of the Maraudine
delete from quest_template where entry = 40630;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40621,40630,2,405,38,30,0,1,'Collapse of the Maraudine','There was a time when the Maraudine were picked from the most loyal of the tribes, gathered to honor and protect our ancestors at a place of great worship.\n\nSuch times are gone, lost to the drifting winds, spat upon, and dishonored.\n\nThe Maraudine are now just a glorified tribe who have claimed the Valley of Spears as their own, they do not respect Maraudon as a holy place as it once was. We are not allowed to visit the tombs of ancestors, or pay respect to the fallen.\n\nThey are our enemy, and they must be destroyed. Travel to the Valley of Spears to the north, and slay them, bring me 10 of their bracers as proof.','Gather 10 Maraudine Bracers from Maraudine Centaur in and around the Valley of Spears, then return to Warleader Temukar at Gelkis Village in Desolace.','Have the Maraudine been checked?','To think, there was a time that being Maraudine was an honor, something to strive for.\n\nThese bracers once meant the world, and now, they only anger me. I thank you for the work, I will spread word of your valiant deeds.',60856,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,275,92,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61045, 40630);
replace into creature_involvedrelation	(id, quest) values (61045, 40630);

-- In Commune With Wind
delete from quest_template where entry = 40631;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40621,40631,2,405,35,30,0,1,'In Commune With Wind','We Gelkis are unlike many of the other tribes, our connection with the elements is something that we value most.\n\nDuring our past we damaged such a reputation, and hope to look forward to the future, and repair the tarnish we have caused.\n\nAll around the region are swirling vortexes of wind and air, from them I would have you gather 12 Elemental Air, these are vital for our kind\'s commune with the elements.\n\nReturn to me when you have recovered them.','Gather 12 Elemental Air, then return to Warleader Temukar at Gelkis Village in Desolace.','Have you returned from chasting the storms?','You have done well for us $N, I will make sure that the materials will go to good use.',7069,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,275,92,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61045, 40631);
replace into creature_involvedrelation	(id, quest) values (61045, 40631);

-- Our Mortal Enemies
delete from quest_template where entry = 40632;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40621,40632,2,405,35,30,0,1,'Our Mortal Enemies','Long has it been since the Magram and Gelkis fought, warred for territory. We have been on the defensive for far too long, fighting back raiding parties that thrusted into our lands, and killed our kin.\n\nIt is about time we did our best to fight them back, and cull their ranks to end this bloodthirsty aggression.\n\nI would have you fight on our behalf, to rid us of our enemies so that we may find a higher calling.\n\nMagram Village is located to the east, travel there, and slay them.','Slay 6 Magram Scouts, 6 Magram Outriders, 6 Magram Stormers and 6 Magram Windchasers for Warleader Temukar at Gelkis Village in Desolace.','Has the dust settled? Have our foes been weakened?','We may yet survive this conflict, and we may yet remove our mortal enemy from this world.\n\nYour efforts have not gone without notice $N.',0,0,0,0,0,0,0,0,4641,6,4638,6,4639,6,4642,6,0,0,0,275,92,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61045, 40632);
replace into creature_involvedrelation	(id, quest) values (61045, 40632);

-- Enter the Village
delete from quest_template where entry = 40633;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40609,40633,2,405,35,30,0,0,'Enter the Village','You start to impress me, $r. If you want name to be more known amongst the tribe, walk into our village. Find Jochi, smartest and most beautiful Magram! She will task you.','Seek out Jochi in Magram Village.','And you are?','$N, very well... I hear you are stained with the blood of Gelkis. Perhaps I have use of you.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,93,200,92,-500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values ( 5398, 40633);
replace into creature_involvedrelation	(id, quest) values (61040, 40633);

update quest_template set prevquestid = 40633 where entry in (40611,40610,40617,40618,40619);

-- To Fix A Shredder or Two
delete from quest_template where entry = 40634;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40634,2,406,25,19,0,0,'To Fix A Shredder or Two','THIS. WAS. NOT. IN. MY. CONTRACT.\n\nUn-freakin\'-believable!\n\nI had to crawl through the savannah and this dusty red rock to get here and find out there\'s nothing to work with?!\n\nKlazfit welcomed me with: "Deal with it, kid. You got a job to do kid." Son of a leper gnome!\n\nDon\'t tell him I said that. This is fine, it\'s okay, everything\'s fine. This is -NOT- fine! \n\n Listen up chum, you gotta do something. Blacksand Oil Fields, lots of spare parts laying about, the Venture Co. classic. Bring me as many as you can carry and you\'ll get paid handsomely.','Bring 30 Spare Parts to Technician Steelbolt at Powder Town in Stonetalon Mountains','How am I supposed to fix not one but -TWO- shredders with no parts?!?','Bummer, I actually gotta work now.\n\nYeah, yeah, here\'s your pay.',60861,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,2100,1001,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60960, 40634);
replace into creature_involvedrelation	(id, quest) values (60960, 40634);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60861,24106,'Box of Spare Parts',12,1,2048,1,-1,-1,1,30,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010931, 3, 24106, 'Box of Spare Parts', 0, 4, 1, 43, 2010931, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010931,60861,-100,0,1,1,0);

-- Gnomes Were Always A Leper
delete from quest_template where entry = 40635;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40635,2,406,28,24,0,0,'Gnomes Were Always A Leper','Hey, how you doing chum?\n\nI\'m really positive you\'re here for work but I smell an amateur when I see one. My gut tells me you\'re more brawn than brain and I got the perfect deal for you, friend.\n\nSo listen up.\n\nRumors say the good ol\' gnome city got boomed with green, and it wasn\'t even us goblins, can you imagine that? Idiots called us suicidal but they gone and done that. Calling themselves leper gnomes now, they were always a leper if you ask me.\n\nWhat\'s even funnier is that they\'re now employed by the Venture Co.! Undermine ain\'t what it used to be, sounds like.\n\nLong story short, go show those idiots who the superior green is and bring me back those coils. Hear that? Coils. C-O-I-L-S.','Bring 10 Electrical Coils to Head Technician Klazfit at Powder Town in Stonetalon Mountains.','Too difficult for you, chum?','Never thought you had it in you kid.\n\nSheesh, is that someone\'s gut? Ugh, working with amateurs.\n\nTake the coin and get out of my sight.',60862,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,1900,1001,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60961, 40635);
replace into creature_involvedrelation	(id, quest) values (60961, 40635);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60862,1248,'Electrical Coil',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61027, 60862, -70, 0, 1, 1, 0);

-- Blacken Their Eyes
delete from quest_template where entry = 40636;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40636,2,406,24,20,0,0,'Blacken Their Eyes','I\'m the law around here bub. Dis the law and you dis me, dis me and I have my boys turn you into gunpowder for our bomb, got it?\n\nGood.\n\nSince you\'re already here, I got a business proposition for you. You get to smack some lizards, peace still stands, everybody wins eh?\n\nNow listen, leaving the pure comedy aside, we got some real issues with the basilisks around here. Why? Well because they can fit a goblin in their mouth bub, that\'s why.\n\nAll you gotta do is go out there and kill some of them! Just some, gotta leave something for my boys too, right.\n\nSimple bread to earn, simple!','Kill 9 Blackened Basilisk and return Security Officer Mort Tozzlefume at Powder Town in Stonetalon Mountains.','I saw some poor kid getting eaten by one of those things yesterday.\n\nHorrifying sight, funny, but horrifying.','You made sure to leave some for my boys right?\n\nOne of the basilisks spit these after eating some of our townsfolk. Just take one.',0,0,0,0,0,0,0,0,4044,9,0,0,0,0,0,0,0,0,1000,1650,1001,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60863,1,60864,1,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60970, 40636);
replace into creature_involvedrelation	(id, quest) values (60970, 40636);

replace into item_template values
 ('60863', '4', '1', 'Wet Socks', '', '16798', '2', '0', '1', '2812', '703', '8', '-1', '-1', '24',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '6', '-1',
 '7', '-2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '30', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60864', '2', '15', 'Half-O-Staff', '', '6555', '2', '0', '1', '11500', '2875', '13', '-1', '-1', '24',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1600', '0',
 '0', '14', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '50', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '1', NULL);

-- Earth Rumble
delete from quest_template where entry = 40637;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40636,40637,2,406,23,20,0,0,'Earth Rumble','Great job with them lizards bub! Left enough for my boys to have fun too. Eh, to be honest, some got eaten. But they had fun! Right? Don\'t look at me like that kid, I\'m a great boss! Do you think I got this job because I rubbed someone the good way?\n\nOof, can\'t take back those words. Still! New job handpicked just for you my uh very capable comrade, yes, comrade.\n\nThe very explosive nature of the Venture Co. seems to have woken up some very very angry earth elementals or something. Salrog was spouting some orcish spiritual nonsense.\n\nYou go deal with them and I pay you, best deal you\'ll get in Powder Town! That is if the town is still standing when you return.\n\nBlasted Venture Co., it was clearly them, right? Not the tests we\'ve been performing with the bombs, right?','Kill 7 Rumbling Earth Elementals and return to Security Officer Mort Tozzlefume at Powder Town in Stonetalon Mountains.','So, has the ground settled yet?','Great work kid, knew you were the perfect idi- man for the job!\n\nRemember when I said some of my boys died? Well, you can have some of their stuff I guess.',0,0,0,0,0,0,0,0,61038,7,0,0,0,0,0,0,0,0,1000,1750,1001,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60865,1,60866,1,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60970, 40637);
replace into creature_involvedrelation	(id, quest) values (60970, 40637);

replace into item_template values
 ('60865', '4', '3', 'Goblin Chain Hauberk', '', '11563', '2', '0', '1', '6432', '1608', '5', '-1', '-1', '24',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '4', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '199', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '90', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60866', '0', '0', '', '', '6592', '0', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Blasting Stonetalon!
delete from quest_template where entry = 40638;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40638,2,406,23,20,0,0,'Blasting Stonetalon!','Busy day in the port, kid, always is. Since the day our big boss, the Warchief, had given us his blessing to make our home in this dusty place.\n\nNo complaints here, o\'course. We\'re just trying to get by and earn our keep after all.\n\nSpeaking of which, I\'ve sent an expedition to the Stonetalon Mountains. Our horned friends, the Tauren, told us of a place where we could freely toy with our engineering.\n\nMy most trusted man, Nazz, has been given the task to overview the construction of the BIGGEST bomb to ever exist.\n\nThis is one of the two things we can provide to the Horde. The other being the best economics in Kalimdor\n\nReport to Nazz in Powder Town, close to the Charred Vale. This is all for the good of the Horde!','Report to Nazz at Powder Town in Stonetalon Mountains.','Beat it, kid!','Nert sends yet another employee to me. Perfect, we need all the hands we can spare.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (80178, 40638);
replace into creature_involvedrelation	(id, quest) values (61024, 40638);

-- Not Useless!
delete from quest_template where entry = 40639;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40639,2,406,23,20,0,0,'Not Useless!','Heya kid, ready to do some actual work?\n\nYou\'ll be under my guidance, if I were you, I\'d worry about how large my pockets are because I am about to fill them if you\'re doing a good enough job.\n\nBackstory time. Notice from yours truly, most of the time the things I am about to say require a tax per sentence for the listener but since you came from Nert himself I am willing to eh, oversee it.\n\nAnyway, where was I, ah yes. I used to be a big shot in Undermine back in my day, there was nobody, and I mean nobody I wouldn\'t cheat, lie, kill or steal from for my own goals!\n\n<Nash rubs his hands and giggles quietly to himself as your skin begins to crawl.>\n\nNaw, don\'t worry kid, those days are behind me. I was saying, I and the Venture Co. got history and especially with this idiot they\'ve sent to oversee the oil fields.\n\nGo beat some of these idiots up and see if you can find any info on them.','Gather information from the Venture Co. Employees located around the Blacksand Oil Fields and return it to Senior Foreman Nazz Firecracker at Powder Town in Stonetalon Mountains.','Hurry it up bub, you wouldn\'t want me to finish sharpening this dagger.','Not, I repeat: NOT USELESS. Do you hear that you blasted maggots?\n\n<Nazz shouts for the whole town to hear.>\n\nI SAY IT AGAIN, NOT USELESS! UNLIKE THE LOT OF YOU.',60867,1,60868,1,60869,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1700,1001,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61024, 40639);
replace into creature_involvedrelation	(id, quest) values (61024, 40639);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60867,3901,'Foreman\'s Instructions',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50551),
(60868,7601,'Discrete Orders',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50553),
(60869,5567,'RESPECT.THE.RULES',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50556);

replace into creature_loot_template values
(61027, 60867,  -65, 0, 1, 1, 0),
(61029, 60868,  -35, 0, 1, 1, 0),
(61030, 60868,  -35, 0, 1, 1, 0),
(61031, 60868,  -35, 0, 1, 1, 0),
(61032, 60868,  -35, 0, 1, 1, 0),
(61033, 60868,  -35, 0, 1, 1, 0),
(61034, 60868,  -35, 0, 1, 1, 0),
(61029, 60869, -100, 0, 1, 1, 0),
(61030, 60869, -100, 0, 1, 1, 0),
(61031, 60869, -100, 0, 1, 1, 0),
(61032, 60869, -100, 0, 1, 1, 0),
(61033, 60869, -100, 0, 1, 1, 0),
(61034, 60869, -100, 0, 1, 1, 0);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50551, 'This goes to all the lepers the company decided to hire for reasons I dare not question because it does not influence my paycheck whatsoever.\n\nYou bunch of second-rated engineers are meant to be near the pipes AT ALL TIMES. Anyone caught slacking or missing or praise be the golden bar one of them breaks all of you will suffer the consequences!', 50552),
(50552, 'Also, for any other idiot that decides to come to me to speak about their wage or contract know that I will tie you up and feed you to the blasted creatures of the Charred Vale.\n\nP.S: WORK HARDER. We got to finish this project soon.\n\nP.S.S: Stay on your toes for the Horde\'s activity.\n\n-Oilmaster Higgle Wirefuse', 0),
(50553, 'If this notice came into your hands then you\'ve been selected for a promotion! Obviously, there will be no pay increase, but you\'re still promoted. You\'ve been promoted to the Venture Co.\'s very own anti Powder Town brigade, when the time comes you and others will be sent to deal with the idiot Nash and his stupid, stupid brethren that decided to form a worker\'s union.', 50554),
(50554, 'Imagine being so dumb not to haul all the gold to yourself! Not that I do that, of course. Every employee is treated the same, and by no means my wage is so much bigger than yours, never think of that!\n\nP.S: Wearing a bomb on your body and sacrificing yourself for the greater good of the company will ensure that your annual payment will be brought back to your family. And also they will be taken care of as any other citizen of the Undermine giving them a two months free medical voucher.', 50555),
(50555, 'P.S.S: Burn this after you read it, imbecile.\n\n- Oilmaster Higgle Wirefuse', 0),
(50556, 'Respect the Oilmaster.\n\nNo slacking.\n\nRespect the Oilmaster\n\nNo lunch break!\n\nRespect the Oilmaster...\n\nNo smoking or drinking while working!\n\nRespect the oilmaster.', 50557),
(50557, 'Do not make that stupid joke about that one Hobgoblin!\n\nRespect the Oilmaster.\n\nDo no ask about your wage or contract.\n\nRespect the Oilmaster.\n\nWork accidents do not exist.\n\nRespect the Oilmaster.\n\nLAST RULE : RESPECT THE OIL MASTER.', 0);

-- Nazz's Got A Plan
delete from quest_template where entry = 40640;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40639,40640,2,406,23,20,0,0,'Nazz\'s Got A Plan','<Nazz reads the documents you brought him.>\n\nHoo boy, the Undermine at its finest.\n\nI remember those days. There is nothing worse than the Goblin nature, $N. The ones above will always work the other lot to death. And the other lot? They\'re trying to be the whip bearers rather than being whipped. Nothing worse, ain\'t NOTHING, NOTHING WORSE.\n\nThis is why the Union is a much better deal, most of us live equally, more or less. The Goblin nature applies here too, but in different ways and measures. Anyway, I got a plan.\n\n I need you to do what you do best, go out there, kill stuff, and bring the stuff back for money. Easy. Easy.\n\n All across Stonetalon, they go by the name \'Raging Cliff Stormer\' a huge lizard that shoots lightning. I need their scale for a shrink ray. Pretty much the electricity is what I need, the rest I am gonna ask some of our most "prestigious" engineers to make. Five of them will be enough!','Bring 5 Electric Scales back to Nazz at Powder Town in Stonetalon Mountains.','Any of them zapped you?','Great job kid, you deliver yet again!',60870,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,1800,1001,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61024, 40640);
replace into creature_involvedrelation	(id, quest) values (61024, 40640);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60870,3347,'Electric Scale',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4009, 60870, -70, 0, 1, 1, 0);

-- Grand Theft Shredder
delete from quest_template where entry = 40641;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40640,40641,2,406,23,20,512,0,'Grand Theft Shredder','All right, shrink ray is done.\n\nYou\'re probably wondering why we need a damn shrink ray to kill that doofus Higgle, right? Well, we don\'t. Call this a pet project of mine. You\'re gonna go back into those fields, find the B-33 Shredder and beat it around a couple of times. Once the pilot is dead, it should automatically begin shrinking, just pick it up!\n\nDo. NOT. DAMAGE. IT\n\nJust wanted to make clear, after you beat it up real good, you\'ll use the shrink ray, pocket it up, and come back to me. While you cause this commotion, I have a friend of mine finding the location of their boss.','Steal B-33 Shredder and bring it back to Senior Foreman Nazz Firecracker at Powder Town in Stonetalon Mountains.','Remember this! It won\'t stay shrunk for a long time, so hurry it up!','Quick take it out and place it on the ground.\n\n<Nash grins.>\n\nFinally got my own shredder.',60871,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2150,1001,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60872,1,60873,1,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61024, 40641);
replace into creature_involvedrelation	(id, quest) values (61024, 40641);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60871,31202,'Auto Shrunken B-33 Shredder',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61037, 60871, -100, 0, 1, 1, 0);

replace into item_template values
 ('60872', '4', '2', 'Firecracker Trousers', 'Said to be Nazz\'s backup pair.', '9535', '2', '0', '1', '5468', '1367', '7', '-1', '-1', '26',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '7', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '77', '0', '0', '0',
 '0', '0', '0', '9138', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '60', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60873', '4', '1', 'Powder Town Sash', '', '16787', '2', '0', '1', '2084', '521', '6', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '0', '0', '0',
 '0', '0', '0', '21360', '1', '0', '0', '-1', '0', '-1', '21345', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- Lighting the Oilmaster
delete from quest_template where entry = 40642;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40641,40642,2,406,23,20,0,0,'Lighting the Oilmaster','Right. While you were gone a friend of mine discovered the location of Higgle. And before you say it, yes, he\'s at the top of the stupid building. I had a hunch too, don\'t be a smartass about it.\n\nHiggle reminds me of our dark past bub, his stupid bossing around should end here. But, I know I am sending you on a pure suicide mission, you don\'t have to do it if you don\'t want to do it. But after all you\'ve done, I am more than sure you will.\n\nKid, I\'m proud I got an employee such as you. Stay on your toes, during your many, many trips to the oil fields they should be very alert right now. Humor this old Goblin, after Higgle\'s blood is spilled spare any who mean no harm, perhaps some of them will see reason and simply leave or seek a home in the union.\n\nWhatever your choice might be, do this one last job for me.','Kill Oilmaster Higgle Wirefuse and bring his head to Nazz at Powder Town in Stonetalon Mountains.','Goblin on Goblin, I wonder if this is also in our nature, $N.','Astounding work $N.',60874,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,2500,1001,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61024, 40642);
replace into creature_involvedrelation	(id, quest) values (61024, 40642);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60874,40134,'Higgle Wirefuse\'s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61036, 60874, -100, 0, 1, 1, 0);

-- A Rat Among Them
delete from quest_template where entry = 40643;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40643,2,406,26,20,0,0,'A Rat Among Them','KABOOM!\n\nOh, sorry to startle you bub. What\'s up? Here to see the BOMB, right. Man, I tell you, this puppy got the power of the sun in it! For real, that\'s what Nash said and Nash is always saying the truth!\n\n Speaking of true things. One of the bruisers said there\'s a kobold among the Venture Co and he\'s their Overseer. Can you imagine that? A kobold, the Overseer.\n\n<Blammo laughs hysterically>\n\nI need to see this with my own eyes, but I can\'t leave the bomb! Say, won\'t you go kill that guy if he\'s real and bring me his candle?','Bring Vermintooth\'s Candle back to Fusemaster Blammo at Powder Town in Stonetalon Mountains.','You need to take candle!','You took it! You took the candle! He was real.\n\nKABOOOOOOOM\n\nSorry about that, my excitement is as explosive as this bomb.',60875,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2250,1001,175,0,0,0,0,0,0,0,0,0,6049,1,60876,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60962, 40643);
replace into creature_involvedrelation	(id, quest) values (60962, 40643);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60875,1119,'Vermintooth\'s Candle',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61028, 60875, -100, 0, 1, 1, 0);

replace into item_template values
 ('60876', '4', '1', 'Fusemaster Mitts', '', '18858', '2', '0', '1', '3192', '798', '10', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '-6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '0', '6', '0',
 '0', '0', '0', '9399', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- Siphoning Oil
delete from quest_template where entry = 40644;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40644,2,406,25,20,0,0,'Siphoning Oil','Not sure what these guys are planning to do here but they\'re missing a great thing.\n\nOil. Funny isn\'t it? The Venture Co. are here for oil and they are clearly salvaging it. Someone should tell them that they\'re also salvaging it for us.\n\nSomeone, someone who will be paid handsomely if he/she won\'t ask any dumb questions should go and thank them for it while also grabbing what actually is owned by Powder Town.\n\nGot all that or do I gotta draw it for you?\n\nI need 6 barrels.','Bring 6 Barrels of Blacksand Oil back to Head Technician Klazfit at Powder Town in Stonetalon Mountains.','I hope your back holds kid.','Ah so someone did go and collect, great, great, this should turn a good profit.',60877,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,1750,1001,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60961, 40644);
replace into creature_involvedrelation	(id, quest) values (60961, 40644);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60877,40136,'Barrel of Blacksand Oil',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010932, 3, 23556, 'Blacksand Oil', 0, 4, 1, 43, 2010932, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010932,60877,-100,0,1,1,0);

-- Favouring the Drunk
delete from quest_template where entry = 40645;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40645,2,406,20,15,0,0,'Favouring the Drunk','Huh?\n\nWhat do you want, ugly? Want a piece of Gig, EH?\n\nCome here! Why you little, don\'t dodge!\n\n<Gig falls on his face.>\n\nHuh? Where in the blazes am I, and who are you? More importantly, got anything to drink? Ah, screw you then pal. Can\'t a goblin catch a break every now and then? I got some great important news for the law in this town if I were to be offered a cold one.','Bring Cheap Beer to Gig in Powder Town.','What?','Oy! Oh, ale? Cheapskate. Meh, thanks, kid.',19222,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,75,1001,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60967, 40645);
replace into creature_involvedrelation	(id, quest) values (60967, 40645);

-- Least Paranoid Goblin
delete from quest_template where entry = 40646;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40645,40646,2,406,23,20,0,0,'Least Paranoid Goblin','<hic> ... listen up kid, I hear stuff. A lot of stuff <hic>, people ignore ol\' Gig because he\'s an alc- alco- because he drinks too much! But I drink and I know stuff, get it? Anyway, I was outside the inn yesterday drinking and I heard one of them two boys talking about sabotaging the bomb and blow us all up!\n\nIt\'s the golden honest truth my friend, go tell Mort, he should do something about <hic> it!\n\n<Gig falls on his face.>\n\nOy, what you looking at bub, you want a piece of the champ?','Speak with Security Office Mort Tozzlefume in Powder Town about Gig Xevno\'s suspicions.','Yeah?','Sheesh Gig, not again. Sorry about that kid, Gig\'s a special sort. Great when he\'s sober, but he hasn\'t been sober once ever since we came here. His paranoia took over. Nobody\'s blowing us up, don\'t worry about nothing.\n\nHere\'s something for the trouble.\n\nGolddammit Gig.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,100,1001,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60967, 40646);
replace into creature_involvedrelation	(id, quest) values (60970, 40646);

-- Knowledge on Withering
delete from quest_template where entry = 40647;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40647,2,406,25,20,0,0,'Knowledge on Withering','Shadow welcomes you, $N. My name is Artemus and I\'ve traveled long and far from Hillsbrad Foothills to do business with the Goblins of Powder Town. They are very unique to call them so. Madmen that would do anything for their goals and even for someone of my condition, this is very exciting!\n\nI used to study herbology in Dalaran when I was younger, regretfully I was nowhere near my home when the plague struck and there we have it. I won\'t bore you with a soapy story of how I came to be undead and how much I hate myself or whatever others say. I\'m quite happy with my condition, I finally have the time to experience and learn everything I want to.\n\nI have traveled all this way to continue my studies, more specifically in decay. The local ancients in the Charred Vale have become withered, and tortured.\n\nBring me one of their Decaying Roots, it shall prove useful.','Gather the Decaying Roots for Artemus Halloway at Powder Town in Stonetalon Mountains.','Have you found their twisted forms?','These will do perfectly!\n\nYou have my appreciation, this will surely be very useful.',60878,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2100,1001,100,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60964, 40647);
replace into creature_involvedrelation	(id, quest) values (60964, 40647);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60878,1464,'Decaying Roots',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4028, 60878, -45, 0, 1, 1, 0),
(4029, 60878, -55, 0, 1, 1, 0);
-- Add the following items to Deathcaller Aisha's sell list for 'HONORED' reputation requirement
replace into item_template values
 ('60879', '4', '2', 'Centaur Stompers', '', '25709', '2', '0', '1', '22500', '5622', '8', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '12', '4', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '82', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '45', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60880', '4', '3', 'Packrunner Harness', '', '27363', '2', '0', '1', '35000', '8624', '5', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '16', '5', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '244', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '100', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60881', '4', '1', 'Windwatcher Sash', '', '17218', '2', '0', '1', '12500', '3119', '6', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '7', '5', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '0', '0',
 '0', '0', '0', '9415', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80942, 60879, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80942, 60880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80942, 60881, 0, 0, 0, 0);

update item_template set required_reputation_faction = 93 where entry in (60879,60880,60881);
update item_template set required_reputation_rank = 5 where entry in (60879,60880,60881);
-- Add the following items to Deathcaller Aisha's sell list for 'REVERED' reputation requirement
replace into item_template values
 ('60882', '2', '2', 'Magram Windstriker', '', '21112', '3', '0', '1', '92500', '23308', '15', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '100',
 '2', '71', '92', '0', '5', '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21430', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60883', '4', '4', 'Gauntlets of the Khan', '', '33868', '3', '0', '1', '42500', '10635', '10', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '3', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '402', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '45', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60884', '2', '15', 'Ceremonial Magram Dagger', '', '22248', '3', '0', '1', '150000', '35629', '13', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '0',
 '0', '49', '89', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7574', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80942, 60882, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80942, 60883, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80942, 60884, 0, 0, 0, 0);

update item_template set required_reputation_faction = 93 where entry in (60882,60883,60884);
update item_template set required_reputation_rank = 6 where entry in (60882,60883,60884);
-- Add the following items to Deathcaller Aisha's sell list for 'EXALTED' reputation requirement
replace into item_template values
 ('60885', '2', '1', 'Dar\'kar of the Third Khan', 'The mighty long-axe once wielded during the time of the third khan.', '22114', '4', '0', '1', '450000', '49205', '17', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '26', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3600', '0',
 '0', '148', '224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '120', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80942, 60885, 0, 0, 0, 0);

update item_template set required_reputation_faction = 93 where entry in (60885);
update item_template set required_reputation_rank = 7 where entry in (60885);
-- Add the following items to Earthcaller Jalyssa's sell list for 'HONORED' reputation requirement
replace into item_template values
 ('60899', '4', '1', 'Grips of the Unified Storm', '', '17178', '2', '0', '1', '10000', '2407', '10', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '5', '5',
 '0', '0', '0', '14799', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60900', '4', '2', 'Warleader Sash', '', '27579', '2', '0', '1', '15000', '3678', '6', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60901', '4', '3', 'Centaur Skullcap', '', '27774', '2', '0', '1', '25000', '6087', '1', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '9', '4', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '198', '0', '0', '0',
 '0', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '60', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
 
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80941, 60899, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80941, 60900, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80941, 60901, 0, 0, 0, 0);

update item_template set required_reputation_faction = 92 where entry in (60899,60900,60901);
update item_template set required_reputation_rank = 5 where entry in (60899,60900,60901);
-- Add the following items to Earthcaller Jalyssa's sell list for 'REVERED' reputation requirement
replace into item_template values
 ('60902', '2', '4', 'Gelkis Earthbinder', 'In harmony with the earth.', '19703', '3', '0', '1', '125000', '31245', '21', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6',
 '0', '0', '0', '9314', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60903', '4', '0', 'Ceremonial Centaur Ring', '', '14438', '3', '0', '1', '55000', '13699', '11', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9335', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60904', '4', '4', 'Maraudine Oath Pauldrons', '', '26875', '3', '0', '1', '40000', '9208', '3', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '407', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '80', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80941, 60902, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80941, 60903, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80941, 60904, 0, 0, 0, 0);

update item_template set required_reputation_faction = 92 where entry in (60902,60903,60904);
update item_template set required_reputation_rank = 6 where entry in (60902,60903,60904);
-- Add the following items to Earthcaller Jalyssa's sell list for 'EXALTED' reputation requirement 
replace into item_template values
 ('60905', '2', '10', 'Batu\'kar of the Second Khan', 'The staff of earth, once wielded during the time of the second khan.', '20316', '4', '0', '1', '250000', '62106', '17', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '121', '209', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25',
 '0', '0', '0', '25111', '1', '0', '0', '-1', '0', '-1', '18378', '1', '0', '0', '-1', '0', '-1', '18384', '0',
 '0', '0', '-1', '0', '-1', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '120', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80941, 60905, 0, 0, 0, 0);

update item_template set required_reputation_faction = 92 where entry in (60905);
update item_template set required_reputation_rank = 7 where entry in (60905);
-- ADD THE FOLLOWING ITEMS INTO PTR
replace into item_template values
 ('60907', '4', '1', 'Windbinder Gloves', '', '19017', '3', '0', '1', '55476', '13869', '10', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '5',
 '0', '0', '0', '14798', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '0', '0', '0', '30', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60908', '4', '4', 'Mantle of Centaur Authority', '', '26894', '3', '0', '1', '74836', '18709', '3', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '549', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '13384', '1', '0', '0', '-1', '0', '-1', '21168', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '80', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60909', '4', '1', 'Dustguider Sash', '', '17218', '3', '0', '1', '57236', '14309', '6', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '9',
 '0', '0', '0', '9315', '1', '0', '0', '-1', '0', '-1', '21620', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '0', '0', '0', '30', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60910', '4', '2', 'Centaur Battle Harness', '', '11382', '3', '0', '1', '123812', '30953', '5', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '16', '4', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '173', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '13679', '1', '0', '0', '-1', '0', '-1', '9141', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '0', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

update item_template set inventory_type = 26 where entry = 60624;

-- Roses are Red, Dragons are Blue...
delete from quest_template where entry = 40648;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40648,2,3,44,37,512,0,'Roses are Red, Dragons are Blue...','<The small whelpling flutters his wings and tries to escape as you approach.>\n\nNo! No hurt!\n\n<It pauses and looks up with wide eyes.>\n\nNo ogre. No dark dwarf. You good? You help? Yes? Please! Up ramp. Family, brood family. Mind control! Tyrant. Cave. Teleport, crystal, cave! Jewel control. Jewel mind control, jewel mind control!\n\n<It hops up and down in a panic.>\n\nKill! Get jewel! Asza reward. Asza reward!','Follow the whelpling\'s instructions as best you understand them, and bring him the jewel!','<It lets out a distressed mewling.>','<The whelpling flaps its wings excitedly and bounces around.>\n\nHero! Hero $c! You not kill many brood family? No? Only tyrant?',60886,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60887,1,60888,1,60889,1,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60945, 40648);
replace into creature_involvedrelation	(id, quest) values (60945, 40648);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60886,13496,'Jewel of Draconic Guile',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60911, 60886, -100, 0, 1, 1, 0);

-- replace into item_template values
 -- ('60887', '4', '2', 'Inlaid Wristwraps', '', '24190', '2', '0', '1', '10240', '2560', '9', '-1', '-1', '40',
 -- '0', '0', '-1', '0', '0', '0', '0', '0', '0', '1', '0', '4', '2', '0', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 -- '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 -- '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 -- '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '7', '0', '0', '0',
 -- '0', '1', NULL);

-- replace into item_template values
 -- ('60888', '4', '3', 'Whelpling Tiara', '', '26307', '2', '0', '1', '28040', '7015', '1', '-1', '-1', '40',
 -- '0', '0', '-1', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '5', '6',
 -- '7', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '202', '0', '0', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 -- '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 -- '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '60', '0', '0', '0', '0', '26', '0', '0', '0',
 -- '0', '1', NULL);

-- replace into item_template values
 -- ('60889', '4', '1', 'Speckled Sapphire Sash', '', '26270', '2', '0', '1', '8728', '2182', '6', '-1', '-1', '40',
 -- '0', '0', '-1', '0', '0', '0', '0', '0', '0', '1', '0', '6', '5', '7', '5',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 -- '0', '0', '0', '9396', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 -- '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 -- '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 -- '0', '1', NULL);

-- The Shadowforge Menace
delete from quest_template where entry = 40649;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40649,2,3,39,35,0,0,'The Shadowforge Menace','Well met, $r. I have a mission to test your skills, and prove your mettle to the Kargath Expeditionary Force. Make no mistake, your performance will make itself known to not just us, but our brothers in Orgrimmar as well.\n\nSo. Assuming you won\'t flee with your tail between your legs, head to the dwarven fortress to the north east. You will notice it jutting out of the land like a boil, ready to be lanced. Decimate the denizens there. Return when you have slain the bulk of their forces.','Slay 12 Shadowforge Warriors and 8 Shadowforge Chanters for Warlord Goretooth at Kargath in the Badlands.','Have you made any progress, $r?','Well done, I have not expected you back so soon, or back at all in fact.',0,0,0,0,0,0,0,0,2743,10,2742,8,0,0,0,0,0,0,3650,2800,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (9077, 40649);
replace into creature_involvedrelation	(id, quest) values (9077, 40649);

-- The Shadowforge Captain
delete from quest_template where entry = 40650;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40650,2,3,40,35,0,0,'The Shadowforge Captain','Have you seen a chicken with its head cut off, $r? It runs around, aimless, panicking, before finally dropping dead. When you head to Angor Fortress, to the north east, strike deep into it. Go for the one who organises them, and the rest who survive will be just as aimless as the beheaded bird.\n\nBarlgruf is his name. He will not be alone, nor will he be accommodating, so strike first and strike hard. Return to me when he lies in a puddle of his own blood.','Slay Captain Barlgruf in Angor Fortress for Warlord Goretooth at Kargath in the Badlands.','Is it done? Is he dead? Or must I find someone more competent to carry out the task?','Yes, I heard from my scouts the commotion over there. Well done indeed, the Dark Iron Dwarves shall not recover from this wound quickly.',0,0,0,0,0,0,0,0,91766,1,0,0,0,0,0,0,0,0,6650,2800,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (9077, 40650);
replace into creature_involvedrelation	(id, quest) values (9077, 40650);

update quest_template set requiredraces = 434 where entry = 40650;

-- A Heart of Stone
delete from quest_template where entry = 40651;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40651,2,3,39,33,0,0,'A Heart of Stone','I get really tired sometimes of working on rocks, you know? And then, something comes along that really blows your socks off! Quite literally sometimes when it comes to engineering, but...\n\n<He coughs awkwardly and wipes the sweat from his brow.>\n\nListen! The dwarves in Angor Fortress? They have begun automating their golem protectors recently. I don\'t know exactly how they do it! I witnessed one zapping the chest of the big statue and it came to life right there and then! Can you believe it?\n\nI need that zap-o-matic thermojigger, or whatever it is! Find it, please, and bring me a few of their hearts to play with while you\'re at it, yes?','Acquire the Golem Heart Starter and three Life-Forged Hearts from Angor Fortress for Lucien.','Have you had any success? I can\'t wait to tinker with those hearts!','Oh my word they are heavy! How did you carry them all this way? Well done, well done indeed!',60890,1,60891,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5500,2800,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (2920, 40651);
replace into creature_involvedrelation	(id, quest) values (2920, 40651);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60890,24730,'Golem Heart Starter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60891,7841,'Life-Forged Heart',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010935, 3, 23790, 'Secured Angor Chest', 0, 4, 1, 43, 2010935, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010935,60890,-100,0,1,1,0);

replace into creature_loot_template values
(2723, 60891, -100, 0, 1, 1, 0);

-- Eyes on the Prize
delete from quest_template where entry = 40652;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40652,2,3,37,28,0,0,'Eyes on the Prize','Ah, a moment of your time please, $n?\n\nYes, yes, I know who you are. I was planning on discussing this issue with Senator Redstone, since he appears to have a passing interest in the goings on in the Badlands. But since you have fortuitously come to me, perhaps you will listen to my request.\n\nMy brother is part of an expeditionary party down there, you see. A prospector, but he has his mind set on ridiculous fairy tales and is chasing legends. He has lost sight of what is important! There is much wealth and knowledge to be gained from scratching the surface of the earth, never mind delving into its depths.\n\nSeek out the digsites in the northern part of the Badlands. Beware, I think the Dark Iron Dwarves are excavating there and are unlikely to enjoy onlookers. Come back when you have a nice collection of artefacts.\n\nOh, and $n? If you can\'t pick them up from the ground, feel free to take them directly from their hands.','Gather 8 dusty relics from the Angor Digsite in the Badlands for Senator Ryedol in Ironforge.','How goes the search, $n?','What beautifully dull looking objects. This is all you found...? Hmm... very well.',60892,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3000,47,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61051, 40652);
replace into creature_involvedrelation	(id, quest) values (61051, 40652);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60892,9110,'Dusty Relic',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60907, 60892, -45, 0, 1, 1, 0);

-- Digging a Little Deeper
delete from quest_template where entry = 40653;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40652,40653,2,3,41,32,0,0,'Digging a Little Deeper','<He massages his temples and looks awfully exasperated.>\n\nFrankly, I was not sure I had to spell it out so clearly. I want the best of the relics here. The real findings from the digsites. Not old pieces of pottery and... whatever these are. Go back to that digsite. Find their leader, for he will surely preside over the more prestigious treasures. Take, steal, whatever you have to do, to bring back something actually worthwhile to me.\n\nJust do be careful, I hear the lead archaeologist there is a rather powerful spellcaster. I am sure that is no trouble for one of your stature though, correct $n?','Recover a more valuable artefact from the leader of the Angor Digsite in the Badlands for Senator Ryedol in Ironforge.','<He barely looks at you as you approach.>','Ah, now that is more like it! Did you have to kill... actually, no, let us not discuss that here. Perhaps over an ale later on? Hmm? Or do you prefer rum?',60893,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3400,47,200,0,0,0,0,0,0,0,0,0,21151,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61051, 40653);
replace into creature_involvedrelation	(id, quest) values (61051, 40653);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60893,7572,'Pristine Relic',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60908, 60893, -100, 0, 1, 1, 0);

-- Glittering like Gold
delete from quest_template where entry = 40654;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40654,2,3,41,32,0,0,'Glittering like Gold','The coin is much larger than any coin you have seen before, and quite a bit heavier. It appears to have someone\'s head engraved in the surface, but is too covered in muck and dust to be made out clearly.\n\nRubbing some dust off the surface, the material seems to get shinier and shinier. Is this gold?','Show the coin to someone in Ironforge who knows about these types of relics.','Hmm? What are you coming to me with this time, $n?','<His eyes widen and he quickly fishes into his pockets, extending out a handful of golden coins.>\n\nTake them. A good find, a good find indeed.\n\n<He begins to beckon to the surrounding guards. This seems to be an offer you can\'t refuse...>',60894,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20000,1800,47,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_involvedrelation	(id, quest) values (61051, 40654);

update quest_template set requiredraces = 589 where entry = 40654;

REPLACE INTO item_template VALUES
(60894, 12, 0, 'Dusty Coin', '', 2624, 1, 2048, 1, 0, 0, 0, 32767, 589, 10, 10, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 40654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_loot_template values
(60907, 60894, 5, 0, 1, 1, 0);

-- Scaling the Ridge
delete from quest_template where entry = 40655;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40655,2,3,43,36,0,0,'Scaling the Ridge','I am sure it goes without saying, I have no great love for little young creatures. I have nothing but contempt for humans, for example, and their little pets.\n\n\<He sneers beneath his mask.>\n\nBut I have recently been made aware of an encampment in Lethlor Ravine, and the skinned corpses of countless whelplings thrown into the sun to rot. The Dark Iron Dwarves once again. Now, why would anyone set up a guarded camp to slaughter whelplings and drakes, if not to harvest something important? I do not particularly care what they hope to achieve, but if we strike now before they are more fortified, we will cut off this venture at the knees.\n\nFind this base of operations, and slay the dwarves you find within.','Slay the Shadowforge Dwarves in Scalebane Ridge, hidden within Lethlor Ravine in the Badlands, once complete, return to Lexlort in Kargath.','Has the camp been torn apart yet?','Hmm, this encampment sounds like it is being built more quickly than I anticipated. Perhaps this is urgent indeed.',0,0,0,0,0,0,0,0,60905,6,60904,6,60903,6,0,0,0,0,0,3600,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (9080, 40655);
replace into creature_involvedrelation	(id, quest) values (9080, 40655);

-- Bane of Scalebane
delete from quest_template where entry = 40656;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40655,40656,2,3,44,38,0,0,'Bane of Scalebane','Perhaps I should apologise for not being as informed as I would have liked. Had I known how established this camp already was, I would have tasked an assassination of their leader.\n\nActually, perhaps you are ardent for blood and glory. Head back into that camp, find their leader, and kill him. Not a complicated task, but one that may be more dangerous than before. He will surely be prepared for this, given your previous efforts.','Slay Kegdesh Foulmantle in Scalebane Ridge for Lexlort at Kargath in the Badlands.','Yes?','Excellent work indeed, $n. I will ensure your name is glorified for your grisly work, here.',0,0,0,0,0,0,0,0,60906,1,0,0,0,0,0,0,0,0,12000,4400,76,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (9080, 40656);
replace into creature_involvedrelation	(id, quest) values (9080, 40656);

update quest_template set type = 1 where entry = 40656;

-- Scalebane Ridge
delete from quest_template where entry = 40657;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40657,2,3,43,38,0,0,'Scalebane Ridge','<He throws up his hand to halt your approach.>\n\nThat is close enough. And speak quietly, lest you irk us with your prattle of adventure and questing...\n\nActually, I do have a request. Scalebane Ridge, heard of it? No? Lethlor Ravine, then? No? The Badlands? You are a truly a dense one...\n\nI need you to find the encampment known as Scalebane Ridge. It is a new base of operations for the Dark Iron Dwarves in that area, and their hunting of the whelplings in the area gives me a very bad feeling about what they could be used for. In any case, better safe than sorry. Head over there, and slaughter their hunters.','Slay the Shadowforge Dwarves in Scalebane Ridge, hidden within Lethlor Ravine in the Badlands for Senator Barin Redstone in Ironforge.','Make it quick.','Ah, yes, a suitable conclusion to a necessary task.',0,0,0,0,0,0,0,0,60903,6,60904,6,60905,6,0,0,0,0,0,3600,47,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (1274, 40657);
replace into creature_involvedrelation	(id, quest) values (1274, 40657);

-- The Head of the Hunters
delete from quest_template where entry = 40658;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40658,2,3,44,38,0,0,'The Head of the Hunters','Before you run off like a fool, I have one more task to add. This Scalebane Ridge, it has not cropped up out of nowhere. I would bet my large fortunes that there is a lieutenant of some sort leading the operations.\n\nI want him dead. Certainly taking him out of the picture will impede all the work that goes on there, hopefully indefinitely. I trust you have a few friends that may help you with such a task? Good, go. I will compensate you appropriately.','Slay Kegdesh Foulmantle in Scalebane Ridge for Senator Barin Redstone in Ironforge.','This had better be good news, or I\'m calling the guards.','Somewhat impressive, though I suppose it speaks of your general demeanor that I was rather expecting failure. Here. Take these coins.',0,0,0,0,0,0,0,0,60906,1,0,0,0,0,0,0,0,0,12000,4400,47,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (1274, 40658);
replace into creature_involvedrelation	(id, quest) values (1274, 40658);

update quest_template set type = 1 where entry = 40658;

-- A Razor's Edge
delete from quest_template where entry = 40659;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40659,2,3,40,30,512,0,'A Razor\'s Edge','The knife embeds itself into the palm at the slightest press. Truly this could cut through almost any living tissue, but the handle is awkward and heavy. Holding it up, the sun glints across the pristine surface. Perhaps someone interested in survival techniques could make use of this beauty.','Find someone interested in the knife, perhaps one keen on survival.','Hail, adventurer! I see you are a capable... hmm? What do you want?','Oh my, oh my! No, this isn\'t a survival knife, this is a skinning knife. It\'s obvious, see, hold it like this and… there you go. Perfectly crafted that is, not sure I\'ve seen anything like it before. Hold onto it, I suspect it will serve you well.',60895,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1800,0,0,0,0,0,0,0,0,0,0,0,60896,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_involvedrelation	(id, quest) values (718, 40659);

update quest_template set requiredraces = 589 where entry = 40659;

REPLACE INTO item_template VALUES
(60895, 12, 0, 'Razor-Sharp Knife', '', 1845, 1, 2048, 1, 0, 0, 0, 32767, 589, 10, 10, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 40659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_loot_template values
(60903, 60895, 0.5, 0, 1, 1, 0);

-- replace into item_template values
 -- ('60896', '2', '15', 'Shadowforge Skinner', '', '20430', '3', '0', '1', '67528', '16882', '13', '-1', '-1', '44',
 -- '0', '0', '-1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1500', '0',
 -- '0', '30', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 -- '0', '0', '0', '24591', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 -- '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 -- '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '45', '0', '0', '0',
 -- '0', '1', NULL);

-- Controlling Sailors
delete from quest_template where entry = 40660;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2,objectivetext3) values (0,40660,2,1519,14,8,0,0,'Controlling Sailors','The life of a Petty Officer is much akin to herding sheep. I am in charge of keeping my men in control, and while that is easy on a ship, when docked in Stormwind it can be -very- difficult to have my attention on all of them at once.\n\nThey are spread around the city, sight-seeing, and no doubt getting quite drunk.\n\nI could use a favor, if you don\'t mind. There are three sailors that I know of in the city, Hylreth, Brewen, and Pardol. Find them, and find out what exactly it is they are up to, just make sure they are not in any trouble is all, for my sake.','Find, and speak with the Kul Tiran Sailors sight-seeing Stormwind City to make sure they are not up to any shenanigans. Once spoken with, return to Petty Officer Milldough at the Kul Tiran Embassy in Stormwind Harbor.','Any luck finding them all?','Hmm, well, that is not all bad, some fighting will certainly need to be discussed with the Admiral, but otherwise I expected much worse...\n\nHere, take this silver, as trouble for running around the city.',0,0,0,0,0,0,0,0,60395,1,60396,1,60397,1,0,0,0,0,225,910,1011,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Check on Sailor Hylreth','Check on Sailor Brewen','Check on Sailor Pardol');

replace into creature_questrelation		(id, quest) values (60929, 40660);
replace into creature_involvedrelation	(id, quest) values (60929, 40660);

REPLACE INTO creature_template values
(60395, 328, 0, 0, 0, 0, 'quest_40660_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60396, 328, 0, 0, 0, 0, 'quest_40660_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60397, 328, 0, 0, 0, 0, 'quest_40660_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- A Sailors Love
delete from quest_template where entry = 40661;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40661,2,1519,10,5,0,0,'A Sailors Love','Oh, it has been a long, long time since I have been in the city of Stormwind, what seems like a life in itself!\n\nAround three years ago I traveled to this city with the fleet on other business and met a rather charming, and mysterious woman named \'Charys Yserian\'. Never since has a woman left such an enchanting impression upon me, and I feel as though I am squandering my time stuck here on the coast with menial jobs unable to see her.\n\nI ask of you to help, mainlander, it will be a few days until I get some free time, and I would like to make an impression... If she can remember me.\n\nTravel to the florist Bernard Gump, he runs a shop called \'Fragrant Flowers\' in the canals between Old Town and Trade District, buy a Red Rose and deliver it to Charys, word has it she runs a shop in the Mage Quarter now.','Buy a rose on behalf of Sailor Borus and deliver it to Charys Yserian in Stormwind City.','Yes?','A rose? Why, isn\'t this something else..\n\nFrom the Sailor Borus?\n\n<The woman would let out a soft snicker, smirking openly.>\n\nI remember the name, and that Kul Tiran man well, I never assumed him such a romantic.',3419,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,310,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60931, 40661);
replace into creature_involvedrelation	(id, quest) values ( 1307, 40661);

update creature_template set npc_flags = 7 where entry = 1307;

-- Charys' Response
delete from quest_template where entry = 40662;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40661,40662,2,1519,10,5,0,0,'Charys\' Response','Who would suspect a Kul Tiran Sailor to show so much affection? Those that many call crass, blunt, and overly loud at that.\n\nHe has surpised me, in a rather nice way, to be remembered after such a long time really is a compliment.\n\nHere, I prepared a letter to him, and -just- for him, do not think to pry it open, my magic will know if you do.\n\n<She gives a wicked stare, and lets out a laugh to ease her pretend tension.>\n\nTake it to the Sailor, and let him know his actions are appreciated.','Bring Charys\' Response to Sailor Borus at the Kul Tiran Embassy in Stormwind Harbor.','Yes?','<Sailor Borus would let out a loud, and heavy sigh of relief.>\n\nI can\'t thank you enough for this, so much time spent worrying, at the least I was able to finally do something!\n\nHere, for the cost of the rose, I forgot, and some bit extra for doing this on my behalf.',60897,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60897,1,600,110,1011,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values ( 1307, 40662);
replace into creature_involvedrelation	(id, quest) values (60931, 40662);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60897,3023,'Charys\' Response',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Embassy Blues
delete from quest_template where entry = 40663;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40663,2,1519,10,5,0,0,'Embassy Blues','All this time stationed around and yet we hardly have any ale to tide over the boredom.\n\nSay mainlander, you must have freedom to walk the streets of the city without a job looming over your head, how about a favor?\n\n We are currently busy with tasks during the day but we could use some loosening up during the night if you catch my drift.\n\nHead into the city, it should be ripe with ale, find me 3 Flask\'s of Port, that should do quite well.','Find 3 Flask\'s of Port for Salir Valia at the Kul Tiran Embassy at Stormwind Harbor.','So, you find the Port?...\n\nLike the ale.','Ahh, this is the good stuff, well, from one sailor to, whatever you are mainlander, thanks a bunch.',2593,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,200,210,1011,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60933, 40663);
replace into creature_involvedrelation	(id, quest) values (60933, 40663);

-- Protecting Aerie Peak
delete from quest_template where entry = 40664;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40664,2,440,46,40,0,0,'Protecting Aerie Peak','We live in harmony here with nature, to let our gryphon\'s grow strong and roam wild.\n\nI have seen to watching our borders and have noticed the stunning growth of the Silvermane population. The wolves have become more and more aggresive as their territory expands and now they are at our doorstep more often than ever before.\n\nWe will need to cull their numbers, lest they begin to strike at us or kill our roaming gryphon. You can find the Silvermane wolves all across the Hinterlands, bring me fourteen of their pelts as proof.','Bring 14 Silvermane Pelts to Claira Kindfeather at Aerie Peak in The Hinterlands.','Any luck in your hunting $N?','You\'ve done well, your work will certainly go a long way in halting their aggresion and lowering the chances of any potential hostile run-ins. The Wildhammer thank you for the effort.',60898,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4000,4550,471,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (11812, 40664);
replace into creature_involvedrelation	(id, quest) values (11812, 40664);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60898,3594,'Silvermane Pelt',12,1,2048,1,-1,-1,1,14,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(1096, 2923, -72, 0, 1, 1, 0),
(1097, 2924, -72, 0, 1, 1, 0),
(1094, 2925, -72, 0, 1, 1, 0),
(921 , 2926, -72, 0, 1, 1, 0);