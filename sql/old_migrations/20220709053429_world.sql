-- Gaining Orvak's Trust
delete from quest_template where entry = 40459;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40459,2,46,54,45,0,0,'Gaining Orvak\'s Trust','You want to help us out do you? Well we need to know we can trust you, after all, we have many enemies in this region, and most regions of the world, probably.\n\nYou can start by gathering Thaurrisan Badges, carried by the Dark Iron in the Ruins of Thaurrisan. Gather 15 of them, and bring them to Orvak Sternrock, he will know you mean business then.','Gather 15 Thaurissan Badges for Orvak Sternrock at the Blackrock Pass in Burning Steppes.','What is it you want $r?','Hmm, so you\'re the real deal huh, no way you\'re working with Shadowforge anyway.\n\nYou never can be certain, they have an alignment with the Twilight Hammer afterall.',60711,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40459);
replace into creature_involvedrelation (id, quest) values (60833, 40459);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60711,3110,'Thaurissan Badge',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(7036,60711,-70,1,1,1,0),
(7037,60711,-70,1,1,1,0),
(7038,60711,-70,1,1,1,0);

-- Hearing Orvak's Story
delete from quest_template where entry = 40460;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40459,40460,2,46,54,45,0,0,'Hearing Orvak\'s Story','Not often we get someone wanting to help, especially one of your kind. That said, we aren\'t all too able to turn down a willing hand, especially given all of the others that died in our caravan.\n\nI need you to understand my point of view, and what I have gone through. Maybe you\'ll think twice before you label me as another of my kin.\n\nSpeak with me, and listen to my story when you\'re ready.','Listen to Orvak Sternrock\'s Story.','Yes?','Does it all make sense now? Orvak Sternrock has a vengeance, one that needs to be unleashed.',0,0,0,0,0,0,0,0,60375,1,0,0,0,0,0,0,0,0,0,950,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Listen to Orvak Sternrock\'s Story');

replace into creature_questrelation (id, quest) values (60833, 40460);
replace into creature_involvedrelation (id, quest) values (60833, 40460);

update creature_template set script_name = 'npc_orvak_sternrock' where entry = 60833;

REPLACE INTO creature_template VALUES (60375, 328, 0, 0, 0, 'quest_40460_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- The Sternrock Stash
delete from quest_template where entry = 40461;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40460,40461,2,46,54,45,0,0,'The Sternrock Stash','Now that you understand we are on the same page, and are fighting the same enemy I would have you prove to me one last test of loyalty.\n\nBefore we can begin our grand revenge, I must plan for the future.\n\nLong ago, before I held any position of power I buried a large stash of items and gold incase I ever needed to leave or escape, well that time has come.\n\nIf me and my comrades are to live this adventure than I will need that stash.\n\nTravel to the entrance of the Blackrock Mountain, and search beneath the bridgeway, between the two pillars, you will find the stash there.','Recover the Sternrock Stash and bring it to Orvak Sternrock at the Blackrock Pass in Burning Steppes.','Have you recovered my lost items?','With this our future is secure, but I will not leave until I taste the sweet sensation of revenge.\n\nI will let the others know that you are to be trusted, speak with them, they should have tasks for you.',60663,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60833, 40461);
replace into creature_involvedrelation (id, quest) values (60833, 40461);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60663,16028,'Sternrock Stash',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010896;
replace into gameobject_template values
(2010896,3,49,'Uneven Dirt',0,4,1,43,2010896,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010896;
replace into gameobject_loot_template values
(2010896,60663,-100,0,1,1,0);

-- Miners Union Mutiny
delete from quest_template where entry = 40462;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40462,2,46,50,45,0,0,'Miners Union Mutiny','The Miners Union betrayed the High Foreman, and sentenced those that were loyal to Orvak into slavery. There is no other step than justice and it must be handed out to any, and all who remain!\n\nTo the east lays the Hateforge Excavation, we will begin by dealing with the Excavators who are working on a series of redoubts and defenses leading into the Quarry.\n\nSlay 10 of them, and return to me.','Slay 10 Hateforge Excavator\'s at the Hateforge Excavation and return to Morgrim Firepike at Blackrock Pass in Burning Steppes.','We are on the road to justice, can you can feel it?','It feels good knowing that there are less of those scum on this world, but there is still more to be done.',0,0,0,0,0,0,0,0,60830,10,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60832, 40462);
replace into creature_involvedrelation (id, quest) values (60832, 40462);

update quest_template set type = 1 where entry = 40462;

-- The True High Foreman
delete from quest_template where entry = 40463;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40463,2,5098,51,45,0,0,'The True High Foreman','Bargul Blackhammer\n\nThat vile scum has been working to get the position of High Foreman now for years, attempting every underhanded tactic that he could think of.\n\nFrom violence, to deceit, nothing was off the table for scum such as him.\n\nThe idea of the Hateforge Quarry was an idea Bargul came up with, and sent to the senate. He ended up convincing the lot of them, and worked in tandam to get me outed from my position.\n\nBargul Blackhammer holds my title now from a position of underhanded fraud, and I want him to hold it no longer.\n\nWithin the Hateforge Quarry, Bargul Blackhammer oversee\'s the work from atop of his tower with an iron fist, kill him for all of the chaos he has caused, and recover the Senate\'s Orders from around his possessions.','Slay Bargul Blackhammer, and recover the Senate\'s Orders for Orvak Sternrock at the Blackrock Pass in Burning Steppes.','Have you culled that wretch from this world yet?','<A look of pleasure sets across Orvak\'s face, breaking his grim visage.>\n\nYou\'ve done well, it makes me want to grin knowing that Bargul\'s plans have ended in his demise, despite all of the death he has brought around him, I would have loved to see his face as he knew his life was about to end.\n\n<Orvak lets out a sigh of relief.>\n\nMe and the others here gathered something that you may find useful in your journies, one hand washes the other, so to speak.\n\nAlso, take this key, I do not intend to return to the mountain. It should open a chest within the Black Vault, if they haven\'t already taken it. away.',60664,1,0,0,0,0,0,0,60735,1,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60665,1,60666,1,60667,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60833, 40463);
replace into creature_involvedrelation (id, quest) values (60833, 40463);

update quest_template set type = 81 where entry = 40463;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60664,7694,'Senate\'s Orders',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010897;
replace into gameobject_template values
(2010897,3,164,'Important Documents',0,4,1,43,2010897,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010897;
replace into gameobject_loot_template values
(2010897,60664,-100,0,1,1,0);

replace into item_template values
 ('60665', '4', '0', 'Deepblaze Signet', '', '66210', '3', '0', '1', '63632', '15908', '11', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0',
 '0', '0', '0', '9416', '1', '0', '0', '-1', '0', '-1', '9399', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60666', '4', '2', 'Sternrock Trudgers', '', '16983', '3', '0', '1', '67228', '16807', '8', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '16', '7', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '113', '0', '0', '0',
 '0', '0', '0', '9332', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60667', '4', '1', 'Firepike\'s Lucky Trousers', '', '27947', '3', '0', '1', '67420', '16855', '7', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '24', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '7680', '1', '0', '0', '-1', '0', '-1', '21625', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Senatorial Revenge
delete from quest_template where entry = 40464;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40464,2,1584,56,45,512,0,'Senatorial Revenge','Shadowforge was once a home that I was proud of. I know the truth of what it really is now, and it is vile, and corrupt.\n\nAt it\'s heart many of the decisions the Shadowforge Senator\'s make are only to further their own interests at the expense of the people who live within.\n\nI ask for a favor, one more important than anything to me.\n\nThe Shadowforge Senate needs to be rooted out, they are safe, and comfortable deep within the city, make it so they feel fear.\n\nYou can enter Shadowforge deep within the Blackrock Mountain, go there, and brave the Blackrock Depths to find them, and kill them.','Slay 25 Shadowforge Senators deep within the Blackrock Depths for Orvak Sternrock at the Blackrock Pass in Burning Steppes.','Has the deed been done, has the senate been removed?','<Orvak would let out a small chuckle of enjoyment.>\n\nThe hatred instilled deep within me has begun to cool, the fire that once raged on has eased.\n\nIt fills me with vigor to know they met their end.\n\nI know deepdown that Shadowforge can never be saved, regardless, I thank you.\n\nI will not be needing this any longer, for I do not intend to return, perhaps you may find some use for it.',0,0,0,0,0,0,0,0,8904,25,0,0,0,0,0,0,0,0,10000,6550,0,0,0,0,0,0,0,0,0,0,0,60668,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60833, 40464);
replace into creature_involvedrelation (id, quest) values (60833, 40464);

update quest_template set type = 81 where entry = 40464;

replace into item_template values
 ('60668', '4', '0', 'Badge of Shadowforge', '', '66166', '2', '0', '1', '40000', '10000', '12', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '18', '0',
 '0', '0', '0', '9330', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Discovering Golem Secrets
delete from quest_template where entry = 40465;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40465,2,46,55,45,0,0,'Discovering Golem Secrets','Hey there, I got a strange request for you if you don\'t mind helping. I used to be an Arcanasmith within Shadowforge and worked with all kinds of Golem Cores.\n\nMy loyalty to ol\' Orvak got me tossed out with the rest of the miners. Whenever we get out of this here camp I want to continue my work and I\'d like a head start.\n\nUp to the north is the Ruins of Thaurrisan. The Dark Irons have War Reavers that patrol, those Reavers are powered by Golem Cores, get me three of them, so we can see what kind of power they contain.','Gather 3 Golem Cores for Radgan Deepblaze at Blackrock Pass in Burning Steppes.','Any luck in obtaining those Golem Cores?','<Radgan would take his time inspecting the cores.>\n\nFlaws, cracks, hmm.. These are some second rate power cores, not the type of stuff I am looking for.',60669,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40465);
replace into creature_involvedrelation (id, quest) values (60834, 40465);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60669,16209,'Golem Core',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(7039,60669,-30,1,1,1,0);

-- To Purchase Secret Information
delete from quest_template where entry = 40466;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40465,40466,2,46,55,45,0,0,'To Purchase Secret Information','During my time in the mountain I had met all kinds of characters within the Grim Guzzler, one of which was a rather ambitious goblin who said he could get me almost anything.\n\nA few months ago I requisitioned him for information on where to acquire a Arcane Golem Core. Last I recall, he frequents Steamwheedle Port in Tanaris, and goes by the name \'Jabbey\', aparently a lot of people know him.\n\nTravel there, and get me the Arcane Golem Core Information from him, just mention my name and he should know what you are looking for.','Collect the Arcane Golem Core Information from Jabbey in Steamwheedle Port and return to Radgan Deepblaze at Blackrock Pass in Burning Steppes.','Have you spoken with Jabbey?','Hey look, it means a lot for you to travel all that distance for me, I made it worth your while in coin, now lets see...',60670,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7500,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40466);
replace into creature_involvedrelation (id, quest) values (60834, 40466);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60670,7798,'Arcane Golem Core Information',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Arcane Golem Core
delete from quest_template where entry = 40467;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40466,40467,2,1584,55,45,0,0,'The Arcane Golem Core','This information contains all manner of suppliers, distributors and who is involved, it appears Argelmach is the one who would hold such an item.\n\nIf I am to ever get my hands on an Arcane Golem Core, it would be through him, and that means I need you to get it.\n\nYou can find Argelmach deep within the Blackrock Depths, he is usually seen around a team of weapons experts and Arcanasmiths.\n\nBring me a Arcane Golem Core, and I will make it worth your while!','Find, and collect an Arcane Golem Core from Golem Lord Argelmach in Blackrock Depths and return to Radgan Deepblaze at Blackrock Pass in Burning Steppes.','Have you ventured deep into the Blackrock Depths?','Look at the sheer power within this thing, it is much more advanced than what we used to work on in the Mold Foundry, this is intense.\n\nYou\'ve done me a great favor, and now perhaps I may actually have something to work on when we get our of here.\n\nI reconfigured one of the Golem Cores you got me from the War Reavers, hopefully you\'ll get some use from it!',60671,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5850,0,0,0,0,0,0,0,0,0,0,0,60672,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40467);
replace into creature_involvedrelation (id, quest) values (60834, 40467);

