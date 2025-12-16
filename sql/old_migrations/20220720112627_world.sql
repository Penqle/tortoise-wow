-- Thalassian Diplomacy
delete from quest_template where entry = 40514;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40514,2,1537,10,4,0,0,'Thalassian Diplomacy','Warm greetings friend.\n\nI am Meldralis, a diplomat. I have been sent from the Farstrider Lodge to thank our forever friends, the dwarves, for their hospitality. We are preparing a gift for King Magni and his daughter, Princess Moira.\n\nAlas, that is for Nel\'doriel to explain. He will probably need your aid as well! My task is to give this pamphlet to Illyanah in Stormwind City. The Humans of Stormwind were kind enough to offer us a small place in the Dwarven District, we have called it Little Silvermoon.\n\nYour kindness and help are highly appreciated, friend. May the Eternal Sun guide your steps.','Take Meldralis\'s Pamphlet to Illyanah Dawnstar in Little Silvermoon, Stormwind.','Bal\'a dash.','Ah, you bring news from Lady Meldralis. Much appreciated friend, I am glad to know the diplomatic representative has made it that far through the mountains. I am more than sure she will strengthen the bond.',60753,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60753,1,0,450,269,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60874, 40514);
replace into creature_involvedrelation (id, quest) values (80405, 40514);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60753,7629,'Meldralis\'s Pamphlet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- It broke...
delete from quest_template where entry = 40515;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40515,2,1537,10,6,0,0,'It broke...','I just can\'t seem to get it to work!\n\nI\'ve managed to fix it once as we took it from Silvermoon to Farstrider Lodge. And it worked on the journey here, but I simply can\'t understand what\'s wrong with it! It might\'ve been damaged.\n\nArcane Golems aren\'t an easy thing to build or repair. If only my master would still be alive. Wait, that\'s it! I remember Thalestien, my master gave his notes to a friend of his in Gnomeregan. He was so enthralled by the gnomish inventors that he gave Masey Wirefuse his notes, hoping that the gnomes would at one point improve his work.\n\nSee if you can find her in Tinker Town, I truly hope she survived Gnomeregan, or else I\'m doomed.','Speak to Masey Wirefuse in Tinker Town, Ironforge.','Yes? You may speak.','Hello, hello!\n\nWelcome to Tinker Town, got anything that needs fixing?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,269,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60875, 40515);
replace into creature_involvedrelation (id, quest) values (60872, 40515);

-- Thalestien's Notes
delete from quest_template where entry = 40516;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40515,40516,2,1537,10,6,0,0,'Thalestien\'s Notes','A student of Thalestien? How exciting!\n\nThalestien was not exactly like the rest of the High Elves, he really enjoyed tinkering with gizmos and scraps as much as we did! But his craft also used a hefty amount of the Arcane, which in truth was a very smart choice. It\'s no less to tell that people like him were a true inspiration to Engineering today.\n\nThe Arcane Golems were the product of high ingeniosity, but I\'m afraid Thalestien\'s notes are lost. The last time I had them I was in a small house North West of Brewnall Village, you could try there. Just be aware that Leper Gnomes might guard the area. If you were to get those notes, I believe a new age for Engineering could begin! Working with the High Elves from this aspect would be very exciting.','Find Thalestien\'s notes North West of Brewnall Village for Masey Wirefuse in Ironforge.','Did you find them?','Great, great news $N, I haven\'t seen these in quite a while now!',60754,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,820,269,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60872, 40516);
replace into creature_involvedrelation (id, quest) values (60872, 40516);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60754,7596,'Thalestien\'s Notes',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010914,3,24074,'Elvish Notes',0,4,1,43,2010914,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010914,60754,-100,0,1,1,0);

