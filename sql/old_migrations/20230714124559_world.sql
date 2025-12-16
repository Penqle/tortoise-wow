-- Elvanor Heartsong <Armory Master>, display ID 2244, faction 35, level 61 elite, humanoid, scale 1, quest/gossip flags, gossip text : "My duty is to ensure the safety of our armory. I can also reward those who have been extremely helpful here with powerful armor and weapons."
REPLACE INTO creature_template VALUES
(61607, 2244, 0, 0, 0, 0, 'Elvanor Heartsong', 'Armory Master', 0, 61, 61, 11891, 11891, 0, 0, 3900, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 751, 809, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41517; set @magic_number = 61607;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My duty is to ensure the safety of our armory. I can also reward those who have been extremely helpful here with powerful armor and weapons.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Drape of Nordrassil
delete from quest_template where entry = 41056;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41056,2,616,60,55,0,0,'Drape of Nordrassil','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Drape of Nordrassil, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61753,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41056);
replace into creature_involvedrelation	(id, quest) values (61607, 41056);

replace into item_template values
 ('61753', '4', '0', 'Drape of Nordrassil', '', '23057', '4', '0', '1', '93552', '23388', '16', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '0', '0', '48045', '1', '0', '0', '-1', '0', '-1', '9411', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Deepwood Pipe
delete from quest_template where entry = 41057;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41057,2,616,60,55,0,0,'Deepwood Pipe','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Deepwood Pipe, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61754,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41057);
replace into creature_involvedrelation	(id, quest) values (61607, 41057);

replace into item_template values
 ('61754', '4', '0', 'Deepwood Pipe', 'One puff is enough to knock the user unconcious.', '1611', '4', '0', '1', '204816', '51204', '12', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9458', '0', '0', '0', '3600000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Stagwood Grasp
delete from quest_template where entry = 41058;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41058,2,616,60,55,0,0,'Stagwood Grasp','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Stagwood Grasp, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61755,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41058);
replace into creature_involvedrelation	(id, quest) values (61607, 41058);

replace into item_template values
 ('61755', '2', '13', 'Stagwood Grasp', '', '67801', '4', '0', '1', '286372', '71593', '22', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '45', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '8815', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Nordanaar Guardian Spaulders
delete from quest_template where entry = 41059;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41059,2,616,60,55,0,0,'Nordanaar Guardian Spaulders','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Nordanaar Guardian Spaulders, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61756,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41059);
replace into creature_involvedrelation	(id, quest) values (61607, 41059);

replace into item_template values
 ('61756', '4', '2', 'Nordanaar Guardian Spaulders', '', '29027', '4', '0', '1', '0', '0', '3', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '22', '7', '11',
 '4', '8', '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '138', '0', '0', '0',
 '0', '0', '0', '14027', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '70', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Dreambreeze Cowl
delete from quest_template where entry = 41060;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41060,2,616,60,55,0,0,'Dreambreeze Cowl','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Dreambreeze Cowl, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61757,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41060);
replace into creature_involvedrelation	(id, quest) values (61607, 41060);

replace into item_template values
 ('61757', '4', '1', 'Dreambreeze Cowl', '', '19930', '4', '0', '1', '80752', '20188', '1', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '37', '6', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '79', '0', '0', '7',
 '0', '0', '0', '9408', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '60', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Cloverlink Belt
delete from quest_template where entry = 41061;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41061,2,616,60,55,0,0,'Cloverlink Belt','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Cloverlink Belt, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61758,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41061);
replace into creature_involvedrelation	(id, quest) values (61607, 41061);

replace into item_template values
 ('61758', '4', '3', 'Cloverlink Belt', '', '26947', '4', '0', '1', '105672', '26418', '6', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '17', '4', '14',
 '7', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '231', '0', '0', '0',
 '0', '0', '0', '18185', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '50', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Scythe of the Goddess
delete from quest_template where entry = 41062;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41062,2,3457,60,60,0,0,'Scythe of the Goddess','In your grasp rests the elusive Scythe of Elune, an ancient artifact veiled in mystery and pulsating with unimaginable power. Its journey to this very moment remains an enigma—how it arrived here and why, questions that demand answers. Yet, for now, the imminent priority is to quell the devastation wrought by this extraordinary relic.$B$BSlay Clawlord Howlfang, leader of the worgen in Karazhan. Only by severing his tyrannical grasp over the worgen can you hope to restore order amidst the chaos.$B$BOnce accomplished, seek answers from Lord Ebonlocke about the enigmatic Scythe.','Slay Clawlord Howlfang and report to Lord Ebonlocke.','Yes, mortal? How can I assist you?','The Scythe of Elune... A cursed artifact of profound power, was brought to this sacred ground of Karazhan by one of the Dark Riders—a being bound by both time and shadows. The memory of their arrival, though it feels both recent and ancient, is hazy, for time weaves a tapestry that confounds my mind.$B$BBlackwald, that wretched being reveled in the acquisition of the Scythe. His malevolence knew no bounds, finding delight in the possession of such a powerful relic. The halls of Karazhan resonated with his twisted satisfaction.$B$BDo not dare to even think of using it now. It has been in the possession of a dark power for far too long, and I fear that it would only bring more destruction, even if your intentions are just.',61184,1,0,0,0,0,0,0, 61223,1,0,0,0,0,0,0, 0,0, 0,39300,6550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

update item_template set start_quest = 41062 where entry = 61184;
replace into creature_involvedrelation	(id, quest) values (61255, 41062);
update quest_template set type = 64 where entry = 41062;

-- Scythe of the Goddess
delete from quest_template where entry = 41063;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41062,41063,2,10,60,60,0,0,'Scythe of the Goddess','I wish I could tell you more about it, but alas, in my state, I was unable to procure any meaningful information. Lord Blackwald used it to summon the worgen to Karazhan, and they more or less obeyed his command. $B$BAs for the Dark Riders, they are cursed to be artifact hunters, crafted in the twisted image of the righteous knights by Medivh himself. Though his presence has long faded, these relentless hunters continue their pursuit, tirelessly acquiring treasures for an unknown master.$B$BOh, how I long for the ability to unmask the hidden purpose behind this mysterious relic. However, I offer you a glimmer of hope in your quest. Seek those who, perhaps unwittingly, aided the Dark Riders in their pursuit. Turn your gaze towards my former realm, once known as Great Hamlet, where secrets and whispers intertwine. It is there that your search may bear fruit, as rumors tell of worgen now roaming the kingdom, their presence a testament to a connection with the Scythe.','Find someone in Duskwood who might know more about the Scythe of Elune.','Y-yes?','I beg you, stay away from the Scythe of Elune! It brought doom upon Duskwood when I last touched it. I am haunted by the consequences of that cursed relic. Please, abandon any thought of seeking it. Its power is a poison that twists fate and brings tragedy. Let it remain forgotten, its dark legacy buried in shadow.',61759,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,21300,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61255, 41063);
replace into creature_involvedrelation	(id, quest) values (  288, 41063);

update creature_template set faction = 35 where entry = 288;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61759,61041,'The Scythe of Elune',12,3,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,1);

-- Scythe of the Goddess
delete from quest_template where entry = 41064;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41063,41064,2,10,60,60,0,0,'Scythe of the Goddess','You have it in your possession? No, no, no! It\'s awful, IT should\'ve never been found! The return of the dreaded Dark Riders looms on the horizon, their vengeance seeking to claim my life and unleash ruin upon the entirety of Duskwood!$B$BYet, twisted as it may be, it is still preferable that the Scythe rests in your hands rather than theirs. However, I must confess that my knowledge of this relic is scarce. Although I held it in my grasp for a fleeting moment, I swear upon my fragile existence that I am oblivious to its true nature. I know nothing!$B$BIt was in the desolate depths of the old mine, known as Roland\'s Doom, that fate thrust the Scythe into my trembling hands. Go there, if you must. But be wary- it\'s overrun by worgen, or even darker beings.','Travel to Roland\'s Doom and find any clues about the Scythe of Elune.','I sense the Scythe of my Goddess... Who are you?','l, stand before you, observing the return of the Scythe to me, now wielded by unfamiliar hands. A sense of both relief and concern washes over me, for my spirit could never find solace while this sacred relic remained lost to the ages.$B$BTell me, brave one, how did you come to possess the Scythe?',61759,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,21300,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 288, 41064);
replace into creature_involvedrelation	(id, quest) values (3946, 41064);

update creature_template set npc_flags = 2, faction = 35, script_name = 'npc_velinde_starsong' where entry = 3946;

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020048, 2, 23388, 'Velinde\'s Memory', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_velindes_memory');

-- Scythe of the Goddess
delete from quest_template where entry = 41065;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41064,41065,2,10,60,60,0,0,'Scythe of the Goddess','Dark Riders... Their relentless pursuit was swift, sensing my presence the moment I stepped into Duskwood. Fleeing was futile, they hungered for the power of the Scythe, their insatiable desire driving them forward without respite. I fortified my position, calling upon my loyal worgen companions to stand by my side, yet their might proved overwhelming, and I fell beneath their dark influence. In my final act of defiance, I pierced their heart with my spear, knowing my sacrifice would not be in vain.$B$BAlas, it appears that the Scythe was ultimately retrieved by those malevolent beings. I shudder to contemplate the vile purposes they intended to unleash upon the world with its power. It is a relief to know that the artifact now rests within your hands, for I believe there is still hope that you may wield it with its original purpose.$B$BWait. Do you hear that?','Defeat the Dark Rider.','Something is amiss...','You\'ve seen it.They will not stop until the Scythe is back in their hands. You may run, you may hide, but it is pointless. They will find you.$B$BHowever, there is still a chance.',61759,1,0,0,0,0,0,0, 61608,1,0,0,0,0,0,0, 61759,1, 0,39300,6550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (3946, 41065);
replace into creature_involvedrelation	(id, quest) values (3946, 41065);
update quest_template set type = 1 where entry = 41065;

-- Additional notes: After accepting the quest, spawn a Dark Rider at the following coordinates : Map:0, X:-11141.1318, Y:-1166.9799, Z:42.8755, Orientation:2.7963
-- Upon aggro npc should say:
-- Give up the Scythe, and you may yet be spared.
-- Upon death npc should say:
-- We will find you...
-- This NPC should despawn after 5 minutes if not killed. 

-- Dark Rider(display id 18227, faction 24, level 61 elite, undead, scale 1, weapon 22807, has 32468 hp, 3791 armor, 150 Shadow Resistance, 150 Nature Resistance, 644-803 Damage, casts 11713 every 24 seconds, 25309 every 17 seconds)
REPLACE INTO creature_template VALUES
(61608, 18227, 0, 0, 0, 0, 'Dark Rider', NULL, 0, 61, 61, 32468, 32468, 0, 0, 3791, 24, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 644, 803, 5, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 6, 0, 61608, 0, 0, 0, 0, 150, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20427; set @weapon_1 = 22807; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61608;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30129, 'Give up the Scythe, and you may yet be spared.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30130, 'We will find you...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_scripts where id in (2200035,2200036);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30129, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Rider - Say on Aggro'),
(2200036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30130, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Rider - Say upon Death');

delete from creature_ai_events where id in (2200035,2200036);
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200035, 61608, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200035, 0, 0, 'Dark Rider - Say on Aggro'),
(2200036, 61608, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200036, 0, 0, 'Dark Rider - Say upon Death');

-- Dark Rider
set @creature_entry = 61608;
set @description = ': Dark Rider';
set @spell_list_id = 180217;

set @spellid_1 = 11713; -- Curse of Agony
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 24;
set @delayrepeatmax_1 = 24;

set @spellid_2 = 25309; -- Immolate
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 17;
set @delayrepeatmax_2 = 17;

set @spellid_3 = 0;
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 0;
set @delayinitialmax_3 = 0;
set @delayrepeatmin_3 = 0;
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 0;
set @delayinitialmax_4 = 0;
set @delayrepeatmin_4 = 0;
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Scythe of the Goddess
delete from quest_template where entry = 41066;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41065,41066,2,616,60,60,0,0,'Scythe of the Goddess','I was gifted the Scythe at the Shrine of Mel\'Thandris. Its ability to summon worgen helped me to turn the tide in the fight against corruption of Felwood. Yet, I was losing control of them. I needed help.$B$BI departed from the forests of Ashenvale with a purpose in mind—to seek counsel from the wizard Arugal, who too had called upon the worgen.I yearned to understand the connection between these creatures and the favor bestowed upon them by Elune.$B$BBut... Arugal... dead? Elune\'s tears, the news strikes me with sorrow. In this moment, there is only one person we can turn to, one who possesses the wisdom and knowledge to guide us further. Arch Druid Dreamwind, a scholar of the otherworldly, may hold the key to unraveling the mysteries of our realms and beyond. Seek him out, and recount to him the tale that has befallen me. When I departed Kalimdor, he stood at the forefront of the efforts to heal Nordrassil.','Find Arch Druid Dreamwind in Nordanaar.','Welcome to Nordanaar. How may I assist you?','So this is the fate of sister Velinde. A tragic tale indeed.',61759,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,21300,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 3946, 41066);
replace into creature_involvedrelation	(id, quest) values (61512, 41066);

-- Scythe of the Goddess
delete from quest_template where entry = 41067;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41066,41067,2,2677,60,60,0,0,'Scythe of the Goddess','The name worgen resonates through the echoes of history, evoking memories of ancient times. Eons ago, during the reign of Queen Azshara, her mages delved into forbidden arts, opening portals to realms beyond mortal comprehension.$B$BWorlds of Buring Legion, engulfed by the Emerald Flame, worlds of absolute cold, worlds of inimaginable darkness.$B$BAmong these realms was one known as Vorgendor, world of Blood. The knowledge surrounding it has long faded, concealed in the annals of forgotten lore for good reason.$B$BHowever, in the depths of my ancient wisdom, I can guide you towards a beacon of knowledge. A human mage by the name of Ur dedicated himself to the study of this enigmatic realm. It is said that he penned a tome, a testament to his understanding and exploration of Vorgendor. If the mages of Dalaran are no longer in possession of this invaluable book, I believe it may be found within the expansive library of Lord Nefarius.','Retrieve a copy of "Vorgendor: Myths from the Blood Dimension" from Lord Victor Nefarius.','Yes?','It seems that only a few pages are intact. Shame, as the book will be no use for us in this state.$B$BThere is one other place where such book could be stored, but no one has stepped foot there in many years. Library of Karazhan...',61760,1,61759,1,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,57300,9550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41067);
replace into creature_involvedrelation	(id, quest) values (61512, 41067);
update quest_template set type = 64 where entry = 41067;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61760,1134,'Burnt Copy of "Vorgendor"',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(11583,61760,-100,0,1,1,0);

-- Purple Lotus Collection
delete from quest_template where entry = 41068;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41068,2,2677,60,55,0,1,'Purple Lotus Collection','Purple Lotus is a somewhat common material that we are always using for various purposes. You would be surprised just what you can get done with this herb!$B$BIf you can amass a large bulk of Purple Lotus, we can trade this herb for a single Bright Dream Shard. Bring me eighty Purple Lotus and we can exchange at any time.','Gather 80 Purple Lotus for Tanalla Sagebranch at Nordanaar in Hyjal.','Have you had any luck $c?','Hmm, everything seems to be in order here, your assistance to our efforts is well appreciated, here, take this.',8831,80,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61327, 41068);
replace into creature_involvedrelation	(id, quest) values (61327, 41068);

-- Black Lotus Collection
delete from quest_template where entry = 41069;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41069,2,616,60,55,0,1,'Black Lotus Collection','Black Lotus is a scarce and extremely rare herb that the druids of Nordrassil use for very important purposes. Much of the magic here can be amplified by the addition of its magical properties! Bring me a single Black Lotus, and I will trade you a Bright Dream Shard in exchange at any time.','Gather a Black Lotus for Tanalla Sagebranch at Nordanaar in Hyjal.','Have you had any luck $c?','Hmm, everything seems to be in order here, your assistance to our efforts is well appreciated, here, take this.',13468,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61327, 41069);
replace into creature_involvedrelation	(id, quest) values (61327, 41069);

-- Unhallowed Branches
delete from quest_template where entry = 41070;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41070,2,361,50,46,0,0,'Unhallowed Branches','I have seen the devastation that the corruption of nature can bring. Felwood is a stark reminder of this truth. However, this glade here remains pure, and it is all thanks to Ethwyr.$B$B<The druid pauses, his head bowed in reverence for a moment, before continuing>$B$BHis sacrifice, however, touched only those closest to him. We must honor his legacy by continuing to cleanse Felwood of corruption.$B$BWithin the southwestern reaches of this very forest lies the ancient glade, a place steeped in both beauty and darkness. It is there that you shall face the heart-wrenching sight of crazed treants.$B$BFrom the fallen bodies of these treants, claim six branches tainted by their suffering. Though tainted they may be, these branches possess a latent power. Bring them to me and we shall breathe new life into their corrupted essence.','Bring 6 Unhallowed Branches to Taloras at Talonbranch Glade in Felwood.','Despite the stern decree of Yohan, who forbids us from venturing into the treacherous depths of the Irontree Woods, fate has conspired to bring you, an outsider, to our aid. Bound by the laws of our land, Yohan\'s power wanes in the presence of one untethered to our traditions. Yet, I caution you, for his watchful eyes may still cast their gaze upon our endeavors.','Your act of mercy has granted solace to the tormented treant souls in the Irontree Woods. For that, I am forever grateful.',61761,6,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,0,5200,69,200,0,0,0,0,0,0,0,0,0, 61762,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61149, 41070);
replace into creature_involvedrelation	(id, quest) values (61149, 41070);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61761,928,'Unhallowed Branch',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,2);