update quest_template set type = 81 where entry = 40467;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60671,24730,'Arcane Golem Core',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(8983,60671,-100,1,1,1,0);

replace into item_template values
 ('60672', '4', '0', 'Energized Golem Core', 'The core crackles with power.', '16209', '2', '0', '1', '58904', '14476', '12', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17988', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Miners Union Mutiny II
delete from quest_template where entry = 40468;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40462,40468,2,5098,50,45,0,0,'Miners Union Mutiny II','Now we will strike at the heart of the Miners Union.\n\nTheir main project lays just beyond the excavation, and deep within the Quarry. It is there they began their mutiny to get Orvak removed, and it is there they will feel the wrath of Morgrim Firepike.\n\nOh, and his mercenaries, of course.\n\nHead to the Hateforge Quarry to the east, and kill twenty of them, they shall have consequences for their actions.','Slay 20 Hateforge Miners at the Hateforge Quarry and return to Morgrim Firepike at Blackrock Pass in Burning Steppes.','Justice grows ever closer, you can practically feel it.','You have done well by me, and truly made them bleed. Justice has been served, and their work has been slowed tremendously. I would like to offer you a reward for all of your hard work, take it, as a herald of justice, you deserve it.',0,0,0,0,0,0,0,0,60721,20,0,0,0,0,0,0,0,0,0,6350,0,0,0,0,0,0,0,0,0,0,0,60673,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60832, 40468);
replace into creature_involvedrelation (id, quest) values (60832, 40468);

update quest_template set type = 81 where entry = 40468;

replace into item_template values
 ('60673', '4', '4', 'Cuffs of Justice', '', '27406', '2', '0', '1', '29032', '7258', '9', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '11', '5', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '227', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Vilegrip's Demise
delete from quest_template where entry = 40469;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40469,2,46,51,45,512,0,'Vilegrip\'s Demise','Oh, how the name \'Vilegrip\' brings a burning desire for blood to my head. His name has rung deep in my mind ever since the mutiny.\n\nSlaver Vilegrip is responsible for the enslavement of all those that stood with Orvak, those who now rot deep within the Blackrock Mountain.\n\nHe shall pay for his crimes, and you will bring me his head. Search for him, he should be at the Hateforge Excavation to the east. Make sure he begs and cries for the atrocities he has commited, make him suffer.','Collect the Head of Vilegrip at the Hateforge Excavation and return to Morgrim Firepike at Blackrock Pass in Burning Steppes.','Has that worm been trampled $c?','It is about time Vilegrip got what was coming to him, even if he deserved torture. I prepared a reward for you incase you returned, and here you are, take it.',60674,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,60675,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60832, 40469);
replace into creature_involvedrelation (id, quest) values (60832, 40469);

update quest_template set type = 1 where entry = 40469;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60674,3920,'Head of Vilegrip',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 60836 where entry = 60836;
replace into creature_loot_template values
(60836,60674,-100,1,1,1,0);

replace into item_template values
 ('60675', '4', '0', 'Anvilrage Shroud', '', '23043', '2', '0', '1', '42776', '10694', '16', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '3', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '5', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- The Harvest Golem Mystery
delete from quest_template where entry = 40470;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40470,2,14,10,8,0,0,'The Harvest Golem Mystery','The mysterious animation runes, I\'ve been trying to get my hands on one, but as a shop keep I aint exactly the type to go and fight mechanical monsters.\n\nI work for a certain someone who is investigating the harvest golems in Westfall. If you could recover one, I would make it worth your while!\n\nYou can find one within any Harvest Golem in the region.','Collect a Cracked Animation Rune for Christopher Hewen in Sentinel Hill.','Have you recovered one?','What a fine specimen, this should work just fine! The person I am working for is investigating the harvest golems in Westfall- to help the farmers get rid of them, of course, and he could use all the samples he could get.\n\nI have some work for you if you want to earn more coin, interested?',60676,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,680,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40470);
replace into creature_involvedrelation (id, quest) values (8934, 40470);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60676,20984,'Cracked Animation Rune',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(36,60676,-80,1,1,1,0),
(114,60676,-80,1,1,1,0),
(115,60676,-80,1,1,1,0);

-- The Harvest Golem Mystery II
delete from quest_template where entry = 40471;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40470,40471,2,14,14,10,512,0,'The Harvest Golem Mystery II','Alright! Eager for additional work, aren\'t we?\n\nSo, my... employer is looking for even more animation runes for his experiments. Bring me an additional ten runes, and you will be greatly rewarded. But, be careful. They will accept only intact runes. Try not to damage them too much with this weapon of yours.\n\nOne more thing. Don\'t get yourself killed. Those harvest machines pack a punch, and I need you to run more errands for me.\n\nHah,I\'m joking. But seriously. Take care of yourself.','Gather 10 Intact Animation Runes from Harvest Golems in Westfall for Christopher Hewen at Sentinel Hill.','Have you collected the runes already?','Good job! And all of them are of extraordinary quality, too! I didn\'t think that you could do it, to be fair. The last adventurer helping me... let\'s just say, he got harvested, if you know what I mean. It\'s great to finally have someone who knows what they\'re doing.\n\nSo, would you want to help me once more? I need something else to be done, and I cannot leave Sentinel Hill for now. You know, I\'m waiting for a shipment of supplies from Redridge and it could arrive any moment.',60677,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,1350,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60678,1,60679,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40471);
replace into creature_involvedrelation (id, quest) values (8934, 40471);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60677,20984,'Intact Animation Rune',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(480,60677,-40,1,1,1,0),
(36,60677,-40,1,1,1,0),
(115,60677,-40,1,1,1,0),
(114,60677,-40,1,1,1,0);

replace into item_template values
 ('60678', '4', '3', 'Westfall Hauberk', '', '11563', '2', '0', '1', '1688', '422', '5', '-1', '-1', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '4', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '148', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '80', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60679', '4', '1', 'Westfall Rancher Boots', '', '6190', '2', '0', '1', '900', '225', '8', '-1', '-1', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '2', '3', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

-- The Harvest Golem Mystery III
delete from quest_template where entry = 40472;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40471,40472,2,14,14,8,0,0,'The Harvest Golem Mystery III','I knew you wouldn\'t pass another opportunity to earn some coin. Ever been to Stormwind City? Oh, what am I saying, of course you did. In the northern part of the city, there is a district inhabited mostly by non-humans.\n\nDwarves, gnomes, even high elves lately. One of my dear friends, a gnomish engineer with a lovely name: Lilliam, lives there. I need you to tell him that Hewen sent you. He will give you a paper: a blueprint, even. You know what a blueprint is? Good. So, take the blueprint, come back to me, and I will pay you.\n\nEasy enough! Good luck.','Collect the Harvester Blueprint from Lilliam Sparkspindle in Stormwind City.','What is it? Don\'t you see, $R, that I am kind of busy?','Hewen sent you? This son of a trogg couldn\'t even visit me himself? Preposterous! I got his blueprint, but if you knew how much hassle it cost me! If you only knew! Tell Hewen that next time he orders something from me, he pays double!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40472);
replace into creature_involvedrelation (id, quest) values (5518, 40472);

-- The Harvest Golem Mystery IV
delete from quest_template where entry = 40473;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40472,40473,2,14,14,8,0,0,'The Harvest Golem Mystery IV','Here you have it. The Harvester Blueprint. The goblin, who sold it to me... I wish I never see his green face again! Bah!\n\nI looked into these blueprints. I don\'t know for what Hewen needs it, but it is nothing good, I tell you! This is a machine of death and destruction! I am only giving you this, because he is my old friend and I... hope he still has some brain left in his greedy head.','Bring the Harvester Blueprint back to Christopher Hewen at Sentinel Hill in Westfall.','Ahhh, $N already! You got the paper?','The Harvester Blueprints...\n\n<Christopher Hewen looks into the blueprints and makes a disgruntled face.>\n\nTo be frank, my hard-working friend, I don\'t understand any of it! But it doesn\'t matter, as I am only the messenger, a humble servant. Those papers are for my employer, who, if you are willing, you will meet soon!\n\nI would deliver them myself, but, believe me or not, those damned supplies have still not arrived! Also, traveling through these beautiful, golden plains became so dangerous lately. I am certain that you can handle it, though. Care to help me for one last time, friend?',60680,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60680,1,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5518, 40473);
replace into creature_involvedrelation (id, quest) values (8934, 40473);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60680,7601,'The Harvester Blueprint',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Harvest Golem Mystery V
delete from quest_template where entry = 40474;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40473,40474,2,14,15,8,0,0,'The Harvest Golem Mystery V','Okay, listen then. I need you to bring this blueprint to a man named Maltimor Gartside. Maltimor. Gartside. Got it? Good.\n\nHe\'s an old man, in his fifties, maybe sixties. Long, gray hair, kind of skinny, pale skin. Hard to miss, you will know it\'s him. Yes, he\'s my employer. And yes, I know where he lives.\n\nWouldn\'t want you to scour through all of Westfall, of course. Go west of Sentinel Hill, but north of Moonbrook. He lives in a solitary cottage, usually spends his time outside of it. Don\'t know why, didn\'t ask, didn\'t care. So, you meet him, tell him I said hello and give him the blueprints. Easy!\n\nAlso, please, be careful. It is very, very important that those blueprints don\'t fall into the hands of those bandits with red bandanas, the Defias, as they call themselves. Light be with you, friend.','Deliver the Harvester Blueprint to Maltimor Gartside at the Gartside Plot in Westfall.','Who are you? What do you want from me?','Blueprints from Hewen, finally. He couldn\'t be any slower with it. Let me see what is written inside...',60680,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60680,1,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40474);
replace into creature_involvedrelation (id, quest) values (60858, 40474);

update creature_template set script_name = 'npc_maltimor_gartside' where entry = 60858;