-- Back to Nel'doriel
delete from quest_template where entry = 40517;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40516,40517,2,1537,10,6,0,0,'Back to Nel\'doriel','A student of Thalestien? How exciting!\n\nThalestien was not exactly like the rest of the High Elves, he really enjoyed tinkering with gizmos and scraps as much as we did! But his craft also used a hefty amount of the Arcane, which in truth was a very smart choice. It\'s no less to tell that people like him were a true inspiration to Engineering today.\n\nThe Arcane Golems were the product of high ingeniosity, but I\'m afraid Thalestien\'s notes are lost. The last time I had them I was in a small house North West of Brewnall Village, you could try there. Just be aware that Leper Gnomes might guard the area. If you were to get those notes, I believe a new age for Engineering could begin! Working with the High Elves from this aspect would be very exciting.','Return to Nel\'doriel in the Mystic Ward, with Thalestien\'s notes.','Hard at work.','You return with the notes! Much appreciated friend. Now I can finally start working on this thing again. I\'m glad Masey would like to help me because this is meant to be a gift for Princess Moira, her own personal bodyguard!\n\n Here this is for you.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,230,350,269,150,0,0,0,0,0,0,0,0,0,60755,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60872, 40517);
replace into creature_involvedrelation (id, quest) values (60875, 40517);

replace into item_template values
 ('60755', '4', '2', 'Elven Repair Gloves', '', '37534', '2', '0', '1', '408', '102', '10', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', '6', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '20', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- The Ramolus Gem
delete from quest_template where entry = 40518;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40518,2,1537,12,7,512,0,'The Ramolus Gem','My trip to Ironforge has been a failure, and truth be told, I don\'t really have the courage to return just yet.\n\nI was ambushed by a group of troggs heading to Ironforge, and I just so happened to drop the most important item on me, The Ramolus Gem. The Trogg that happened to take it was enfused with the latent arcane power of the gem, and now has some ability with magic... Or so I heard.\n\n<Ansela pouts.>\n\nCan you recover it for me by chance? The Trogg named Grash can be found deep in the Gol\'Bolar Quarry.','Recover the Ramolus Gem for Ansela Dawnshield in Ironforge.','Yes, have you had any luck?','<Excitement perks across Ansela\'s face!>\n\nOh, oh thank you! I cannot express my excitement, I never thought I\'d get this back.\n\n I thought I\'d have to go get a stern talking to in Little Silvermoon about my failure. Here, take this, as thanks for helping me out.',60756,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,510,850,269,150,0,0,0,0,0,0,0,0,0,60757,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60877, 40518);
replace into creature_involvedrelation (id, quest) values (60877, 40518);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60756,13496,'Ramolus Gem',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60630,60756,-100,1,1,1,0);

replace into item_template values
 ('60757', '2', '4', 'Dawnshield Mace', '', '40046', '2', '0', '1', '2832', '708', '13', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '13', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '50', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- Drifting Across the Sand
delete from quest_template where entry = 40519;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40519,2,978,46,40,512,0,'Drifting Across the Sand','<The trolls ghostly visage speaks in a broken, howling tone that is hard to understand fully.> I... be lost... Forever wandering across.. the desert to try.. and find a way out.\n\nBut it doesn\'t feel like... there be a way out.\n\nGo to Zul\'Farrak... the place where my body is... and find the Ancient Troll Remains... of myself locked away...\n\nFree me mon, from this... eternal torture...','Venture in Zul\'Farrak, and find the Ancient Troll Remains, return them to Hansu Go\'sha who wanders around the Southmoon Ruins in Tanaris.','<The wind howls across the sand.>','<With the remains close to the spirit, the howling tone becomes more clear.> I can feel the end, it is in sight, my vision is no longer blurred and faded mon, you have shown me the way.\n\n That cursed Zum\'rah and his magic brought me back from my rest, and left me to wander aimlessly.\n\nBut I got no grudges mon, for I am free now.\n\nI will find de way, thanks to you.\n\n<The spirit drops a chained necklace onto the sand below, leaving it as a reward as he collects his remains.>',60758,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2340,3850,0,0,0,0,0,0,0,0,0,0,0,60759,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60856, 40519);
replace into creature_involvedrelation (id, quest) values (60856, 40519);

update quest_template set type = 81 where entry = 40519;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60758,1274,'Ancient Troll Remains',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010915,3,23468,'Ancient Burial Container',0,4,1,43,2010915,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010915,60758,-100,0,1,1,0);

