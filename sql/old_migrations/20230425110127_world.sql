-- The Key to Karazhan I
UPDATE quest_template SET NextQuestInChain = 40818, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40817;
-- The Key to Karazhan II
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40817 WHERE entry = 40818;

-- The Key to Karazhan III (A)
UPDATE quest_template SET NextQuestInChain = 40820, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40819;
-- The Key to Karazhan IV (A)
UPDATE quest_template SET NextQuestInChain = 40821, NextQuestId = 0, PrevQuestId = 40819 WHERE entry = 40820;
-- The Key to Karazhan V (A)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40820 WHERE entry = 40821;

-- The Key to Karazhan III (H)
UPDATE quest_template SET NextQuestInChain = 40823, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40822;
-- The Key to Karazhan IV (H)
UPDATE quest_template SET NextQuestInChain = 40824, NextQuestId = 0, PrevQuestId = 40822 WHERE entry = 40823;
-- The Key to Karazhan V (H)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40823 WHERE entry = 40824;

-- The Key to Karazhan VI
UPDATE quest_template SET NextQuestInChain = 40826, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40825;
-- The Key to Karazhan VII
UPDATE quest_template SET NextQuestInChain = 40827, NextQuestId = 0, PrevQuestId = 40825 WHERE entry = 40826;
-- The Key to Karazhan VIII
UPDATE quest_template SET NextQuestInChain = 40828, NextQuestId = 0, PrevQuestId = 40826 WHERE entry = 40827;
-- The Key to Karazhan IX
UPDATE quest_template SET NextQuestInChain = 40829, NextQuestId = 0, PrevQuestId = 40827 WHERE entry = 40828;
-- The Key to Karazhan X
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40828 WHERE entry = 40829;

-- Set the following npc entries to scale 1, they are currently TINY.
update creature_template set scale = 1 where entry in (61393,61395,61396,61400);
-- Change display ID of item entry 61236 to 1317.
update item_template set display_id = 1317 where entry = 61236;
-- Add the following items to the sell list of NPC Historian Samual Ravencrest, add vendor flags to this npc as well. (entry 61269).
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61236, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61235, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61200, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61201, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61202, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61176, 0, 0, 0, 0);
-- Gossip text of npc entry 61269 changed.
update broadcast_text set male_text = 'Why, hello there, and welcome to Ravenshire!$B$BThis storied town is one of the oldest in Gilneas, and has long pledged fealty to the lords of Ravenwood Keep.$B$BSince the castle fell under dark times, Lord Ravenwood has relocated his court here, which means that history is being made right before our eyes!$B$BIf you\'d like to learn more of our fascinating past, I have quite the collection of texts that range from historical accounts and scholarly dissertations, to thrilling folktales and fables.' where entry = 61269;
-- New quest for PTR added.
-- Scouring Greyshire
delete from quest_template where entry = 40830;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40830,2,5179,42,36,520,0,'Scouring Greyshire','It may seem dreary here in Gilneas, though I must assure you this was not always our reality. In times past, I spent many years studying under my masters\' tutelage, and painting great manuscripts for the Light. I spread the faith and broke bread with many fine folk.$B$BThere are a foolish few who would assume we went unscathed during the perilous times of the Third War. Whilst we may not have suffered directly from the plague as our northern cousins have, we did have conflict with the Scourge.$B$BYou see, two years ago, a powerful lich named Naze the Eternal breached the wall near Oldrock Pass. Ultimately, the undead were defeated by the good soldiers of Gilneas, but our victory was paid at a terrible toll.$B$BI was lucky to escape Greyshire with my life, others were not so fortunate. I ask of you to scour that forsaken place, and recover the manuscripts that I spent my younger years painting. While you are there, bring peace to some of the forlorn souls that still remain.','Slay 9 Lingering Skeletons, 9 Shambling Dead and recover the Greyshire Manuscripts for Father Oblen at Shademore Tavern in Gilneas.','It may seem like a perilous task, but remember: Keep your faith in the Light and you are bound to find yourself on the right path.','<Father Oblen seems pleased gazing upon his old work.>$B$BAhh, I never thought I would look upon these scripts again, lucky they are to have survived all of the misery that befell that place.$B$BI thank you greatly for your efforts, $c. Please, take this as a sign of my gratitude.',61258,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 61259,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61386, 40830);
replace into creature_involvedrelation	(id, quest) values (61386, 40830);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61258,1037,'Greyshire Manuscripts',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2011105, 3, 23434, 'Weathered Chest', 0, 4, 1, 43, 2011105, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2011105,61258,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 10 where ID = 2011105;