-- The Harvest Golem Mystery VI
delete from quest_template where entry = 40475;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40474,40475,2,14,15,10,0,0,'The Harvest Golem Mystery VI','Excuse me for my bad manners. I was so excited to finally lay my hands on those blueprints. My name is Maltimor Gartside, and I was born in the old Kingdom of Alterac. I moved to Westfall just before the First War. I have seen much, but never have I seen these lands in such a sorry state\n\nYou see, young $C, many years ago, a certain salesman arrived in Westfall. An ambitious fellow, he brought with him a new commodity- Harvest Golems. At first, farmers were overjoyed.\n\nThe new golems worked flawlessly, gathering crops for them, and scaring the wildlife away. So, more and more golems were being purchased. In a few years, they outnumbered the farmers. And then… It happened.\n\nGolems turned on their owners. In a few weeks, almost all farms across Westfall were lost to the mechanical menace. To make matters worse, the Defias arrived. So it was only natural that the people of Westfall linked the sudden change of attitude to the Brotherhood.\n\nI, however, believe that it is a mere coincidence. That someone else manipulated the golems to behave this way, and now, of course the Defias are using the situation to their advantage.\n\nI will continue the story later, $N. For now, let\'s get to the matters at hand. I have a request for you. I want to help the people of Westfall, and I think I have the solution. Yet, I need some materials.\n\nGo to Moonbrook. Before it got overrun by the Defias, the smith always had a stash of useful engineering equipment hidden near his forge, check there.','Recover the Old Engineering Tools for Maltimor Gartside at the Gartside Plot in Westfall.','Have you found the equipment?','Engineering tools. And they are all still intact. Unexpected, but a welcome surprise. Now I have all we need.',60681,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60858, 40475);
replace into creature_involvedrelation (id, quest) values (60858, 40475);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60681,7840,'Old Engineering Tools',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010898;
replace into gameobject_template values
(2010898,3,23434,'Forgotten Trunk',0,4,1,43,2010898,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010898;
replace into gameobject_loot_template values
(2010898,60681,-100,0,1,1,0);

-- The Harvest Golem Mystery VII
delete from quest_template where entry = 40476;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40475,40476,2,14,17,10,1,0,'The Harvest Golem Mystery VII','$N I have all materials to create a new Harvest Golem. If my calculations are correct, I should be able to rewire his mind.\n\nI need your help. The Harvest Golem will be hostile at first, and the Rewiring Spell requires all my concentration. I need you to draw the golem\'s attention until I\'m finished.','Help Maltimor Gartside with casting the Rewiring Spell.','The rewiring was successful.','This is good, really good. Given time, we will be able to rewire all golems in Westfall.\n\nBut only if their production stops.',0,0,0,0,0,0,0,0,60375,1,0,0,0,0,0,0,0,0,0,1350,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Help Maltimor Gartside with casting the Rewiring Spell');

replace into creature_questrelation (id, quest) values (60858, 40476);
replace into creature_involvedrelation (id, quest) values (60858, 40476);

REPLACE INTO creature_template VALUES (60871, 379, 0, 0, 0, 'Harvest Reaper', '', 0, 17, 18, 386, 417, 0, 0, 765, 35, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7342, 0, 0, 0, 1150, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 8405008, 0, 0, 0, '');

-- The Harvest Golem Mystery VIII
delete from quest_template where entry = 40477;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40476,40477,2,14,17,14,0,0,'The Harvest Golem Mystery VIII','I will handle rewiring the golems of Westfall. It will take months, maybe years, but it will be done. I am not a fighter. And the Defias can still easily produce new ones faster than I can rewire them. We need to halt the production.\n\nFortunately, I know where we can find the shipments of Animation Runes. Go to the Jangolode Mine and Gold Coast Quarry. The Defias hide their runes deep inside, awaiting transport to their underground foundry. Take all the runes and bring them to me.\n\nAnd yes, I promised you the rest of the story. So where did we end? The arrival of Defias. Very soon, they started producing Harvest Golems on their own. How they figured it out- it is a mystery. I have my suspicions though. To produce such a Rune, a powerful mage is needed. The Defias have mages on their own, of course, but none of them is powerful enough, to my knowledge, to make it.\n\nI think they are working with the person who turned the golems hostile in the first place. Their original creator. His identity is still unknown to me. I hope you will find some clues with the shipment.','Gather the Jangolode Mine Shipment, and the Gold Coast Shipment to Maltimor Gartside at the Gartside Plot in Westfall.','Have you retrieved the Rune Shipments?','You found the note attached to one of the crates? But it\'s all written in gibberish? Don\'t worry, we will figure it out.\n\nFor now, we need to handle another problem.',60682,1,60683,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1400,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60858, 40477);
replace into creature_involvedrelation (id, quest) values (60858, 40477);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60682,1501,'Jangolode Mine Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60683,35465,'Gold Coast Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Has a small note attached to it.',0);

replace into gameobject_template values
(2010899,3,24111,'Jangolode Shipment',0,4,1,43,2010899,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2010900,3,24111,'Gold Coast Shipment',0,4,1,43,2010900,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010899,60682,-100,0,1,1,0),
(2010900,60683,-100,0,1,1,0);

-- The Harvest Golem Mystery IX
delete from quest_template where entry = 40478;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40477,40478,2,1581,19,15,0,0,'The Harvest Golem Mystery IX','The goblins of Defias produce harvest golems deep inside their underground hideout. The People\'s Militia in Sentinel Hill have been trying to find its location lately. Maybe they have discovered its whereabouts. If not, they will probably need your help.\n\nOnce you are inside, find the workshop and slay their leader. This will stop their manufacturing operations for good.\n\nIn the meantime, I will reach out to Hewen. If anyone will be able to decipher this note, it\'s him, or at least one of his contacts.','Venture into the Deadmines and slay Gilnid, once done, return to Maltimor Gartside at the Gartside Plot in Westfall.','Have you found the Defias hideout?','The Deadmines... Interesting. I\'m glad that you made it out alive. With their leader dead, I can focus on rewiring the remaining golems.\n\nThat, and finding the person responsible for all of this.',0,0,0,0,0,0,0,0,1763,1,0,0,0,0,0,0,0,0,2500,1550,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60684,1,60685,1,60686,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60858, 40478);
replace into creature_involvedrelation (id, quest) values (60858, 40478);

update quest_template set type = 81 where entry = 40478;

replace into item_template values
 ('60684', '4', '2', 'Tinkering Belt', '', '17237', '2', '0', '1', '1164', '291', '6', '-1', '-1', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '4', '2',
 '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '25', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60685', '4', '1', 'Safety Wraps', '', '16664', '2', '0', '1', '980', '245', '9', '-1', '-1', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '2', '7', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '20', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60686', '2', '5', 'Harvest Golem Arm', '', '6806', '2', '0', '1', '9056', '2264', '17', '-1', '-1', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0',
 '0', '39', '58', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '65', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

-- The Harvest Golem Mystery X
delete from quest_template where entry = 40479;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40478,40479,2,14,20,15,0,0,'The Harvest Golem Mystery X','When you were gone, I spoke with Hewen about this mysterious note. It turned out, as I expected, that it is some kind of cypher. Worry not, as he recognized it. Go back to Sentinel Hill and talk with him. He will explain it better than I can.\n\nFinally, we are getting closer to delivering vengeance upon those who wronged the people of Westfall.','Talk with Christopher Hewen at Sentinel Hill in Westfall.','It\'s you, $N! I missed you! How\'s it going?','Great job with these golems, stopping the Defias and whatnot. You and Maltimor did more for these lands than the People\'s Militia has ever done, and no one will know about your exploits…\n\nSuch are the whims of history, pal. But you didn\'t come here for a friendly talk, ay?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60858, 40479);
replace into creature_involvedrelation (id, quest) values (8934, 40479);

-- The Harvest Golem Mystery XI
delete from quest_template where entry = 40480;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40479,40480,2,14,20,15,0,0,'The Harvest Golem Mystery XI','So about this cypher... I cannot read it. But my dear colleague, Franklin Hamar, who lives in Lakeshire used the same cypher when trading with Defias.\n\nDon\'t look at me like that! It was him, not me. I would never ever trade with these vile people...\n\nRegardless, he will be able to read it for you. He will probably need some convincing, but you can do it for sure. And since you are going to Lakeshire... could you please ask about my damn shipment?','Talk with Franklin Hamar in Lakeshire.','I offer only the finest goods.','What? Give me that.\n\n<Franklin Hamar looks on the note.>\n\nYes, I can read it. But everything has a price.',60687,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60687,1,0,400,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40480);
replace into creature_involvedrelation (id, quest) values (3091, 40480);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60687,8927,'Encrypted Note',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Harvest Golem Mystery XII
delete from quest_template where entry = 40481;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40480,40481,2,14,22,15,0,0,'The Harvest Golem Mystery XII','I can decipher this for you, of course. But first: you say a word to any guard in the town that I can do this, you\'re gone. And second: it will cost you. You\'re lucky that I\'m in need of an adventurer to perform some easy and simple tasks...\n\nFirst, I need silk. But not any kind of silk. Spider silk bathed in moonlight, extraordinarily beautiful. Hard to get though. Only found in Duskwood, to my knowledge. Bring me at least ten samples, we will see if it\'s good enough.','Gather 10 Moonlight Silk samples for Franklin Hamar in Lakeshire.','Got the silk? I haven\'t got all day.','Extraordinary. These are good enough.',60688,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1350,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3091, 40481);
replace into creature_involvedrelation (id, quest) values (3091, 40481);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60688,24898,'Moonlight Silk',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(949,60688,-60,1,1,1,0),
(930,60688,-60,1,1,1,0),
(569,60688,-60,1,1,1,0),
(539,60688,-60,1,1,1,0),
(217,60688,-60,1,1,1,0);

-- The Harvest Golem Mystery XIII
delete from quest_template where entry = 40482;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40481,40482,2,14,22,15,0,0,'The Harvest Golem Mystery XIII','Alright, you helped me well. I will spare you running errands and just send you to do what you do best. Kill.\n\nGnolls in the hills of Redridge have been giving me and other traders a hard time lately. It\'s bad for business. I lost two shipments with rare materials this month only! They probably still hoard them somewhere in their camps up north. Check it out.\n\nI want you to look especially for one lost shipment - rare needles from Lordaeron. You will know when you see them.','Find Lordaeron Needles amonst the gnoll hovels. for Franklin Hamar in Lakeshire.','Less talking, more doing.','Extraordinary. Great work. Those needles will serve me well. So thin, so durable. But I\'m getting ahead of myself.\n\nI made a promise. Let me decipher this message.',60689,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1300,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3091, 40482);
replace into creature_involvedrelation (id, quest) values (3091, 40482);

update creature_template set script_name = 'npc_franklin_hamar' where entry = 3091;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60689,22464,'Lordaeron Needles',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010901,3,24106,'Lordaeron Stamped Crate',0,4,1,43,2010901,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010901,60689,-100,0,1,1,0);

-- The Harvest Golem Mystery XIV
delete from quest_template where entry = 40483;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40482,40483,2,14,25,15,0,0,'The Harvest Golem Mystery XIV','If I were you, I would go back to Westfall. This seems serious.','Go back to Maltimor.','Finally, it\'s you. Were you able to decipher the note?','So the person who may manufacture the runes lives close to Darkshire. We need to hurry then, there is no time to waste. Tales of your exploits have probably reached him already.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3091, 40483);
replace into creature_involvedrelation (id, quest) values (60858, 40483);

-- The Harvest Golem Mystery XV
delete from quest_template where entry = 40484;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40483,40484,2,14,25,15,0,0,'The Harvest Golem Mystery XV','Venture to Darkshire, and ask the Night Watch about the whereabouts of F.W.. If he was right with his suspicions, they would know where to find him.\n\nI pray to Light that he still hasn\'t moved out of Duskwood.\n\nQuestion him. And if you find him guilty... do not wait for Stormwind\'s justice. Kill him, avenge the people of Westfall.','Talk with the Night Watch about the location of F.W.','The Night Watch stands firm against the darkness that surrounds us.','You are asking me if I have seen a suspicious man in Darkshire? My dear, all people here are suspicious!\n\n<Althea Ebonlocke laughs.>\n\nJokes aside, I may know who you are talking about.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60858, 40484);
replace into creature_involvedrelation (id, quest) values (264, 40484);

-- The Harvest Golem Mystery XVI
delete from quest_template where entry = 40485;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40484,40485,2,14,25,15,0,0,'The Harvest Golem Mystery XVI','A few months ago, a mysterious, blind man moved in to an abandoned shack south of Darkshire. A goblin accompanied him, helping him with everyday tasks for exchange for mentorship. He was a renowned engineer, of some kind. Strange couple, that\'s for sure. He paid us very well for protection and privacy. So I had my right to be suspicious. Especially as a commander of Night Watch.\n\nAnd I was right.\n\n Regularly, late at night, strange people were visiting him. I couldn\'t get too close, but they were trading, for sure. I still don\'t have any evidence against him, though.\n\nHowever, I wouldn\'t be too mad if he disappeared silently. There is something sinister going on. Do what you want with him.','Talk with F.W. in the shack south of Darkshire.','Have you found him?','The people of Westfall are safe. Thank you, $N. These lands will heal in time.',0,0,0,0,0,0,0,0,60854,1,60859,1,0,0,0,0,0,0,0,2750,72,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60690,1,60691,1,60692,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (264, 40485);
replace into creature_involvedrelation (id, quest) values (60858, 40485);