replace into creature_loot_template values
(7138,61761,-35,0,1,1,0),
(7139,61761,-35,0,1,1,0),
(7149,61761,-35,0,1,1,0);

replace into item_template values
 ('61762', '4', '1', 'Gladewind Gloves', '', '27602', '2', '0', '1', '18432', '4608', '10', '-1', '-1', '51',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '7', '5',
 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '0', '9358', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Bearing the Corruption
delete from quest_template where entry = 41071;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41071,2,361,52,46,0,0,'Bearing the Corruption','A bear! What creature in the wilds could match its magnificence and dominance? It is no mere coincidence that our druids have long revered this form, receiving blessings from Ursoc and Ursol themselves.$B$BHowever, it greatly pains me to witness these noble creatures succumbing to the fel corruption that plagues these woods. Despite Ethwyr\'s selfless sacrifice, it appears that our attempts to heal them have only brought more suffering to these unfortunate beasts.$B$BTherefore, I beseech you: venture into the woods and bring an end to the suffering of the twenty bears who call these lands their home. It will not be an easy task, but do it for the sake of nature.','Slay 20 Angerclaw Grizzly Bears for Golhine the Hooded in Felwood.','Have you brought peace to these forests?','I find solace in the belief that the spirits of the creatures we have lost in these dark times have found their way back to the Emerald Dream. There, they may roam freely and peacefully with the great bear spirits Ursoc and Ursol, who watch over the natural balance of our world.$B$BDespite the current state of these lands and the suffering that has occurred, I hold onto the hope that in time, the wounds will heal and the forest will once again be a place of harmony and tranquility.',0,0,0,0,0,0,0,0, 8957,20,0,0,0,0,0,0, 0,0, 9000,0,5250,69,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (9465, 41071);
replace into creature_involvedrelation	(id, quest) values (9465, 41071);

-- A Sentinel's Sudden Suspicion
delete from quest_template where entry = 41072;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41072,2,361,52,46,0,0,'A Sentinel\'s Sudden Suspicion','Ishnu-alah, $c. What a favorable event meeting you here. I was sent to Felwood to guard the Talonbranch Glade. However, druid Wildwalker sent me away. I suspect he believes me to be a spy. Ironically, he has now made me into one.$B$BI would like to know why he would object to being guarded, and sending another sentinel would give my concealed intentions away. Would you speak to Wildwalker and find out what is going on? Return to me once you have identified the intentions of his superiors.','Offer your services to the druid Yohan Wildwalker at Talonbranch Glade in Felwood.','Yes, $r?','I suppose I could find some use for you.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,450,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61591, 41072);
replace into creature_involvedrelation	(id, quest) values (61592, 41072);

update creature_template set name = 'Sentinel Briariel' where entry = 61591;

-- A Special Task
delete from quest_template where entry = 41073;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41072,41073,2,361,52,46,0,0,'A Special Task','It is my duty to investigate the mysteries of nature and protect the balance of the forest. However, our current mission has been a failure thus far, and it fills me with anger and frustration.$B$BThe Grove of the Ancients to the southwest, once alive and vibrant, now lays dead and lifeless. Their sacrifice was in vain, unlike that of Ethwyr, who was able to cleanse this settlement of corruption. I need to know why.$B$BOne of our own, Marlonias Shademoon, has been sent to investigate the grove. However, he has yet to return, and knowing his lazy demeanor, he is likely preoccupied with finding new ways to avoid fulfilling his duties.$B$BLocate him and remind him of his responsibilities. He has a mission to fulfill, and I will not tolerate any negligence on his part.','Find Marlonias Shademoon. He has been sent to investigate a Grove of the Ancients in Irontree Woods.','The pain... it\'s unbearable...','Please, help me... I have been ambushed by a group of furbolgs. I cannot fail Yohan...',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,950,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61592, 41073);
replace into creature_involvedrelation	(id, quest) values (61593, 41073);