replace into item_template values
 ('61259', '4', '1', 'Cuffs of Sanctitude', '', '16897', '2', '0', '1', '10620', '2655', '9', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '0', '0', '21505', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
-- NEW NPC FOR PTR:
-- Mikoto Shiina, displayid 18639, level 28, faction 35, humanoid, scale 1, quest/gossip flags, gossip text : Spirits be with you stranger, what can I do for you?
-- Haruhiko Yoshino, displayid 18646, level 42, faction 35, humanoid, scale 1, quest/gossip flags, gossip text: Keep your distance Outsider.
-- Dae-woong Kim, displayid 18642, level 38,  faction 35, humanoid, scale 1, quest/gossip flags, gossip text : Salutations Outlander. Keep on your good behaviour.
-- Yasu Ping, displayid 18644, level 55, faction 35, humanoid, scale 1, quest/gossip flags, gossip text : I am watching you Outsider.
-- Shizuru Yamada, displayid 18640, level 18, faction 35, humanoid, scale 1, quest/gossip flags, gossip text : Thank you for rescuing me. I am in your debt. ((Required for phasing, this npc should not be visible to players unless they complete the quest 'rescuing Shizuru)).
-- Shizuru Yamada, displayid 18640, level 18, faction 35, humanoid, scale 1, gossip flags ((Required for quest)).
-- Kurnen Oathbrace, display ID 3307, faction 120, level 44, humanoid, scale 1, gossip/quest flags, gossip text : "Why hello there, you wouldn't mind helping out a dwarf in need would ye?".
REPLACE INTO creature_template VALUES
(61410, 18639, 0, 0, 0, 0, 'Mikoto Shiina', NULL, 0, 28, 28, 890, 890, 0, 0, 1235, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 41, 57, 0, 112, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61411, 18646, 0, 0, 0, 0, 'Haruhiko Yoshino', NULL, 0, 42, 42, 1981, 1981, 0, 0, 2246, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61412, 18642, 0, 0, 0, 0, 'Dae-woong Kim', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61413, 18644, 0, 0, 0, 0, 'Yasu Ping', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61414, 18640, 0, 0, 0, 0, 'Shizuru Yamada <FOR PHASE. WILL BE PHASED WHEN QUEST WILL BE ADDED>', NULL, 0, 18, 18, 417, 417, 0, 0, 765, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 41, 51, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 18, 23, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61415, 18640, 0, 0, 0, 0, 'Shizuru Yamada', NULL, 0, 18, 18, 417, 417, 0, 0, 765, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 41, 51, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61416, 3307, 0, 0, 0, 0, 'Kurnen Oathbrace', NULL, 0, 44, 44, 2117, 2117, 0, 0, 2625, 120, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41421; set @magic_number = 61416;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Why hello there, you wouldn\'t mind helping out a dwarf in need would ye?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41420; set @magic_number = 61414;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Thank you for rescuing me. I am in your debt.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41419; set @magic_number = 61413;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am watching you Outsider.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41418; set @magic_number = 61412;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Keep on your good behaviour.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41417; set @magic_number = 61411;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Keep your distance Outsider.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41416; set @magic_number = 61410;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Spirits be with you stranger, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(18639, 0, 0, 0, 0),
(18646, 0, 0, 0, 0),
(18642, 0, 0, 0, 0),
(18644, 0, 0, 0, 0),
(18640, 0, 0, 0, 0);
-- NPC Therum Deepforge add quest flags.
update creature_template set npc_flags = 19 where entry = 5511;
-- Display ID 20278 INCORRECT SYNTAX ERROR.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20278, 0, 0, 0, 0);
-- Quest 2992 change short description to : "Bring Techbot's Memory Core to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring Techbot\'s Memory Core to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2992;
-- Quest 3641 change short description to : "Bring 6 Mithril Tubes, an Accurate Scope, and 2 Advanced Target Dummies to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring 6 Mithril Tubes, an Accurate Scope, and 2 Advanced Target Dummies to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3641;
-- Quest 3640 change short description to: "If you agree to become a Gnome Engineer, then right-click on the Pledge of Secrecy and speak once more with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you agree to become a Gnome Engineer, then right-click on the Pledge of Secrecy and speak once more with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3640;
-- Quest 2923 change short description to: "Speak with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2923;
-- Quest 2923 change main description to :"Tinkmaster Overspark is very upset with the fate of his mechanical creation, Techbot. I remember Techbot as a kind and helpful tool for the gnomes, but Overspark tells me it's malfunctioned.$B$BVery sad. But with luck perhaps he can be fixed!$B$BSpeak with Tinkmaster Overspark, in the Gnomeregan Reclamation Facility in Dun Morogh. He would welcome your help."
update quest_template set details = 'Tinkmaster Overspark is very upset with the fate of his mechanical creation, Techbot. I remember Techbot as a kind and helpful tool for the gnomes, but Overspark tells me it\'s malfunctioned.$B$BVery sad. But with luck perhaps he can be fixed!$B$BSpeak with Tinkmaster Overspark, in the Gnomeregan Reclamation Facility in Dun Morogh. He would welcome your help.' where entry = 2923;
-- Quest 3632 change short description to : "If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3632;
-- Quest 3632 change main description to : "Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work. $B$B $N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!"
update quest_template set details = 'Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work.$B$B$N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!' where entry = 3632;
-- Quest 3634 change short description to : "If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3634;
-- Quest 3634 change main description to : "Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work. $B$B $N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!"
update quest_template set details = 'Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work.$B$B$N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!' where entry = 3634;
-- Quest 3630 change short description to : "If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3630;
-- Quest 3630 change main description to : "Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work. $B$B $N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!"
update quest_template set details = 'Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work.$B$B$N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!' where entry = 3630;
-- Quest 2931 change short description to : "Speak with Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak with Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2931;
-- Quest 2931 change main description to : "Master Mechanic Castpipe in the Gnomeregan Reclamation Facility has need of adventurers! He's organizing bands to reenter Gnomeregan on a data retrieval mission of top security and importance.$B$BCastpipe might not be a member of the Enlightened Assembly of Arcanology, Alchemy and Engineering Sciences like I am, but he's still a smart gnome so if he thinks it's important, then by my calculations there's an eighty-four percent probability that it really is important!$B$BThose are good odds!"
update quest_template set details = 'Master Mechanic Castpipe in the Gnomeregan Reclamation Facility has need of adventurers! He\'s organizing bands to reenter Gnomeregan on a data retrieval mission of top security and importance.$B$BCastpipe might not be a member of the Enlightened Assembly of Arcanology, Alchemy and Engineering Sciences like I am, but he\'s still a smart gnome so if he thinks it\'s important, then by my calculations there\'s an eighty-four percent probability that it really is important!$B$BThose are good odds!' where entry = 2931;
-- Quest 2930 change short description to : "Bring a Prismatic Punch Card to Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring a Prismatic Punch Card to Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2930;
-- Quest 2924, change short description to : "Bring 12 Essential Artificials to Klockmort Spannerspan at the Gnomeregan Reclamation Facility."
update quest_template set objectives = 'Bring 12 Essential Artificials to Klockmort Spannerspan at the Gnomeregan Reclamation Facility.' where entry = 2924;
-- Quest 1708 change short description to : "Bring 20 loads of Searing Coral to Klockmort Spannerspan at the Gnomeregan Reclamation Facility."
update quest_template set objectives = 'Bring 20 loads of Searing Coral to Klockmort Spannerspan at the Gnomeregan Reclamation Facility.' where entry = 1708;
-- quest 1704 change main description to : "I made a copy of my notes on the techniques I learned while making your armor, and need someone to take them to Klockmort Spannerspan. He's a gnomish blacksmith in the Gnomeregan Reclamation Facility and when he learns what I've learned... I bet he'll pull off his own beard in excitement."
update quest_template set details = 'I made a copy of my notes on the techniques I learned while making your armor, and need someone to take them to Klockmort Spannerspan. He\'s a gnomish blacksmith in the Gnomeregan Reclamation Facility and when he learns what I\'ve learned... I bet he\'ll pull off his own beard in excitement.' where entry = 1704;
-- Quest 2925, change short description to : "Speak with Klockmort Spannerspan at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak with Klockmort Spannerspan at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2925;
-- Quest 2925 change main description to : "A gnome friend, Klockmort Spannerspan, sent word to me from Ironforge. He tells me he needs help on a dangerous, but essential, mission into Gnomeregan, the once great gnome city now contaminated and filled with mad gnomes and their devices.$B$BI must stay here, but my heart aches to help my friend. If you can go in my stead, then I would be much indebted to you.$B$BYou may find Klockmort at the Gnomeregan Reclamation Facility, in Dun Morogh."
update quest_template set details = 'A gnome friend, Klockmort Spannerspan, sent word to me from Ironforge. He tells me he needs help on a dangerous, but essential, mission into Gnomeregan, the once great gnome city now contaminated and filled with mad gnomes and their devices.$B$BI must stay here, but my heart aches to help my friend. If you can go in my stead, then I would be much indebted to you.$B$BYou may find Klockmort at the Gnomeregan Reclamation Facility, in Dun Morogh.' where entry = 2925;
-- Quest 1072 change short description to : "Speak to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 1072;
-- Quest 1072 change main description to : "The device I'm thinking about is my most advanced version to date. But we'll need a special potion if it's to work. I'm thinking we might as well get the good stuff since this mission could be your last.$B$BAnd for that, we're going to need some potent explosives: Nitromirglyceronium.$B$BThe only person who can make NG-5 is an old friend of mine: Lomac Gearstrip. Look for him in the Gnomeregan Reclamation Facility.$B$BYou talk him into making us some NG-5, I'll get to work on placement for my devices."
update quest_template set details = 'The device I\'m thinking about is my most advanced version to date. But we\'ll need a special potion if it\'s to work. I\'m thinking we might as well get the good stuff since this mission could be your last.$B$BAnd for that, we\'re going to need some potent explosives: Nitromirglyceronium.$B$BThe only person who can make NG-5 is an old friend of mine: Lomac Gearstrip. Look for him in the Gnomeregan Reclamation Facility.$B$BYou talk him into making us some NG-5, I\'ll get to work on placement for my devices.' where entry = 1072;
-- Quest 1073 change short description to : "Bring 4 Minor Mana Potions and 2 Elixirs of Fortitude to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring 4 Minor Mana Potions and 2 Elixirs of Fortitude to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 1073;
-- NEW NPC FOR PTR:
REPLACE INTO creature_template VALUES
(61417, 20313, 0, 0, 0, 0, 'Greymane Justicar', NULL, 0, 47, 48, 4179, 4179, 2903, 2903, 2432, 14, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 273, 338, 0, 226, 1, 1800, 1800, 2, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 61417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61418, 20311, 0, 0, 0, 0, 'Genn Greymane', 'King of Gilneas', 0, 49, 49, 16314, 16314, 8402, 8402, 3466, 14, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 273, 338, 0, 226, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 61418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61419, 20320, 0, 0, 0, 0, 'Matthias Holtz', 'Worgen Hunter', 0, 44, 44, 9133, 9133, 4300, 4300, 2812, 14, 0, 1, 1.14286, 0, 18, 5, 0, 1, 1, 269, 346, 0, 194, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61420, 736, 0, 0, 0, 0, 'Packmaster Ragetooth', NULL, 0, 44, 44, 8844, 8844, 4100, 4100, 2011, 16, 0, 1, 1.14286, 1.8, 18, 5, 0, 1, 1, 336, 432, 0, 194, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61421, 20334, 0, 0, 0, 0, 'Judge Sutherland', NULL, 0, 46, 46, 10977, 10977, 6000, 6000, 2300, 14, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 411, 488, 0, 208, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61422, 20309, 0, 0, 0, 0, 'Dustivan Blackcowl', NULL, 0, 46, 46, 11612, 11612, 0, 0, 2600, 14, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 411, 488, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61422, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5916', 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61423, 20319, 0, 0, 0, 0, 'Marshal Magnus Greystone', NULL, 0, 47, 47, 13888, 13888, 4900, 4900, 2291, 14, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 269, 346, 0, 208, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61423, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61424, 11179, 0, 0, 0, 0, 'Darkpelt Rager', NULL, 0, 44, 44, 4278, 4278, 0, 0, 2082, 16, 0, 1, 1.14286, 1.6, 18, 5, 0, 1, 1, 269, 346, 0, 194, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61425, 11179, 0, 0, 0, 0, 'Darkpelt Alpha', NULL, 0, 43, 43, 4091, 4091, 366, 366, 2082, 16, 0, 1, 1.14286, 1.7, 18, 5, 0, 1, 1, 269, 346, 0, 194, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61426, 11179, 0, 0, 0, 0, 'Darkpelt Shadowcaster', NULL, 0, 41, 42, 3804, 3804, 1988, 1988, 1727, 16, 0, 1, 1.14286, 1.3, 20, 5, 0, 1, 1, 269, 346, 0, 162, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61427, 2021, 0, 0, 0, 0, 'Varaxxius', NULL, 0, 34, 34, 1300, 1300, 920, 920, 1350, 90, 0, 1, 1.14286, 1.3, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 3, 0, 61427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20364; set @weapon_1 = 12901; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61423;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20363; set @weapon_1 = 61330; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61422;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20362; set @weapon_1 = 61308; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61421;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20361; set @weapon_1 = 61333; set @weapon_2 = 1906; set @weapon_3 = 61307; set @creature = 61419;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20360; set @weapon_1 = 61328; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61418;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20359; set @weapon_1 = 13026; set @weapon_2 = 13026; set @weapon_3 = 0; set @creature = 61417;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Varaxxius
set @creature_entry = 61427;
set @description = ': Varaxxius';
set @spell_list_id = 180175;

set @spellid_1 = 8105; -- Mind Blast
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 11; 
set @delayrepeatmax_1 = 11;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

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

-- Darkpelt Shadowcaster
set @creature_entry = 61426;
set @description = ': Darkpelt Shadowcaster';
set @spell_list_id = 180174;

set @spellid_1 = 11659; -- Shadow Bolt
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 8; 
set @delayrepeatmax_1 = 8;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

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

-- Darkpelt Alpha
set @creature_entry = 61425;
set @description = ': Darkpelt Alpha';
set @spell_list_id = 180173;

set @spellid_1 = 5484; -- Howl of Terror
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 20; 
set @delayrepeatmax_1 = 20;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

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

delete from creature_ai_scripts where id in (2200033);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200033, 0, 0, 15, 28131, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkpelt Rager - Cast Spell Enrage');

delete from creature_ai_events where id in (2200033);
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200033, 61424, 0, 2, 0, 100, 1, 55, 45, 0, 0, 2200033, 0, 0, 'Darkpelt Rager - Cast Enrage at 50% HP');

-- Darkpelt Rager
set @creature_entry = 61424;
set @description = ': Darkpelt Rager';
set @spell_list_id = 180172;

set @spellid_1 = 9754; -- Swipe
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 7; 
set @delayrepeatmax_1 = 7;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

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

-- Marshal Magnus Greystone
set @creature_entry = 61423;
set @description = ': Marshal Magnus Greystone';
set @spell_list_id = 180171;

set @spellid_1 = 8380; -- Sunder Armor
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 12; 
set @delayrepeatmax_1 = 12;

set @spellid_2 = 11605; -- Slam
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 2;
set @delayinitialmax_2 = 2;
set @delayrepeatmin_2 = 10; 
set @delayrepeatmax_2 = 10;

set @spellid_3 = 15267; -- Holy Fire
set @probability_3 = 100;
set @casttarget_3 = 4;
set @castflags_3 = 4;
set @delayinitialmin_3 = 4;
set @delayinitialmax_3 = 4;
set @delayrepeatmin_3 = 25;
set @delayrepeatmax_3 = 25;

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

delete from creature_ai_scripts where id in (2200031,2200032);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200031, 0, 0, 15, 5277, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dustivan Blackcowl - Cast Spell Evasion');

delete from creature_ai_events where id in (2200031,2200032);
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200031, 61422, 0, 2, 0, 100, 1, 55, 45, 0, 0, 2200031, 0, 0, 'Dustivan Blackcowl - Cast Evasion at 50% HP');

REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200032, 0, 0, 15, 12540, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dustivan Blackcowl - Cast Spell Gouge');

REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200032, 61422, 0, 0, 0, 100, 1, 2000, 3000, 29000, 31000, 2200032, 0, 0, 'Dustivan Blackcowl - Gouge');

-- Dustivan Blackcowl
set @creature_entry = 61422;
set @description = ': Dustivan Blackcowl';
set @spell_list_id = 180170;

set @spellid_1 = 15583; -- Rupture
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 5; 
set @delayinitialmax_1 = 5; 
set @delayrepeatmin_1 = 10; 
set @delayrepeatmax_1 = 10;

set @spellid_2 = 11574; -- Rend
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 1;
set @delayinitialmax_2 = 1;
set @delayrepeatmin_2 = 8; 
set @delayrepeatmax_2 = 8;

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

-- Judge Sutherland
set @creature_entry = 61421;
set @description = ': Judge Sutherland';
set @spell_list_id = 180169;

set @spellid_1 = 6060; -- Smite
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 4;
set @delayinitialmax_1 = 4;
set @delayrepeatmin_1 = 6; 
set @delayrepeatmax_1 = 6;

set @spellid_2 = 13019; -- Blast Wave
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 9; 
set @delayinitialmax_2 = 9; 
set @delayrepeatmin_2 = 25; 
set @delayrepeatmax_2 = 25;

set @spellid_3 = 10945; -- Mind Blast
set @probability_3 = 100;
set @casttarget_3 = 1;
set @castflags_3 = 4;
set @delayinitialmin_3 = 4;
set @delayinitialmax_3 = 4;
set @delayrepeatmin_3 = 10;
set @delayrepeatmax_3 = 10;

set @spellid_4 = 8402; -- Fireball
set @probability_4 = 100; 
set @casttarget_4 = 1; 
set @castflags_4 = 4;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 8; 
set @delayrepeatmax_4 = 8;

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

-- Packmaster Ragetooth
set @creature_entry = 61420;
set @description = ': Packmaster Ragetooth';
set @spell_list_id = 180168;

set @spellid_1 = 5484; -- Howl of Terror
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 30; 
set @delayrepeatmax_1 = 30;

set @spellid_2 = 11660; -- Shadow Bolt
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 2; 
set @delayinitialmax_2 = 2; 
set @delayrepeatmin_2 = 12; 
set @delayrepeatmax_2 = 12;

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

delete from creature_ai_scripts where id in (2200030);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200030, 0, 0, 15, 2643, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Matthias Holtz - Cast Spell Multi-Shot');

delete from creature_ai_events where id in (2200030);
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200030, 61419, 0, 9, 0, 100, 1, 5, 30, 13000, 13000, 2200030, 0, 0, 'Matthias Holtz - Cast Multi-Shot and Set Ranged Weapon Model');

