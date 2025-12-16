-- Hidden but not Gone
delete from quest_template where entry = 40796;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40796,2,331,28,24,0,0,'Hidden but not Gone','There are many things that can hurt me. After seeing so many years pass by, believe me when I say, physical pain is among the least of them.$B$BI assume you are not unfamiliar with the problems we have in Ashenvale, $c? Between the Horde and the Sayaads, the tranquillity of the forest is fast becoming just a memory. But we have persisted - and will persist - through this challenge and countless more, mark my words.$B$BThe disgusting demons that have an uncanny resemblance to us are the worst affronts to nature. They hide away in their hovels, plotting corruption and torturing us all. I want you to head to each one of their nooks and crannies, and do your fair share in thinning them out. Bring me a collection of their gnarled and twisted horns, and the Kaldorei will know of your bravery.','Collect 6 horns from each of the Satyr camps.','Blights on the land can be hidden with ease, but healed with difficulty. Remember this.','Exceptional. I hope you sustained no injuries during your battles? You have aided more in one skirmish than those childish sentinels have done since they arrived.',61150,6,61151,6,61152,6,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2150,69,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61145, 40796);
replace into creature_involvedrelation	(id, quest) values (61145, 40796);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61150,941,'Bleakheart Horn',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61151,941,'Xavian horn',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61152,941,'Felmusk horn',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3765, 61150, -45, 0, 1, 1, 0),
(3767, 61150, -45, 0, 1, 1, 0),
(3770, 61150, -45, 0, 1, 1, 0),
(3771, 61150, -45, 0, 1, 1, 0),
(3752, 61151, -45, 0, 1, 1, 0),
(3754, 61151, -45, 0, 1, 1, 0),
(3755, 61151, -45, 0, 1, 1, 0),
(3757, 61151, -45, 0, 1, 1, 0),
(3758, 61152, -45, 0, 1, 1, 0),
(3759, 61152, -45, 0, 1, 1, 0),
(3762, 61152, -45, 0, 1, 1, 0),
(3763, 61152, -45, 0, 1, 1, 0);

-- A Foul Effigy
delete from quest_template where entry = 40797;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40797,2,331,28,20,0,0,'A Foul Effigy','The carving of a Furbolg has been riddled with sharp thorns and splinters of metal. They are gouged into its face, neck, and body. And yet, the carving can clearly be made out to have an almost childlike appearance. Was this someone\'s toy once? What were the Satyr doing with it?','Return the Effigy to its owner.','<The Furbolg watches you curiously as you approach.>','<He peaks his ears and snatches the effigy away. He is silent for several seconds, before mewling quietly.>$B$BThis was given to me when I was a mere cub, by my parents. We bless them to protect us, always. They are deeply personal, you only ever get one in life. I sensed something I was barely able to see snatch it away as I came to Forest Song for refuge! I have no idea what they were doing to it, or why. Sometimes it is best not to ask.$B$B<Picking out the thorns, he hugs it to his chest and nods.>$B$BYou cannot know how much this means to me. I have very little, but I would have given everything away to keep this. So please, take... take.',61153,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61153,1, 0,1800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61154,1,61155,1,61156,1,0,0, 0,0,'');

replace into creature_involvedrelation	(id, quest) values (61146, 40797);

update quest_template set requiredraces = 1101 where entry = 40797;

REPLACE INTO item_template values
(61153, 12, 0, 'Foul Effigy', '', 34261, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 40797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3770, 61153, 30, 0, 1, 1, 0);