replace into item_template values
 ('60690', '4', '0', 'Eye of Farad', '', '66245', '3', '0', '1', '17020', '4255', '23', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60691', '4', '3', 'Shoulderpads of Gazzirik', '', '28792', '3', '0', '1', '8156', '2039', '3', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '149', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '70', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60692', '4', '2', 'Golemslayer Mitts', '', '4438', '3', '0', '1', '3468', '867', '10', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '3', '3',
 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '35', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);

update creature_template set script_name = 'npc_farad_wrightsow' where entry = 60854;
update creature_template set unit_flags = 32768 where entry = 60859;

set @gossip_menu_id = 41172; set @magic_number = 30025;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Of course it was him, the old fool. He thinks that my death will fix everything... Oh, how wrong he is. My death will change nothing!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41171; set @magic_number = 30024;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Dammit. I knew they would find me. Alas, all good things come to an end. Before we fight for our lifes, tell me who sent you. Was it Maltimor?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Farad on death:
REPLACE INTO broadcast_text VALUES (30026, 'If only you knew... Maltimor, I hope the Twisting Nether... takes you...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_ai_scripts VALUES
(2200020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30026, 0, 0, 0, 0, 0, 0, 0, 0, 'Farad - Say upon Death');
REPLACE INTO creature_ai_events VALUES
(2200020, 60836, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200020, 0, 0, 'Farad - Say upon Death');
-- Gazzirik on death:
REPLACE INTO broadcast_text VALUES (30027, 'That was a bad deal...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_ai_scripts VALUES
(2200021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30027, 0, 0, 0, 0, 0, 0, 0, 0, 'Gazzirik - Say upon Death');
REPLACE INTO creature_ai_events VALUES
(2200021, 60836, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200021, 0, 0, 'Gazzirik - Say upon Death');

-- Investigating Hateforge
delete from quest_template where entry = 40486;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40486,2,46,50,45,0,0,'Investigating Hateforge','Bah, what a wasteland to be assigned to, it\'s insulting.\n\nI want to get out of here as soon as I can, and to do so I need some work done, I take it you are willing to help huh?\n\nThe Dark Iron are up to something, and it\'s my job to confirm that -something- is going on. What I need you to do is scout the entrance of the Quarry, and confirm Ironforge\'s suspicions.\n\nTravel up there, peak in the entrance, and come back, easy ye?','Explore the entrance to The Hateforge Quarry and return to Senator Granitebeard at Morgan\'s Vigil in Burning Steppes.','So, have you ventured up the ridge?','Hmm, so there is something going on up there.\n\nHold on just a minute, I got to write a report of my findings and send it to the highest authority.',0,0,0,0,0,0,0,0,60376,1,0,0,0,0,0,0,0,0,0,2250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Explore the entrance to The Hateforge Quarry');

replace into creature_questrelation (id, quest) values (60869, 40486);
replace into creature_involvedrelation (id, quest) values (60869, 40486);

update quest_template set type = 1 where entry = 40486;

REPLACE INTO creature_template VALUES
(60376, 328, 0, 0, 0, 'quest_40486_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO gameobject_template VALUES
(2010903, 5, 381, 'Quest 40486 Custom Trigger', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'custom_exploration_trigger');

REPLACE INTO gameobject (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (2010903, 0, -8168, -3104, 200.485, 1.6558, 0, 0, 0.736512, 0.676424, 300, 300, 100, 1, 0, 0);

-- The Hateforge Report
delete from quest_template where entry = 40487;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40486,40487,2,46,52,45,0,0,'The Hateforge Report','<Senator Granitebeard makes quick work of writing his report, sealing it and stamping it with the seal of Ironforge.>\n\nThere, I need you to take this to Ironforge, at once, and report it to King Magni Bronzebeard, it should hold all relevant information based off what I have seen, and what you have reported back to myself.\n\nBe quick, our enemies plot against us.','Take the Hateforge Report to King Magni Bronzebeard in Ironforge.','Yes?','What brings you to Ironforge, how can you assist the Bronzebeard?',60693,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60693,1,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60869, 40487);
replace into creature_involvedrelation (id, quest) values (2784, 40487);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60693,7743,'The Hateforge Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The King's Response
delete from quest_template where entry = 40488;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40487,40488,2,46,52,45,0,0,'The King\'s Response','<Magni would take the Hateforge Report, beginning to read it over with a calculated interest.>\n\nThe Dark Iron have been our foe for quite a while now, and I will not forgive them for what they have done.\n\nIt has been a while since we have discovered the efforts going on within the Burning Steppes, it was only a matter of discovering -what- was going on there.\n\nIt would appear that the Twilight Hammer has taken an interest in the project, they have been spotted entering.\n\nTake my response to Senator Gravelbelt, you are dismissed.','Bring Magni\'s Authorization to Senator Gravelbelt at Morgan\'s Vigil in Burning Steppes.','Yes?','So, how did things go in the capital?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (2784, 40488);
replace into creature_involvedrelation (id, quest) values (60869, 40488);

-- Assaulting Hateforge
delete from quest_template where entry = 40489;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40488,40489,2,5098,57,45,0,0,'Assaulting Hateforge','It would appear that The Hateforge Quarry is of great concern to the King, and he has given me the authority to recruit any on behalf of the kingdom.\n\nIf you are wanting to gain favor with Magni than this would be a good opportunity.\n\nI am looking for anyone to venture deep into the Hateforge Quarry and remove the presence of the Twilight Hammer within. If you are interested, I would suggest bringing fellow adventurers, a group of mercenaries, or some kind of brigade.\n\nIf you end up completing the task, return to Magni himself, and he will reward you.','Venture into The Hateforge Quarry and remove the presence of the Twilight Hammer from deep within, when completed, return to King Magni Bronzebeard in Ironforge.','Is there anything I can help you with?','<King Magni Bronzebeard would nod his head stoutly.>\n\nThe defence of the kingdom requires us to be steadfast in all manners, I have no doubt you have really shaken things up for our enemy, and put a stop to their plans.\n\nOn behalf of my people I reward you with an item from our armory, may it serve you well.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60694,1,60695,1,60696,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60869, 40489);
replace into creature_involvedrelation (id, quest) values (2784, 40489);

update quest_template set type = 81 where entry = 40489;

replace into item_template values
 ('60694', '4', '3', 'Crown of Grobi', '', '26330', '3', '0', '1', '92968', '23242', '1', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '30', '5', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '302', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '70', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60695', '4', '0', 'Sigil of Heritage', '', '31905', '3', '0', '1', '65700', '16425', '11', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '14', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60696', '2', '4', 'Rubyheart Mallet', '', '28776', '3', '0', '1', '189444', '47361', '13', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '62', '115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Rumors of Hateforge Brew
delete from quest_template where entry = 40490;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40490,2,5098,54,45,512,0,'Rumors of Hateforge Brew','There be rumors floatin\' around about somethin\' called \'Hateforge Brew\'. The Dark Iron refer to it as something with reverance, and I know they aint makin\' no ale in there.\n\nThe name is a cover up for somethin\' else and we gotta find out just what that somethin\' else is, ye get me? I do know that they have Chemist\'s within the Quarry, and my bet is they are linked to this Hateforge Brew.\n\nI need you to head in there, gather me a Dark Iron Vial and some Hateforge Chemistry Documents. I bet they have them stashed away somewhere in there about what\'s going on.','Delve into the Hateforge Quarry and recover a Dark Iron Vial, and the Hateforge Chemistry Documents, then return to Varlag Duskbeard at Morgan\'s Vigil in Burning Steppes.','You get a whiff of what\'s goin on in there yet?','Ahh, would you look at all this huh?!\n\nThose crafty bastards sure were keeping their secrets, I\'ll make sure to send this back to Ironforge when I get the chance, and they can look everything over, nice job eh?\n\nI got some extra Thunder Ale for you, oh and me ol\' gloves, they should treat you nicely, I got a new pair.',60697,1,60698,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6450,0,0,0,0,0,0,0,0,0,0,0,2686,10,60699,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60870, 40490);
replace into creature_involvedrelation (id, quest) values (60870, 40490);

update quest_template set type = 1 where entry = 40490;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60697,3663,'Dark Iron Vial',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60698,7601,'Hateforge Chemistry Documents',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50543);

REPLACE INTO page_text VALUES
(50543,'<Complex diagrams show various magical properties being mixed with molten lava.>\n\nHATEFORGE BREW is a nickname for the secret project that the upper class wants to keep under-wraps, all who study this document must keep their lips -sealed-.\n\nPunishment for leaking secrets from this document is trial in the Ring of Law.\n\n\n\n TO YOU, THE HATEFORGE CHEMIST. STUDY THE CHARTS AND DIAGRAMS, CONTINUE THE EXPERIMENTS. FAILURE IS -NOT- AN OPTION!!!',0);

replace into creature_loot_template values
(60717,60697,-100,2,1,1,0);

replace into gameobject_template values
(2010902,3,23432,'Sealed Documents Container',0,4,1,43,2010902,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010902,60698,-100,0,1,1,0);

replace into item_template values
 ('60699', '4', '2', 'Varlag\'s Clutches', '', '18981', '2', '0', '1', '43452', '10863', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '96', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Scrap Forager
delete from quest_template where entry = 40491;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40491,2,46,54,47,0,0,'Scrap Forager','Greetings strangers, it seems some recruits from this new horde are arriving at last. I\'ll keep this short, we\'re not doing so well here, its like everything is being hold together by worg spit, and the lack of resources certainly doesn\'t help. I\'ll say its about time we fixed that.\n\nDark iron tends to be quite scarce in the surface of the steppes, but most creatures around there parts carry some on their person whether it be baubles, equipment or sitting in their stomach. Venture out and collect me a sizeable amount of scraps so I can keep forging equipment for our grunts to keep the hold safe.','Scavenge 50 Dark Iron Scraps from various creatures in Burning Steppes and return to Blacksmith Torren in Karfang Hold.','Hard times call for desperate measures, knowing how to make do with what you have draws the line between life and death.','That\'s quite a haul, I\'m impressed. Joining this new horde might not be so bad after all. You\'ve scavenged so much I even have surplus to forge you an equipment of your choice. I believe you will wear it well.',22528,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5025,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60700,1,60701,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60762, 40491);
replace into creature_involvedrelation (id, quest) values (60762, 40491);

update creature_template set npc_flags = 16391 where entry = 60762;

replace into item_template values
 ('60700', '2', '1', 'Scrapforged Battleaxe', '', '28349', '2', '0', '1', '207572', '51893', '17', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '20', '7', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0',
 '0', '125', '187', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60701', '4', '4', 'Scrapforged Helm', '', '27338', '2', '0', '1', '60530', '12160', '1', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '14', '7', '19',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '456', '0', '5', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '70', '0', '0', '0', '0', '10', '0', '0', '0',
 '0', '1', NULL);
-- NEW NPC FOR PTR 
-- Masey Wirefuse, display ID 5425, level 38, humanoid,, no weapon, quest giver/gossip flags, greeting text : "Ironforge is nice and all, but I kind of miss Gnomeregan, it was just, cozy, and offered all kinds of progress in many fields you know?\n\nWell, maybe not, but either way it isn't all bad, there are still things to figure out and mysteries to solve."
REPLACE INTO creature_template VALUES
(60872, 5425, 0, 0, 0, 'Masey Wirefuse', '', 0, 38, 38, 1599, 1599, 0, 0, 1780, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41173; set @magic_number = 60872;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ironforge is nice and all, but I kind of miss Gnomeregan, it was just, cozy, and offered all kinds of progress in many fields you know?\n\nWell, maybe not, but either way it isn\'t all bad, there are still things to figure out and mysteries to solve.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- REDUCE DAMAGE of Har'gesh Doomcaller by 25%.
update creature_template set dmg_min = 128, dmg_max = 175 where entry = 60737;
-- change the spell timer of Hateforge Engineer's decoy dragonling to be 30 seconds instead of 10, (so he casts it every 30 seconds instead of every 10)
update creature_spells set delayrepeatmin_1 = 30, delayrepeatmax_1 = 30 where entry = 180025;
-- remove (PAGE 1), (PAGE 2) etc. things from Gadgetzan Times Volume II.
update page_text set text = 'SHREDDER TECH\n\nI always thought the name \'Shredder\' was a bit of a poor marketing choice, really. These mechanical machines are worth fifty goblin labourers, and they don\'t always have to shred, oh no! They can saw, rip, tear, shred, grind, smash, crush, the possibilities, Dear Reader, the possibilities are almost endless.\n\nMaybe you\'re a potential investor. Maybe you\'re some hoodwink who wants to rob the glorious oil guzzlers of their fused wiring to sell on the black market. Hey, I don\'t judge. In fact, if you get any, I\'ll pay a good price myself... Either way, here\'s the most recent investors:' where entry = 50537;
update page_text set text = 'Ashenvale, the Warsong Lumber Camp. To see the scale of this operation is a marvel to behold. The entertainment of the Orcs and Elves stabbing each other just on the other side of the river is pretty amusing too.\n\nStonetalon Mountains, the Venture Co. in the Windshear Crag. I mean, yeah, the tree-huggers get another forest chopped down. But who cares, that valley was ugly as sin anyway, looks way better with a bit industrialisation.\n\nStranglethorn Vale, the Venture Co. near Lake Nazferiti. Keeping the geologists hard at work, these beasts rip through the undergrowth to allow the research to continue. Some beautiful crystals I hear they find out there, too.\n\nWestfall? I heard one fancy unit was shipped to somewhere in Westfall, but I\'ve not heard about where it\'s gone to, or who has it. Weird, disappeared into thin air...' where entry = 50538;
update page_text set text = 'THE QUARRY\n\nSo there I was, Dear readers! There I was, taking a tour through the Burning Steppes to visit a colleague in Flame Crest. Let me paint the picture: the sun was high and scorching, the land was black as tar and burning, and the wildlife was equal parts ugly and dangerous.\n\nWhen suddenly, BOOM! The biggest explosion I ever did hear. Made the ground itself pulse, it did. Naturally, I just had to find out what could cause such a thing of beauty. Well, on the horizon I spied a deep green smoke plume coming from a quarry in the Eastern hills. Smell unlike anything I can compare it to, made my nose crinkle and my eyes water. I didn\'t get much closer, but I could see by the entrance to the quarry... those curious Dark Irons were milling about. Guarding the perimeter, shouting at each other in that strange Dwarvern dialect!' where entry = 50539;
update page_text set text = 'Asking about, apparently there have been a lotta movements in the area, travelling back and forth down the rocky roads. Guess the quarry ain\'t so disused anymore. Question is: what\'s it being used for? That ungodly smell seemed to be novel, no gunpowder there. The explosions seemed more frequent and violent, not just blasting apart rock for minerals. One brave (and equally stupid) goblin tried to meet with the foreman, Bargul, to find out what was going on. She never returned, but honestly, what did she expect to happen?\n\nAll I know is, where there\'s activity, there\'s production. Where there\'s production, there\'s business. And where there\'s business, there\'s gold! Far be it from me to tell you adventurin\' types where to spend your time and effort, but if I were you, I would be having a few words with the dwarves there to find out what\'s going on, and maybe become an early investor! Or at least sell their secrets. To me. Ideally.' where entry = 50540;
update page_text set text = 'ZEPPELIN ACCIDENTS\n\nIt really is amazing what people will put up with for the sake of saving time and convenience. Now, I may have long since had shares in the Zeppelin transport companies. They are the lifeblood of travel, getting Orcs, Goblins, even colossal Tauren across the continents within days! Anyone smart enough would see this as a worthwhile investment.\n\nWe got ourselves competition now, though. Some upstarts started running air travel all the way to Kargath! That\'s right, the desert dust and winds, the bane of any airship, and these dumbos decided it was the perfect destination to run their routes to.\n\nNeedless to say, the results ain\'t pretty. Day after day we get reports of bodies drying in the desert sun, flung from the decking of the Zeppelins as they careen through the inhospitable winds! There are even reports of crashes and explosions, oh my oh my.' where entry = 50541;
update page_text set text = 'Say what you want about Goblin engineering, the only fatalities we\'ve had so far on zeppelins were from people thinking they could shave minutes off their journeys by jumping off as we flew over their homes, or the occasionally cheeky mind control magic spell. Which of course, we take zero responsibility for – that much is in the small print when you agree to ride the aircraft.\n\nI don\'t think I need to elaborate. It\'s lunacy to take their transport, stick with the established routes. Stay safe! Stay alive! Give us your custom and not them!' where entry = 50542;
-- quest The Way of the Witch Doctor IV update main quest description of:
update quest_template set details = 'With this serum you may speak with the spirit of the toad, he is a patient, and incredibly wise one. We trolls have been hexin\' our enemies for quite some time, and it is about time for you to pay respects.\n\nN\'ribbi is the one you seek, and he can be found deep in the Dustwallow Marsh, far to the south west, at the very edge of the Bluefen. Go there, and speak with him, bring this serum, and offer it to N\'ribbi as tribute.' where entry = 40352;
-- new items and loot_tables:
-- Hateforge Trash Items
replace into item_template values
 ('60702', '15', '0', 'Singed Cloth', '', '21470', '0', '0', '1', '6736', '1684', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60703', '15', '0', 'Chipped Miner\'s Union Badge', '', '31499', '0', '0', '1', '9224', '2306', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60704', '15', '0', 'Broken Flask', 'Has an acidic scent.', '6530', '0', '0', '1', '5932', '1483', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60705', '15', '0', 'Torn Union Flyer', 'Depicts a miner pointing at you, urging you to join the union.', '7695', '0', '0', '1', '11832', '2958', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60706', '15', '0', 'Worn Gear', '', '1221', '0', '0', '1', '3928', '982', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60707', '15', '0', 'Cracked Power Core', 'A green liquid is slowly oozing out of the crack.', '17923', '0', '0', '1', '4212', '1053', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60708', '15', '0', 'Ash-Covered Scroll', 'Contains hymns praising Ragnaros.', '1093', '0', '0', '1', '8624', '2156', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60709', '15', '0', 'Ashen Tinderbox', '', '12333', '0', '0', '1', '7528', '1882', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60710', '15', '0', 'Battered Horn', '', '6338', '0', '0', '1', '11452', '2863', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- loot table for items 60702-60710:
-- Singed Cloth: (%25)
replace into creature_loot_template values
(60717,60702,6,1,1,1,0),
(60718,60702,6,1,1,1,0),
(60719,60702,6,1,1,1,0),
(60720,60702,6,1,1,1,0),
(60830,60702,6,1,1,1,0),
(60831,60702,6,1,1,1,0),
(60721,60702,6,1,1,1,0),
(60722,60702,6,1,1,1,0),
(60723,60702,6,1,1,1,0),
(60724,60702,6,1,1,1,0),
(60716,60702,6,1,1,1,0);
-- Chipped Miner's Union Badge (%20)
replace into creature_loot_template values
(60721,60703,6,1,1,1,0),
(60830,60703,6,1,1,1,0);
-- Broken Flask (%25)
replace into creature_loot_template values
(60717,60704,6,1,1,1,0);
-- Torn Union Flyer (%20)
replace into creature_loot_template values
(60723,60705,6,1,1,1,0),
(60724,60705,6,1,1,1,0);
-- Worn Gear (%25)
replace into creature_loot_template values
(60719,60706,6,1,1,1,0),
(60720,60706,6,1,1,1,0),
(60712,60706,6,1,1,1,0);
-- Cracked Power Core (%15)
replace into creature_loot_template values
(60712,60707,6,1,1,1,0),
(60719,60707,6,1,1,1,0),
(60720,60707,6,1,1,1,0);
-- Ash-Covered Scroll (%20)
replace into creature_loot_template values
(60718,60708,6,1,1,1,0);
-- Ashen Tinderbox (%15)
replace into creature_loot_template values
(60717,60709,6,1,1,1,0),
(60718,60709,6,1,1,1,0),
(60719,60709,6,1,1,1,0),
(60720,60709,6,1,1,1,0),
(60830,60709,6,1,1,1,0),
(60831,60709,6,1,1,1,0),
(60721,60709,6,1,1,1,0),
(60722,60709,6,1,1,1,0),
(60723,60709,6,1,1,1,0),
(60724,60709,6,1,1,1,0),
(60716,60709,6,1,1,1,0);
-- Battered Horn (%10)
replace into creature_loot_template values
(60723,60710,6,1,1,1,0),
(60716,60710,6,1,1,1,0),
(60722,60710,6,1,1,1,0);
-- fixes for items 80670, 80674, 83564:
-- boots bugfix.
update item_template set inventory_type = 8, class = 4, subclass = 4 where entry = 80670;
-- namefix.
update item_template set name = 'Corrosive Core', spellid_1 = 48036 where entry = 80674;
-- sword bugfix.
update item_template set spellcharges_1 = 0 where entry = 83564;
-- Add the following items to the loottable of mod ID 60829 with a 20% chance.
update creature_template set loot_id = 60829 where entry = 60829;
replace into creature_loot_template values
(60829,80670,20,1,1,1,0),
(60829,80671,20,1,1,1,0),
(60829,80672,20,1,1,1,0),
(60829,80673,20,1,1,1,0),
(60829,80674,20,1,1,1,0);
-- Abyssal Council High Council Boss loottable revamp:
-- Prince Skaldrenox.
delete from creature_loot_template where item in (0,20515,20680,20681,20682,83562,83554);
replace into creature_loot_template values
(15203,20515,100,1,1,1,0),
(15203,20681,50,2,1,1,0),
(15203,20680,50,2,1,1,0),
(15203,20682,50,3,1,1,0),
(15203,83562,50,3,1,1,0),
(15203,83554,20,4,1,1,0);
-- High Marshal Whirlaxis:
delete from creature_loot_template where item in (0,20515,20689,20690,20691,83564,83556);
replace into creature_loot_template values
(15204,20515,100,1,1,1,0),
(15204,20690,50,2,1,1,0),
(15204,20689,50,2,1,1,0),
(15204,20691,50,3,1,1,0),
(15204,83564,50,3,1,1,0),
(15204,83556,20,4,1,1,0);
-- Lord Skwol:
delete from creature_loot_template where item in (0,20515,20683,20684,20685,83563,83557);
replace into creature_loot_template values
(15305,20515,100,1,1,1,0),
(15305,20684,50,2,1,1,0),
(15305,20683,50,2,1,1,0),
(15305,20685,50,3,1,1,0),
(15305,83563,50,3,1,1,0),
(15305,835570,20,4,1,1,0);
-- Baron Kazum:
update creature_loot_template set groupid = 0 where entry = 15205 and item = 30107;
delete from creature_loot_template where item in (0,20686,20687,20688,20515,83565,83555);
replace into creature_loot_template values
(15205,20515,100,1,1,1,0),
(15205,20686,50,2,1,1,0),
(15205,20687,50,2,1,1,0),
(15205,20688,50,3,1,1,0),
(15205,83565,50,3,1,1,0),
(15205,83555,20,4,1,1,0);
-- Add item 80801 as a drop to all mobs that also drop item 940.
replace into reference_loot_template values
(30075,80801,0,1,1,1,0);
-- Add item 80793 as a drop to all mobs that also drop item 14557.
REPLACE INTO creature_loot_template VALUES
(9817 , 80793, 0.02, 0, 1, 1, 0),
(10319, 80793, 0.02, 0, 1, 1, 0),
(10400, 80793, 0.02, 0, 1, 1, 0),
(10486, 80793, 0.02, 0, 1, 1, 0),
(10488, 80793, 0.02, 0, 1, 1, 0),
(11350, 80793, 0.02, 0, 1, 1, 0),
(11352, 80793, 0.02, 0, 1, 1, 0),
(11353, 80793, 0.02, 0, 1, 1, 0),
(11361, 80793, 0.02, 0, 1, 1, 0),
(11371, 80793, 0.02, 0, 1, 1, 0),
(11551, 80793, 0.02, 0, 1, 1, 0),
(11658, 80793, 0.02, 0, 1, 1, 0),
(11662, 80793, 0.08, 0, 1, 1, 0),
(11673, 80793, 0.02, 0, 1, 1, 0),
(12463, 80793, 0.1 , 0, 1, 1, 0),
(14821, 80793, 0.02, 0, 1, 1, 0),
(11668, 80793, 0.02, 0, 1, 1, 0),
(10407, 80793, 0.02, 0, 1, 1, 0),
(11359, 80793, 0.02, 0, 1, 1, 0),
(10317, 80793, 0.02, 0, 1, 1, 0),
(15207, 80793, 0.04, 0, 1, 1, 0),
(11949, 80793, 0.2 , 0, 1, 1, 0),
(11659, 80793, 0.02, 0, 1, 1, 0),
(91910, 80793, 0.02, 0, 1, 1, 0);
replace into reference_loot_template values
(150112,80793,0,1,1,1,0);
-- Add item 80811 as a drop to all mobs that also drop item 12975.
replace into reference_loot_template values
(30023,80811,0,1,1,1,0);
-- Add item 80817 as a drop to mob ID 5822 to the Group 6 loottable with a 65% chance.
REPLACE INTO creature_loot_template VALUES
(5822 , 80817, 65, 6, 1, 1, 0);
-- Change level of Gazzirik (entry 60859) to 24, and adjust all values accordingly.
delete from creature_template where entry = 60859;
REPLACE INTO creature_template VALUES
(60859, 7182, 0, 0, 0, 'Gazzirik', '', 41163, 24, 24, 664, 664, 0, 0, 1026, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 36, 46, 0, 106, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 48, 'EventAI', 0, 3, 0, 0, 3, 20145, 0, 0, 0, 0, 0, 0, '');

-- Fueling the Blood Fury
delete from quest_template where entry = 40492;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40492,2,46,52,45,0,0,'Fueling the Blood Fury','Whelping, I need your assistance.\n\nThe Blood Fury itself remains untapped to its full potential, long has it been since we have followed the demons and worked in tandam with their magic to become stronger. I intend to explore what may be possible without their help. My dark magic is practiced, and ready for use, I simply need the correct regeants.\n\nThis is where you come in.\n\nWithin the Burning Steppes are imps of a demonic nature, no doubt remnants of the burning legion, battle them, and bring me five of their scolding hearts.','Bring 5 Scalding Flamekin Hearts to Darkseer Geshtol at Karfang Hold in Burning Steppes.','The Blood Fury burns within us, and needs to be strengthened.','These shall do nicely, now. Let us see what power they truly hold.',60712,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5300,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60763, 40492);
replace into creature_involvedrelation (id, quest) values (60763, 40492);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60712,3320,'Scalding Flamekin Heart',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(9776,60712,-60,1,1,1,0),
(9777,60712,-60,1,1,1,0),
(9778,60712,-60,1,1,1,0),
(9779,60712,-60,1,1,1,0);

update creature_template set script_name = 'npc_darkseer_geshtol' where entry = 60763;

-- Fueling the Blood Fury
delete from quest_template where entry = 40493;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40492,40493,2,46,54,45,0,0,'Fueling the Blood Fury','This region does not possess the potency that I am looking for, but I do know a place that does.\n\nFar to the southeast is the Blasted Lands. It is where I came into this world, in awe by it\'s skies and the lush swamp. All that remains now is a hellish wasteland akin to what the Outland is.\n\nIt is there that demons rove the land and the energies of the Dark Portal itself fester and pulse.\n\nGo there, and kill a Felguard Sentry that watches the portal, bring me a Large Felguard Heart.','Bring a Large Felguard Heart from the Blasted Lands to Darkseer Geshtol at Karfang Hold in Burning Steppes.','I will not wait forever, have you done as I asked whelp?','This heart belonged to a powerful Felguard, one that desired to serve its masters tirelessly.\n\n<Darkseer Geshtol would examine it carefully.>\n\nIt would appear there are no large flaws, this should work nicely. You\'ve done well out there and have done well for us, I have gathered something you might find useful for all of the hard work.\n\nNow... Lets see what this is capable of...',60713,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5650,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60763, 40493);
replace into creature_involvedrelation (id, quest) values (60763, 40493);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60713,3320,'Large Felguard Heart',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(6011,60713,-25,1,1,1,0);

-- The Firegut Task
delete from quest_template where entry = 40494;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40494,2,46,53,45,0,0,'The Firegut Task','How disgusting.\n\nYou people dare call yourself the Horde, yet you know nothing about the Horde. We are the True Horde, the first and the very best.\n\nI see no thirst for battle in your eyes, I see no glory, I see nothing. You\'re nothing more than a worm living in the legend of the real Horde.\n\n You are lucky I promised Karfang to indulge fools such as you. But if you truly want to not be a simple pest in the eyes of our clan you have to prove your skill as a warrior.\n\nUse whatever trickery you believe would aid you. I challenge you to take on the Firegut Ogres, slay them and prove yourself.\n\nNow go or forever be shamed for your utter powerlessness.','Slay 15 Firegut Ogres, 10 Firegut Ogre Mages, and 8 Firegut Brutes for Taskmaster Ok\'gog at Karfang Hold in Burning Steppes.','Hmph. Pathetic fool.','The stench of ogre blood bathes you $c. You might not be useless after all.',0,0,0,0,0,0,0,0,7033,15,7034,10,7035,8,0,0,0,0,0,5100,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60774, 40494);
replace into creature_involvedrelation (id, quest) values (60774, 40494);

-- Forest Troll Scum
delete from quest_template where entry = 40495;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40494,40495,2,1583,60,48,512,0,'Forest Troll Scum','Fine, you\'ve earned yourself the right to breathe the air in Karfang Hold.\n\nBut I have one last trial for you. A grudge, yes, that\'s what this is.\n\nAll the Blackhands were nothing but fools, the father was a misguided mongrel who was fooled by the wretched Gul\'dan. Maim isn\'t even worth mentioning, he died a fool\'s death, nothing more deserving for his kind.\n\nAnd Rend? Rend is kneeling before that despicable dragon and doomed the entirety of the Blackrock Clan. But that\'s not even his worst call yet.\n\nHe made a forest frog his strategist.\n\nWar Master Voone?\n\n<Ok\'gog yells that name angrily.>\n\nWar Master? He\'s nothing but a disgusting frog that must meet his end. Bring me his tusks and prove once and for all that the Horde led by a wretch who grew up amongst Humans has at least a quarter of the former glory of the True Horde.','Kill War Master Voone in Lower Blackrock Spire and bring his tusks back to Taskmaster Ok\'gog at Karfang Hold in Burning Steppes.','Hmph, War Master.','The arrogant fool lays dead. Ah to be alive $r. I tell you, hearing the demise of those you hate while you\'re still well enough to eat, drink and kill feels like the embrace of a cold and grim fate. But we hold it into our arms with pride and we would never let go. Such is life living under the Horde\'s name, we greet death with open arms and weapons ready.',60714,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6400,76,250,0,0,0,0,0,0,0,0,0,60715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60774, 40495);
replace into creature_involvedrelation (id, quest) values (60774, 40495);