-- Matthias Holtz
set @creature_entry = 61419;
set @description = ': Matthias Holtz';
set @spell_list_id = 180167;

set @spellid_1 = 13608; -- Hooked Net
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 2;
set @delayinitialmax_1 = 2;
set @delayrepeatmin_1 = 7; 
set @delayrepeatmax_1 = 7;

set @spellid_2 = 8413; -- Fire Blast
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 4; 
set @delayinitialmax_2 = 4; 
set @delayrepeatmin_2 = 11; 
set @delayrepeatmax_2 = 11;

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

-- Genn Greymane
set @creature_entry = 61418;
set @description = ': Genn Greymane';
set @spell_list_id = 180166;

set @spellid_1 = 11700; -- Drain Life
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 4;
set @delayinitialmax_1 = 4;
set @delayrepeatmin_1 = 25; 
set @delayrepeatmax_1 = 25;

set @spellid_2 = 21551; -- Mortal Strike
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 2; 
set @delayinitialmax_2 = 2; 
set @delayrepeatmin_2 = 20; 
set @delayrepeatmax_2 = 20;

set @spellid_3 = 11711; -- Curse of Agony
set @probability_3 = 100; 
set @casttarget_3 = 4; 
set @castflags_3 = 4;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 15; 
set @delayrepeatmax_3 = 15;

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

