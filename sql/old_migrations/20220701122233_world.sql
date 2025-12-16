-- Fix faction:
update creature_template set faction = 371 where entry in (60810,60811,60851);
update creature_template set faction = 57 where entry = 60812;

-- new GO THE OLD CHURCH OF WESTFALL IS CLOSED:
REPLACE INTO gameobject_template VALUES
(2010892, 5, 24305, 'THE OLD CHURCH OF WESTFALL IS CLOSED', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- quest 40255 fix objectives:
update quest_template set objectives = 'Report to Watch Paladin Janathos at Sorrowguard Keep in Swamp of Sorrows.' where entry = 40255;

-- The Garrison Armory Disaster
delete from quest_template where entry = 40428;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40428,2,4,54,45,0,0,'The Garrison Armory Disaster','Hey you, do you think you can help?\n\nThe Garrison Armory is nothing more than a trogg infestation. A trogg infestation that claimed the lives of twelve workers. It was one of the last dangers we ever expected to face, but when they came in, they came in fast.\n\nThe dead need to be avenged, and the mine needs to be cleared out for our own security. The miner\'s and I have collected enough coin to pay for someone to do the job right, go in there and clean it out good, don\'t show them mercy.','Slay 10 Boulderclaw Tunnelers, 8 Boulderclaw Geomancers, 8 Boulderclaw Bashers, and 6 Boulderclaw Ambusher\'s for Foreman Tanoth at the Garrison Armory in Blasted Lands.','Has the infestation been cleansed?','The dead will not be forgotten, but at the least we have avenged their deaths. Thanks again for everything that you have done.\n\nTake this coin, it is from all of us.',0,0,0,0,0,0,0,0,60838,10,60839,8,60842,8,60840,6,0,0,10000,4850,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60855, 40428);
replace into creature_involvedrelation (id, quest) values (60855, 40428);

update creature_template set  script_name = 'npc_foreman_tanoth' where entry = 60855;

-- Additional notes: Upon quest completion, have random Nethergarde Miner's (5996) near the player say the following lines.
-- "Thank you $C"
-- "You've made our lives much easier now."
-- "Light bless you."
-- "You stuck it to those blasted Troggs."

-- Recovering Armory Supplies
delete from quest_template where entry = 40429;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40429,2,4,54,45,0,0,'Recovering Armory Supplies','The Garrison Armory is a place Nethergarde has stored extra supplies for some time now, and before long there will not be anything left if the troggs trample, and destroy it all.\n\nI need you to go in there, and recover atleast ten Garrison Armory Supply Caches, that way when this mess is over, and the dead are buried, we can return to work, and still have the tools to do so.\n\nVenture inside, and see if you can recover them for me.','Collect 10 Garrison Supply Caches within the Garrison Armory for Foreman Tanoth at the Garrison Armory in Blasted Lands.','Have you recovered the Caches?','<Foreman Tanoth lets out a heavy sigh of relief.>\n\nWell, that gives me some breathing room. It seems like you got to the Caches before the troggs mindlessly trampled over them, thanks for the hard work, I\'m sure it wasn\'t an easy task.',60627,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,4850,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60855, 40429);
replace into creature_involvedrelation (id, quest) values (60855, 40429);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60627,8928,'Garrison Supply Cache',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010892;
replace into gameobject_template values
(2010892,3,24112,'Garrison Supply Cache',0,4,1,43,2010892,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010892;
replace into gameobject_loot_template values
(2010892,60627,-100,0,1,1,0);

-- Dreadmaul Skull Bounty
delete from quest_template where entry = 40430;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40430,2,4,54,45,0,0,'Dreadmaul Skull Bounty','Ogres, oh how I hate em! If it aint demons then it\'s ogres!\n\nThe Dreadmaul came with the orcs during the First War, and they\'ve been a sore on these lands ever since they arrived. They are responsible for a lot of the dead and they need to be dealt with.\n\n We currently have a bounty on their skulls, bring me thirty of them, and I\'ll give you something worth your time $c.\n\nYou can find the Dreadmaul to the west, and southwest, goodluck!','Collect 30 Dreadmaul Skulls from Dreadmaul Ogres in the Blasted Lands for Harguf at Nethergarde Keep.','You got them skulls I asked for?','Ahh, someone of action I see, you remind me of a young Harguf, bashin\' skulls and the like, here, as I promised.',60628,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4800,61,200,0,0,0,0,0,0,0,0,0,60629,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60795, 40430);
replace into creature_involvedrelation (id, quest) values (60795, 40430);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60628,1273,'Dreadmaul Skull',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60629', '2', '5', 'The Skull Smasher', '', '11271', '2', '0', '1', '192656', '48164', '17', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '14', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '112', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values
(5974,60628,-90,1,1,1,0),
(5975,60628,-90,1,1,1,0),
(5977,60628,-90,1,1,1,0),
(5978,60628,-90,1,1,1,0);

