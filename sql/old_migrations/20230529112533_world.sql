REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20277, 0, 0, 0, 0);
-- High Officer Osmark, display ID 20277, faction 14, level 45, humanoid, scale 1, weapon1 61333, weapon2 61240 (Has 3120 hp, 3100 armor and deals 0.25x more damage then Greymane Taskmaster)
REPLACE INTO creature_template VALUES
(61542, 20277, 0, 0, 0, 0, 'High Officer Osmark', NULL, 0, 45, 45, 3120, 3120, 0, 0, 3100, 14, 0, 1, 1.14714, 1, 18, 5, 0, 0, 1, 97, 119, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20402; set @weapon_1 = 61333; set @weapon_2 = 61240; set @weapon_3 = 0; set @creature = 61542;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Signet of Silverlaine
delete from quest_template where entry = 40924;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40924,2,5179,45,38,520,0,'Signet of Silverlaine','During the siege of Ravenshire a group of thieves and brigands broke into my chambers and made away with most prized items of my family. One of which was the Signet of Silverlaine, once owned by my father and passed down to me.$B$BI have received news that my family Signet was given as a token of honor to a well respected officer amongst the royalists named Osmark. He should be lording over the Dryrock Pit far to the west. Look for where the grass ceases to grow, and find the massive pit full of industry.$B$BReclaim my birthright, and you shall be rewarded.','Reclaim the Signet of Silverlaine from High Officer Osmark at The Dryrock Pit for Baron Caliban Silverlaine at Ravenshire in gilneas.','Do not take your task lightly $c, Dryrock Pit is one of their most vital operations in the region and it will be under heavy guard.','<Baron Caliban Silverlaine looks at the signet with a smile gracing his features. Without a second word, the ring is slid upon his finger.>$B$BYou have done well, it is untarnished. It feels good to know this officer had his life claimed for such a crime.$B$BI have prepared a reward for you, thanks again adventurer.',61466,1,0,0,0,0,0,0, 61542,1,0,0,0,0,0,0, 0,0, 0,22200,3700,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61467,1,61468,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61257, 40924);
replace into creature_involvedrelation	(id, quest) values (61257, 40924);

update quest_template set requiredraces = 589 where entry = 40924;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61466,14413,'Signet of Silverlaine',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61542,61466,-100,0,1,1,0);

replace into item_template values
 ('61467', '2', '15', 'Blade of Caliban', '', '20354', '2', '0', '1', '63492', '15873', '13', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '3', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '0',
 '0', '32', '66', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '55', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61468', '4', '0', 'Medallion of Silverlaine', '', '15420', '2', '0', '1', '28832', '7208', '2', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '11', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- Hollow Web Silk
delete from quest_template where entry = 40925;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40925,2,5179,44,35,8,0,'Hollow Web Silk','When this conflict is over, no matter who wins, I must be presentable as the nobility that my family is beholden. If I am to retain such a high standing, I require the finest silk that the land can offer.$B$BThe spiders of the Hollow Web Woods create a rare and hard to come by silk. I must have it so that I can commission a fine set of new garments for when this conflict inevitably comes to an end.$B$BYou can find the Hollow Web Woods just to the west of here. Gather me ten Hollow Web Silk and I shall make it worth your time, commoner.','Gather 10 Hollow Web Silk from the spiders of Hollow Web Woods for Magistrate Carson at Ravenshire in Gilneas.','I am not paying you to waste time you know.','My, would you look at this. Such an intricate and complex silk.$B$BIt will surely be worth its cost when the creation of my new garments are complete.$B$BOh, yes I was to pay you, wasn\'t I? Take this silver, and move along, would you.',61469,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 5000,20100,3350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61270, 40925);
replace into creature_involvedrelation	(id, quest) values (61270, 40925);

update quest_template set requiredraces = 589 where entry = 40925;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61469,5891,'Hollow Web Silk',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(61232,61469,-48,0,1,1,0),
(61233,61469,-48,0,1,1,0);

-- Securing Gilneas I
delete from quest_template where entry = 40926;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40926,2,5179,44,35,0,0,'Securing Gilneas I','The land is tainted with the foul mark of worgen that tread through our lands unopposed. The royalists have seen fit to punish the people by letting their kind spread like a disease.$B$BEven now the worgen reach as fair south as the Overgrown Acre just to the northwest of here. If they will not put an end to this threat, then we must. Find the Bloodclaw tribe that stalks within Gilneas, hunt them, and recover twelve of their pelts.','Gather 12 Bloodclaw Pelts from the Bloodclaw Worgen for Corporal Ranworth at Ravenshire in Gilneas.','Have the worgen been culled?','Your efforts will better the realm in time. The less worgen that stalk our forests, the faster we can return to a state of peace.',61470,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,20100,3350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61540, 40926);
replace into creature_involvedrelation	(id, quest) values (61540, 40926);