-- Greymane Justicar
set @creature_entry = 61417;
set @description = ': Greymane Justicar';
set @spell_list_id = 180165;

set @spellid_1 = 15265; -- Holy Fire
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 15; 
set @delayrepeatmax_1 = 15;

set @spellid_2 = 0;
set @probability_2 = 0; 
set @casttarget_2 = 0; 
set @castflags_2 = 0;
set @delayinitialmin_2 = 0; 
set @delayinitialmax_2 = 0; 
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

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

REPLACE INTO creature_template VALUES
(61428, 20336, 0, 0, 0, 0, 'Technician Hizzleflash', NULL, 0, 28, 28, 750, 750, 0, 0, 1090, 64, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 37, 46, 0, 112, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 38, 55, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61429, 20338, 0, 0, 0, 0, 'Technician Stormlight', NULL, 0, 28, 28, 750, 750, 0, 0, 1090, 64, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 37, 46, 0, 112, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 38, 55, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61430, 20337, 0, 0, 0, 0, 'Technician Voltgear', NULL, 0, 29, 29, 950, 950, 0, 0, 1165, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 38, 49, 0, 120, 1, 2000, 2000, 1, 0, 0, 0, 2, 0, 0, 0, 43.8944, 60.3548, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61431, 20325, 20326, 20327, 20328, 0, 'Reclamation Guardian', NULL, 0, 55, 55, 7842, 7842, 0, 0, 4500, 64, 0, 1, 1.14286, 1, 20, 5, 40, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 525312, 0, ''),
(61432, 20337, 0, 0, 0, 0, 'Automated Servitor', NULL, 0, 25, 25, 712, 712, 0, 0, 1026, 64, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 525312, 0, ''),
(61433, 20306, 0, 0, 0, 0, 'Chemist Glowsight', NULL, 0, 29, 29, 950, 950, 0, 0, 1165, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 38, 49, 0, 120, 1, 2000, 2000, 1, 0, 0, 0, 2, 0, 0, 0, 43.8944, 60.3548, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61434, 20307, 0, 0, 0, 0, 'Chemist Lizzbang', NULL, 0, 30, 30, 1179, 1179, 0, 0, 1240, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61435, 20340, 0, 0, 0, 0, 'Teezle Dualflash', NULL, 0, 36, 36, 1468, 1468, 0, 0, 1420, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 92, 109, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61436, 20343, 0, 0, 0, 0, 'Master Chemist Volterwhite', NULL, 0, 57, 57, 3758, 3758, 0, 0, 3334, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 102, 131, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61437, 20339, 0, 0, 0, 0, 'Master Technician Wirespanner', NULL, 0, 57, 57, 3758, 3758, 0, 0, 3334, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 102, 131, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20371; set @weapon_1 = 17003; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61437;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20370; set @weapon_1 = 6219; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61435;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20369; set @weapon_1 = 3695; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61433;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20368; set @weapon_1 = 865; set @weapon_2 = 11586; set @weapon_3 = 0; set @creature = 61431;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20367; set @weapon_1 = 4994; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61430;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20366; set @weapon_1 = 5956; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61429;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20365; set @weapon_1 = 1911; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61428;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41429; set @magic_number = 61437;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am in charge of every aspect of the equipment and infrastructure here in the Reclamation Facility. I know the exact location and function of every last wire and pipe that runs through these walls.$B$BWithout me, this whole place would fall apart! Who else here has any clue how to maintain the instruments and operate the panels correctly?!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41428; set @magic_number = 61436;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We\'re making tremendous strides here! It just so happens I am approaching a breakthrough with a new chemical purifying process that will allow us to filter the radiation without dispersing it out into Dun Morogh.$B$BThe thought alone of such a groundbreaking refinement process makes me giddy with excitement! Imagine the countless applications! There are still a few pieces to the formula missing, though...');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41427; set @magic_number = 61435;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I took a lengthy trip around the world after the collapse of Gnomeregan.$B$BWith all the news of this facility buzzing about, I returned to offer my assistance where needed.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41426; set @magic_number = 61434;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'A little extra hydrogen and we should be closer to a more stable...$B$BOh, you caught me off guard! What are you doing here anyway? Trying to steal my trade secrets?!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41425; set @magic_number = 61433;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What\'s that? Are you the new chemist that was sent to help us out here?$B$BUnless you know something about thermal energy and toxic chemical reduction, I would ask you to move along.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41424; set @magic_number = 61430;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Why hello there! Come to see a marvel of Gnomish Engineering? Perhaps you\'re just here to witness the latest and greatest technological advancements?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41423; set @magic_number = 61429;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'There is still a lot of work to do if we ever want to reclaim our home in Gnomeregan. Even so, it\'s an honor to be a part of the reclamation efforts!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41422; set @magic_number = 61428;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'There\'s so much work to be done around here, it\'s enough to make my head explode!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO creature_template VALUES
(61438, 20305, 0, 0, 0, 0, 'Cassie Copperlight', 'Journeyman Engineer', 0, 18, 18, 417, 417, 0, 0, 765, 64, 19, 1, 1.14286, 1, 20, 5, 0, 0, 1, 41, 51, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61439, 4285, 0, 0, 0, 0, 'Bimock Sparkbrake', 'Engineering Supplies', 0, 28, 28, 890, 890, 0, 0, 1235, 64, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 41, 57, 0, 112, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61440, 3125, 0, 0, 0, 0, 'Gnidabern Coilspinner', 'General Goods', 0, 29, 29, 950, 950, 0, 0, 1165, 64, 5, 1, 1.14286, 1, 18, 5, 0, 0, 1, 38, 49, 0, 120, 1, 2000, 2000, 1, 0, 0, 0, 2, 0, 0, 0, 43.8944, 60.3548, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61441, 20344, 0, 0, 0, 0, 'Weezan Littlegear', NULL, 0, 30, 30, 1179, 1179, 0, 0, 1240, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61442, 4049, 0, 0, 0, 0, 'Geebirn Coilspinner', NULL, 0, 32, 32, 1221, 1221, 0, 0, 1291, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 88, 106, 0, 132, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 52.7472, 72.5274, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61443, 4295, 0, 0, 0, 0, 'Dimbil Stormshot', 'Ammunition', 0, 32, 32, 1221, 1221, 0, 0, 1291, 64, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 88, 106, 0, 132, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 52.7472, 72.5274, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61444, 5033, 0, 0, 0, 0, 'Tindlee Clockbadge', 'Trade Supplies', 0, 34, 34, 1300, 1300, 0, 0, 1350, 64, 5, 1, 1.14286, 1, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61445, 20314, 0, 0, 0, 0, 'Krilee Stormshot', 'Gunsmith', 0, 36, 36, 1468, 1468, 0, 0, 1420, 64, 7, 1, 1.14286, 1, 18, 5, 0, 0, 1, 92, 109, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61446, 20341, 0, 0, 0, 0, 'Tenner Pipegadge', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 64, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20375; set @weapon_1 = 8182; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61445;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20374; set @weapon_1 = 6219; set @weapon_2 = 12743; set @weapon_3 = 0; set @creature = 61441;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20373; set @weapon_1 = 12751; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61440;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20372; set @weapon_1 = 5956; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61438;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41436; set @magic_number = 61446;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My, you wouldn\'t happen to have a spare spanner would you, I seem to have misplaced mine.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41435; set @magic_number = 61445;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The goblins like to claim they are the best at making things explode, but I disagree.$B$BWithout the accuracy of intricate and delicate parts, there can be no concise direction of channeled power. What fun is blasting something without being precise?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41434; set @magic_number = 61444;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We have a backup of extra supplies stored if you are planning to buy in bulk today!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41433; set @magic_number = 61442;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'There is nothing some good gnomish ingenuity cannot fix. It won\'t be long until we\'re moved back into Gnomeregan.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41432; set @magic_number = 61441;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'There is so much maintenance work of late. These old machines have been dormant for quite a while, and have only recently been turned on!$B$BI used to do regular checkups on this facility\'s equipment back before the Gnomeregan incident.$B$B<Weezan lets out a small laugh.>$B$BIt\'s a good thing I did! I\'m glad we thought ahead and built everything here as a backup!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41431; set @magic_number = 61440;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Looking for something specific? Things are a bit hectic around here, but I am sure I have what you need.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41430; set @magic_number = 61438;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Engineering is an essential foundation of Gnomish society. Without it, can you imagine where we would be?$B$BProbably still banging sticks together like some sort of troggs!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Vendor list: Tindlee Clockbadge.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 4, 2320, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 5, 2321, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 0, 2324, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 17, 2325, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 16, 2604, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 8, 2678, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 9, 2692, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 12, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 11, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 15, 2928, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 21, 3371, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 22, 3372, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 13, 3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 10, 3713, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 0, 3777, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 14, 3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 24, 4289, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 6, 4291, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 20, 4340, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 18, 4341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 19, 4342, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 25, 4399, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 26, 4400, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 0, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 0, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 3, 6217, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 2, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 27, 6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 28, 6532, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 1, 7005, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 7, 8343, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 23, 8925, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 30, 12233, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 0, 14341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 0, 18256, 5, 43200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61444, 0, 50231, 0, 0, 0, 0);
-- Vendor list: Dimbil Stormshot.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 3, 2512,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 4, 2515,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 3, 2519,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 5, 3030,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 5, 3033,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 1, 5439,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 0, 11284, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 0, 11285, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61443, 2, 11362, 0, 0, 0, 0);
-- Vendor list: Gnidabern Coilspinner.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 1,  159,   0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 2,  1205,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 4,  1645,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 3,  1708,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 7,  2515,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 10, 2519,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 0,  2946,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 8,  3030,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 11, 3033,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 13, 3107,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 14, 3108,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 0,  3131,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 16, 3135,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 17, 3137,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 19, 4470,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 20, 4471,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 6,  4497,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 5,  4498,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 0,  6183,  0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 12, 11284, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 9,  11285, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 18, 15326, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61440, 15, 15327, 0, 0, 0, 0);
-- Vendor list: Bimock Sparkbrake.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 272,  2880,  0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 269,  2901,  0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 273,  3466,  0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 280,  4357,  4, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 277,  4361,  2, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 279,  4363,  1, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 281,  4364,  4, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 278,  4371,  2, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 2170, 4382,  1, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 0,    4389,  1, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 270,  4399,  0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 271,  4400,  0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 276,  4404,  3, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 268,  5956,  0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 275,  10647, 0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 274,  10648, 0, 0,     0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 267,  16041, 1, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 282,  16042, 1, 10800, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 2187, 18647, 1, 600,   3, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61439, 0,    83511, 0, 0,     0, 0);
-- Trainer list: Cassie Copperlight.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3984, 115, 202, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3985, 130, 202, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3986, 150, 202, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3987, 150, 202, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3988, 200, 202, 60, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3991, 225, 202, 65, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3992, 250, 202, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3993, 250, 202, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 3994, 250, 202, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 4039, 10,  0,   0,  5);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61438, 7431, 150, 202, 50, 0);