-- Shadowsworn Pendant Bounty
delete from quest_template where entry = 40431;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40431,2,4,54,45,0,0,'Shadowsworn Pendant Bounty','Lookin\' for some work eh? Well we got a bounty on those Shadowsworn cultist types if you\'re interested. Not sure when they started coming around, but more and more of em been gathering over the last couple months.\n\n Now I don\'t know a thing about dark magic, but it certainly isn\'t good! If you don\'t know where to look, search in the south, and southwest, you\'ll find them quick!\n\nCollect me twenty of their pendants, and come back, I\'ll see to it that you get something worth the effort.','Collect 20 Shadowsworn Pendant\'s from Shadowsworn in the Blasted Lands for Harguf at Nethergarde Keep.','Any luck on collecting them pendants?','Well, look at that, you do some good work, well, as I promised, here you are.',60630,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60631,1,60632,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60795, 40431);
replace into creature_involvedrelation (id, quest) values (60795, 40431);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60630,609,'Shadowsworn Pendant',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60631', '4', '1', 'Riftwatcher Gloves', '', '35545', '2', '0', '1', '31820', '7955', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60632', '4', '2', 'Riftseeker Gloves', '', '14603', '2', '0', '1', '37368', '9342', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '13', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '93', '0', '0', '0',
 '0', '0', '0', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values
(6004,60630,-100,1,1,1,0),
(6006,60630,-100,1,1,1,0),
(6009,60630,-100,1,1,1,0);

-- The Smasher and the Trampler
delete from quest_template where entry = 40432;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40432,2,4,54,45,0,0,'The Smasher and the Trampler','The Garrison Armory is a disaster, many of our miners have been slain, and troggs run loose destroying our progress.\n\nIf work is to ever continue there, we must do more than kill some troggs, we must cut the head off the beast, and slay their leaders.\n\nThe troggs that took over the Garrison Armory go by the name \'Boulderclaw\' and are led by two big monsters named Kroshmak and Gorlush.\n\nTravel into the depths of the mine to the west, and slay their leaders, bring me one of their claws as proof.','Gather the claw\'s of Gorlush the Trampler, and Kroshmak the Smasher in the Garrison Armory for Commander Baelos at Nethergarde Keep.','Have you avenged the dead, has the mine been reclaimed?','You have done Nethergarde a great service, I must thank you for the hard work. Without you, who knows how long we would have had to wait until we could flush them out.',60633,1,60634,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5200,61,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60793, 40432);
replace into creature_involvedrelation (id, quest) values (60793, 40432);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60633,1499,'Claw of Gorlush',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60634,1498,'Claw of Kroshmak',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 60843 where entry = 60843;
update creature_template set loot_id = 60844 where entry = 60844;

replace into creature_loot_template values
(60844,60633,-100,1,1,1,0),
(60843,60634,-100,1,1,1,0);

-- Report from Burnside
delete from quest_template where entry = 40433;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40433,2,4,45,45,0,0,'Report from Burnside','Nethergarde is an isolated, and rather desolate place. We rely on a large garrison to help stem the tide of a potential demonic invasion, should such an occasion ever occur.\n\nThe soldiers under my command have homes and families, and morale here is paramount. I rely on my sergeants to give me a situation report on the status of those beneath me.\n\nAs of current the only one I am waiting from is from Sergeant Burnside, would you do me a favor, and collect it from him? You can find him somewhere outside the gate, he is probably with his troops.','Find Sergeant Burnside and collect his report, deliver the Report from Burnside to Commander Baelos at Nethergarde Keep.','Have you found Sergeant Burnside yet?','<The Commander would take some time to look over the situation report.>\n\nI see, well thanks again for your work, I don\'t have all day to look for everyone, take some silver for the trouble.',60635,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,850,61,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60793, 40433);
replace into creature_involvedrelation (id, quest) values (60793, 40433);

update creature_template set script_name = 'npc_sergeant_burnside' where entry = 60792;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60635,3020,'Report from Burnside',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Suppressing the Dreadweaver's
delete from quest_template where entry = 40434;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40434,2,4,54,45,0,0,'Suppressing the Dreadweaver\'s ','It has come to my attention that a dark magic has been growing in power within the region. Our Analyser Wigglestip has documented an extensive amount of magic being introduced into the area.\n\nThere is no doubt that the Shadowsworn would be the ones utilizing such forces. Those that gather around the Altar of Storms are to blame, and our reports only confirm that.\n\nI need someone to dispatch of the Dreadweaver\'s that spread the corruption. Who knows what plans they have in motion, but I do not intend to sit around to find out.','Slay 8 Shadowsworn Dreadweaver\'s for Commander Baelos at Nethergarde Keep.','The defense of Nethergarde requires us to be steadfast.','I must commend you for your work, I am sure many of those here are relieved to have one less threat be waiting at the doorstep.\n\nI have gathered a suitable reward for the work you have put in, may it help you on your journey.',0,0,0,0,0,0,0,0,6009,8,0,0,0,0,0,0,0,0,2500,4750,61,250,0,0,0,0,0,0,0,0,0,13446,2,60636,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60793, 40434);
replace into creature_involvedrelation (id, quest) values (60793, 40434);

replace into item_template values
 ('60636', '4', '3', 'Helm of Nethergarde', '', '15811', '2', '0', '1', '63508', '15877', '1', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '12', '5', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '251', '0', '0', '0',
 '0', '5', '0', '9142', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '60', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Genetic Alteration Anomaly!
delete from quest_template where entry = 40435;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40435,2,4,53,47,0,0,'Genetic Alteration Anomaly!','The energy radiating off of the Dark Portal is sheerly astounding, and it\'s given me so many research opportunities that I do not know where to start! I was employed here as an analyst to watch the ever shifting arcane magic within the region, and its incredibly unstable, so unstable infact that it has warped the boars close to the portal itself, turning them into \'Helboar\'!\n\nI know it sounds like something straight out of fantasy!\n\nI need you to get me a Pristine Helboar Brain, to see just how much the creature has been altered by the intense energy of the Dark Portal.','Collect a Pristine Helboar Brain for Engineer Wigglestip at Nethergarde Keep.','Twenty eight, carry the seven, account for arcane disturbances... Oh- it\'s you, have you had any luck?','Ahh, this is a fine specimen, take long to find?',60637,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60794, 40435);
replace into creature_involvedrelation (id, quest) values (60794, 40435);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60637,10923,'Pristine Helboar Brain',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5993,60637,-40,1,1,1,0);