replace into item_template values
 ('60759', '4', '0', 'Southmoon Pendant', '', '32073', '2', '0', '1', '43732', '10933', '2', '-1', '-1', '52',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '10',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

-- Da Unforgiving Lands
delete from quest_template where entry = 40520;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40520,2,440,45,40,0,0,'Da Unforgiving Lands','Ever since we left Zul\'Farrak, hunger and thirst be constant companions for us. Da greedy goblins of Gadgetzan control da Wastes and dey do not see us any different than our Sandfury brethrens.\n\nMon, our village needs ya help. We are starving here. I plead, venture into the desert and find some meat. Meat of da roc, while not tasty, is nutritious enough to keep ya alive. And while ya be out there, gather some hyena skins as well. Hingozu make ya armor for da effort.','Bring 12 Roc Meat and 8 Hyeana Skins to Hingozu at Sandmoon Village in Tanaris.','Do ya have da food and skins?','Thank ya, mon. These supplies won\'t be lasting for long, but they will allow us to live for a few more days at least. Here, take this as a reward mon.',60760,12,60761,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2160,4100,0,0,0,0,0,0,0,0,0,60762,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60751, 40520);
replace into creature_involvedrelation (id, quest) values (60751, 40520);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60760,4112,'Roc Meat',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0),
(60761,4676,'Hyena Skin',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5428,60760,-80,1,1,1,0),
(5429,60760,-80,1,1,1,0),
(5430,60760,-80,1,1,1,0),
(8207,60760,-80,1,1,1,0),
(5427,60761,-80,1,1,1,0),
(5425,60761,-80,1,1,1,0),
(8208,60761,-80,1,1,1,0),
(5426,60761,-80,1,1,1,0);

replace into item_template values
 ('60762', '4', '0', 'Sandwalker Shawl', '', '23101', '2', '0', '1', '24548', '6137', '16', '-1', '-1', '48',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '13', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- Desert Voodoo
delete from quest_template where entry = 40521;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40521,2,440,47,40,0,0,'Desert Voodoo','You. You can help me, us. The ogres of Dunemaul be driving us away from our ancient temples. I will not tolerate them defilin\' our sacred gods and their symbols.\n\nTheir foul warlock and mages tarnish the idols of our gods. Venture sounth, where the Dunemaul reside and slay them. Retrieve three Loa Charms from and bring them to me. We shall unleash their wrath upon dem!','Bring 3 Ancient Loa Charms to Seer Maz\'ek in Sandmoon Village.','Our mad brethren in Zul\'Farrak no longer revere our gods as dey should. Only we can stop the ogres.','Da ogres will fear da might of our gods. Their vengeance be scary, no mercy be shown. Curse de ogres. Theey will learn not to mess with da Sandmoon.',60763,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2040,3500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60752, 40521);
replace into creature_involvedrelation (id, quest) values (60752, 40521);

update creature_template set script_name = 'npc_seer_mazek' where entry = 60752;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60763,31899,'Ancient Loa Charm',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5473,60763,-15,1,1,1,0),
(5475,60763,-15,1,1,1,0);

-- Sandfury Redemption I
delete from quest_template where entry = 40522;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40522,2,440,45,40,0,0,'Sandfury Redemption I','Our tribe... Da Sandfury\n\nWe lost everything. Zul\'Farrak, once a shining jewel of this desert, be ruled by lunatics. Few of us, who be seeing the imminent fall, left the city and settled here. As ya see, there be only a handful. Not enough to stop da so called Chief Sandscalp and his minions.\n\nDa name of the Sandfury Trolls has to be redeemed first. Among people around us, dey need to see that we changed.\n\nWe be in need of a diplomat, a representative. You be da one to fulfill da role. Show dem in Gadgetzan dat da Sandfury are not all crazed bloodrinkers.','Find a person in Gadgetzan willing to help Sandmoon Village.','What\'s up, pal?','The Sandfury have changed and want to cooperate? What do they have to sell then? I guess nothing! My friend, you know, Gadgetzan has its reputation. I cannot just let in some filthy sand trolls here.\n\nUnless they pay.\n\nA lot.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,240,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60752, 40522);
replace into creature_involvedrelation (id, quest) values (7724, 40522);