REPLACE INTO creature_template VALUES
(61447, 20321, 0, 0, 0, 0, 'Mother Tanya', NULL, 0, 36, 36, 1468, 1468, 0, 0, 1420, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 92, 109, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61448, 20342, 0, 0, 0, 0, 'Tess Greymane', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61449, 20322, 0, 0, 0, 0, 'Mustang', NULL, 0, 40, 40, 1752, 1752, 0, 0, 1890, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 8, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 97, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61450, 20308, 0, 0, 0, 0, 'Demetreus', NULL, 0, 41, 41, 1981, 1981, 0, 0, 2397, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61451, 1431, 1429, 5444, 4888, 0, 'Gilneas Citizen', NULL, 0, 41, 42, 1981, 2059, 0, 0, 2397, 7, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 76, 97, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.984, 83.853, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61452, 20318, 0, 0, 0, 0, 'Lurn Five-Pelts', NULL, 0, 42, 42, 2059, 2059, 0, 0, 3568, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61453, 2181, 3449, 1520, 1515, 0, 'Armed Greymane Militia', NULL, 0, 42, 43, 1981, 2059, 0, 0, 2397, 14, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 76, 97, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.984, 83.853, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61454, 20315, 0, 0, 0, 0, 'Levandra', NULL, 0, 44, 44, 2117, 2117, 0, 0, 2625, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61455, 20301, 0, 0, 0, 0, 'Avram Duskgarde', NULL, 0, 44, 44, 2117, 2117, 0, 0, 2625, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61456, 4051, 0, 0, 0, 0, 'Henkel Togglepitch', 'Banker', 0, 45, 45, 2217, 2217, 0, 0, 2725, 64, 256, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61457, 20317, 0, 0, 0, 0, 'Liam Greymane', NULL, 0, 45, 45, 2217, 2217, 0, 0, 2725, 84, 3, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61458, 20316, 0, 0, 0, 0, 'Liam Greymane', NULL, 0, 45, 45, 2217, 2217, 0, 0, 2725, 84, 3, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61459, 20303, 0, 0, 0, 0, 'Bearbane', NULL, 0, 45, 45, 2217, 2217, 0, 0, 2725, 84, 3, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61460, 20310, 0, 0, 0, 0, 'Ethan Ravencroft', NULL, 0, 46, 46, 2398, 2398, 0, 0, 2780, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 78, 95, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 87, 119, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61461, 4493, 0, 0, 0, 0, 'Auctioneer Sizewrench', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 64, 4096, 1, 1.14286, 1, 20, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61462, 11179, 0, 0, 0, 0, 'Darkpelt Worgen', NULL, 0, 41, 42, 3804, 3804, 0, 0, 1727, 16, 0, 1, 1.14286, 1.4, 20, 5, 0, 1, 1, 269, 346, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 61462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20377; set @weapon_1 = 885; set @weapon_2 = 1906; set @weapon_3 = 0; set @creature = 61453;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20376; set @weapon_1 = 13820; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61451;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41447; set @magic_number = 61460;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41446; set @magic_number = 61459;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41445; set @magic_number = 61458;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41444; set @magic_number = 61457;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41443; set @magic_number = 61455;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41442; set @magic_number = 61454;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41441; set @magic_number = 61452;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41440; set @magic_number = 61450;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41439; set @magic_number = 61449;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41438; set @magic_number = 61448;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41437; set @magic_number = 61447;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20301, 0, 0, 0, 0),
(20303, 0, 0, 0, 0),
(20305, 0, 0, 0, 0),
(20306, 0, 0, 0, 0),
(20307, 0, 0, 0, 0),
(20308, 0, 0, 0, 0),
(20309, 0, 0, 0, 0),
(20310, 0, 0, 0, 0),
(20311, 0, 0, 0, 0),
(20313, 0, 0, 0, 0),
(20314, 0, 0, 0, 0),
(20315, 0, 0, 0, 0),
(20316, 0, 0, 0, 0),
(20317, 0, 0, 0, 0),
(20318, 0, 0, 0, 0),
(20319, 0, 0, 0, 0),
(20320, 0, 0, 0, 0),
(20321, 0, 0, 0, 0),
(20322, 0, 0, 0, 0),
(20325, 0, 0, 0, 0),
(20326, 0, 0, 0, 0),
(20327, 0, 0, 0, 0),
(20328, 0, 0, 0, 0),
(20334, 0, 0, 0, 0),
(20336, 0, 0, 0, 0),
(20337, 0, 0, 0, 0),
(20337, 0, 0, 0, 0),
(20338, 0, 0, 0, 0),
(20339, 0, 0, 0, 0),
(20340, 0, 0, 0, 0),
(20341, 0, 0, 0, 0),
(20342, 0, 0, 0, 0),
(20343, 0, 0, 0, 0),
(20344, 0, 0, 0, 0);