-- Finding Private Holson
delete from quest_template where entry = 40436;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40436,2,4,54,45,0,0,'Finding Private Holson','Hey, you there, I need your help.\n\nAbout a week ago on one of our patrols we ended up being attacked by a group of ogres, these ogres were fierce enough to make us retreat. During the struggle one of my Private\'s was captured by the Dreadmaul.\n\nI don\'t know where they have taken him, but I want you to find him, I can\'t risk any more of my soldiers on such a mission.\n\nIf I was you I would search their camps, both to the west, and southwest, he may be in one of them.','Find Private Holson in the Blasted Lands.','Yes?','<The Corpse of the soldier remains lifeless, battered and bruised it would appear that the body was beaten mercilessly. An abrasion can be seen upon the neck, where a medallion or necklace was torn off.>',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2150,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60792, 40436);
replace into creature_involvedrelation (id, quest) values (60862, 40436);

-- Finding Private Holson II
delete from quest_template where entry = 40437;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40436,40437,2,4,54,45,512,0,'Finding Private Holson II','<The corpse of the soldier appears to not have any marks of identity, you are sure that the mark on the neck is indicative of an amulet being removed, there is no doubt that the identification of this soldier is in the hands of one of the nearby ogres, you feel obligated to retrieve it, and return it to Sergeant Burnside at Nethergarde Keep.','Retrieve Holson\'s Amulet from the nearby ogres and return it to Sergeant Burnside at Nethergarde Keep.','Have you found anything, or any clues?','<Sergeant Burnside would let out a quiet sigh>\n\nI feared it would have come to this, it always hurts to lose someone, especially those under your command. I will forever wonder if there is more I could have done to save a life.\n\nThank you $C, for risking your own safety to let us know the truth.\n\nTake this amulet, I am sure Holson would respect it being in your hands after delivering this news.',60638,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3950,61,150,0,0,0,0,0,0,0,0,0,60639,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60862, 40437);
replace into creature_involvedrelation (id, quest) values (60792, 40437);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60638,2624,'Holson\'s Amulet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60639', '4', '0', 'Holson\'s Amulet', '', '2624', '2', '0', '1', '24216', '6054', '2', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values
(5977,60638,-30,1,1,1,0),
(5978,60638,-30,1,1,1,0);

-- Fel Energy Irregularities I
delete from quest_template where entry = 40438;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40438,2,4,54,45,0,0,'Fel Energy Irregularities I','Why, you wouldn\'t happen to have some spare time would you?\n\nThe master of this tower has been hard at work and has given me the task of gathering a report from Engineer Wigglestip. Sadly to say, I haven\'t had the opportunity to leave just yet, nor do I know how to find our gnomish friend!\n\nDo you think you could speak with Wigglestip and gather the report from him? Once you\'ve obtained it, you can bring it to Watcher Mahar Ba at the top of the tower.','Speak with Engineer Wigglestip and gather his report, bring it to Watcher Mahar Ba.','Yes, can I help you?','So that is why you are here, this is the report from Wigglestip yes?\n\n<Mahar Ba would take the report, beginning to read it with caution.>\n\nInteresting...',60640,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,650,61,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60791, 40438);
replace into creature_involvedrelation (id, quest) values (5385, 40438);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60640,7743,'Engineer Wigglestip\'s Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_engineer_wigglestip' where entry = 60794;

-- Fel Energy Irregularities II
delete from quest_template where entry = 40439;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40438,40439,2,4,54,45,0,0,'Fel Energy Irregularities II','Well, this news certainly reinforces my assumptions, and what I have been studying. The Blasted Land\'s has become even more unstable, the energies within the region are beginning to grow in power.\n\nI have been preparing a report that I need delivered to my superior\'s in the Kirin Tor, and I need you to deliver it at once. Communication at such a distance is impossible with the raging storms so I am relying on you.\n\n Travel to Dalaran at once, and deliver this report to Archmage Ansirem Runeweaver.','Travel to Dalaran, and deliver the Sealed Nethergarde Report to Archmage Ansirem Runeweaever.','Yes?','Ahh yes, I sensed that you would be coming, I can practically feel the energy from the letter you carry.\n\n<Upon taking the report, Ansirem Runeweaver would read with caution.>\n\nI see.\n\nSo it is going as predicted, it would appear we may need to be more hands on to manage the growing instability within the Blasted Lands, let us hope there is no outside interferance that is causing the increased magical irregularities.',60641,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60641,1,0,2650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5385, 40439);
replace into creature_involvedrelation (id, quest) values (2543, 40439);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60641,3018,'Sealed Nethergarde Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Fel Energy Irregularities III
delete from quest_template where entry = 40440;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40439,40440,2,4,54,45,0,0,'Fel Energy Irregularities III','It would appear that fel energy has indeed begun to ripple across the Blasted Lands, sending the region into a swirl of irregularities, and unstable conditions. Let us hope this is simply caused from the Dark Portal itself, and not its reactivation.\n\nIt will take many more of our kin to keep everything under control.\n\nNow then, I am asking you to deliver an important letter, one that is magically sealed, breaking it, will destroy the parchment.\n\nI trust that you will do for the good of the Kirin Tor, and for the Alliance itself.\n\nMake sure this reaches Mahar Ba, so that he may begin the neccesary tests and preparations.','Return to Nethergarde, and deliver the Magically Sealed Dalaran Report to Watcher Mahar Ba.','Have you travelled to Dalaran, and spoken with Ansirem Runeweaver?','It is as I feared, the magical energies are that of fel.',60642,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60642,1,0,2650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (2543, 40440);
replace into creature_involvedrelation (id, quest) values (5385, 40440);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60642,15274,'Magically Sealed Dalaran Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_watcher_mahar_ba' where entry = 5385;