-- The Stolen Notes
delete from quest_template where entry = 41074;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41073,41074,2,361,52,46,0,0,'The Stolen Notes','Allow me a moment to collect myself.$B$B<The druid pauses, struggling to focus, his injuries clearly affecting him.>$B$BPay no heed to my wounds, they will heal in time. Listen closely. The furbolgs who attacked me not only caused me harm, but also stole my precious notes. I must retrieve them, but my condition prevents me from doing so at the moment. It is imperative that Yohan remains unaware of what has transpired here. Do you understand? Do not reveal to him that I have lost my notes.$B$BSearch for the furbolgs who carried out this attack. I have seen them fleeing towards the east, and may still be encamped in the area. Once you recover my notes, deliver them to Yohan without delay. I must insist that you do not read them, as they contain knowledge that is reserved only for our order.$B$BIf Yohan inquires about me, inform him that I will return soon, but I still have some research to finish. I trust in your discretion.','Return Marlonias\' Notes to Yohan Wildwalker.','Where\'s Marlonias?','He entrusted the notes to YOU? $B$B<Yohan snatches them out of your hands and reads them hastily>$B$BIt\'s truly astounding how careless he can be with valuable research conducted on behalf of the Cenarion Circle. Entrusting it to a mere stranger found wandering in the woods... It\'s clear that he lacks the discernment and expertise required to be a part of our order.$B$BYou are dismissed. Thanks for your assistance.',61763,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,4800,69,250,0,0,0,0,0,0,0,0,0, 61765,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61593, 41074);
replace into creature_involvedrelation	(id, quest) values (61592, 41074);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61763,7798,'Marlonias\' Notes',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7),
(61764,8927,'A Page from Marlonias\' Notes',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,1,'',0,7);
update item_template set start_quest = 41075 where entry = 61764;