-- NPC Regent-Lord Mortimer Harlow change level to 47, adjust damage to be 20% less than Chief Ukorz Sandscalp, set hp to 8612, mana to 1333, armor to 3833.
update creature_template set level_min = 47, level_max = 47, dmg_min = 215, dmg_max = 277, health_min = 8612, health_max = 8612, mana_min = 1333, mana_max = 1333, armor = 3833, unit_class = 2 where entry = 61264;
-- NPC Regent-Lady Celia Harlow change level to 47, adjust damage to be 15% less than Witch-Doctor Zum'rah, set hp to 7952, mana to 3699, armor to 1812
update creature_template set level_min = 47, level_max = 47, dmg_min = 229, dmg_max = 294, health_min = 7952, health_max = 7952, mana_min = 3699, mana_max = 3699, armor = 1812, unit_class = 2 where entry = 61263;

REPLACE INTO creature_template VALUES
(61463, 5561, 0, 0, 0, 0, 'Unbalanced Aqua', NULL, 0, 8, 10, 170, 189, 0, 0, 406, 7, 0, 1, 1.14286, 0.9, 18, 5, 0, 0, 1, 11, 15, 4, 60, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.2064, 20.9088, 100, 4, 0, 61463, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61464, 6889, 0, 0, 0, 0, 'Malfunctioning Servitor', NULL, 0, 10, 10, 198, 198, 0, 0, 718, 14, 0, 1, 1.14286, 0.5, 18, 5, 0, 0, 1, 13, 17, 0, 62, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.048, 20.691, 100, 9, 0, 61464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61465, 11137, 0, 0, 0, 0, 'Corrosive Backup', NULL, 0, 11, 12, 212, 247, 0, 0, 573, 14, 0, 1, 1.14286, 0.8, 20, 5, 0, 0, 1, 16, 20, 3, 66, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 0, 0, 61465, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61466, 8369, 0, 0, 0, 0, 'XV - 81', NULL, 0, 14, 14, 328, 328, 800, 800, 528, 14, 0, 1, 1.14286, 0.7, 18, 5, 0, 0, 1, 21, 27, 0, 76, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 9, 0, 61466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61467, 4864, 0, 0, 0, 0, 'Gelwin Brasspipe', 'Gnomeregan Envoy', 0, 50, 50, 2990, 2990, 0, 0, 2958, 84, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41448; set @magic_number = 61467;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'A new era is upon us thanks to the hard work and brilliance of Gnomekind! Many of us who once dwelled here in Tinker Town have begun to gravitate back toward Gnomeregan. Well, the Reclamation Facility anyway. It\'s a new venture to reclaim our irradiated home.$B$BYou see, it was built before the betrayal of Thermaplugg and is now being used to cleanse the toxic gases from the city. Fascinating stuff, isn\'t it?!$B$BIf you\'re looking for any of the Gnomish leadership, you can find them there. Head west of Ironforge towards the entrance of Gnomeregan. You shouldn\'t have a hard time spotting the entrance.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- XV - 81
set @creature_entry = 61466;
set @description = ': XV - 81';
set @spell_list_id = 180176;

set @spellid_1 = 15117; -- Chain Lightning
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 18; 
set @delayrepeatmax_1 = 18;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

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

set @equip_template = 20379; set @weapon_1 = 3366; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61413;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Give weapon 3366 to NPC 61413 & NPC 61411
set @equip_template = 20378; set @weapon_1 = 3366; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61411;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Automated Servitor set scale to 0.5
update creature_template set scale = 0.5 where entry = 61432;
-- NPC Marshal Magnus Greystone, change spell 15267 to 17142.
update creature_spells set spellid_3 = 17142 where entry = 180171;
-- NPC Genn Greymane, change spell 11700 to 17620.
update creature_spells set spellid_1 = 17620 where entry = 180166;
-- NPC Handon Blackhammer give repair flags.
update creature_template set npc_flags = 16389 where entry = 61368;
-- Quest 'Scouring Greyshire' entry 40830 , add kill requirement 9 Shambling Dead (Entry 61235) and 9 Lingering Skeleton (Entry 61234)
update quest_template set reqcreatureorgoid1 = 61234, reqcreatureorgocount1 = 9, reqcreatureorgoid2 = 61235, reqcreatureorgocount2 = 9 where entry = 40830;
-- Change greeting text of NPC ENTRY 7937 (High Tinker Mekkatorque) to the following : "Welcome to the Gnomeregan Reclamation Facility! I am High Tinker Gelbin Mekkatorque, King of Gnomeregan.$B$BWhile we are grateful for the hospitality of the dwarves, the terminal for the Deeprun Tram will no longer suffice as a home for the Gnomish people. Gnomeregan must be reclaimed, and this old factory has been refurbished into new quarters for the Gnomish people to do so. We can use this place as a staging ground to cleanse and reclaim Gnomeregan from the traitorous Lepers.$B$BWe will regain what is ours... and bring Thermaplugg to justice!$B$BNow, having said that. What can I help you with?"
replace into gossip_menu (entry, text_id, condition_id) VALUES (41449, 60002, '0'); 
replace into broadcast_text (entry, Male_Text) values (60002, 'Welcome to the Gnomeregan Reclamation Facility! I am High Tinker Gelbin Mekkatorque, King of Gnomeregan.$B$BWhile we are grateful for the hospitality of the dwarves, the terminal for the Deeprun Tram will no longer suffice as a home for the Gnomish people. Gnomeregan must be reclaimed, and this old factory has been refurbished into new quarters for the Gnomish people to do so. We can use this place as a staging ground to cleanse and reclaim Gnomeregan from the traitorous Lepers.$B$BWe will regain what is ours... and bring Thermaplugg to justice!$B$BNow, having said that. What can I help you with?');
replace into npc_text (ID, BroadcastTextID0) values (60002, 60002);
update creature_template set gossip_menu_id = 41449 where entry = 7937;