update quest_template set type = 81 where entry = 40495;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60714,1416,'War Master Voone\'s Tusks',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(9237,60714,-100,1,1,1,0);

-- Raider's Revenge
delete from quest_template where entry = 40496;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40496,2,46,56,54,0,0,'Raider\'s Revenge','I have fought in many battles, against the Alliance, orcs, demons, ogres... Yet I never expected to face my own clan.\n\nMy clan no longer. A few days ago I was patrolling the wastes on my trusty wolf, Skullshatter. I encountered Rend\'s soldiers. Before I could do anything, they attacked! I was outnumbered. I manged to escape, but they hurt my wolf. I thought it to be only a scratch, as he suffered worse many times. Unfortunately, the arrow was poisoned and he died a few hours later.\n\nI do not mourn his death. This was his purpose, after all. He joined his brothers and will now hunt among the ancestors. But I want revenge. If only I wasn\'t so severly needed here... $R, go south of here, to the Pillar of Ash and slay as many Blackrock as you can. Bring me their heads. Forty will do.','Bring 40 Blackrock Heads to Raider Fargosh in Karfang Hold.','Have you exacted revenge in my name?','Good. I feel better now. Yet, there is still much to do.',60716,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60765, 40496);
replace into creature_involvedrelation (id, quest) values (60765, 40496);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60716,1310,'Blackrock Head',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(7029,60716,-95,1,1,1,0),
(9605,60716,-95,1,1,1,0),
(7027,60716,-95,1,1,1,0),
(7025,60716,-95,1,1,1,0),
(7026,60716,-95,1,1,1,0),
(7028,60716,-95,1,1,1,0);