update quest_template set requiredraces = 589 where entry = 40926;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61470,7990,'Bloodclaw Pelt',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61251,61470,-66,0,1,1,0),
(61252,61470,-66,0,1,1,0),
(61253,61470,-66,0,1,1,0);

-- Securing Gilneas II
delete from quest_template where entry = 40927;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40926,40927,2,5179,44,35,0,0,'Securing Gilneas II','To stop the Bloodclaw, we must put an end to the alpha of their packs. The strongest of the worgen themselves are known as \'alpha\' and it is these creatures that command the rest of the smaller worgen.$B$BThe Bloodclaw Alpha can be found within a cave to the northwest. Search for the worgen camp west of Northgate Tower. The cave should be just nearby.$B$BSlay thirteen of them, and return to me when the job is done.','Slay 13 Bloodclaw Alpha that linger within the northern caves for Corporal Ranworth at Ravenshire in Gilneas.','Be prepared for the task ahead.$B$B I would advise to bring some assistance. Assaulting a worgen den is no easy task.','You have done well $N. It will only be a matter of time before the Bloodclaw tears itself apart as they struggle to establish new chains of command.$B$BYour duty to the people of Gilneas will not go unrewarded. Please, take one of these items as a thanks for everything you have done.',0,0,0,0,0,0,0,0, 61252,13,0,0,0,0,0,0, 0,0, 1000,22200,3700,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61471,1,61472,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61540, 40927);
replace into creature_involvedrelation	(id, quest) values (61540, 40927);

update quest_template set requiredraces = 589 where entry = 40927;

replace into item_template values
 ('61471', '4', '4', 'Gilneas Brigade Leggings', '', '2969', '2', '0', '1', '34508', '8627', '7', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '14', '4', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '379', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61472', '2', '3', 'Brigade Rifle', '', '66391', '2', '0', '1', '51236', '12809', '26', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '100',
 '3', '42', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- Foulhide Pests
delete from quest_template where entry = 40928;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40928,2,5179,44,35,8,0,'Foulhide Pests','The foulhide gnolls are growing to become a large problem for the region. Recently, they attacked and laid claim to Southmire Orchard, where a good friend of mine named Ernest met his end.$B$BWhile I still grieve for his loss, I cannot stand idle. The foulhide will soon move to find another target to enact their rampant desire to fight and the Shademore Tavern could be their next target.$B$BI ask of you to head to my friend\'s orchard to the southeast of here, and slay the gnolls that inhabit it. Bring me fourteen of their armbands as proof.','Slay Foulhide Gnolls and recover 14 Foulhide Armbands for Darrow Shademoore at Shademore Tavern in Gilneas.','Have you completed your task $c?','Fewer gnolls that prowl the countryside is better for any that call Gilneas home.$B$BThank you for your hard work $c.',61473,14,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61385, 40928);
replace into creature_involvedrelation	(id, quest) values (61385, 40928);

update quest_template set requiredraces = 589 where entry = 40928;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61473,1329,'Foulhide Armband',12,1,2048,1,-1,-1,1,14,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(61249,61473,-66,0,1,1,0);

-- The Gilneas Lighthouse
delete from quest_template where entry = 40929;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40929,2,5179,42,35,0,0,'The Gilneas Lighthouse','Why hello there, I am Elaroth Ranworth and it is my charge to keep the fire of this lighthouse burning bright.$B$BBefore the war we relied on a steady supply of oil from Theramore. Ever since the Greymane Wall was sealed shut, this lighthouse has been burning on what excess I could find.$B$BIt is only a matter of time before the light will cease burning. With it, I will also leave this world.$B$BI am not yet ready to depart, and so I am desperate.$B$BI ask of you to visit Theramore, speak with the Dockmaster, and see if there is any oil that can be given to me.','Speak with Dockmaster Lorman at Theramore Isle in Dustwallow Marsh to recover any oil meant for Gilneas.','Yes?','Oil to Gilneas? Hasn\'t that place been sealed shut for years now?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3300,550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61258, 40929);
replace into creature_involvedrelation	(id, quest) values (60733, 40929);

update quest_template set requiredraces = 589 where entry = 40929;

-- The Gilneas Lighthouse II
delete from quest_template where entry = 40930;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40929,40930,2,5179,42,35,0,0,'The Gilneas Lighthouse II','Huh, now that you mention it, we did have a supply of old oil that lingered around here for some years. I hate to tell you but it was taken when the deserters left the city and went to found their camp in the quagmire.$B$BI have no doubts their purpose for the highly flammable liquid is nefarious. That or they desire to make some coins from the valueable liquid. There aint many active sources working these days.$B$BIf you want the oil, recover it from them.','Gather the Stolen Oil Shipment from the Deserter\'s Hideout for Dockmaster Lorman at Theramore Isle in Dustwallow Marsh.','Has the oil been recovered?','Hmm, its been some time since I properly looked at this drum, but I think this is it.',61474,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,22500,3750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60733, 40930);
replace into creature_involvedrelation	(id, quest) values (60733, 40930);