-- Sandfury Redemption II
delete from quest_template where entry = 40523;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40522,40523,2,440,45,40,0,0,'Sandfury Redemption II','Tell your troll friends that I can - convince - the guards here to let them in for… let\'s say... five hundred gold.\n\nEach.\n\nSorry fella, just can\'t risk the business!','Deliver the message to Seer Maz\'ek at Sandmoon Village in Tanaris.','Have ya speak to da goblins?','Dey be no less insane than our brothers in Zul\'Farrak, mon. Sandmoon be not paying dem, never. If dey want us enemies, so be it.\n\nMy mission still stands.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,240,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (7724, 40523);
replace into creature_involvedrelation (id, quest) values (60752, 40523);

-- Sandfury Redemption III
delete from quest_template where entry = 40524;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40523,40524,2,440,45,40,0,0,'Sandfury Redemption III','If dere is one who could see our struggle, it be Vol\'jin of da Darkspear. Like no otha he be understanding how is it to be outcast and lose da homeland.My kind be not welcome in Horde lands, but maybe ya be able to show our new ways.\n\nTravel to Orgrimmar, and speak to Vol\'jin. Tell him what be happening in Zul\'Farrak and offer our assistance.','Speak with Vol\'jin in Orgrimmar about Sandmoon Village.','I speak for the Darkspear.','I require your assistance in helping Sandmoon Village, brave $c.',0,0,0,0,0,0,0,0,60377,1,0,0,0,0,0,0,0,0,390,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak with Vol\'jin');

replace into creature_questrelation (id, quest) values (60752, 40524);
replace into creature_involvedrelation (id, quest) values (10540, 40524);

update creature_template set script_name = 'npc_voljin' where entry = 10540;

REPLACE INTO creature_template VALUES (60377, 328, 0, 0, 0, 'quest_40524_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into gossip_menu (entry, text_id, condition_id) VALUES (10540, 10540, '0'); 
replace into broadcast_text (entry, Male_Text) values (30031, 'I be Vol\'jin, son of Sen\'jin. It be a long time since we fled our lands of the Darkspear Isles, but here in Durotar we found a new home and future alongside the Horde.\n\nOur tribe be resilient, and no matter how the river flow, the stones remain. Stay away from the Voodoo, and may the Loa forever guida ya steps mon.\n\nFor the Darkspear and for the Horde!');
replace into npc_text (ID, BroadcastTextID0) values (10540, 30031);
update creature_template set gossip_menu_id = 10540 where entry = 10540;

set @gossip_menu_id = 41181; set @magic_number = 30030;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Horde welcomes anyone who does not fit anywhere else. Thrall welcomed the Darkspear in spite of Troll history with the Second Horde. I cannot leave them, my kind, in the desert.\n\nI be not saying they join the Horde yet, but we will help. And stop the madness in Zul\'Farrak.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41180; set @magic_number = 30029;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I see it too. Yet I have trouble believing their intents. Among the few Troll tribes left in Kalimdor, the Sandfury had a terrible reputation, even before Ukorz took over.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41179; set @magic_number = 30028;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We, Darkspear, had to flee our homeland twice. Once, when the Gurubashi drove us from Stranglethorn, and then the naga drove us away from the Isles. We know the feeling of loss.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Of the Sandfury and the Darkspear
delete from quest_template where entry = 40525;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40524,40525,2,440,45,40,0,0,'Of the Sandfury and the Darkspear','Go, speak to the leader of those Sandmoon. Tell them, they have support of the Darkspear, and by extension, of the Horde. I will send my best hunters and scouts there soon. But for now, help them with any matters at hand.','Talk with Champion Taza\'go at Sandmoon Village in Tanaris.','So ya be the new one among us. Maz\'ek told me he sent you to negotiate with Vol\'jin. Were you successful?','That be good. I think. We Sandfury be never open to da outsiders. But these be different times now. As Maz\'ek be sayin\': we have to change or face extinction. I wish I could speak to Vol\'jin myself about our... cooperation. I cannot leave my people yet though. I be needed here. I be needed here as long as Chief Ukorz lives and my people are in danger.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,240,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (10540, 40525);
replace into creature_involvedrelation (id, quest) values (60749, 40525);

-- Plight of the Sandfury
delete from quest_template where entry = 40526;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40525,40526,2,440,48,40,0,0,'Plight of the Sandfury','It pains me much, but my brethren be beyond saving. They do not see the corruption of our tribe. I tried everything. Dat why we had to run. They wont be listening. We got to stop dem.\n\nOutside of Zul\'Farrak proper, many Sandfury Trolls scour the desert, attacking trade caravans and assaulting water towers. I can\'t be risking their influence spreading further, mon.\n\nThin their ranks.','Slay 5 Sandfury Axe Throwers, 5 Sandfury Firecallers and 5 Sandfury Hideskinners for Champion Taza\'go at Sandmoon Village in Tanaris.','Have you finished your... grim task?','It does not bring me joy to hear about de death of my kin. It be necesarry, sadly. It is de only way for Sandfury to survive.',0,0,0,0,0,0,0,0,5646,5,5647,5,5645,5,0,0,0,0,12000,4150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60749, 40526);
replace into creature_involvedrelation (id, quest) values (60749, 40526);