replace into item_template values
 ('61154', '2', '6', 'Savage Spear', 'Simple, but brutally effective.', '25630', '2', '0', '1', '25380', '6345', '17', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '5', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '41', '69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '85', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61155', '4', '0', 'Primitive Bead Necklace', 'Not quite to most tastes.', '9852', '2', '0', '1', '22692', '5673', '2', '-1', '-1', '32',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61156', '4', '2', 'Headband of a Hundred Feathers', 'Seems to have lost a few.', '28739', '2', '0', '1', '13160', '3290', '1', '-1', '-1', '32',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '9329', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

-- Alleana Moonfeather, display ID 1932, faction 80, level 45 elite, humanoid, scale 1 , quest/gossip flags, gossip text : "Greetings, $r! I do hope you weren't planning to pay for flight travel  from me, were you?" 
REPLACE INTO creature_template VALUES
(61292, 1932, 0, 0, 0, 0, 'Alleana Moonfeather', NULL, 0, 45, 45, 5544, 5544, 0, 0, 2725, 80, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 229, 295, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.48, 70.785, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Treats for Training
delete from quest_template where entry = 40798;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40798,2,331,30,25,0,0,'Treats for Training','Greetings! Has my sister sent you? No? Oh, my brother then?$B$BYou haven\'t met them? Then who are you? Oh... well, allow me to introduce myself too. I am Alleana Moonfeather, youngest of the family! My siblings have already earned the mantle of hippogryph master, but… I am finding my training extremely difficult since my mentor was…$B$B<She trails off for a moment, before looking straight back up.>$B$BI miss him, but I must continue! For my family\'s reputation, and for his memory. It really is difficult without the proper guidance though. We raise fledgelings from a very young age, so they will be bonded to us and follow our guidance. Make no mistake, they belong to nature first and foremost, but we Kaldorei have a strong bond that allows us to share burdens!$B$BThat is, if they would listen to me. I think it\'s their diet, they need the proper food to be trained and socialised. Please, could you bring me a variety of foods for these little ones?','5 Chunks of Crawler Marrow from Zoram Strand, 5 Heaven Peaches, 5 Bear Viscera and 5 Giant Strider Wings from Darkshore to Alleana Moonfeather in Forest Song.','Hello again!','Did you carry all that in your backpack? Never mind, thank you kindly, $n.',61157,5,61158,5,61159,5,61160,5, 0,0,0,0,0,0,0,0, 0,0, 0,2300,69,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61292, 40798);
replace into creature_involvedrelation	(id, quest) values (61292, 40798);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61157,941,'Chunk of Crawler Marrow',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0),
(61158,941,'Heaven Peach',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0),
(61159,941,'Bear Viscera',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0),
(61160,941,'Giant Strider Wing',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3814, 61157, -40, 0, 1, 1, 0),
(3812, 61157, -40, 0, 1, 1, 0),
(3809, 61159, -25, 0, 1, 1, 0),
(3811, 61159, -50, 0, 1, 1, 0),
(2323, 61160, -50, 0, 1, 1, 0);