update quest_template set requiredraces = 589 where entry = 40930;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61474,8381,'Stolen Oil Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

REPLACE INTO gameobject_template VALUES
(2020029, 3, 23556, 'Stolen Oil Shipment', 0, 4, 1, 43, 2020029, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020029,61474,-100,0,1,1,0);

-- The Gilneas Lighthouse III
delete from quest_template where entry = 40931;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40930,40931,2,5179,42,35,0,0,'The Gilneas Lighthouse III','Now that you have recovered this oil, it can be returned to Gilneas, should you have a means to actually enter the place.$B$BI did hear rumors of a civil war brewing there, so I suggest you be careful.','Return the Stolen Oil Shipment to Elaroth Ranworth at Greymane\'s Watch in Gilneas.','So, this is the oil from Theramore?','Relief, I can actually feel an emotion other than fear.$B$BI was cursed long ago, to forever tend to this fire. Should the flame go extinct, I would die. I cannot explain the fear I have about what would happen should the flame go out. Whilst I am bound to this spiritual form, I do not know what comes after, and that is what I truly dread.$B$BI would give whatever I can, to suffer as I am now, then to drift away forever, forgotten for all time.',61474,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61474,1, 0,22500,3750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61475,1,61476,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60733, 40931);
replace into creature_involvedrelation	(id, quest) values (61258, 40931);

update quest_template set requiredraces = 589 where entry = 40931;

replace into item_template values
 ('61475', '4', '0', 'The Light of Elaroth', '', '7461', '2', '0', '1', '27376', '6844', '23', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9294', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61476', '4', '2', 'Lightkeeping Boots', '', '13864', '2', '0', '1', '23724', '5931', '8', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '45', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Wagon Woes
delete from quest_template where entry = 40932;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40932,2,5179,41,35,0,0,'Wagon Woes','You there, why I am lucky to have you stumble across me. I\'m having a terrible time. Forced to abandon my family home, now this!$B$BThe wheel on my wagon has broken and needs to be replaced, but I left the spare back at the plantation. You wouldn\'t mind doing me a favor, would you? I cannot return as worgen have taken over, but maybe you can.$B$BHead to the Rosewick Plantation just to the northwest of here, and bring me my spare wheel from my house.','Recover the Spare Wagon Wheel for Donald Rosewick near Northgate Tower in Gilneas.','Have you gotten my spare wheel?','Oh, this is splendid, now I will be able to make pace to Shademore Tavern!',61477,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,16800,2800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61384, 40932);
replace into creature_involvedrelation	(id, quest) values (61384, 40932);

update quest_template set requiredraces = 589 where entry = 40932;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61477,7926,'Spare Wagon Wheel',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

REPLACE INTO gameobject_template VALUES
(2020030, 3, 31, 'Spare Wagon Wheel', 0, 4, 1, 43, 2020030, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020030,61477,-100,0,1,1,0);

-- Rosewick Worries
delete from quest_template where entry = 40933;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40932,40933,2,5179,42,35,0,0,'Rosewick Worries','I have one last thing to ask you. It will take me some time before I can get going again, but in the meantime I want you to make sure the worries of my wife are settled.$B$BI sent her to Shademore Tavern before I departed with some of our most valuable posessions. I want you to let her know that I am on the way, and I am safe. You can find the Shademore Tavern by following this road, and heading west at the crossroad to Ravenshire.','Meet with Frell Rosewick at the Shademore Tavern in Gilneas.','Yes?','Donald sent you?$B$B<A wave of relief washes over the woman, who sighs out a deep exhale.>$B$BThese words have brought me extreme relief. I was prepared for the worst. I told him to come with me, but he was stubborn to look after that plantation until things got unbearable.$B$BThanks for this news stranger, please, take this.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,3300,550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61384, 40933);
replace into creature_involvedrelation	(id, quest) values (61381, 40933);

update quest_template set requiredraces = 589 where entry = 40933;

-- Allies Against Undeath
delete from quest_template where entry = 40934;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40934,2,5179,44,35,8,0,'Allies Against Undeath','The foul taint of undeath is a most vile and terrifying thing. The land of Gilneas some years ago was invaded by a lich who scarred the land with his evil magic.$B$BThis is a tale similar to what befell my own lands. You see, the Scarlet Crusade is not an enemy, for we all serve the same purpose.$B$BI ask you to prove yourself as an agent against necromancy. Travel to Greyshire, or what is left of it. Slay the dead things that still walk there.','Slay 7 Lingering Skeletons and 7 Shambling Dead for Brother Elias at Shademore Tavern in Gilneas.','Have you dealt holy retribution?','So, it would appear that you are indeed not corrupted by the shadow.',0,0,0,0,0,0,0,0, 61234,7,61235,7,0,0,0,0, 0,0, 0,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61387, 40934);
replace into creature_involvedrelation	(id, quest) values (61387, 40934);