-- Raider's New Mount
delete from quest_template where entry = 40497;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40496,40497,2,46,56,47,0,0,'Raider\'s New Mount','Good. Now, a new task awaits you. As I said, I cannot leave this place. Not until I have a new wolf. My legs are not as swift as they used to be in my youth.\n\nSteal one from the Blackrock. Here, take this cage. Find a Young Blackrock Worg, capture it, and bring it to me. You can probably find a young worg in their stables in the Pillar of Ash. I will mold it into a worthy mount in no time.','Catch a Young Blackrock Worg and bring him back to Raider Fargosh in Karfang Hold.','I have trained many worgs in my life. My first one, years ago, on Draenor...','This one will do. I will get to training them as soon I can.',60731,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60720,1,0,4800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60765, 40497);
replace into creature_involvedrelation (id, quest) values (60765, 40497);

REPLACE INTO item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) VALUES
(60720,20629,'Worg Trap',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Large enough to fit a Blackrock Worg inside.',0),
(60731,16207,'Captured Blackrock Worg',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO creature_template VALUES
(60873, 741, 0, 0, 0, 'Young Blackrock Worg', '', 0, 50, 50, 2990, 2990, 0, 0, 2958, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_young_blackrock_worg');

set @gossip_menu_id = 41174; set @magic_number = 60873;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The wolf looks at you with fear in its eyes.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Raider's Raid
delete from quest_template where entry = 40498;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40497,40498,2,1583,58,50,0,0,'Raide\'s Raid','Last thing to do. In the Blackrock Spire, they breed wolves. Go there, and slay the alpha. Gizrul the Slavener is his name.\n\nHit them where it hurts. Let them know my pain.','Slay Gizrul the Slavener in Blackrock Spire, then report to Raider Fargosh in Karfang Hold.','Revenge is close.','I knew you had it. You severely weakened the Blackrock Clan with your feat. Without the alpha, it will take years to rebuild their worg population.\n\nSoon, I will once again ride to battle. Thank you, $c. Take this, a gift from myself.',0,0,0,0,0,0,0,0,10268,1,0,0,0,0,0,0,0,0,15000,6600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60717,1,60718,1,60719,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60765, 40498);
replace into creature_involvedrelation (id, quest) values (60765, 40498);

update quest_template set type = 81 where entry = 40498;

replace into item_template values
 ('60717', '4', '2', 'Worg Rider Sash', '', '18980', '2', '0', '1', '37368', '9342', '6', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '16', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '84', '0', '0', '0',
 '0', '0', '0', '14027', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60718', '4', '1', 'Sootwalker Sandals', '', '16822', '2', '0', '1', '47128', '11782', '8', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '51', '0', '5', '0',
 '0', '0', '0', '9415', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60719', '2', '0', 'Axe of Falgosh', '', '9118', '2', '0', '1', '176516', '44129', '21', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '64', '105', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Preventative Antidote
delete from quest_template where entry = 40499;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40499,2,46,54,47,0,0,'Preventative Antidote','Greetings, recruit of the new horde. I suppose you\'re here to aid? Then I got the task for you. To the west of the hold you can find the deadly venomtip and deathlash scorpids, their body might be fragile but their venom killed many aspiring orcs. I know how to brew an antidote to cure such ailments, but problem is that the antidote is made from the venom glands of the scorpids themselves.\n\nGo out there and collect their glands, if you survive your efforts will save many lives. If you perish trying then you\'ll be forgotten like the rest.','Collect 8 Venomtip Venom Glands and 6 Deathlash Venom Glands and return to Soresh in Karfang Hold.','Can never be too prepared in these hostile lands.','It seems you endured their stings and lived to tell the tale. Many lives will be saved thanks to your work. Please accept what little I have as payment.',60721,8,60722,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6000,5450,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60773, 40499);
replace into creature_involvedrelation (id, quest) values (60773, 40499);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60721,6427,'Deathlash Venom Gland',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0),
(60722,1423,'Venomtip Venom Gland',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(9695,60721,-80,1,1,1,0),
(9691,60722,-80,1,1,1,0);

-- Removing Vital Assets
delete from quest_template where entry = 40500;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40500,2,46,58,50,0,0,'Removing Vital Assets','Can\'t you see I\'m busy? Oh, the whelpling wants to make itself useful, then I have the task for you. Venture west near the doorstep of the Blackrock Mountain and you shall find the Blackrock Stronghold, where they prepare for assaults against those that would oppose their manipulative masters, truly fools to blindly follow them.\n\nSlay their battlemasters and retrieve the stronghold documents where they plan their attacks. Now go and make yourself useful!','Kill 10 Blackrock Battlemasters and retrieve the Stronghold Documents. Return to Molk in Karfang Hold when you\'re finished.','I don\'t have time to chat when there are things to be done, so get moving.','So you\'ve done as I asked. Let\'s see what\'s in the documents. <Molk takes the document from you and stares intently for a few seconds> It appears my suspicions were correct, we are their top target for "treason" with Kargath next in line. Bah! The fools don\'t even know what they\'re fighting for anymore. With their numbers thinned their plans won\'t come into fruition. It seems you are more useful than you look, whelpling.',60723,1,0,0,0,0,0,0,7029,10,0,0,0,0,0,0,0,0,12000,4650,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60769, 40500);
replace into creature_involvedrelation (id, quest) values (60769, 40500);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60723,3331,'Stronghold Documents',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010904,3,183,'Stronghold Documents',0,4,1,43,2010904,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010904,60723,-100,0,1,1,0);
-- Reduce Sell Price
update item_template set sell_price = 842, buy_price = 3368 where entry = 60702;
update item_template set sell_price = 1153, buy_price = 4612 where entry = 60703;
update item_template set sell_price = 1283, buy_price = 5132 where entry = 60704;
update item_template set sell_price = 1479, buy_price = 5916 where entry = 60705;
update item_template set sell_price = 1523, buy_price = 6092 where entry = 60708;
update item_template set sell_price = 984, buy_price = 3936 where entry = 60709;
update item_template set sell_price = 1502, buy_price = 6008 where entry = 60710;
-- Dalaran Reputation Rewards
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60724, 'Dalarani Conjurer\'s Hat', '', 4, 1, 7, 4, 15911, 1, 60, 0, -1, -1, 128922, 32230, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 60, 87, 0, 0, 70, 0, 65, 0, 0, 0, 0, 0, 10, 5, 30, 7, 12, 23729, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 61, 7);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60725, 'Ring of Flowing Leylines', '', 4, 0, 1, 4, 31800, 0, 60, 1, -1, -1, 165923, 41480, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 65, 0, 0, 0, 0, 0, 5, 5, 8, 14127, 1, 0, 0, -1, 0, -1, 0, 61, 7);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60726, 'Spellguard\'s Shield', '', 4, 6, 6, 3, 18701, 1, 60, 0, -1, -1, 105312, 26328, 14, 4, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 100, 2217, 42, 0, 65, 0, 49, 0, 0, 0, 0, 0, 0, 7, 13, 9344, 1, 0, 0, -1, 0, -1, 0, 61, 6);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60727, 'Pauldrons of Sealed Magics', '', 4, 3, 5, 3, 25677, 1, 60, 0, -1, -1, 112909, 28227, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 70, 286, 0, 0, 65, 0, 49, 0, 0, 0, 0, 0, 0, 7, 13, 15465, 1, 0, 0, -1, 0, -1, 9416, 1, 0, 0, 0, 0, 0, 0, 61, 6);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60728, 'Boots of the Hermit Magi', '', 4, 1, 7, 3, 26261, 1, 60, 0, -1, -1, 72909, 18227, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 40, 63, 0, 0, 65, 0, 49, 0, 0, 0, 0, 0, 0, 5, 12, 7, 11, 6, 10, 9317, 1, 0, 0, 0, 0, -1, 0, 61, 6);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60729, 'Skulker\'s Gloves', '', 4, 2, 8, 3, 24768, 1, 60, 0, -1, -1, 76926, 19231, 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 113, 0, 0, 65, 0, 49, 0, 0, 0, 0, 0, 0, 3, 12, 4, 12, 7, 10, 15464, 1, 0, 0, -1, 0, -1, 13679, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60730, 'Girdle of the Warden', '', 4, 4, 6, 3, 26437, 1, 60, 0, -1, -1, 78209, 19552, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 45, 380, 0, 0, 65, 0, 49, 0, 0, 0, 0, 0, 0, 4, 8, 3, 12, 7, 15, 13675, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- Of New and Old
delete from quest_template where entry = 40501;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40501,2,46,52,45,0,0,'Of New and Old','You are from the New Horde, are you not? After much discussing it has been decided that we cannot remain within the Blackrock Clan, and are seeking for new refuge and alliances outside of our boundaries.\n\nOn Behalf of Karfang I am tasked to make a request.\n\nThis Karfang Missive must be delivered to the Warchief Thrall in Orgrimmar at once, I trust that you can carry it to him.','Deliver the Karfang Missive to Thrall in Orgrimmar.','Yes?','How can I help you $R?\n\n<Thrall takes the missive, reading it over.>\n\nKarfang, this name is not familiar to me.',60732,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60732,1,0,500,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60772, 40501);
replace into creature_involvedrelation (id, quest) values (4949, 40501);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60732,5567,'Karfang Missive',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50544);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50544, 'To Thrall, Warchief of the New Horde.\n\nMy name is Karfang, I come from the world of Outland, I fought beneath the Blackrock Mountain and warred with my kin, but they are no longer as they once were.\n\nThe Blackrock Clan, and the Old Horde itself is corrupted, lost to outward influence, of this I am sure you are aware. I am looking to make a new future with my people and am taking much risk in delivering this letter to you.\n\nI wish to pledge my loyalty to your New Horde, and save my kin.\n\nWARLEADER KARFANG.', 0);