-- Words of Wisdom
replace INTO quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) VALUES (40798,40799,2,331,38,25,0,0,'Words of Wisdom','They still aren\'t responding to me! How do my siblings make it look so easy! It\'s infuriating.$B$B<Her ears prick and she bares her fangs as she fails to summon a disobedient hippogryph to her side.>$B$BMy Shan\'do would tell me to drop my pride at this point, I\'m sure of it. He was always so wise and patient. Please, $n, seek other masters of flight, for advice on these annoying little creatures. Tell them of my struggles, ask them for advice. It pains me to admit that I need help, but… I need help. $B$B Please do not ask Caylais or Fyldren! It can\'t look like I am getting preferential treatment. Look around the local towns. I think I had correspondence from Nigel\'s Point, wherever that is. Teloren will definitely want to help, he\'s at the peak of Stonetalon. I would take what he says with a large pinch of salt, though.','Seek out Kaldorei hippogryph masters and hear their advice.','Hello, $n!','<She listens in silence to the advice, meditating on their words for a few minutes.>$B$BWait, Teloren said what? $B$B <She grows almost as red as a radish.>',0,0,0,0,0,0,0,0, 60031,1,60028,1,60029,1,60030,1, 0,0, 0,850,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

-- 40799: Target Has Quest 40799 In Log
replace INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (40799, 9, 40799, 0, 0, 0, 0);

replace INTO creature_questrelation		(id, quest) VALUES (61292, 40799);
replace INTO creature_involvedrelation	(id, quest) VALUES (61292, 40799);

UPDATE quest_template SET objectivetext1 = 'Speak with Teloren', objectivetext2 = 'Speak with Baritanas Skyriver', objectivetext3 = 'Speak with Daelyshia', objectivetext4 = 'Speak with Vesprystus' WHERE entry = 40799;

replace INTO creature_template VALUES
(60031, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60028, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60029, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60030, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- NPC Teloren (Stonetalon)
UPDATE `creature_template` SET `gossip_menu_id`=59012 WHERE `entry` = 4407;
SET @magic_number = 30077;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Alleana? Ah, she should have visited in person! Of course, tell her it\'s all about appearance and mannerism. Speaking to the fledglings not as a parent, nor a master: but a friend, an equal. They will respect that approach, and only by doing so can she hope to build a bridge between herself and them. Remember they are still wild creatures, they lend us their strength and service, we do not tame them.$B$BAnd please tell Allie I still press her letters to my lips some nights. She really should visit for private tuition some time.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59012, 7778, 0, 0),
(59012, @magic_number, 59012, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59012, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59012;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59012, 0, 0, 8, 60031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teloren - Give Quest Credit');

-- NPC Baritanas Skyriver (Desolace)
UPDATE `creature_template` SET `gossip_menu_id`=59013 WHERE `entry` = 6706;
SET @magic_number = 30078;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'I am not sure I recognise the name, but the process is roughly the same as gaining the respect of any other animal companion. I would advise taking them into a clearing during a full moon. The gaze of Elune often brings a sense of respect and spirituality, which may be the missing piece in her training.$B$BTell her I wish her well, for this life is demanding, but incredibly rewarding.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59013, 7778, 0, 0),
(59013, @magic_number, 59013, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59013, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59013;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59013, 0, 0, 8, 60028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baritanas Skyriver - Give Quest Credit');

-- NPC Daelyshia (Ashenvale)
UPDATE `creature_template` SET `gossip_menu_id`=59014 WHERE `entry` = 4267;
SET @magic_number = 30079;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Oh my word, that\'s awful. Alleana is a Moonfeather, yes? I have every confidence she will find the methods that work best for her. It is intensely personal, after all, and every master handles the hippogryphs differently.$B$BThat said, I hear the East of our sacred forests are being ravaged about as badly as the north has been. She truly has my condolences, it cannot be easy. May Elune grant her strength. Perhaps taking a small break to relax the mind will help? One cannot hope to calm a wild beast while also being of an uncalm mind.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59014, 7778, 0, 0),
(59014, @magic_number, 59014, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59014, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59014;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59014, 0, 0, 8, 60029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daelyshia - Give Quest Credit');

-- NPC Vesprystus (Teldrassil)
UPDATE `creature_template` SET `gossip_menu_id`=59015 WHERE `entry` = 3838;
SET @magic_number = 30080;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, '<He looks up from feeding his flock, and replenishing their food. He wipes sweat from his brow with mucky, worn hands.> $B$B I am extremely busy as of now, performing my duties. I expect if she wants to follow in her siblings\' footsteps and serve, then she had better buckle down and put in the hours and days and years of blood sweat and tears to earn such an austere position.$B$BGoodbye.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59015, 7778, 0, 0),
(59015, @magic_number, 59015, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59015, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59015;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59015, 0, 0, 8, 60030, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vesprystus - Give Quest Credit');

-- The Family Name
delete from quest_template where entry = 40800;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40799,40800,2,331,30,25,0,0,'The Family Name','That\'s right. I\'m a Moonfeather! Shan\'do said so too, and I will honor his legacy!$B$BSharptalon. I know him, we have never connected before, but I have seen him in the forest glades at twilight. Such a majestic creature. Please, take one of the hatchlings, the youngest of my flock. Protect him with your life, and head south west of here. Avoid the Horde as best you can, and just south of their ugly encampment you will find those beautiful glades where our sisters wait in the trees to ambush the invaders. Sharptusk is reported to aid the defense of Ashenvale near there. Bring the little one to him, relay our family name, and see his response.','Find and commune with Sharptalon within Ashenvale Forest, then return to Alleana Moonfeather.','Hello, $n. Did you find Sharptalon?','He bowed his head? By Elune, that is amazing. Very well, I shall spend far more time with the young ones in Sharptalon\'s presence, and with some fortune, I will make my family proud. The Moonfeathers will have another master in their midst!$B$BAnd hey, this little guy seems to not want to leave your side. I suppose, if you promise to look after him, there is no issue with him following you, right? It would be the least I could offer after all the work you have done for me. Elune smiles upon us both this day, $n.',0,0,0,0,0,0,0,0, 60031,1,0,0,0,0,0,0, 0,0, 0,1200,69,200,0,0,0,0,0,0,0,0,0, 23713,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61292, 40800);
replace into creature_involvedrelation	(id, quest) values (61292, 40800);

UPDATE quest_template SET objectivetext1 = 'Find and commune with Sharptalon within Ashenvale Forest' WHERE entry = 40800;

replace INTO creature_template VALUES
(60031, 328, 0, 0, 0, 0, 'quest_40800_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- 40800: Target Has Quest 40800 In Log
replace INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (40800, 9, 40800, 0, 0, 0, 0);

-- NPC Sharptalon (Ashenvale)
UPDATE `creature_template` SET `gossip_menu_id`=41389, npc_flags = 1 WHERE `entry` = 12676;
SET @magic_number = 30081;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Sharptalon tenses visibly as you approach, but relaxes at the mention of the Moonfeather name. Eventually, his wings stop beating, he nestles to the ground below, and bows his head, letting out a deferential trill.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(41389, @magic_number, 41389, 40800);
DELETE FROM `gossip_scripts` WHERE `id`=41389;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(41389, 0, 0, 8, 60031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sharptalon - Give Quest Credit');

-- Patience is the Key
delete from quest_template where entry = 40801;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40801,2,331,26,25,0,0,'Patience is the Key','You may see ruins around here, $c, but what I see is far different. I see a reminder of a lost civilization, a Kaldorei race that was strong, ordered, unified, unparalleled in might. And now, just across the hills, I see the horde invading our sacred lands.$B$BBut that is not what has happened. Instead we bicker with the sentinels while the horde spreads like a disease, ravaging parts of our ancient homelands. Sentinels throwing young lives away like they were meaningless. If Fandral was here, he would have those upstarts whipped into line in a moment.$B$BAnyway, what brings you to Forest Song? Are you here to help?','Listen to what Brother Ironglade and Commander Starwind have to say. Make a choice on the best course of action. Siding with one will likely make the other unreceptive to you.','I suppose you are going to be as unhelpful as the sentinels then?','Impressive to see one with an ounce of sensibility around here. Thank you, $n.',0,0,0,0,0,0,0,0, 60032,1,0,0,0,0,0,0, 0,0, 0,500,69,10,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61147, 40801);
replace into creature_involvedrelation	(id, quest) values (61147, 40801);

UPDATE quest_template SET objectivetext1 = 'Listen to what Brother Ironglade and Commander Starwind have to say' WHERE entry = 40801;

update creature_template set script_name = 'npc_brolthan_ironglade' where entry = 61147;

replace INTO creature_template VALUES
(60032, 328, 0, 0, 0, 0, 'quest_40801_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- What seems to be the matter between the druids and the sentinels here in Forest Song?
set @magic_number = 30082;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It\'s a matter of strategy and value of life. That\'s what this all comes down to. Starwind has rallied those who she commands, made their blood boil with speeches about glory and defending the homeland. Noble, but we are not some troll berserkers! We are Kaldorei, noble, strong, intelligent. It is with the greatest of pain in my chest I see apprentices and young sentinel sisters, some barely past their first century, racing off to skirmish with orcs and goblins in the felled trees of our homeland.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Clickbox (continued): Then why not help them? Commander Starwind wishes the druids to fight with the sentinels!
set @magic_number = 30083;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Of course we could help them. We could charge into the fray with the others, into a maelstrom of steel and claws, blood and rage. We could grab the horde where they are strongest, and use our brute strength to expel them. But to think I would give the call, to be responsible for loss of life when it is so preventable? Then you are as foolish as her.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Option (continued): So you will just stand here and do nothing?
set @magic_number = 30084;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'No! There are weaknesses we can exploit, key parts of the horde war machine we can destroy, leaving them helpless. We can win this war with minimal danger. As I mentioned, the hawk does not stand in front of the fox and fight on its terms...');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Clickbox (continued): The sentinels will merely be a distraction then. Their loss of blood will be a way to strike at the backlines?
set @magic_number = 30085;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Precisely. It may seem cold and calculated to think of it like that, but I am not the one who sent young sisters into a pointless battle. My conscience is clear; this will be the quickest and most effective way of winning. Trust me, even if that brash commander does not!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Clickbox(continued, grants quest completion on clicking): I must think about this.
set @magic_number = 30086;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Of course, speak to Commander Starwind if you haven\'t already. But know this - every hour that goes by, another chosen of Elune will be laying clover-clad.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- The Outrider
delete from quest_template where entry = 40802;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40801,40802,2,331,30,25,0,0,'The Outrider','Very well $n, let us break this deadlock immediately. From this moment forwards, the Horde will be our prey! The first thing to do with a prey animal is to isolate it from the rest. Make it blind, deaf and dumb. We need to disrupt the communications of the invaders from the rest.$B$BThere is an outrider who diligently passes messages from the lumber camp to their outposts, and likely beyond into the dusty deserts they call home. Lay an ambush, $n. Lie in wait by the road just south of here, north of the lumber camp. And when she passes by, strike her down. Show no mercy, for none will be shown to you.','Kill the Warsong Outrider that patrols the road south of Forest Song for Brolthan Ironglade.','How has the hunt been so far? Anything to report?','Well done. You have already proven more useful than the sentinels, though admittedly, it is not a high bar.',0,0,0,0,0,0,0,0, 12864,1,0,0,0,0,0,0, 0,0, 0,1000,69,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61147, 40802);
replace into creature_involvedrelation	(id, quest) values (61147, 40802);

update creature_template set unit_flags = 0, flags_extra = 0 where entry = 12864;

-- The Mortal Strike
delete from quest_template where entry = 40803;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40802,40803,2,331,31,25,0,0,'The Mortal Strike','The time has come to end this conflict with one decisive blow. Well, two actually. I have done some searching of my own while you were gone, and while the sentinels were off playing hero. There are two leaders of this operation, and both will need to be brought low and executed, if we are to know peace once more in these glades. You must find their Commander, a brutish orc by the name of Grushak, somewhere to the south of the Camp. And plotting from the Keep itself, is a shaman by the name of Grimeye.$B$BIf you need companions to help you assassinate these targets, I certainly would not blame you. In fact, I would view it as very wise indeed - for every failed attempt will certainly make our lives a lot more difficult afterwards.','Slay Commander Grushak and Farseer Grimeye for Brolthan Ironglade at Forest Song in Ashenvale.','I pray you return with good news, $n?','I knew I could count on you, from the moment we began to talk. Truly you have earned Elune\'s favor this day, and I will make sure the word is spread of your deeds. My thanks, $n.',0,0,0,0,0,0,0,0, 70023,1,70027,1,0,0,0,0, 0,0, 0,2900,69,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61147, 40803);
replace into creature_involvedrelation	(id, quest) values (61147, 40803);

update quest_template set type = 1 where entry = 40803;

update creature_template set unit_flags = 0, flags_extra = 0, rank = 1, level_min = 30, level_max = 30, health_min = 7640, health_max = 7640, dmg_min = 129, dmg_max = 166, attack_power = 122 where entry = 70023;
update creature_template set unit_flags = 0, flags_extra = 0, rank = 1, level_min = 31, level_max = 31, health_min = 7800, health_max = 7800, dmg_min = 129, dmg_max = 166, attack_power = 122 where entry = 70027;

-- Victory, Such as it is
delete from quest_template where entry = 40804;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40803,40804,2,331,30,25,0,0,'Victory, Such as it is','Your task for helping Forest Song and ending this stalemate is at an end. However, I cannot think of anyone more appropriate to send word to Fandral Staghelm than you, $n. You did a significant portion of the work, and you deserve that portion of the praise too.$B$BGo, now. The path to Teldrassil is a long, albeit beautiful, one. Take the time for some rest and relaxation, perhaps, enjoy the verdant canopies of our ancient oaks. Once you board the ship and make it to Teldrassil, you will find the Arch Druid in the Cenarion Enclave of our beautiful capital. Here, this report should explain what transpired. Give it to him, but be a bit wary of his temper.','Take the Sealed Forest Song Report to Arch Druid Fandral Staghelm in Darnassus.','Speak swiftly, I have numerous other burdens upon my shoulders, if you are going to add to them, I demand you at least do so and leave quickly.','Ah, the nasty business in Southern Ashenvale has come to an end, has it? Let me see what Brolthan Ironglade has achieved.',61161,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61161,1, 0,600,69,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61147, 40804);
replace into creature_involvedrelation	(id, quest) values ( 3516, 40804);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61161,3020,'Sealed Forest Song Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Price of Leadership
delete from quest_template where entry = 40805;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40804,40805,2,1657,30,25,0,0,'The Price of Leadership','After reading this report, it is clear that the sentinel presence has been less than helpful in this area of our homelands. Not only have they refused to follow the tactical plans suggested by Brolthan Ironglade, but the display of unthinking bravado has led to the death of many sisters and daughters. To lose the blood of kin is a pain I know all too well.$B$BI know not if this was a simple mistake on Commander Starwind\'s part, nor if it was deliberate and reckless misconduct, but either way, having one less character like her in a leadership position will only solidify the Kaldorei as a traditional and united force. One fewer supporter of this new way of living, spread by that fool Tyrande and her ilk. And so, she must take the fall for her rash actions. I will make the changes to the records here, while you bring my notice to the commander. Inform Brolthan Ironglade to present you with a suitable reward, too.$B$BI do not care if you think me heavy-handed or cruel, $c. Hopefully this situation will teach you something about viewing the greater picture at hand.','Bring Fandral\'s Letter to Commander Starwind in Forest Song.','Ah, $n! I hear we have you to thank for bringing this conflict to an end!','We must rest and meditate at some point, you and I. I would very much like to... what is this? A letter from The Arch Druid?',61162,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61162,1, 0,600,69,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 3516, 40805);
replace into creature_involvedrelation	(id, quest) values (61143, 40805);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61162,13430,'Fandral\'s Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50563);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50563, 'Commander Starwind,$B$BI will keep this brief. Your disgraceful and rash abuse of power to send young sisters into battle needlessly has been reported to the Priestesses and to the High Sentinel. Bearing in mind your record until now of countless centuries.', 50564),
(50564, 'It is deemed appropriate that you are stripped of all leadership responsibilities. Return to Darnassus for your new assignment. Your final command shall be to inform all sentinels to leave the sacred site of Forest Song for good, and explain that your shameful actions do not reflect poorly on them.$B$BArch Druid Fandral Staghelm.', 0);

-- Kaldorei Relics
delete from quest_template where entry = 40806;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40805,40806,2,331,30,25,0,0,'Kaldorei Relics','<Her silver eyes grow wide, while her skin grows red. She grinds her teeth together and throws the letter to the floor.>$B$BSo that is the Elune-damned thanks I get after all this time? To take the fall for that belligerent, conniving druid? Oh, I will tell my sisters we will leave this place alright, don\'t expect to see us here again. And don\'t think I won\'t take this up with Lady Whisperwind either, she must smell foul play in the air. Now, get out of my sight, $n. You\'ve done enough around here.','Return to Brolthan Ironglade for a reward.','You returned for your reward, I take it? Yes, I thought as much.','Here, take one of these as a token of our appreciation for your efforts.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1000,69,450,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61163,1,61164,1,61165,1,61166,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61143, 40806);
replace into creature_involvedrelation	(id, quest) values (61147, 40806);

replace into item_template values
 ('61163', '2', '15', 'Kaldorei Side-Blade', '', '32075', '2', '0', '1', '29392', '7348', '13', '-1', '-1', '34',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '7', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1500', '0',
 '0', '23', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61164', '2', '10', 'Priestess of Elune\'s Staff', '', '24923', '2', '0', '1', '39360', '9840', '17', '-1', '-1', '34',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '48', '77', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9345', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '85', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61165', '2', '2', 'Bow of the Night Huntress', '', '20714', '2', '0', '1', '27860', '6965', '15', '-1', '-1', '34',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '100',
 '2', '28', '37', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61166', '2', '7', 'Captain\'s Moonglaive', '', '4289', '2', '0', '1', '36032', '9008', '21', '-1', '-1', '34',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '40', '58', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

-- Pressure is the Key
delete from quest_template where entry = 40807;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40807,2,331,26,25,0,0,'Pressure is the Key','A new face around these parts, ishnu-alah. My name is Commander Starwind, and normally I would be out on patrol somewhere or training with my sister sentinels but... unfortunately, I am stuck here trying to convince that pig-headed, cowardly druid Ironglade to assist us with the war on our doorstep. To think that would even require a conversation! The Horde fell our ancient trees, befouling Elune\'s beauty. Naturally many of us are already locked in combat, and someone - or something - needs to break this deadlock. It pains me to say that we are losing lives hour by hour.$B$BMaybe you can talk some sense into him, or perhaps if you are capable enough, join us in war? I am sure you will be well rewarded if so.','Listen to what Commander Starwind and Brother Brolthan have to say. Make a choice on the best course of action. Siding with one will likely make the other unreceptive to you.','So? Interested in turning the tide?','Now that\'s what I like to hear! Grab your weaponry, $n.',0,0,0,0,0,0,0,0, 60033,1,0,0,0,0,0,0, 0,0, 0,600,69,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61143, 40807);
replace into creature_involvedrelation	(id, quest) values (61143, 40807);

UPDATE quest_template SET objectivetext1 = 'Listen to what Commander Starwind and Brother Ironglade have to say' WHERE entry = 40807;

update creature_template set script_name = 'npc_commander_starwind' where entry = 61143;

replace INTO creature_template VALUES
(60033, 328, 0, 0, 0, 0, 'quest_40807_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Clickbox: What seems to be the matter between the sentinels and the druids here in Forest Song?
set @magic_number = 30087;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The moment our scouts reported the incursions into our land, I rallied those stationed nearby. Indecision has led to the Horde developing outposts and building lumber mills!$B$BNo more, we say. Most of us have already gone to fight, but Ironglade speaks about hatching some master plan, of deception and whatever. Well, while he talks from the comfort of his chair, we are busy fighting. And the coward refuses to help, he wishes us to retreat and regroup!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Clickbox (continued): Then why not retreat? Brolthan Ironglade wishes to aid once everyone is back to Forest Song safely!
set @magic_number = 30088;
replace into broadcast_text (entry, Male_Text) values (@magic_number, '$c, you don\'t know much about our way of fighting, do you? We can blend into the shadows under the canopy of the trees, strike when we need to strike.$B$BThere is strength in this: a retreating sister will be aided by unseen arrows and knives. If we all retreat, the blood lost so far will be for nought, and many of us will be killed and captured in the process. Absolutely not.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Clickbox (continued): So you will just continue fighting without a plan, without regrouping?
set @magic_number = 30089;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We haven\'t got a choice. I will not show the Horde our backs, or have to explain away the cowardice of retreat, nor will I allow them a chance to capture us as we flee. Lend me your strength, if he will not. Let us break the back of the Horde and show them what it means to trespass into Kaldorei land.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Clickbox (continued): The druids will be merely bystanders then, while the sentinels sacrifice themselves for glory?
set @magic_number = 30090;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Glory is a consequence, we sacrifice for our homeland. And I would much rather make those greenskins die for our homeland than us. Are you in agreement, or do you wish to tarry and delay like the others, while we are actually struggling?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

-- Clickbox(continued, grants quest completion on clicking): I must think about this.
set @magic_number = 30091;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Feel free, but hurry. Talk to Brolthan IronGlade. Come back when you are ready to fight, with or without him.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

update quest_template set exclusivegroup = 40801 where entry in (40801,40807);

-- Havoc on the Battlefield
delete from quest_template where entry = 40808;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40807,40808,2,331,29,25,0,0,'Havoc on the Battlefield','Listen closely, $n. You will not be fighting alone out there, so show some spirit when you do. And do not dare return until you are crimson with their blood. I do not care if they are common laborers or peons, guards or shamans. Kill them indiscriminately. Bring havoc to the battlefield. Each Kaldorei death will be repaid tenfold, mark my words.$B$BWe will remember your name if you return from this alive, and if you fight with honor, $n. If not, then may Elune cast her gaze upon your body. Tor ilisar\'thera\'nal!','Wage war with the horde invaders around the Warsong Lumber Camp for Commander Starwind at Forest Song in Ashenvale.','You return already?','You positively reek of blood, sweat and dirt. Have you driven them back?',0,0,0,0,0,0,0,0, 11656,10,11680,8,11681,6,11682,6, 0,0, 0,2000,69,150,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61143, 40808);
replace into creature_involvedrelation	(id, quest) values (61143, 40808);

-- The Final Strike
delete from quest_template where entry = 40809;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40808,40809,2,331,31,25,0,0,'The Final Strike','The enemies are reeling, their compatriots\' blood in their eyes and their death-rattles in their ears. Do not let up the pressure now, $c. Seek the brutish Commander Grushak south of the keep, possibly watching from one of their towers. He should be separated from the bulk of the forces. And find the venomous Farseer Grimeye in the keep, plotting away his next move.$B$BI will leave it to you, if you grant them a warrior\'s swift death, or a slow and painful one. As long as they are dead and gone, Elune will smile upon whichever choice you make.','Slay Commander Grushak and Farseer Grimeye for Commander Starwind at Forest Song in Ashenvale.','Is it done? Are the southern forests free of the Horde, at last?','<She bares her teeth and gives a wide grin.>$B$BFantastic. The sentinels shall be recalled, finally, and we shall celebrate tonight. Elun\'adore, $n!',0,0,0,0,0,0,0,0, 70023,1,70027,1,0,0,0,0, 0,0, 0,2900,69,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61143, 40809);
replace into creature_involvedrelation	(id, quest) values (61143, 40809);

update quest_template set type = 1 where entry = 40809;

-- Reporting our Victory
delete from quest_template where entry = 40810;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40809,40810,2,331,30,25,0,0,'Reporting our Victory','The moonberry cordial and spirits flow freely around here after what we have done. Amongst us at least, the coward Ironglade barely shows his face, knowing he stood by and watched while the real guardians of the land stood tall. Though you have all our thanks, I think there is one more person who would like to hear about this first hand. Here, take this report to Lady Whisperwind in Darnassus. She will likely be with the other priestesses in the Temple of the Moon. Do not worry, it speaks rather favorably of you, and I am sure she will know what to do next.$B$BOh, and feel free to take your time on this one, we\'re going nowhere soon. Enjoy some fish on the way in Auberdine, enjoy the boat trip to Teldrassil. Try not to get too drunk!','Take the Sealed Forest Song Report to Tyrande Whisperwind in Darnassus.','Greetings, $c. What brings you to our Temple?','Ah, so our southern forests are finally free of the Horde? This is music to my ears.',61167,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61167,1, 0,600,69,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61143, 40810);
replace into creature_involvedrelation	(id, quest) values ( 7999, 40810);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61167,5646,'Sealed Forest Song Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50563, 'Commander Starwind,$B$BI will keep this brief. Your disgraceful and rash abuse of power to send young sisters into battle needlessly has been reported to the Priestesses and to the High Sentinel. Bearing in mind your record until now of countless centuries.', 50564),
(50564, 'It is deemed appropriate that you are stripped of all leadership responsibilities. Return to Darnassus for your new assignment. Your final command shall be to inform all sentinels to leave the sacred site of Forest Song for good, and explain that your shameful actions do not reflect poorly on them.$B$BArch Druid Fandral Staghelm.', 0);

-- The Price of Cowardice
delete from quest_template where entry = 40811;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40810,40811,2,1657,31,25,0,0,'The Price of Cowardice','You claim how many Horde kills to your name? Very impressive indeed, $n. There is one thing that concerns me, though, even during what should be a jubilant period. This Brolthan Ironglade, the one coordinating the druids in the area, the report states he refused to help at all? Cowardice it claims in here, but I worry there is something far worse than cowardice involved here.$B$BYou see, that druid is staunchly loyal to Arch Druid Fandral Staghelm. And we do not exactly see eye to eye. He would not have acted this way without some assurance or support from Darnassus, I imagine. Which means he knowingly endangered Kaldorei lives in order to, what, prove a political point?$B$BPlease, deliver this message to him. Frankly I think it is better than he deserves, but I will leave his fate to Elune to decide., And $n, do not forget to ask the commander for a reward afterwards!','Bring Tyrande\'s Message to Brolthan Ironglade at Forest Song in Ashenvale.','Ah, the hero of the hour. Speak quickly, $n, I rather wish to be left alone currently. The drunken singing of the sentinels is making it rather hard to meditate.','A message from Tyrande directly? To me? Curious.',61168,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61168,1, 0,600,69,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 7999, 40811);
replace into creature_involvedrelation	(id, quest) values (61147, 40811);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61168,3018,'Tyrande\'s Message',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50565);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50565, 'Brolthan Ironglade,$B$BI do not presume to know your motives for refusing to help in the battle for Southern Ashenvale. Whether it was cowardice, politicking or betrayal, it is not my place to judge you. However, you are not to return to Forest Song, Astranaar, or any Kaldorei establishment in Kalimdor.', 50566),
(50566, 'The rest of your druids will also leave Forest Song under the protection of the sentinels, since they did not aid before, under the leadership of Commander Starwind alone. May Elune grant you forgiveness.$B$BHigh Priestess Tyrande Whisperwind.', 0);

-- Kaldorei Weaponry
delete from quest_template where entry = 40812;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40811,40812,2,331,30,25,0,0,'Kaldorei Weaponry','So, that is the judgement of the High Priestess, is it. What a joke. My desire to save lives is seen as cowardice, whereas the commander’s desire for bloodlust is seen as heroism?$B$BPerhaps it really is time for me to return to the hills of my youth. I shall fly with the hawks, swim with the fish and hunt with the wolves, and I expect I will find far less duplicity amongst all of them than with your sentinel friends.','Return to Commander Starwind for a reward.','$n! Drink?','That is... harsh, though not unfair to the druids. I think the tension would have forced them away sooner or later anyway. And of course, feel free to choose a newly crafted weapon for your troubles.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1000,69,450,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61163,1,61164,1,61165,1,61166,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61147, 40812);
replace into creature_involvedrelation	(id, quest) values (61143, 40812);
-- Quest 'The Blackhorn Conflict' change completion text, add money reward of 25 silver.
update quest_template set offerrewardtext = 'You have done well, their actions could have sown chaos in the region. Here, take these coins as thanks from us here in Theramore.', reworreqmoney = 2500 where entry = 40688;