update quest_template set requiredraces = 589 where entry = 40934;

-- Scarlet Corruption
delete from quest_template where entry = 40935;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40934,40935,2,796,44,35,512,0,'Scarlet Corruption','Now that I can trust you to not be an agent of undeath, I can reveal the true reason that I have sought neutral lands. The Crusade was once a noble organization of high integrity, but cracks have begun to show in the pillars of our most trusted leaders.$B$BDeep within the Cathedral there are rumors spreading of the true fate of High Inquisitor Fairbanks. I have good sources to believe his death was halted by... Unnatural means. If it is true that necromancy has become common among the elite of the Crusade, I require proof.$B$BFind Inquisitor Fairbanks within the Scarlet Cathedral, and discover the truth.','Discover the truth about the fate of High Inquisitor Fairbanks for Brother Elias at Shademore Tavern in Gilneas.','So, what is it you have uncovered within my homeland?','I cannot believe the words that I am hearing, such practices among the leaders of my people? Me and others have long been wary of such allegations, but to know it to be true...$B$BI will have to convene with the others to decide our future. I thank you greatly. Please, take this, as thanks from myself and those that I represent.',0,0,0,0,0,0,0,0, 4542,1,0,0,0,0,0,0, 0,0, 0,22800,3800,0,0,0,0,0,0,0,0,0,0,0, 61478,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61387, 40935);
replace into creature_involvedrelation	(id, quest) values (61387, 40935);

update quest_template set requiredraces = 589, type = 81 where entry = 40935;

replace into item_template values
 ('61478', '4', '0', 'Ring of Holy Sacrement', '', '24087', '2', '0', '1', '27404', '6851', '11', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21509', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- Vagrant Supplies
delete from quest_template where entry = 40936;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40936,2,5179,43,35,8,0,'Vagrant Supplies','We arrived in Gilneas with the hope of being free from conflict. However, we have only come to find hostility.$B$BThree nights ago a worgen raid attacked our camp and made away with supplies most vital to us. However, these supplies were not taken by the pale Nighthowl, but instead the Bloodclaw. They are another tribe in conflict with the Nighthowl, who have a camp to the south of us. I have no doubt they have our supplies stashed amongst their hovels.$B$BRecover the supplies, and return them to us.','Recover the Vagrant Supplies from the Bloodclaw camp to the south and return to Camp Leader Gethenor at the Vagrant Camp in northern Gilneas.','It is only a matter of time until our supplies are spoiled by the vile hands of the worgen who ran off with them.','<Gethenor takes his time, going through the missing supplies.>$B$BThat is a relief, it is all here. I was afraid our rare medical supplies and tinctures would have been destroyed in the rough transit to the camp.$B$BI must thank you greatly for your work. We have been heavily reliant on these supplies. Please, take this, as thanks from us here.',61479,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,19500,3250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61535, 40936);
replace into creature_involvedrelation	(id, quest) values (61535, 40936);

update quest_template set requiredraces = 589 where entry = 40936;


replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61479,7913,'Vagrant Supplies',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

REPLACE INTO gameobject_template VALUES
(2020031, 3, 24108, 'Medical Crate', 0, 4, 1, 43, 2020031, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020031,61479,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 10 where ID = 2020031;

-- Nighthowl Nuisance
delete from quest_template where entry = 40937;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40937,2,5179,43,35,8,0,'Nighthowl Nuisance','Night in and night out, we have been subjected to raids from the hostile Nighthowl. They are a ferocious and merciless foe that has tested our defences.$B$BWe ask for your aid in dealing with this threat before they overwhelm us. The Nighthowl can be found lingering all over northern Gilneas, from Oldrock Pass to the Northgate Tower$B$BSlay them, and bring me eleven of the shackles they wear around their wrists.','Slay the Nighthowl Worgen and collect 11 Nighthowl Shackles for Camp Leader Gethenor at the Vagrant Encampment in northern Gilneas.','Each moment wasted is another moment the Nighthowl bide their strength.','These shackles hold some sort of power channeled only by the worgen.$B$BYou have done well in thinning their numbers, but there is still more than we can combat.',61480,11,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,19500,3250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61535, 40937);
replace into creature_involvedrelation	(id, quest) values (61535, 40937);

update quest_template set requiredraces = 589 where entry = 40937;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61480,3628,'Nighthowl Shackle',12,1,2048,1,-1,-1,1,11,-1,-1,-1,-1,4,'',0,0);

replace into creature_loot_template values
(61236,61480,-72,0,1,1,0),
(61237,61480,-72,0,1,1,0),
(61238,61480,-72,0,1,1,0);