-- Fel Energy Irregularities IV
delete from quest_template where entry = 40441;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40440,40441,2,4,54,45,0,0,'Fel Energy Irregularities IV','The Riftwatchers and myself have much work to do in our studying now that we know what is happening. I will need you to assist and gather some items from the demons nearest to the Dark Portal.\n\nFrom the Felguard Sentry, and Felhounds, we will need to analyze to see if these demons are fresh from the portal, in doing so we need specific items.\n\nFrom the Felguard\'s, gather Felguard Cuffs, from the Felhounds, gather Felhound Claws.\n\nOnce they are obtained, return them to me, at once, three of each should suffice.','Gather 3 Felguard Cuffs, and 3 Felhound Claws for Watcher Mahar Ba in Nethergarde Keep at the Blasted Lands.','Have the items been recovered yet $C?','Good work, now, let us see what mysteries these may contain.',60643,3,60644,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5385, 40441);
replace into creature_involvedrelation (id, quest) values (5385, 40441);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60643,18959,'Felguard Cuff',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0),
(60644,1499,'Felhound Claw',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(6011,60643,-80,1,1,1,0),
(6010,60644,-80,1,1,1,0);

-- Fel Energy Irregularities V
delete from quest_template where entry = 40442;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40441,40442,2,4,60,45,0,0,'Fel Energy Irregularities V','We have spent many months studying and preparing for the future, and it appears the future may be upon us sooner then we had realized.\n\nThere is one I have not spoken with for a long, long time. An old friend who once studied within the Kirin Tor, lost to the ways of demonic, and dark magic.\n\nI will simply say that he owes me a favor, and I ask of you to reach him, so that he may answer my questions about the Dark Portal and the irregularities of the magic in the region.\n\nTravel to the Southwest, and venture within the Tainted Scar, find Daio the Decrepit, an old warlock who resides there, ask him if he knows anything, I would suggest bringing a friend, or recruiting mercenaries, it is a dangerous place there.','Travel to the Tainted Scar, and speak with Daio the Decrepit.','Yes?','So.. Mahar Ba sent you, did he?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5385, 40442);
replace into creature_involvedrelation (id, quest) values (14463, 40442);

-- Fel Energy Irregularities VI
delete from quest_template where entry = 40443;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40442,40443,2,4,60,45,0,0,'Fel Energy Irregularities VI','Heh.. He has a question, does he?\n\n<The old, withered man lets out a crooked laugh, a wiry smirk resting upon his aged features.>\n\nI haven\'t spoken to Mahar Ba in a long, long time, if he wants information, than I need something done, favor or no favor!\n\nIf you want to know the truth, than I require something from you.\n\nWithin the Tainted Scar lies a secretive race of demon, the Dreadlord, I have been meaning to practice all sorts of magic and I need a singular heart. Bring me a Dreadlord Heart, and I shall tell you what I know.','Slay a Dreadlord within The Tainted Scar, and bring his Heart to Daio the Decrepit.','Yes yes yes, do you have my heart?','A Dreadlord Heart, oh how I desired, and needed one. You\'ve done me a real favor, I shall answer your question.',60645,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6450,61,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (14463, 40443);
replace into creature_involvedrelation (id, quest) values (14463, 40443);

update quest_template set type = 1 where entry = 40443;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60645,3320,'Dreadlord Heart',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(8716,60645,-20,1,1,1,0);

-- Fel Energy Irregularities VII
delete from quest_template where entry = 40444;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40443,40444,2,4,60,45,0,0,'Fel Energy Irregularities VII','So, he desires to know about the Dark Portal, and the influx of fel energy? The demon\'s have been gathering for some time around the Tainted Scar, and have been using it as a safe haven close to The Dark Portal.\n\nWith the increase of Fel Energy, there is no doubt that they have plans for the future. This future though, may not come for some time given what I have heard.\n\nGo to Mahar Ba, and tell him to gather the best of his kin, and to prepare himself, time ticks slowly.\n\nNow, begone, I have repaid his favor.','Return the news to Watcher Mahar Ba at Nethergarde Keep.','Yes?','<Watcher Mahar Ba would look on with a slightly concerned look.>\n\nWe must begin to prepare, and keep the magical energies stable, you have given us a great deal of information, and without you we would have been unable to figure out these clues and unearth the answers we need for our future.\n\nThe Kirin Tor thanks you greatly for what you\'ve done, please, take one of these rewards, it is the -least- we can for how much trouble you have saved us.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7850,61,750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60646,1,60647,1,60648,1,60649,1,0,0,'');

replace into creature_questrelation (id, quest) values (14463, 40444);
replace into creature_involvedrelation (id, quest) values (5385, 40444);

replace into item_template values
 ('60646', '4', '0', 'Kirin Tor Shawl of Potency', '', '24297', '3', '0', '1', '55008', '13752', '16', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '10', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60647', '4', '0', 'Kirin Tor Shawl of Authority', '', '24297', '3', '0', '1', '55008', '13752', '16', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '10', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60648', '4', '0', 'Kirin Tor Shawl of Persecution', '', '24297', '3', '0', '1', '55008', '13752', '16', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '10', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60649', '4', '0', 'Kirin Tor Shawl of Oppresion', '', '24297', '3', '0', '1', '55008', '13752', '16', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '10', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Dominance of the Skies
delete from quest_template where entry = 40445;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40445,2,215,10,5,512,0,'Dominance of the Skies','Hello there traveler, and welcome.\n\nThere is something that I must ask of you to ensure the safety of the wyvern here at the Roost.\n\nWyvern are creatures that roam and explore, it is not something that we can control, though sometimes the wyvern venture to far, and into the claws of Harpy.\n\nThe Windfury Harpy have gotten so bold as to organize scouting groups for wayward wyvern, and already we have lost one this past month, if we are to continue and keep our training, young wyvern safe, then we must take action.\n\nFar to the north, and the north west are Windfury Sorceress and Matriarch, they are the ones that need to be removed, go there, and make certain the welfare of our wyvern.','Slay 10 Windfury Sorceress\' and 10 Windfury Matriarch for Kolgo Highmane at Red Cloud Roost in Mulgore.','Have you had any luck, child?','Your actions have eased this troubled mind. We can now be more free with the wyvern and let them truly grow within this world, and for that, I must thank you.\n\nTake this, as a symbol of my thanks young one.',0,0,0,0,0,0,0,0,2965,10,2964,10,0,0,0,0,0,0,0,740,81,150,0,0,0,0,0,0,0,0,0,60650,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60816, 40445);
replace into creature_involvedrelation (id, quest) values (60816, 40445);

replace into item_template values
 ('60650', '4', '0', 'Highmane Shawl', '', '27673', '2', '0', '1', '856', '214', '16', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', '6', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '0', '3',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- Halting Bristleback Expansion
delete from quest_template where entry = 40446;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40446,2,215,12,7,0,0,'Halting Bristleback Expansion','The Bristleback are a ruthless and uncaring tribe of Quillboar, who expand their territory and domain without care for diplomacy or good will. They have recently attacked Suntail Pass, causing the Spirit Walker\'s that reside here to vacate the cave just to the east.\n\nIn battle they ended up wounding me, luckily Elder Pyrestrider came to my rescue, and we both escaped their wrath.\n\nIf Suntail Pass is to remain a safe haven for travel, and for the Spirit Walker\'s to remain in peace, then the Quillboar must be eradicated.','Slay 10 Bristleback Trappers, 5 Bristleback Boars, and 8 Bristleback Rockshapers for Brave Proudspear at Suntail Pass in Mulgore.','The Bristleback hold incredible disregard for nature, have the Quillboar been dealt with?','With your assistance Suntail Pass is made much safer for travel.\n\nPerhaps now the Quillboar will have learned a lesson, and the Spirit Walker\'s can resume their tasks in peace.',0,0,0,0,0,0,0,0,60849,10,60848,6,60847,8,0,0,0,0,2000,680,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60822, 40446);
replace into creature_involvedrelation (id, quest) values (60822, 40446);

-- Continuing Ceremonies
delete from quest_template where entry = 40447;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40447,2,215,12,7,0,0,'Continuing Ceremonies','The Quillboar expunged us from our sacred cave and vantage points overlooking the expansive Mulgore. It is not the cave itself I am worried about, but many of the ceremonies that must be held in the next few days to help pass the dead into the realm beyond.\n\nLeft behind in the Quillboar\'s rampage are tools, and charms that we will need to reclaim for the upcoming ceremonies, and I need you to get them for me.\n\nI lost the following items just to the east, A Silver Hawk\'s Feather, Ornate Spirit Beads, and the Drum of Passing.\n\nRecover them, and help the dead ease their way to the afterlife.','Collect the Silver Hawk\'s Feather, the Ornate Spirit Beads, and the Drum of Passing for Elder Pyrestrider at Suntail Pass in Mulgore.','Without the proper instruments, we cannot conduct our ancient rites and passages.','I have been expecting you, it seems that you were sent to aid us at a time of dire need. The spirits have sent you to aid me, and now I must aid you for your help.\n\nTake this, on behalf of the Spirit Walker\'s for allowing us to conduct what must be done.\n\nGo now, and walk softly friend.',60651,1,60652,1,60653,1,0,0,0,0,0,0,0,0,0,0,0,0,2000,680,81,150,0,0,0,0,0,0,0,0,0,60654,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60823, 40447);
replace into creature_involvedrelation (id, quest) values (60823, 40447);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60651,28877,'Silver Hawk Feather',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60652,609,'Spirit Beads',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60653,18352,'Drum of Passing',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60654', '4', '0', 'Spiritual Feather', '', '19570', '2', '0', '1', '1228', '307', '12', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21590', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