REPLACE INTO gameobject_template VALUES
(2020049, 3, 164, 'Druidic Writings', 0, 4, 1, 43, 2020049, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020049,61763,-100,0,1,1,0),
(2020049,61763,-100,0,1,1,0);

replace into item_template values
 ('61765', '4', '3', 'Ironwood Vest', '', '25671', '2', '0', '1', '59032', '14758', '5', '-1', '-1', '51',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '19', '5', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '275', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0', '0', '0', '28', '0', '0', '0',
 '0', '1', NULL);

-- The Felwood Conspiracy
delete from quest_template where entry = 41075;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41073,41075,2,361,54,46,0,0,'The Felwood Conspiracy','You start to carefully scrutinize the pages, scanning each line for any peculiarities or indications of malicious intent.$B$BUpon initial inspection, most of the notes appear to be a detailed and extensive research on the treants\' magical properties. It describes how the old grove of the ancients was desecrated by Skull of Gul\'dan, its corrupting power unmatched by the Ancient\'s desperate attempts to save the woods.$B$BHowever, as you approach the last few pages of the notes, their contents become particularly alarming. They describe how Ethwyr\'s sacrifice, rather than being a tragedy, could be leveraged for their own gains.$B$BThe author of the notes claims that the treant\'s death has caused an unprecedented growth in the surrounding flora, and that this growth could be used to obtain an extraordinary amount of Morrowgrain without raising any suspicion. $B$BSentinel Briariel will want to hear about it. You tear out the page carefully.','Bring the torn out page to Sentinel Briariel.','You have returned! Have you found anything in the Talonbranch Grove?','Morrowgrain? Yes, I\'ve heard of it before.$B$BBut I always assumed it was nothing more than a rumor. However, it seems that there may be more to this mysterious plant than meets the eye.$B$BI\'ve heard whispers that Archdruid Staghelm has been amassing obscene amounts of Morrowgrain for years now. Some say that the plant has sinister properties, and that he has some dark purpose in mind.$B$BWe cannot ignore this. We must get to the bottom of it before it\'s too late. If Staghelm has some nefarious plans, it could put the entire Cenarion Circle at risk.',61764,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,1250,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_involvedrelation	(id, quest) values (61591, 41075);