-- Nighthowl Neutralizing
delete from quest_template where entry = 40938;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40937,40938,2,5179,43,35,8,0,'Nighthowl Neutralizing','To end the Nighthowl threat, we must target their leadership. The tribe of worgen are led by strong alpha who command their packs with extreme efficiency. Without the alpha, the Nighthowl would crumble into disarray.$B$BI am asking you to delve into the wolf\'s lair.$B$BOldrock Pass can be found to the west of here. It is a trail between Silverpine Forest and Gilneas that got breached some time ago. It is infested with the Nighthowl worgen, and it is there you will find their alpha.$B$BSlay them, and rid us of this threat.','Slay 3 Nighthowl Alphas for Camp Leader Gethenor at the Vagrant Encampment in northern Gilneas.','The Alpha are a cunning foe, plot your moves and prepare for a challenge.','You have scattered the Nighthowl with this move. I suspect their attacks on us will cease as infighting begins to establish new leaders for their tribe.$B$BYou have done us a good favor $c, and for that you shall be rewarded.',0,0,0,0,0,0,0,0, 61237,3,0,0,0,0,0,0, 0,0, 1000,21900,3650,0,0,0,0,0,0,0,0,0,0,0, 61481,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61535, 40938);
replace into creature_involvedrelation	(id, quest) values (61535, 40938);

update quest_template set requiredraces = 589 where entry = 40938;

replace into item_template values
 ('61481', '4', '3', 'Vagrant Coif', '', '25904', '2', '0', '1', '25108', '6277', '1', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '3', '7',
 '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '192', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '60', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- NPC Corporal Ranworth add subname <Gilneas Brigade>.
update creature_template set subname = 'Gilneas Brigade' where entry = 61540;
-- Increase NPC ID 92163 health by 30%, damage by 15% and armor by 10%.
update creature_template set health_min = 23788, health_max = 23788, dmg_min = 408, dmg_max = 497, armor = 3598 where entry = 92163;
-- NPC ID 92163 should cast 3391 every 18 seconds, 25811 on its target every 10 seconds and 14100 on its target every 22-30 seconds.
set @creature_entry = 92163;
set @description = 'Deeptide: Letashaz';
set @spell_list_id = 201100;

set @spellid_1 = 28969; -- Acid Spit
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 1;
set @delayinitialmax_1 = 3;
set @delayrepeatmin_1 = 29;
set @delayrepeatmax_1 = 31;

set @spellid_2 = 3391; -- Thrash
set @probability_2 = 100;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 18;
set @delayrepeatmax_2 = 18;

set @spellid_3 = 25811; -- Poison Bolt
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 4;
set @delayinitialmax_3 = 5;
set @delayrepeatmin_3 = 10;
set @delayrepeatmax_3 = 10;

set @spellid_4 = 14100; -- Terrifying Roar
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 6;
set @delayinitialmax_4 = 7;
set @delayrepeatmin_4 = 22;
set @delayrepeatmax_4 = 30;

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
-- Increase NPC ID 91839 damage by 15% and armor by 10%.
update creature_template set dmg_min = 396, dmg_max = 511, armor = 3568, spell_id1 = 0 where entry = 91839;
-- NPC ID 91839 should cast 11428 on its target every 10-13 seconds and 13737 on its target every 14-18 seconds. 
set @creature_entry = 91839;
set @description = ': Margon the Mighty';
set @spell_list_id = 180196;

set @spellid_1 = 10101; -- Knock Away
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 20;
set @delayrepeatmax_1 = 20;

set @spellid_2 = 11428; -- Knockdown
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 5;
set @delayinitialmax_2 = 6;
set @delayrepeatmin_2 = 10;
set @delayrepeatmax_2 = 13;

set @spellid_3 = 13737; -- Mortal Strike
set @probability_3 = 100;
set @casttarget_3 = 1;
set @castflags_3 = 4;
set @delayinitialmin_3 = 2;
set @delayinitialmax_3 = 3;
set @delayrepeatmin_3 = 14;
set @delayrepeatmax_3 = 18;

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
-- Pendant of Mortality fix.
Update item_template set stat_value2 = -1, description = 'A devil\'s deal, signed in blood.' where entry = 81278;

-- Supplementing Rations
delete from quest_template where entry = 40939;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40939,2,5179,41,35,8,0,'Supplementing Rations','Many of the refugees here in the camp and at the Greymane Wall are starving. The threat of the worgen has been enough to deter most from foraging or hunting. I request you to aid in our situation and perhaps I can get a decent meal for everyone.$B$B The Duskpelt wolves are hostile, but should supplement our current rations well. You can find Duskpelt wolves all around Gilneas. Bring me six chunks of their meat and it should last us for a time.','Gather 6 Duskpelt Meat from the Duskpelt wolves for Camp Chef Velden at the Vagrant Encampment in northern Gilneas.','Have you had any luck finding food for us adventurer?','Well, I am impressed. These fresh cuts of meat will surely go a long way in easing the rumbling of stomachs. I will make sure this gets to our most desperate first.$B$BThanks again for what you\'ve done, take this, as a token for keeping us alive just a bit longer.',61482,6,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,17700,2950,0,0,0,0,0,0,0,0,0,0,0, 61483,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61536, 40939);
replace into creature_involvedrelation	(id, quest) values (61536, 40939);