replace into gameobject_template values
(2010893,3,25452,'Carrying Basket',0,4,1,43,2010893,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2010894,3,25481,'Ceremonial Container',0,4,1,43,2010894,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2010895,3,25492,'Drum of Passing',0,4,1,43,2010895,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010893,60651,-100,0,1,1,0),
(2010894,60652,-100,0,1,1,0),
(2010895,60653,-100,0,1,1,0);

-- A Mother's Concern
delete from quest_template where entry = 40448;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40448,2,45,34,27,0,0,'A Mother\'s Concern','It\'s been a few weeks now since we\'ve had to send Brian away to live with some cousins of mine in the city. It\'s not the safest place, but it\'s much safer then around here, especially with all of the defenders around Gallant Square.\n\nI\'ve had a lot of worries since he left, and I just want to make sure he is okay. I\'ve prepared a lot of things to send to him so he feels a bit more comfortable during his stay, do you mind running them out for me, and making sure he gets them?\n\nYou can find him in Stromgarde, in Gallant Square, the part of the city that is under construction.','Bring the \'Packed Goods for Brian\' to Brian Livingstone at Gallant Square in Arathi Highlands.','Yes, can I help you?','Oh, hello there, this is from mom? I miss her quite a bit, but it\'s nice seeing family! The city is kind of fascinating too.',60655,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60655,1,0,750,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60780, 40448);
replace into creature_involvedrelation (id, quest) values (60782, 40448);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60655,7914,'Packed Goods for Brian',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Protecting the Crops!
delete from quest_template where entry = 40449;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40449,2,45,34,27,0,0,'Protecting the Crops!','Howdy friend!\n\nWe have been dealing with all sorts of problems ever since we first started settling here, from raptor, to giant spider, to ogre!\n\nChaser has done well enough with scaring off the local wildlife but they have just gotten too aggresive as of recently, from trampling on our fields to even fighting with us. It\'s gotten so bad infact I had to send my son into Stromgarde until things calmed down.\n\nIf you could clean up some of the critters, that would go much appreciated for me and my wife. About ten of those Plains Creeper\'s and ten more of the Highland Thrasher\'s should do just fine.','Slay 10 Plains Creeper\'s and 10 Highland Thrasher\'s for Oswald Livingstone at the Livingstone Croft in Arathi Highlands.','Have you had any luck just yet?','Oh, well my my, you\'ve really outdone yourself for us. Perhaps now we can finally get a plentiful harvest in for the season, here, take this, as a token of my thanks, its a spare.',0,0,0,0,0,0,0,0,2563,10,2560,10,0,0,0,0,0,0,0,2400,72,150,0,0,0,0,0,0,0,0,0,60656,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60781, 40449);
replace into creature_involvedrelation (id, quest) values (60781, 40449);