-- Morrow in Felwood
delete from quest_template where entry = 41076;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41075,41076,2,361,54,46,0,0,'Morrow in Felwood','Confronting Wildwalker with the notes would be pointless, as they do not provide any concrete evidence of Morrowgrain actually being used in Felwood. It\'s all mere speculation at this point.$B$BIf the druids have indeed brought Morrowgrain seeds to Felwood, they would have surely hidden them well. However, I believe that the local birds might hold the key to this mystery.$B$BThe owls in these lands have had to become resourceful in order to survive. If the druids brought Morrowgrain seeds to Felwood, the owls may have stolen some of them for food. $B$BIt\'s not a pleasant thought, but it may be our only hope. We need to search the intestines of local birds for any signs of Morrowgrain seeds. According to the notes, the seeds have a distinct, reddish color. If you find any, bring them to me immediately. It won\'t be easy, but it\'s a risk we have to take if we want to uncover the truth behind this mysterious plant and Archdruid Staghelm\'s obsession with it.','Find a Morrowgrain Seed in the intestines of Felwood owls.','Poor owls. Have you had any luck finding Morrowgrain seeds?','I knew it.',61766,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,4950,69,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61591, 41076);
replace into creature_involvedrelation	(id, quest) values (61591, 41076);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61766,23991,'Morrowgrain Seed',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(7097,61766,-8.8,0,1,1,0),
(7098,61766,-8.8,0,1,1,0),
(7099,61766,-8.8,0,1,1,0);