update quest_template set type = 1 where entry = 40526;

-- End Ukorz Sandscalp
delete from quest_template where entry = 40527;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40526,40527,2,978,48,40,512,0,'End Ukorz Sandscalp','It has to be done. Ukorz Sandscalp and his foul right-hand man Ruuzlu have to be stopped.\n\nVenture into our ancient city of Zul\'Farrak. Kill Ukorz and Ruuzlu and come back to me.\n\nThere will not be celebration, or a feast. This is just what needs to happen. In time, de lands of Zul\'Farrak will heal.','Slay Ukorz Sandscalp and Ruuzlu within Zul\'Farrak for Champion Taza\'go at Sandmoon Village in Tanaris.','Is Ukorz dead?','So it is done, I Thank you.\n\nUkorz Sandscalp was not always so brutal and cold, his mind be warped from the magic he and his lackeys dabbled within\'. It almost be sad to think of what a promisin\' future he brought when he first became chief, for it all to drift away like sand on de dunes.\n\nPerhaps we find a new future now, all thanks to you mon.',0,0,0,0,0,0,0,0,7267,1,7797,1,0,0,0,0,0,0,15000,6250,0,0,0,0,0,0,0,0,0,60766,1,0,0,0,0,0,0,0,0,60764,1,60765,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60749, 40527);
replace into creature_involvedrelation (id, quest) values (60749, 40527);

update quest_template set type = 81 where entry = 40527;

replace into item_template values
 ('60764', '2', '7', 'The Dune Blade', '', '28570', '2', '0', '1', '82868', '20717', '21', '-1', '-1', '54',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '59', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '28', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60765', '4', '3', 'Sandmoon Greaves', '', '27157', '2', '0', '1', '65232', '16308', '7', '-1', '-1', '54',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '19', '3', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '247', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '75', '0', '0', '0', '0', '28', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60766', '4', '0', 'Sandfury Garnet', '', '30661', '3', '0', '1', '0', '0', '11', '-1', '-1', '54',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

-- Meat for Viceclaw!
delete from quest_template where entry = 40528;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40528,2,440,43,37,0,0,'Meat for Viceclaw!','Ya be the one who be pokin\' in our village! Ya better get yourself useful or else Ekka feed ya to da Viceclaw!\n\nViceclaw be likin\' good, tough meat. Da turtles from da shore be his favorite. Ekka can\'t go dere, da goblins would shoot her to death! Bring Viceclaw da meat from dem, and as a reward he will spare you!\n\n<Ekka laughs maniacally>\n\nGood Viceclaw, good.','Bring 10 chunks of Turtle Meat to Ekka at Sandmoon Village in Tanaris.','You can find da turtles on the shore, next to da port.','Good, turtle meat for Viceclaw! Ya be useful outsider. Ya can stay, Ekka be likin\' ya.',3712,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1860,3000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60750, 40528);
replace into creature_involvedrelation (id, quest) values (60750, 40528);

update creature_template set script_name = 'npc_ekka' where entry = 60750;