replace into item_template values
 ('60656', '2', '6', 'Livingstone Pitchfork', '', '7464', '2', '0', '1', '43908', '10977', '17', '-1', '-1', '36',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '4', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '0',
 '0', '62', '86', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '85', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

-- Repowering Chaser
delete from quest_template where entry = 40450;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40450,2,45,34,27,0,0,'Repowering Chaser','Say there, you wouldn\'t happen to know anyone that knows a thing or two about engineering, would you? We picked up Chaser from Southshore about a year ago now, from a goblin merchant infact. He\'s been great, but, slowly he\'s been breaking down, or getting kinda slow.\n\nI was told that he would need a backup Gold Power Core at some point, and I think that might be what the issue is. The problem itself though is that we\'re so far out here, and I don\'t really know much about engineering to craft one, or have the resources on hand infact! If you could get one, I\'m sure Chaser would be quite happy.','Collect a Gold Power Core for Chaser at the Livingstone Croft in Arathi Highlands','Beeeeep!','<After inserting the Gold Power Core it takes a moment for Chaser to power up once again, the machine whirrs to life, beeping happily.>',10558,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2250,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60781, 40450);
replace into creature_involvedrelation (id, quest) values (60779, 40450);

update creature_template set script_name = 'npc_chaser' where entry = 60779;

-- To Strike Back : Witherbark Village
delete from quest_template where entry = 40451;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40451,2,45,36,28,0,0,'To Strike Back : Witherbark Village','It has been a while since the Troll Hunter\'s of Stromgarde have had the chance to practice their trade. We have been confined defending our section of the city now for too long, under constant threat.\n\nOur main enemy is biding their time, and gathering their strength. The trolls have been at war with for generations, my fathers, their fathers, and their\'s have fought troll.\n\nWe will strike at them, to show them that Stromgarde will not lay down idle. Far to the east is Witherbark Village, go there, and kill ten Witherbark Shadow Hunters.','Travel to Witherbark Village and slay 10 Witherbark Shadow Hunters for Troll Hunter Penthar in Gallant Square at Stromgarde Keep.','Has the deed been done $C?','You make Stromgarde proud, the less trolls, the better for our ultimate survival.',0,0,0,0,0,0,0,0,2557,10,0,0,0,0,0,0,0,0,0,2275,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60827, 40451);
replace into creature_involvedrelation (id, quest) values (60827, 40451);

-- To Strike Back : Ruins of Zul'Rasaz
delete from quest_template where entry = 40452;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40452,2,45,37,28,512,0,'To Strike Back : Ruins of Zul\'Rasaz','We have received information of a battle that took place in the troll city of Zul\'Rasaz, or what is left of it anyway. Deep within the hills to the north, hidden away is a troll city, destroyed by conflict and time. It would appear the Witherbark fought and defeated the Wildtusk.\n\nGo there, and thin them out so that they cannot harm us down here in Stromgarde.','Travel to the Ruins of Zul\'Rasaz and slay 8 Witherbark Rogues, 10 Witherbark Raiders, and 5 Witherbark Soothsayers for Troll Hunter Penthar in Gallant Square at Stromgarde Keep.','It may be hard to find the pass, but I am sure you will do what is neccesary.','You have done well, much better than I would have expected. Take this, as a thanks.',0,0,0,0,0,0,0,0,91785,8,91784,10,91786,5,0,0,0,0,0,2275,72,150,0,0,0,0,0,0,0,0,0,60657,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60827, 40452);
replace into creature_involvedrelation (id, quest) values (60827, 40452);