update quest_template set requiredraces = 589 where entry = 40939;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61482,25472,'Duskpelt Meat',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,0);

replace into creature_loot_template values
(61227,61482,-78,0,1,1,0),
(61228,61482,-78,0,1,1,0),
(61229,61482,-78,0,1,1,0);

replace into item_template values
 ('61483', '2', '0', 'Velden\'s Backup Cleaver', '', '19281', '2', '0', '1', '55584', '13896', '21', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '42', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- Font of Arcana
delete from quest_template where entry = 40940;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40940,2,5179,40,35,8,0,'Font of Arcana','A strange and foul magic lingers upon the air of Gilneas. I believe there is more going on behind the scenes than first meets the eye.$B$BThe Lord Prestor was well known for holding the ear to King Greymane and often influenced many of his decisions. When I met this Lord Prestor long ago, I was overwhelmed by the immense magic that practically emanated from him. This same magic can be sensed within Gilneas, but I am not sure where.$B$BTo discover the source I require an item of rarity, a Font of Arcana that is often wielded by Blue Dragonkin. The nearest of their brood resides within the Badlands, in a place named Crystalline Oasis.','Travel to the Badlands and slay members of the Blue Dragonflight to recover a Font of Arcana for Magus Orelius at Ravenshire in Gilneas.','Has the Font been recovered?','Everytime I interact with draconic magic I am impressed by the sheer power it posesses.$B$BWe mortals truly cannot compare to the power of our draconic enemies.',61484,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,16800,2800,61,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61271, 40940);
replace into creature_involvedrelation	(id, quest) values (61271, 40940);

update quest_template set requiredraces = 589 where entry = 40940;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61484,20609,'Font of Arcana',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

replace into creature_loot_template values
(60910,61484,-38,0,1,1,0);

-- Magical Presence
delete from quest_template where entry = 40941;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40940,40941,2,5179,40,35,0,0,'Magical Presence','You have done well in acquiring this Font of Arcana. However, before we can proceed, I need materials of a magical nature. The Font of Arcana cannot be wielded naturally without draconic magic, and therefore, I must channel enchanting materials with my own magic to power the Font.$B$BBring me a Large Glowing Shard, which is a common Enchanting material, and we can continue our work.','Acquire a Large Glowing Shard for the Font of Arcana for Magus Orelius at Ravenshire in Gilneas.','The Arcane Font pocesses great power that cannot be wielded by magic alone.','Now then, let us see what the Font of Arcana can expose as truth.',11139,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,16800,2800,61,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61271, 40941);
replace into creature_involvedrelation	(id, quest) values (61271, 40941);

update quest_template set requiredraces = 589 where entry = 40941;

-- Draconic Presence?
delete from quest_template where entry = 40942;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40941,40942,2,5179,43,35,0,0,'Draconic Presence?','I have taken time to familiarize myself with the Font. I have come to the realization that the lingering magic is indeed coming from Gilneas City. In order to discover what type of magic, I require one last material in order to make it fully operational. I have my theories and suspicions based off the font itself that this could be draconic magic, and if so, perhaps Lord Prestor was indeed one taking humanoid form.$B$BTo fully know if this is the truth, I require you to travel to Dustwallow Marsh where the Black Dragonflight calls home. From the Firemane that linger at Dragonmurk in southern Dustwallow Marsh, recover a \'Potent Draconic Jewel\'. It is often carried by their kind.','Slay Firemurk Dragonkin in Dustwallow Marsh, and recover a Potent Draconic Jewel for Magus Orelius at Ravenshire in Gilneas.','Once this Draconic Jewel is recovered, I can ascertain the true magic.','<Magus Orelius takes a moment, channeling the energy of the Potent Draconic Jewel with the Font of Arcana. Within time, he would let out a loud and heavy sigh.>$B$BIt\'s as I had feared, my theories are proven correct. Lord Prestor may perhaps have been a dragon in disguise all along. I am certain those who have come to replace him are aswell.$B$BThe Harlow\'s are a noble family which rose to prominence around the time Prestor had arrived in Gilneas, and it is that same group that lords over the city itself. Lady Celia and Lord Mortimer are Regents of King Greymane, and act on his behalf.$B$BThe grip of the Black Dragonflight is deep within Gilneas, and it would appear they have long been working to bring this feud about. The death of innocents, and the corruption of this land is all on their hands. They must be stopped.',61485,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,24600,4100,61,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61271, 40942);
replace into creature_involvedrelation	(id, quest) values (61271, 40942);

update quest_template set requiredraces = 589, type = 1 where entry = 40942;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61485,1263,'Potent Draconic Jewel',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(4328,61485,-18,0,1,1,0),
(4329,61485,-18,0,1,1,0),
(4331,61485,-18,0,1,1,0),
(4334,61485,-18,0,1,1,0);