-- A Sentinel's Rightful Suspicion
delete from quest_template where entry = 41077;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41076,41077,2,361,54,46,0,0,'A Sentinel\'s Rightful Suspicion','Please, bring the notes and the seeds to Shandris Feathermoon. She is the General of the Sentinel Army, and she will know what the next course of action should be. Oh, remember to mention that it was me who helped you.','Bring the seed and the notes to Shandris in the Feathermoon Stronghold.','Yes?','<Shandris glances through the notes, and takes a look at the Morrowgrain Seed.>$B$BAs much as I understand your concern, we must approach this matter with caution. The Cenarion Circle has been a long-standing ally of ours, and their mission is to protect and preserve the natural balance of our world. While their methods may seem mysterious to us outsiders, we must trust that they have the best intentions in mind. I fear that Sentinel Briariel might be a bit... overzealous.$B$BFurthermore, we must not forget that there are greater threats looming over us. The Horde has been encroaching on our lands, my Sentinels mutiny, and we cannot afford to be distracted by more internal disputes. Our resources and attention must be focused on defending our home and our people.$B$BI\'m sorry, but this is not enough. For now, the druids in Talonbranch are free to conduct their research in peace.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3000,0,850,69,250,0,0,0,0,0,0,0,0,0, 61767,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61591, 41077);
replace into creature_involvedrelation	(id, quest) values ( 3936, 41077);