replace into item_template values
 ('60657', '2', '0', 'Troll Hunter\'s Axe', '', '19228', '2', '0', '1', '49664', '12416', '13', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '39', '68', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

-- The Boulderfist Outpost
delete from quest_template where entry = 40453;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40453,2,45,34,27,0,0,'The Boulderfist Outpost','The ogre\'s have caused us much headache, and have taken a section of the city from us. The last thing we need is more forces coming from outside of the walls to assist those that are within.\n\nTo the north just outside of the city is Boulder\'gor, a small outpost that is an ogre sanctuary. I need you to go there, and bring the fight to them, so that more do not come pouring into the city.\n\nBring me twenty Boulderfist Truncheon\'s as proof, and Stromgarde shall reward you.','Gather 20 Boulderfist Truncheon\'s for Sergeant Karster in Gallant Square at Stromgarde Keep.','Has the work been done?','The ogre\'s are a mighty foe, you\'ve done excellent work, though I always fear it is never enough, here as I promised.',60658,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2350,72,50,0,0,0,0,0,0,0,0,0,60659,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60788, 40453);
replace into creature_involvedrelation (id, quest) values (60788, 40453);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60658,4663,'Boulderfist Truncheon',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(2562,60658,-90,1,1,1,0),
(2564,60658,-100,1,1,1,0);

replace into item_template values
 ('60659', '4', '3', 'Strom Defender\'s Vest', '', '32360', '2', '0', '1', '29284', '7321', '5', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '14', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '236', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '100', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

-- Farwell Commission
delete from quest_template where entry = 40454;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40454,2,45,34,27,0,0,'Farwell Commission','A few weeks ago I had a ring commissioned from Old Farwell up at the Farwell stead far to the north. Old Farwell was once a prominent, and powerful wizard of the Kirin Tor, one who is now retired.\n\nThe ring is supposed to safeguard against the foul, and dark magic lingering within the city.\n\nYou can find the passage way on the north western corner of the Arathi Highlands leading into the mountains where his Stead is located.','Speak with Old Farwell at the Farwell Stead.','Yes?','Do I know you, is there something that I can help you with?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60788, 40454);
replace into creature_involvedrelation (id, quest) values (91710, 40454);

-- Farwell Commission
delete from quest_template where entry = 40455;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40454,40455,2,45,34,27,0,0,'Farwell Commission','Oh, Sergeant Karster sent you? Well, it\'s good getting some work from time to time, my magical abilities haven\'t been tested for a while now.\n\n<Old Farwell produces a small, ornate ring, with a glowing violet gem.>\n\nThis ring should ward off any magical energies or foul tainting aura. Make sure you give my best to Sergeant Karster.','Return the Farwell Ring to Sergeant Karster in the Gallant Square at Stromgarde Keep.','Yes?','Old Farwell has done a lot for us here, this ring should be just what we need, thanks for delivering it.',60660,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60660,1,0,450,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91710, 40455);
replace into creature_involvedrelation (id, quest) values (60788, 40455);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60660,4663,'Boulderfist Truncheon',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

update creature_template set health_min = 6850, health_max = 7050, rank = 1, dmg_min = 325, dmg_max = 350 where entry = 60720;