-- Undoing Draconic Presence
delete from quest_template where entry = 40943;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40942,40943,2,5180,47,35,0,0,'Undoing Draconic Presence','There is only one course of action to save Gilneas. The Harlow family cannot be allowed to emerge from this civil war unscathed. The Regent-Lady Celia Harlow, and Regent-Lord Mortimer Harlow are Dragonkin of the Black Dragonflight. They have long corrupted Gilneas and turned it into a land of decay and conflict.$B$BWe must put an end to the suffering of the land, slay both of them, and rid this place of their evil machinations.','End the Draconic Influence over Gilneas by slaying Regent-Lady Celia Harlow, and Regent-Lord Mortimer Harlow for Magus Orelius at Ravenshire in Gilneas.','Has their work been undone?','The people will not know of your work here today, but their suffering will end. The draconic influence over Gilneas has been put to rest.$B$BIt is only a matter of time until the land is restored to what it was some years ago, and this is in part thanks to your efforts here today. I have convened with the other members of the Kirin Tor, and your work to banish the foul draconic magic will not go unrewarded.$B$BPlease, take one of these items, as a gesture of our appreciation.',0,0,0,0,0,0,0,0, 61263,1,61264,1,0,0,0,0, 0,0, 0,28200,4700,61,500,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61486,1,61487,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61271, 40943);
replace into creature_involvedrelation	(id, quest) values (61271, 40943);

update quest_template set requiredraces = 589, type = 81 where entry = 40943;

replace into item_template values
 ('61486', '4', '1', 'Violet Sash', '', '24624', '3', '0', '1', '15464', '3866', '6', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '6', '5', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '0', '0', '0',
 '0', '0', '0', '9397', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '30', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61487', '4', '3', 'Gauntlets of Insight', '', '12068', '3', '0', '1', '20472', '5118', '10', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '13', '3', '11',
 '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '166', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '40', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

-- Onward to Ravenshire
delete from quest_template where entry = 40944;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40944,2,5179,40,35,8,0,'Onward to Ravenshire','Hail $c. I am Councilor Ravencrest, a noble in service to the rebellion of Lord Ravenwood.$B$BYou have come to Gilneas in a time of strife and civil conflict. Even now the Greymane royalists are no doubt preparing for the coming conflict within the walls of the city itself.$B$BIf you desire to learn more, or help us break free from the shackles of tyranny, I would guide your attention to Ravenshire to the southeast. Simply follow the road and take a left at the fork. Keep following it southward until you reach the town. When you have arrived, speak with Clerk Ebonmere.','Meet with Clerk Ebonmere at Ravenshire in Gilneas.','Yes?','An outsider has come? It would appear the opening of the Greymane Wall has indeed brought new allies.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2100,350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61534, 40944);
replace into creature_involvedrelation	(id, quest) values (61539, 40944);

update quest_template set requiredraces = 589 where entry = 40944;

-- Snarlclaw
delete from quest_template where entry = 40945;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40945,2,5179,44,35,8,0,'Snarlclaw','I once served as a knight of Gilneas. During my service I saw many things that wavered my loyalties. But it was not until the death of my wife that I forever saw the truth.$B$BThe loyalists allowed the incursion of the worgen to punish the innocents outside the city. My wife met her end to a creature named Snarlclaw, and I was forbidden from carrying out my revenge. Now I remain here, to drink away my sorrows.$B$BSlay the beast Snarlclaw, and do what those royalists could never stomach. You will find him to the northeast, hiding amongst the caves with the Bloodclaw worgen.','Slay the worgen named Snarlclaw for Maxwell Givings at the Shademore Tavern in Gilneas.','<Maxwell is lost in thought.>','I was expecting to feel some sort of relief, but in truth I don\'t feel much of anything. You have done me a great service, and for that I am in your thanks.$B$BPerhaps soon I will find solace from the dark days ahead. Please, take this, I shall not be needing it any longer.',61488,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,24600,4100,0,0,0,0,0,0,0,0,0,0,0, 61489,1,61490,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61383, 40945);
replace into creature_involvedrelation	(id, quest) values (61383, 40945);

update quest_template set requiredraces = 589 where entry = 40945;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61488,5077,'Snarlclaw\'s Mane',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,1);

replace into creature_loot_template values
(61405,61488,-100,0,1,1,0);