-- Of New and Old II
delete from quest_template where entry = 40502;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40501,40502,2,46,52,45,0,0,'Of New and Old II','Another wishes to join the Horde, so be it.\n\nI do hold concerns with those from the Blackrock Clan, for their evil runs deep, corrupted to the core. We have dealt with Old Horde refugees in the past but not an entire group looking to join us.\n\nEitrigg was once apart of the Blackrock Clan, and perhaps knows more about this \'Karfang\'. Speak with him, and figure out what he knows.','Speak with Eitrigg to find out info about Karfang for Thrall in Orgrimmar.','So Does Eitrigg know anything?','If Eitrigg believes this may be truth, than I believe.\n\nThey have certainly suffered as we have and should deserve a second chance. I will give them that second chance, should Karfang prove his loyalties.',0,0,0,0,0,0,0,0,60377,1,0,0,0,0,0,0,0,0,0,500,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak with Eitrigg');

replace into creature_questrelation (id, quest) values (4949, 40502);
replace into creature_involvedrelation (id, quest) values (4949, 40502);

update creature_template set script_name = 'npc_eitrigg' where entry = 3144;

set @gossip_menu_id = 41175; set @magic_number = 30028;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I haven\'t heard that name in some time, though I certainly remember it.\n\nKarfang fought with the Blackrock Clan during our invasion of Azeroth, and rose through the ranks quickly. From my knowledge, he was a strong warrior, though not as blood thirsty as others.\n\nThe Karfang I remember was smart enough to deny suicidal orders, or challenge leadership when required, I am not surprised he has lasted this long.\n\nKarfang can be trusted, he is certainly wise enough to see the doom of the Old Horde before him.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO creature_template VALUES
(60377, 328, 0, 0, 0, 'quest_40502_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Of New and Old III
delete from quest_template where entry = 40503;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40502,40503,2,46,52,45,0,0,'Of New and Old III','I put my faith on Eitrigg\'s word, for he knows much about the Old Horde and it\'s ways. If Karfang wishes to leave the Blackrock Clan and find a new beginning, then he must prove his loyalties. I have prepared a letter to send back to him, make sure it arrives in due time $r.\n\nStrength, and honor.','Bring the Warchief\'s Response to Karfang at Karfang Hold in Burning Steppes.','Yes?','<Karfang looks out at the Warchief\'s Response, beginning to read with caution.>\n\nSo it appears the Warchief is asking us for a test of loyalty, he shall receive his demands.',60733,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60733,1,0,800,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (4949, 40503);
replace into creature_involvedrelation (id, quest) values (60770, 40503);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60733,7694,'Warchief\'s Response',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50545);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50545, 'To Warleader Karfang.\n\nI have read your letter, and have listened.\n\nThe Horde is not stranger to hardships, and adversity. All of us have had to struggle and make hard decisions as you have. We are a band of equals who share values of wisdom and honor to the wartorn and battered of this world.\n\nIf you truly wish to prove your loyalties to me as Warchief then I require something from you.\n\nThe Twilight Hammer have begun to show themselves in your region, they are a threat to this world. Remove them for me, and I will know your word is true.\n\n THRALL, WARCHIEF OF THE HORDE.', 0);

-- Of New and Old IV
delete from quest_template where entry = 40504;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40503,40504,2,5098,57,45,0,0,'Of New and Old IV','I know what it is the Warchief speaks, the Twilight Hammer has recently moved into the Hateforge Quarry, located just south of here.\n\nIt is an annoyance that was eventually going to draw in more attention from our former masters, and was something we would need to deal with eventually, now I implore you to help us with it.\n\nWe may have the strength to fight deep, but to stop the Twilight Hammer lurking deep within the Dark Iron clutches, requires covert strength, not brute strength.\n\nAs Warleader, I ask you to remove the Twilight presence on my behalf.','Venture into the Hateforge Quarry, and remove the Twilight Hammer presence within for Karfang in Karfang Hold.','Has it been done?','On behalf of everyone here, you have done us a great service in securing our future, entrance within the Horde means we may get out of this ashen wasteland eventually.\n\nI have seen much in my time on Outland, and in the Blackrock Mountain, but I look forward in what is to come, and for that you have my gratitude.',0,0,0,0,0,0,0,0,60737,1,0,0,0,0,0,0,0,0,0,4650,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60734,1,60735,1,60736,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60770, 40504);
replace into creature_involvedrelation (id, quest) values (60770, 40504);

