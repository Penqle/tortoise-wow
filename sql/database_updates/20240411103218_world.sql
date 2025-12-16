-- Lost In Ratchet
delete from quest_template where entry = 41303;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41303,2,-371,38,32,0,0,'Lost In Ratchet','A disaster, that\'s what it is! A monetary apocalypse is upon me; my name sullied and my fame gone. My priced jewelry was on its way to an auction in Booty Bay, among it an especially valuable and hefty ring. Believing it to have made it safely to the port city, I continued with my work without much thought, without knowing it never even left Ratchet! Now I\'m the laughing stock of the esteemed merchants and auctioneers, cackling away at my incompetence.$B$BPal, can you assist me in solving this debacle? My contractor of trust, Grizzby, is nowhere to be seen and I can\'t afford to lose my priceless creations. As we don\'t have any leads, perhaps it\'d be best to ask around Ratchet for information.','Travel to Ratchet in the Barrens and ask around for Grizzby\'s and his cargo\'s whereabouts.','','Grizzby? No, he didn\'t leave Ratchet, atleast not by boat. But he did make it here, that\'s for sure.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,7200,1200, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61927, 41303);
replace into creature_involvedrelation  (id, quest) values ( 3453, 41303);
update quest_template set requiredskill = 755		 where entry = 41303;
update quest_template set requiredskillvalue = 200	 where entry = 41303;
update quest_template set nextquestinchain = 41304	 where entry = 41303;
update creature_template set npc_flags = 19 where entry = 61927;

-- A Friend Of A Friend?
delete from quest_template where entry = 41304;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41303,41304,2,-371,38,32,0,0,'A Friend Of A Friend?','I\'ve known Grizzby for a long time, a sociable bloke, y\'know, lots of friends. Comes with the job, naturally. I was busy with logistics when he came here to the docks, we chatted a bit since the next ship wasn\'t going to show up for a long time.$B$BWhile we were just passing the time, this other goblin approached him like he just met his long lost brother again. Must\'ve been close, since Grizzby acted like he knew him well, too. I didn\'t catch much of what they were talking about, but I overheard that they were gonna go south, for whatever reason.$B$BIt\'s been some time now and I fear the worst for Grizzby, please make sure he\'s safe.','Look for Grizzby and return to Tacknazz Copperfire in Sparkwater Port afterwards.','$N, where have you been? Did you find my jewelry, and where did you leave Grizzby?','<Tacknazz reads the contract you found on the goblin. The further he reads, the redder his green skin becomes.>$B$BOh, those backstabbing, scab-munching troglodytes! Leaving the Venture Co. was the best thing Nert could\'ve ever done, I am sick and tired of their shady tactics. Not only have I lost all my precious jewelry, but also my best contractor, finding a replacement is going to take ages! Oh, Grizzby, you old bastard, you deserved better, much better...',41365,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,13800,2300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 3453, 41304);
replace into creature_involvedrelation  (id, quest) values (61927, 41304);
update quest_template set nextquestinchain = 41305	 where entry = 41304;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41365,1301,'Venture Co. Contract',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50695,7);

replace INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50695, 'Under no circumstances are you to talk about your assignment with anyone. This is a confidential task ordered directly by the Venture Co. operatives. Should you fail this simple assignment, don`t you dare to return to Undermine - you will be executed for treason on the spot. It is in your best interest to assist us in our endeveaor to undermine the Durotar Labor Union - X', 0);