replace into item_template values
 ('61489', '4', '6', 'Ravenwood Shield', '', '66377', '2', '0', '1', '41056', '10264', '14', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '3', '3',
 '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1396', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '4', '0', '0', '85', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61490', '4', '1', 'Hollow-Thread Trousers', '', '27853', '2', '0', '1', '27952', '6988', '7', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '6', '7',
 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '55', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- Spitecrest Incursions
delete from quest_template where entry = 40946;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40946,2,5179,42,35,8,0,'Spitecrest Incursions','What, you want to help us?$B$B<A snide look crosses Vorren\'s face.>$B$BIf you want to really do something here at Ravenshire, you can get rid of those naga lot that have been gathering at the southern beaches. Ever since last year, they started showing up in droves. Killed a good many fishermen they have!$B$BBring me sixteen of their scales as proof. You can find them all along the coastlines of southern Gilneas. Do that, and you\'ll bring me some peace in this bastard world.','Gather 16 Spitecrest Scales from the Spitecrest Naga along the southern coast of Gilneas for Dockwatcher Vorren at Ravenshire in Gilneas.','You better not be bothering me.','So, you do have a backbone, do ye? You may have thinned their ranks, but there is still more to do.',61491,16,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,18900,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61275, 40946);
replace into creature_involvedrelation	(id, quest) values (61275, 40946);

update quest_template set requiredraces = 589 where entry = 40946;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61491,555,'Spitecrest Scale',12,1,2048,1,-1,-1,1,16,-1,-1,-1,-1,4,'',0,1);

replace into creature_loot_template values
(61402,61491,-100,0,1,1,0),
(61403,61491,-100,0,1,1,0),
(61407,61491,-100,0,1,1,0),
(61408,61491,-100,0,1,1,0);

-- Spitecrest Decursions
delete from quest_template where entry = 40947;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40946,40947,2,5179,42,35,8,0,'Spitecrest Decursions','You didn\'t think it was going to be that easy, did you? Those Spitecrest naga are a stubborn and vile kind. They are led by a Lord and Mistress both, each commanding two prongs of a forked trident assaulting Gilneas herself.$B$B Find and slay the Lord and Mistress of the naga and you shall end this tyranny threatening our coasts. I have no doubt you will find them amongst their slithering kin on the southern beaches.','Find and Slay Lord Zarsan and Mistress Hesszha along the southern coast of Gilneas for Dockwatcher Vorren at Ravenshire in Gilneas.','You better not be bothering me.','Huh, you\'ve done it? Well why didn\'t you say that $c! You\'ve done and gone real heroes work out here, and in Gilneas that is a rarity.$B$BHere, as a token of my thanks and from all of us that work down here, take this. It might serve you better than it would myself.',0,0,0,0,0,0,0,0, 61404,1,61406,1,0,0,0,0, 0,0, 0,23100,3850,0,0,0,0,0,0,0,0,0,0,0, 61492,1,61493,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61275, 40947);
replace into creature_involvedrelation	(id, quest) values (61275, 40947);

update quest_template set requiredraces = 589 where entry = 40947;

replace into item_template values
 ('61492', '4', '0', 'Fisherman\'s Shawl', '', '23101', '2', '0', '1', '16728', '4182', '16', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '3', '3',
 '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61493', '4', '1', 'Dockmaster Cuffs', '', '14111', '2', '0', '1', '11504', '2876', '9', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '4', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
-- Item Ring of Nordrassil (Entry 61195), change display ID to 66449.
update item_template set display_id = 66449 where entry = 61195;
update item_template set spellid_1 = 45421 where entry = 60294;
-- Signet of Silverlaine (Entry 61466), change display ID to 26391.
update item_template set display_id = 26391 where entry = 61466;
-- Item Aliattan Anderson's Journal (Entry 61446), make a quest item.
update item_template set class = 12 where entry = 61446;
-- Swiftfeather Quiver needs to be turned into a 14 slot Quiver.
update item_template set container_slots = 14 where entry = 61549;
-- Item Foulhide Armband (entry 61473), from the quest Foulhide Pests (Entry 40928) should also drop from Foulhide Basher (61248) and Foulhide Mystic (61250) at 82%.
replace into creature_loot_template values
(61248,61473,-82,0,1,1,0),
(61250,61473,-82,0,1,1,0);
-- Quest Draconic Presence? change completion text 3rd paragraph to the following 'The Harlow's are a noble family which rose to power around the time Prestor had arrived in Gilneas. Lady Celia and Lord Mortimer are Regents of King Greymane, and act on his behalf.
update quest_template set Objectives = '<Magus Orelius takes a moment, channeling the energy of the Potent Draconic Jewel with the Font of Arcana. Within time, he would let out a loud and heavy sigh.>$B$BIt\'s as I had feared, my theories are proven correct. Lord Prestor may perhaps have been a dragon in disguise all along. I am certain those who have come to replace him are aswell.$B$BThe Harlow\'s are a noble family which rose to power around the time Prestor had arrived in Gilneas. Lady Celia and Lord Mortimer are Regents of King Greymane, and act on his behalf.$B$BThe grip of the Black Dragonflight is deep within Gilneas, and it would appear they have long been working to bring this feud about. The death of innocents, and the corruption of this land is all on their hands. They must be stopped.' where entry = 40942;
-- Quest 'The Black Waltz' (Entry 40908), set previous quest requirement to 40907, change zone id to 5179
update quest_template set prevquestid = 40907, zoneorsort = 5179 where entry = 40908;