replace into item_template values
 ('61767', '4', '2', 'Feathermoon Runners', '', '6741', '2', '0', '1', '41872', '10468', '8', '-1', '-1', '53',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '11', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '97', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
 
-- Lord Xanvarak, display ID 8611, faction 16, level 63 elite, demon, scale 3.5, (Has 116312 hp, 88441 mana, 4301 armor, 100 shadow resistance, casts 25586 every 8-13 seconds, casts 26048 every 12-18 seconds, casts 30091 on a random target every 5-7 seconds, casts 23426 every 12 seconds, this creature should deal the same damage as Bloodlord Mandokir , set respawn timer of Lord Xanvarak to 21-41 minutes
REPLACE INTO creature_template VALUES
(61609, 8611, 0, 0, 0, 0, 'Lord Xanvarak', NULL, 0, 63, 63, 116312, 116312, 88441, 88441, 4301, 16, 0, 1, 1.38571, 3.5, 20, 5, 0, 3, 1, 2334, 3094, 0, 290, 1, 2500, 2000, 2, 33600, 0, 0, 0, 0, 0, 0, 472, 649, 100, 3, 0, 61609, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 2764783455, 0, 2129921, 0, '');

update creature set spawntimesecsmin = 1260, spawntimesecsmax = 2460 where ID = 61609;

-- Lord Xanvarak
set @creature_entry = 61609;
set @description = ': Lord Xanvarak';
set @spell_list_id = 180218;

set @spellid_1 = 25586; -- Shadow Bolt Volley
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 8;
set @delayrepeatmax_1 = 13;

set @spellid_2 = 26048; -- Mind Blast
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 12;
set @delayrepeatmax_2 = 18;

set @spellid_3 = 30091; -- Flamestrike
set @probability_3 = 100;
set @casttarget_3 = 4;
set @castflags_3 = 4;
set @delayinitialmin_3 = 5;
set @delayinitialmax_3 = 5;
set @delayrepeatmin_3 = 5;
set @delayrepeatmax_3 = 7;

set @spellid_4 = 23426; -- Summon Infernals
set @probability_4 = 100;
set @casttarget_4 = 1;
set @castflags_4 = 4;
set @delayinitialmin_4 = 9;
set @delayinitialmax_4 = 9;
set @delayrepeatmin_4 = 12;
set @delayrepeatmax_4 = 12;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);
-- Copy drop table from Dreadlord Commander.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 30088, 0.01, 0, -30088, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 4625, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 8838, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 10620, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 11732, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 11734, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 12365, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 12684, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 14470, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 14479, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 14484, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 15745, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 15757, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 19232, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 19259, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 11736, 0.0391, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 19230, 0.0391, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 8846, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 11737, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 7909, 0.0783, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 19269, 0.0783, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 11733, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 4500, 0.1, 0, 1, 1, 109);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 7910, 0.1174, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 5758, 0.22, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 10306, 0.32, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 10305, 0.34, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 30080, 0.5, 0, -30080, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 30081, 0.5, 0, -30081, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 4426, 0.62, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 4425, 0.66, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 61197, 0.71, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 13443, 1.44, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 8766, 2.8571, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 13446, 2.86, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 8948, 4.8141, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 14256, 5.0098, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 61198, 6.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 12662, 6.8885, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 14047, 24.775, 0, 1, 2, 0);
-- Add loot 'Bright Dream Shard' on its own loot table with a 100% drop chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 61199, 100, 1, 1, 1, 0);
-- Add loot "Small Dream Shard' on its own loot table with a 100% drop chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 61198, 100, 2, 1, 1, 0);
-- Add Raw Black Truffle to the sell list of 'Stickypaws'.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 0, 4608, 0, 0, 0, 0);
-- Quest Lord Xanvarak, change item requirement to 'Heart of Xanvarak' (Display ID 3320, quest item, stackable to 1, drops from Lord Xanvarak at 100% drop chance).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61609, 61768, -100, 0, 1, 1, 0);
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61768,3320,'Heart of Xanvarak',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);
update quest_template set reqitemid1 = 61768, reqitemcount1 = 1 where entry = 41020;
-- Quest 'The Galak Messenger' (Entry 41053), remove reward item 61517.
update quest_template set rewitemid1 = 0, rewitemcount1 = 0 where entry = 41053;
-- Quest 'Harness of Chimaeran' entry 41052, remove requirement to slay Noxxion (Entry 13282).
update quest_template set reqcreatureorgoid1 = 0, reqcreatureorgocount1 = 0 where entry = 41052;
-- Quest Feeding the Younglings (Entry 41051), change short description to "Bring 20 Chunks of Hippogryph Meat to Velos Sharpstrike at Chimaera Roost Vale in Feralas."
update quest_template set objectives = 'Bring 20 Chunks of Hippogryph Meat to Velos Sharpstrike at Chimaera Roost Vale in Feralas.' where entry = 41051;
-- Item 61733 (Formula: Eternal Dreamstone Shard) add spell 51519 with -1 charges to be consumed on use.
update item_template set spellid_1 = 51519, spellcharges_1 = -1 where entry = 61733;
-- NPC Lataro Swifthoof set scale to 1.35.
update creature_template set scale = 1.35 where entry = 61590;
-- Change display ID of npc 60545 to 8842.
update creature_template set display_id1 = 8842 where entry = 60545;