-- Gadgetzan Times: READ ALL ABOUT IT!
delete from quest_template where entry = 40456;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40456,2,1519,6,1,0,0,'Gadgetzan Times: READ ALL ABOUT IT!','Hey you, $r! You look like the sort of cultured individual who likes knowing what goes on in the world! Well, I\'m a trainee saleslady for the goblin owned Gadgetzan Times Newspaper! We cover only the biggest and explodiest stories around!\n\nFor just a few silver you will be known as an… ally of Gadgetzan, yes! And with also the useful tips and tricks within the pages, well, just imagine all the profits you can make for such a tiny investment now!\n\n<She waggles a rolled up newspaper towards you.>','Purchase the second edition of The Gadgetzan Times!','Well? Cool, right?','Enjoy, enjoy! I will record your name in our super duper subscriber log!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-2000,100,369,50,0,0,0,0,0,0,0,0,0,60661,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (50760, 40456);
replace into creature_involvedrelation (id, quest) values (50760, 40456);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60661,7596,'Gadgetzan Times Volume II',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50537);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50537, 'SHREDDER TECH\n\nI always thought the name \'Shredder\' was a bit of a poor marketing choice, really. These mechanical machines are worth fifty goblin labourers, and they don\'t always have to shred, oh no! They can saw, rip, tear, shred, grind, smash, crush, the possibilities, Dear Reader, the possibilities are almost endless.\n\nMaybe you\'re a potential investor. Maybe you\'re some hoodwink who wants to rob the glorious oil guzzlers of their fused wiring to sell on the black market. Hey, I don\'t judge. In fact, if you get any, I\'ll pay a good price myself... Either way, here\'s the most recent investors:(PAGE1)', 50538);
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50538, 'Ashenvale, the Warsong Lumber Camp. To see the scale of this operation is a marvel to behold. The entertainment of the Orcs and Elves stabbing each other just on the other side of the river is pretty amusing too.\n\nStonetalon Mountains, the Venture Co. in the Windshear Crag. I mean, yeah, the tree-huggers get another forest chopped down. But who cares, that valley was ugly as sin anyway, looks way better with a bit industrialisation.\n\nStranglethorn Vale, the Venture Co. near Lake Nazferiti. Keeping the geologists hard at work, these beasts rip through the undergrowth to allow the research to continue. Some beautiful crystals I hear they find out there, too.\n\nWestfall? I heard one fancy unit was shipped to somewhere in Westfall, but I\'ve not heard about where it\'s gone to, or who has it. Weird, disappeared into thin air… (PAGE2)', 50539);
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50539, 'THE QUARRY\n\nSo there I was, Dear readers! There I was, taking a tour through the Burning Steppes to visit a colleague in Flame Crest. Let me paint the picture: the sun was high and scorching, the land was black as tar and burning, and the wildlife was equal parts ugly and dangerous.\n\nWhen suddenly, BOOM! The biggest explosion I ever did hear. Made the ground itself pulse, it did. Naturally, I just had to find out what could cause such a thing of beauty. Well, on the horizon I spied a deep green smoke plume coming from a quarry in the Eastern hills. Smell unlike anything I can compare it to, made my nose crinkle and my eyes water. I didn\'t get much closer, but I could see by the entrance to the quarry... those curious Dark Irons were milling about. Guarding the perimeter, shouting at each other in that strange Dwarvern dialect! (PAGE 3)', 50540);
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50540, 'Asking about, apparently there have been a lotta movements in the area, travelling back and forth down the rocky roads. Guess the quarry ain\'t so disused anymore. Question is: what\'s it being used for? That ungodly smell seemed to be novel, no gunpowder there. The explosions seemed more frequent and violent, not just blasting apart rock for minerals. One brave (and equally stupid) goblin tried to meet with the foreman, Bargul, to find out what was going on. She never returned, but honestly, what did she expect to happen?\n\nAll I know is, where there\'s activity, there\'s production. Where there\'s production, there\'s business. And where there\'s business, there\'s gold! Far be it from me to tell you adventurin\' types where to spend your time and effort, but if I were you, I would be having a few words with the dwarves there to find out what\'s going on, and maybe become an early investor! Or at least sell their secrets. To me. Ideally. (PAGE 4)', 50541);
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50541, 'ZEPPELIN ACCIDENTS\n\nIt really is amazing what people will put up with for the sake of saving time and convenience. Now, I may have long since had shares in the Zeppelin transport companies. They are the lifeblood of travel, getting Orcs, Goblins, even colossal Tauren across the continents within days! Anyone smart enough would see this as a worthwhile investment.\n\nWe got ourselves competition now, though. Some upstarts started running air travel all the way to Kargath! That\'s right, the desert dust and winds, the bane of any airship, and these dumbos decided it was the perfect destination to run their routes to.\n\nNeedless to say, the results ain\'t pretty. Day after day we get reports of bodies drying in the desert sun, flung from the decking of the Zeppelins as they careen through the inhospitable winds! There are even reports of crashes and explosions, oh my oh my. (PAGE 5)', 50542);
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50542, 'Say what you want about Goblin engineering, the only fatalities we\'ve had so far on zeppelins were from people thinking they could shave minutes off their journeys by jumping off as we flew over their homes, or the occasionally cheeky mind control magic spell. Which of course, we take zero responsibility for – that much is in the small print when you agree to ride the aircraft.\n\nI don\'t think I need to elaborate. It\'s lunacy to take their transport, stick with the established routes. Stay safe! Stay alive! Give us your custom and not them! (PAGE 6)', 0);

-- Gadgetzan Times: READ ALL ABOUT IT!
delete from quest_template where entry = 40457;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40457,2,1637,6,1,0,0,'Gadgetzan Times: READ ALL ABOUT IT!','Hey you, $r! You look like the sorta cultured individual who likes knowing what goes on in the world! Well, I\'m a professional saleslady for the Gadgetzan Times Newspaper! And you know us goblins, if it ain\'t worth its weight in gold, it ain\'t worth coverin\'.\n\nFor just a few silver you can have your name written down as a supporter of the newspaper, and a friend to goblin business. And with the information inside, you can profit beyond your wildest dreams! All that for such a tiny investment purchase.\n\n<She smirks and holds out the newspaper towards you.>','Purchase the second edition of The Gadgetzan Times!','You\'re interested, I can tell!','Wise purchase, pleasure doin\' business with ya. Your name has been recorded in our subscriber logs.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-2000,100,369,50,0,0,0,0,0,0,0,0,0,60661,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (50530, 40457);
replace into creature_involvedrelation (id, quest) values (50530, 40457);

-- Rival Presence
delete from quest_template where entry = 40458;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40458,2,1637,54,47,0,0,'Rival Presence','Alright $G lad:lassie, the lookout reports just came in. Seems the ol\'brotherhood isn\'t alone outside anymore. The reports indicate that the shadowforge are setting up something at the other side of mountain, a quarry of sorts. What they\'re digging is a mystery though, as nobody goes inside never gets out alive unless they\'re with them.\n\nThat\'s where you come in. Gather your friends or some mercenaries and venture into that quarry, find out what they are digging up out there. Now go!','Find out what\'s being dug up in the Hateforge Quarry.','All attempts to sneak in have failed, their hounds can smell everything.','This... green liquid is what they\'re brewing there? <Overseer opens the flask and takes a sniff.> Och, its quite acidic! This is certainly very concerning, if it the mere smells burns your nose hairs I shudder at the thought what it does to flesh. I will warn the others about this, you\'ve proven yourself to be capable to the brotherhood.',60662,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,34800,5600,59,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (14625, 40458);
replace into creature_involvedrelation (id, quest) values (14625, 40458);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60662,22785,'Hateforge Brew Filled Flask',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60717,60662,-80,1,1,1,0);