replace INTO `creature_template` VALUES
(61973, 7171, 0, 0, 0, 0, 'Suspicious Goblin', NULL, 0, 36, 36, 1468, 1468, 0, 0, 1480, 35, 1, 1, 1.14286, 1, 18, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 61973, 1096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 59, 83, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_suspicious_goblin'),
(61974, 7157, 0, 0, 0, 0, 'Grizzby\'s Corpse', NULL, 0, 30, 30, 1179, 1179, 0, 0, 1240, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 768, 32, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');

-- Loot table: Suspicious Goblin.
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 41365, -100, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 929, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1477, 0.4, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1529, 0.0606, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1630, 10.135, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1705, 0.014, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1707, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1708, 2.3014, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1710, 1.4452, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1711, 0.56, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 1725, 0.0342, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2289, 0.36, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2290, 0.56, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2452, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2592, 3.8818, 0, 1, 3, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2725, 0.6729, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2728, 0.6791, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2730, 0.6884, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2732, 0.6838, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2734, 0.7226, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2735, 0.6527, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2738, 0.6045, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2740, 0.6604, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2742, 0.6604, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2744, 0.6744, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2745, 0.634, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2748, 0.6698, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2749, 0.6806, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2750, 0.6962, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2751, 0.676, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2772, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2775, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 2838, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3356, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3357, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3358, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3385, 0.7832, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3771, 4.5858, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3818, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3821, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3827, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3830, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3831, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3832, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3864, 0.0326, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3866, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3867, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3868, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3869, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3870, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3872, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3873, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 3874, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4296, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4298, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4299, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4300, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4306, 29.2723, 0, 1, 2, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4338, 1.92, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4350, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4351, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4352, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4353, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4412, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4414, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4416, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4417, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4539, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4544, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4614, 0.0249, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4634, 0.0466, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 4636, 0.0497, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 5543, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 5774, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 5974, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 6044, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 6045, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 6454, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7084, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7085, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7086, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7090, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7091, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7363, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7364, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7449, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7450, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7452, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7453, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7909, 0.0155, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 7992, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 8029, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 8385, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 8387, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 9293, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 10300, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 10301, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 10302, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 10601, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 10603, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 10606, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 11098, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 11164, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 11165, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 11167, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 11202, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 11204, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30031, 0.5, 0, -30031, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30032, 0.01, 0, -30032, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30033, 0.5, 0, -30033, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30034, 0.01, 0, -30034, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30039, 2.5, 0, -30039, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30040, 2.5, 0, -30040, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30054, 0.5, 0, -30054, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30055, 0.01, 0, -30055, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30057, 0.01, 0, -30057, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30058, 0.5, 0, -30058, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61973, 30059, 0.01, 0, -30059, 1, 0);

set @equip_template = 20530; set @weapon_1 = 2092; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61973;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41620; set @magic_number = 61973;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Eh, if you value your life, you\'d better not stick your nose into the business of others...');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into broadcast_text (entry, Male_Text) values (30176, 'What are you doing there? What did you do to Grizzby?');
replace into npc_text (ID, BroadcastTextID0) values (30176, 30176);

replace into broadcast_text (entry, Male_Text) values (30177, 'Nobody just simply leaves the Venture Co.! They are all traitors to the Trade Coalition!');
replace into npc_text (ID, BroadcastTextID0) values (30177, 30177);

-- Gold Is The Goblin's Heart
delete from quest_template where entry = 41305;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41304,41305,2,796,40,32,0,0,'Gold Is The Goblin\'s Heart','I will bring this contract personally to Nert, he should know what our former employers are plotting back on Kezan. If I could, I\'d just waltz into Undermine and throw their Trade Prince into the deepest slums there are. But I cannot, so I have to make the best of what I can do now.$B$BWith my jewelry stolen and supplies running dry, I can barely prepare anything for the next auction - and I must present something with a BANG at that auction or my reputation is officially toast. I see you\'re crafty and talented, care to help me once more?$B$BWhat I need is a gem of enormous proportions, the travelers passing by here in Sparkwater spread the rumor of a fist-sized ruby in the possession of the Scarlet Crusade, I\'ll assume their leader has it on them. Furthermore, a simple golden necklace for me to place the ruby in; nothing you shouldn\'t be able to tinker yourself.','Tacknazz needs a golden necklace and a giant ruby from the Scarlet Monastery.','Be quick, $N! Creating masterpieces can\'t be rushed and the next auction is just a few days away!','Oh, wow! This thing is almost as big as my nose! Those adventurers weren\'t lying, that\'s for sure. And the necklace you brought, incredibly fine work, truly impressive. You got a nick for jewelcrafting, just like I told you. Really, you helped me out immensely. Those hot-shots in Booty Bay are going to drool over this beauty, just you wait! As thanks for all your hard work and assistance, let me share one of my personal favourite designs with you.',41366,1,41340,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 15000,25900,3700, 0,0,0,0,0,0,0,0, 0,0,0, 70139,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61927, 41305);
replace into creature_involvedrelation  (id, quest) values (61927, 41305);
update quest_template set type = 81					 where entry = 41305;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41366,7053,'Giant Scarlet Ruby',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Fits your whole fist.',0,4);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3977, 41366, -100, 0, 1, 1, 0);

-- NPC "Vangros" does a threat reset.
update creature_template set flags_extra = 2048 where entry = 61965;