-- Letter from Maltimor
delete from quest_template where entry = 40529;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40484,40529,2,40,25,15,0,0,'Letter from Maltimor','Dear Farad,\n\nWe made a mistake. You need to stop distributing the golems. Our plan will not work.\n\nI know you are still angry at me for what I did to you, it was an accident, I swear! But you have to listen, please. I cannot stop the golems from killing people. The spell does not work! Oh, how stupid I was.\n\nPlease, Farad, stop this nonsense with the Stonemasons Guild and come back. We will figure out how to fix them together, like the old times. Please.\n\nI await you in our old workshop in Moonbrook. Where everything started. Our friendship, our plans, our failure.\n\nYour good friend, Maltimor Gartside.','Confront Maltimor about the letter.','What is it, friend? Oh, by the Light...','I bid you farewell, $N. Thank you for understanding. And once again, thank you for all you did. You truly are a hero.',0,0,0,0,0,0,0,0,60381,1,0,0,0,0,0,0,60767,1,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Listen to Maltimore');

replace into creature_involvedrelation (id, quest) values (60858, 40529);

REPLACE INTO creature_template VALUES (60381, 328, 0, 0, 0, 'quest_40529_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60767,7743,'Letter from Maltimor',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update item_template set start_quest = 40529 where entry = 60767;

update creature_template set loot_id = 60854 where entry = 60854;

replace into creature_loot_template values
(60854,60767,100,1,1,1,0);
-- Quest 'Farwell Commision' 40455 gives the wrong quest item, currently it gives 'Boulderfist Truncheon' but should instead give 'The Farwell Ring' (This item got overwritten, make a new one and give it at the start of this quest!):
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60660,18813,'Farwell Ring',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);
-- Change ZONE ID in all The Harvest Golem Mystery quests to 40.
update quest_template set zoneorsort = 40 where entry in (40470,40471,40472,40473,40474,40475,40476,40477,40470,40470,40479,40480,40481,40482,40483,40484,40485);
-- Fix outline recipe.
update item_template set spellid_1 = 46078 where entry = 65031;
-- The Way Of The Spiritwolf I
delete from quest_template where entry = 40530;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40530,2,1637,40,40,0,0,'The Way Of The Spiritwolf I','I have been awaiting your arrival now for some time. I have heard tales your deeds from the very spirits themselves, and it is time to prove your worth as an Orc.\n\nIt is time for your next challenge, and to prove your worth to the very spirits themselves. If you think you are worthy for such a task, seek out Margok Hatewind at Camp Mojache, he will be your guide.','Travel to Camp Mojache and speak with Margok Hatewind.','Yes?','I have been expecting you, it is about time you have arrived. I have heard many tales of your prowess, but nw I shall see if such tales are true.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest)		values (3344 , 40530);
replace into creature_involvedrelation (id, quest)	values (66005, 40530);
update quest_template set requiredclasses = 64		where  entry = 40530;
update quest_template set requiredraces = 2			where  entry = 40530;

update creature_template set npc_flags = 3 where entry = 66005;

-- The Way Of The Spiritwolf II
delete from quest_template where entry = 40531;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40530,40531,2,1637,40,40,0,0,'The Way Of The Spiritwolf II','You have begun to find potency within your use of the elements, though now comes a different matter entirely. Within Feralas is an Ancient Wolf Spirit, one of whom can bestow great power upon the orc shaman\'s capable enough to prove their worth.\n\nIf you wish to prove yourself you must first gather a Pristine Wolf Tooth from the Longtooth wolves in the region. Be patient, it may be hard to come across. When you have found one, bring it to me, and you can continue on this journey.','Hunt Wolves in Feralas to obtain a Pristine Wolf Tooth for Margok Hatewind.','Exert cunning, for the wolves of Feralas can be a rather intimidating foe.','<Margok Hatewind would inspect the tooth for some time.> Well, this would appear to be what I was looking for, you have displayed great patience, and great ability to hunt.',60768,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3150,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest)		values (66005, 40531);
replace into creature_involvedrelation (id, quest)	values (66005, 40531);
update quest_template set requiredclasses = 64		where  entry = 40531;
update quest_template set requiredraces = 2			where  entry = 40531;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60768,1227,'Pristine Wolf Tooth',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5286,60768,-10,1,1,1,0),
(5287,60768,-16,1,1,1,0),
(5288,60768,-18,1,1,1,0);