update quest_template set type = 81 where entry = 40504;

replace into item_template values
 ('60734', '2', '7', 'Blade of the Warleader', '', '20358', '3', '0', '1', '171092', '42773', '21', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '75', '101', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9139', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60735', '4', '0', 'Obsidian Gem Choker', '', '66200', '3', '0', '1', '42796', '10699', '2', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '14521', '1', '0', '0', '-1', '0', '-1', '9415', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60736', '4', '4', 'Battlemaster Helm', '', '26115', '3', '0', '1', '59740', '14935', '1', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '19', '3', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '492', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '13384', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '80', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Protecting Fresh Blood
delete from quest_template where entry = 40505;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40505,2,5098,56,48,0,0,'Protecting Fresh Blood','We have had many join our ranks from the various battle groups dotted around the Burning Steppes, their names etched in paper marking their transfer to Karfang Hold.\n\nTo protect those that joined us we will need to destroy the documents that may lead any suspicious Blackrock our way.\n\nYou will find the Transfer Documents amongst the small camps around the Pillar of Ash, search high and low, and burn any you find.','Destroy the three Transfer Documents for Karfang at Karfang Hold in Burning Steppes.','Have you destroyed the documents $R?','The runts of our group will now be invisible to the Blackrock Clan, vanished from thin air with no trace of where they have gone.\n\nThere is still work to do.',0,0,0,0,0,0,0,0,-2010905,1,-2010906,1,-2010907,1,0,0,0,0,0,5200,76,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60770, 40505);
replace into creature_involvedrelation (id, quest) values (60770, 40505);

REPLACE INTO gameobject_template VALUES 
(2010905, 10, 25894, 'Transfer Documents I', 0, 0, 1, 43, -1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010906, 10, 25894, 'Transfer Documents II', 0, 0, 1, 43, -1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010907, 10, 25894, 'Transfer Documents III', 0, 0, 1, 43, -1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Protecting Fresh Blood
delete from quest_template where entry = 40505;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40505,2,46,56,48,0,0,'Protecting Fresh Blood','We have had many join our ranks from the various battle groups dotted around the Burning Steppes, their names etched in paper marking their transfer to Karfang Hold.\n\nTo protect those that joined us we will need to destroy the documents that may lead any suspicious Blackrock our way.\n\nYou will find the Transfer Documents amongst the small camps around the Pillar of Ash, search high and low, and burn any you find.','Destroy the three Transfer Documents for Karfang at Karfang Hold in Burning Steppes.','Have you destroyed the documents $R?','The runts of our group will now be invisible to the Blackrock Clan, vanished from thin air with no trace of where they have gone.\n\nThere is still work to do.',0,0,0,0,0,0,0,0,-2010905,1,-2010906,1,-2010907,1,0,0,0,0,0,5200,76,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60770, 40505);
replace into creature_involvedrelation (id, quest) values (60770, 40505);

-- Report to Molk
delete from quest_template where entry = 40506;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40505,40506,2,46,56,48,0,0,'Report to Molk','We will need to cover all of our tracks if we want to make it out of here alive. Karfang Hold is fortified, but not fortified enough to survive such an onslaught if they get wind of what is going on.\n\nMolk is my strategist, and should know our next move, speak with him.','Speak with Molk in Karfang Hold.','Yes?','You will need to be prepared for what is to come outsider.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,400,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60770, 40506);
replace into creature_involvedrelation (id, quest) values (60769, 40506);

-- Destroy All Traces...
delete from quest_template where entry = 40507;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40506,40507,2,46,56,48,0,0,'Destroy All Traces...','I hope you understand that we are using you for our benefit. Do not take this the wrong way, for we are not looking to con, or cheat you.\n\nWe simply require assistance to achieve our goals, goals that a Blackrock Orc cannot be seen doing, lest our betrayal be discovered.\n\nWe need to destroy all traces of Karfang Hold, the records of its construction and garrison lay within the Blackrock Stronghold to the West. Gather these documents and return them to me so that I can make sure they are removed properly.\n\nBe careful, it is a well defended location.','Recover the \'Garrison and Supply Documents\' from Blackrock Stronghold and return to Karfang at Karfang Hold in Burning Steppes.','If I were you I would suggest bringing backup.','Picked through the bones have you?\n\n<Karfang lets out a small laugh.>\n\nThis would be what we were looking for, an excellent job outsider, Molk was expecting shoddy work from one of your kin, but you did well.',60737,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6100,76,175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60769, 40507);
replace into creature_involvedrelation (id, quest) values (60770, 40507);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60737,9467,'Garrison and Supply Documents',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010908,3,25894,'Garrison and Supply Documents',0,4,1,43,2010908,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010908,60737,-100,0,1,1,0);

-- Take No Chances
delete from quest_template where entry = 40508;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40507,40508,2,46,57,50,0,0,'Take No Chances','Raz\'gol Deadtusk, the name makes me regret what is to come.\n\nHe was one of the first I told of my plot to depart from the Old Horde, a dearest friend from the days on Outland. He was too stubborn to accept, his loyalties rigid, and hard.\n\nHe will not be coming with us, and we both know what must be done.\n\nIt hurts me to ask it, but Raz\'gol Deadtusk must be slain, should he find out that I went through with my idea his loyalties to me will be pitted against the Blackrock Clan, and I cannot trust him to hold to his word.\n\nYou will find him atop of the large spire in the Pillar of Ash, he looks down upon the region with an iron glare, slay him, and bring his blade back to me as proof of your deed.\n\n$N , do not make him suffer.','Slay Raz\'gol Deadtusk atop the Spire looming over The Pillar of Ash and bring The Deadtusk Blade to Karfang at Karfang Hold in Burning Steppes.','We do what we must.','<A deep and heavy sigh escapes Karfang, his face full of emotion.>\n\nI was always impressed with this sword and the way in which he wielded it, he fought with tenacity, and strength, he shall be remembered for it.',60738,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6100,76,175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60770, 40508);
replace into creature_involvedrelation (id, quest) values (60770, 40508);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60738,18232,'The Deadtusk Blade',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_karfang' where entry = 60770;
update creature_template set loot_id = 60835 where entry = 60835;

replace into creature_loot_template values
(60835,60738,-100,1,1,1,0);

-- The Final Crack
delete from quest_template where entry = 40509;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40508,40509,2,1583,59,50,512,0,'The Final Crack','There is one crack left that can break everything apart. His name is Zigris, Quartermaster for the Bloodaxe Legion deep within the Blackrock Spire.\n\nUpon setting out we borrowed all manner of tools and supplies to begin construction of Karfang Hold, these materials will eventually need to be collected. It will only be a matter of time until he will press to look for them.\n\n I am asking of you to slay Quartermaster Zigris, without him, there will be none who can figure out our motives.\n\nYou will find him within the Blackrock Mountain, at Blackrock Spire\'s lower portions.','Slay Quartermaster Zigris deep in the Blackrock Spire for Karfang at Karfang Hold in Burning Steppes.','Have you braved the Blackrock Mountain?','<Karfang\'s old features begin to crack a smile.>\n\nI cannot express my thanks, for this, and everything done.\n\n<Karfang would remove a ring from his finger.>\n\nThis ring was taken upon my entrance to this world, from some noble human lord in battle.\n\nThis keepsake is now yours, thank you.',0,0,0,0,0,0,0,0,9736,1,0,0,0,0,0,0,0,0,25000,6500,76,200,0,0,0,0,0,0,0,0,0,60739,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60770, 40509);
replace into creature_involvedrelation (id, quest) values (60770, 40509);

update quest_template set type = 81 where entry = 40509;

replace into item_template values
 ('60739', '4', '0', 'Tarnished Lancelot Ring', 'Bearing the crest of a forgotten family.', '66219', '3', '0', '1', '63568', '15892', '11', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '2', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '21593', '1', '0', '0', '-1', '0', '-1', '9140', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
-- Broodling Imposters?!
delete from quest_template where entry = 40510;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40510,2,1537,54,45,0,0,'Broodling Imposters?!','Howdy there friend! Wanna hear a little story I was told from a friend? It\'s so crazy you wouldn\'t believe it!\n\nAparently while she was venturing through the Burning Steppes she ran across a Black Dragonflight Whelp, which, isn\'t out of the normal, given just how many there is in the region. When she ended up shooting it, no blood came out, just puffs of smoke, and whirrs of machinery!\n\n Upon inspection it was discovered to have been a mechanical creation layered with replica skin, can you believe that?!\n\nNow that sure is magnificent engineering, so magnificent it has fooled even the dragons. I\'d like to see how it was done, if you wouldn\'t mind helping. Get me six bundles of Robotic Broodling Guts from each one you find, that should be enough to figure things out.','Gather 6 Robotic Broodling Guts from robotic whelps in Burning Steppes for Masey Wirefuse in Ironforge.','You found any of them fake whelps?','Wow, this is complicated stuff!\n\n<Masey looks baffled by the sheer complexity of the parts!>\n\nThis was truly a piece of art, no wonder those black dragons were fooled.\n\nI\'m gonna take some time to figure out how this stuff works, thanks again.',60740,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,5300,54,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60872, 40510);
replace into creature_involvedrelation (id, quest) values (60872, 40510);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60740,7840,'Robotic Broodling Guts',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60713,60740,-70,1,1,1,0);

-- To Eperius' Aid
delete from quest_template where entry = 40511;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40511,2,45,35,28,0,0,'To Eperius\' Aid','Ah poor Eperius, she ran like the lightning and kicked like a mule. Since her wound from our last encounter with ogres she refused to eat anything and I fear for the worse. Everything we tried has failed, but I have one last idea.\n\nI heard rumors about a magical grain, its taste so sweet and gives your horse enough energy to gallop from Stormwind and back. Alas the location of it was lost long ago and I don\'t have any leads on it.\n\nPerhaps someone in Refuge Pointe knows something about it, you should check there. While you\'re gone I\'ll make sure she is well comfortable, please make haste as I don\'t know how much longer she can last.','Go to Refuge Pointe to see if anyone has any knowledge about the magical grains.','Hello, welcome to Refuge Point. How can I help you?','A magical grain you say? Its been a long time since I\'ve heard about it.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1050,2750,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60786, 40511);
replace into creature_involvedrelation (id, quest) values (2788, 40511);

-- Eperius Needs Grains
delete from quest_template where entry = 40512;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40511,40512,2,45,35,28,0,0,'Eperius Needs Grains','Magical grains huh? Well I\'m the one that enchanted them long long ago. They were made to help the cavalry and help the livestock plow the fields faster and longer, but then tragedy struck.\n\nThe orcs invaded what is now known as Gor\'shek Farm and the entire stock of the grain has been lost since then. If you\'re lucky you might still find a sack of it, presuming the orcs didn\'t get their filthy hands on it.\n\nI wish you good luck and I hope we meet again one day.','Find a sack of the Magical Grains in Gor\'shek Farm in Arathi Highlands.','I don\'t know how much longer she can last.','You found it! Her recovery will be slow but I believe she\'ll back on the road hunting trolls with our cavalrymen in no time. This is all I have in my pockets, even if not much you made this old handler happy today. Thank you.',60741,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6000,3000,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (2788, 40512);
replace into creature_involvedrelation (id, quest) values (60786, 40512);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60741,16206,'Magical Grains',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010909,3,22828,'Sack of Magical Grains',0,4,1,43,2010909,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010909,60741,-100,0,1,1,0);
-- Change Pendant of the Faceless drop chance from Har'gesh Doomcaller to 0.5%
update creature_loot_template set ChanceOrQuestChance = 0.005 where item = 60551 and entry = 60737;