-- The Way Of The Spiritwolf III
delete from quest_template where entry = 40532;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40531,40532,2,1637,40,40,0,0,'The Way Of The Spiritwolf III','It is said long ago, a large and magical wolf dominated these forests, and hunted with great power, only succumbing to a fatal wound near a large waterfall. It is here that you will take a powder I have grounded from the pristine tooth you brought me, to pour over this site. This ritual will be neccesary to gain the blessing of the Ancient Wolf Spirit.\n\nTo the south east of Camp Mojache is a large waterfall, find a way up, and there you will find the Wolf Spirit, do as I have instructed, and it will be willing to speak with you.','Hunt Wolves in Feralas to obtain a Pristine Wolf Tooth for Margok Hatewind.','<The Wolf Spirit seems to not notice your presence.>','Another comes to speak with me, you wish to prove yourself, do you think you\'re strong enough? These are all questions one must ask themselves before they approach me, for I am not one that you should dissappoint.',0,0,0,0,0,0,0,0,60378,1,0,0,0,0,0,0,0,0,0,3150,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Pour the powder around the site of the Ancient Wolf Spirit');

replace into creature_questrelation (id, quest)		values (66005, 40532);
replace into creature_involvedrelation (id, quest)	values (66004, 40532);
update quest_template set requiredclasses = 64		where  entry = 40532;
update quest_template set requiredraces = 2			where  entry = 40532;

REPLACE INTO creature_template VALUES (60378, 328, 0, 0, 0, 'quest_40532_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 3, script_name = 'npc_ancient_spirit_wolf' where entry = 66004;

set @gossip_menu_id = 41182; set @magic_number = 66004;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '<An eerie gaze pierces your soul.>');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- The Way Of The Spiritwolf IV
delete from quest_template where entry = 40533;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40532,40533,2,1637,40,40,0,0,'The Way Of The Spiritwolf IV','If you wish to truly grow, orc, you must heed my advice as many before have. When you are ready to listen to my tale, speak with me, and I will tell you what I know, so that maybe you may learn a thing or two in your journies.','Listen to the Tale of the Ancient Spirit Wolf.','Yes?','Another comes to speak with me, you wish to prove yourself, do you think you\'re strong enough? These are all questions one must ask themselves before they approach me, for I am not one that you should dissappoint.',0,0,0,0,0,0,0,0,60379,1,0,0,0,0,0,0,0,0,0,3150,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Listen to the Tale of the Ancient Spirit Wolf');

replace into creature_questrelation (id, quest)		values (66004, 40533);
replace into creature_involvedrelation (id, quest)	values (66004, 40533);
update quest_template set requiredclasses = 64		where  entry = 40533;
update quest_template set requiredraces = 2			where  entry = 40533;

REPLACE INTO creature_template VALUES (60379, 328, 0, 0, 0, 'quest_40533_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- The Way Of The Spiritwolf V
delete from quest_template where entry = 40534;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40533,40534,2,1637,40,40,0,0,'The Way Of The Spiritwolf V','You listen, and listen well, perhaps you are worthy afterall. I have one final challenge for you, one to prove that you are truly worthy of my power. I challenge you to combat, show me your abilities, and show me your strength.\n\nIf you truly have the strength to defeat me, and can take my advice in heed, you will truly embody the my spirit, and I will grant you my gift.\n\nIf you think you are worthy enough to challenge me, speak with me once more. Make sure you are ready, for I will not hold back.','Prove your strength to the Ancient Spirit Wolf.','Do you truly think you are ready?','Well orc, you are stronger then I had anticipated, and carry all the traits of the wolf, I am honored to bless you with my power. May it bring you great power in the hunt, and strike terror into your enemies.',0,0,0,0,0,0,0,0,60380,1,0,0,0,0,0,0,0,0,0,4150,76,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Prove your strength to the Ancient Spirit Wolf.');

replace into creature_questrelation (id, quest)		values (66004, 40534);
replace into creature_involvedrelation (id, quest)	values (66004, 40534);
update quest_template set requiredclasses = 64		where  entry = 40534;
update quest_template set requiredraces = 2			where  entry = 40534;
update quest_template set rewspellcast = 45505		where  entry = 40534;

REPLACE INTO creature_template VALUES (60380, 328, 0, 0, 0, 'quest_40534_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');