-- To the Southern Marshes
delete from quest_template where entry = 40831;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (70085,40831,2,15,35,30,0,0,'To the Southern Marshes','You have helped me before and for that I am grateful. However, I am not the only one of my people who has come to this land in need of aid.$B$BYou are now strong enough to assist our alchemist, Mikoto Shiina. She and an armed companion have braved the waters of the southern provinces.$B$BHer last missive said they set camp on the coast of a region marked by marshes and bogs. Please seek her out and help her if you can.','Seek out Mikoto Shiina in Dustwallow Marsh.','Who are you, stranger?','Aneka sent you? Thank the Kami! I take heart in your arrival, for I can indeed use your aid.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (90983, 40831);
replace into creature_involvedrelation	(id, quest) values (61410, 40831);

-- Harvesting Organic Oil
delete from quest_template where entry = 40832;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40831,40832,2,15,35,30,0,0,'Harvesting Organic Oil','We have come to this land for alchemical reagents. Our enemies, the malevolent naga, have disrupted the trade routes of our homeland, so it has been hard to import anything of value.$B$BI require oil from the local murlocs. My protector Haruhiko is not strong enough to handle them all, and his priority is to guard me. You will be rewarded if you decide to assist.','Gather 8 Murloc Oil from the local Mirefin Murlocs for Mikoto Shiina in Dustwallow Marsh.','Did you retrieve the oil? You might have to squeeze those creatures with substantial force.','This oil, when processed in different ways and with different elements, can be turned into a healing draught, a strong poison, or even a flammable substance.$B$BWe need every advantage we can get in the war for the survival of our people. Thank you, stranger.',61340,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,18600,3100,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61410, 40832);
replace into creature_involvedrelation	(id, quest) values (61410, 40832);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61340,15732,'Murloc Oil',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4358, 61340, -46, 0, 1, 1, 0),
(4359, 61340, -46, 0, 1, 1, 0),
(4360, 61340, -46, 0, 1, 1, 0),
(4361, 61340, -46, 0, 1, 1, 0),
(4362, 61340, -46, 0, 1, 1, 0),
(4363, 61340, -46, 0, 1, 1, 0);

-- Searching For Mudrock Meat
delete from quest_template where entry = 40833;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40833,2,15,35,30,0,0,'Searching For Mudrock Meat','You, stranger! Our food stocks are low and I cannot leave mistress Mikoto undefended.$B$BI need you to hunt for the turtles of this region to replenish our provisions. You will find them paddling in the strait of Dustwallow Bay, between Theramore Isle and the mainland.$B$BReturn with their meat and you will earn my trust as well as aid our cause.','Collect 8 Mudrock Meat for Haruhiko Yoshino in Dustwallow Marsh.','I hope you know how to cut into a turtle without ruining its contents.$B$B<Haruhiko sniffs the air.>$B$BIs that turtle I smell on you?','Giant, fearsome dragon turtles are used as beasts of war by the naga, they are carnivorous and can swallow a grown man whole.$B$BBut this meat is in fine condition. Succulent, adequately cut and unspoiled. In cooking it I know I shall feel a sense of… justice.$B$BWell done, stranger.',61341,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,18000,3000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61411, 40833);
replace into creature_involvedrelation	(id, quest) values (61411, 40833);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61341,1117,'Mudrock Meat',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4396, 61341, -45, 0, 1, 1, 0),
(4397, 61341, -45, 0, 1, 1, 0),
(4398, 61341, -45, 0, 1, 1, 0),
(4399, 61341, -45, 0, 1, 1, 0),
(4400, 61341, -45, 0, 1, 1, 0);

-- A Silky Venture
delete from quest_template where entry = 40834;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40833,40834,2,15,35,30,0,0,'A Silky Venture','Outlander, your help so far has been tremendous, there is one last thing we need to acquire. I have sampled the corpse of a local spider Haruhiko slew earlier.\n\nIts meat is brilliant, its venom is strong, but most importantly, its silk is amazing.\n\nPlease harvest some of the Darkfang Silk for us.','Collect 8 Darkfang Silk for Mikoto Shiina in Dustwallow Marsh.','Did you get the items?','These are amazing, I am grateful that our paths have crossed. I do not know anything about your people or your land,\n\nbut I believe your people can understand honor and integrity. There is one last task I have for you.',61342,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19200,3200,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61410, 40834);
replace into creature_involvedrelation	(id, quest) values (61410, 40834);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61342,18597,'Darkfang Silk',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4411, 61342, -50, 0, 1, 1, 0),
(4412, 61342, -50, 0, 1, 1, 0),
(4413, 61342, -50, 0, 1, 1, 0),
(4414, 61342, -50, 0, 1, 1, 0),
(4415, 61342, -50, 0, 1, 1, 0);

-- Mikoto's Farewell
delete from quest_template where entry = 40835;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40834,40835,2,15,35,30,0,0,'Mikoto\'s Farewell','There is one final errand I\'d ask of you, $N.$B$BTravel to the northern port known as Ratchet, and deliver the news to Aneka Konko that we have what we need and are returning home.$B$BOur paths will part for now, but I hope that they will cross again in time. May the Kami guide your path.','Return to Aneka Konko at Ratchet in The Barrens.','Salutations, friend. I hope the southern marshes were not too difficult to traverse.','I am so glad for the help you gave to Mikoto. You may have this pendant, it is ancient and the enchantment has weakened through the centuries, but nonetheless it will serve you well.$B$BThe pendant has a golden fox engraved upon it. Legends tell that in times immemorial, one such blessed fox saved our people from a great flood that drowned the rest of the world. The fox thus vowed to protect our island for as long as we revered its name and obeyed its laws. I pray one day it will return and deliver us from the naga.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,500,0,0,0,0,0,0,0,0,0,0,0, 61343,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61410, 40835);
replace into creature_involvedrelation	(id, quest) values (90983, 40835);

replace into item_template values
 ('61343', '4', '0', 'Fox Pendant', '', '1148', '2', '0', '1', '30404', '7601', '2', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '9', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

-- To the Far West
delete from quest_template where entry = 40836;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (70085,40836,2,15,35,30,0,0,'To the Far West','Most of my people are not kind to foreigners, but our current situation has forced some of us to leave our home island to find the means of overcoming the naga.$B$BYou have helped me and if you\'re interested in aiding us further, then you may assist the group that headed inland.$B$BWe need better weapons, so we seek materials to make them. Our Onmyoji, Dae-woong Kim, has gone west with a small expedition after hearing accounts of rare magical metals. The natives call the land Desolace, and I am confident that he has found it.$B$BLook for them along the shore. Offer your assistance, but be careful, they are still wary of strangers.','Seek out Dae-Woong Kim in Desolace.','A foreigner approaches!','You claim that Aneka sent you? For all we know, you tortured her to learn of our location. You deny it? Bah, all foreigners are liars.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,275,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (90983, 40836);
replace into creature_involvedrelation	(id, quest) values (61412, 40836);

-- Rescuing Shizuru
delete from quest_template where entry = 40837;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40837,2,15,35,30,0,0,'Rescuing Shizuru','As it stands, foreigner, you have not yet earned my trust. Our encounters with the horse people of these lands have given us reason to be cautious, but I can ill afford to refuse aid when it is so readily given.$B$BOur sworn enemies, the naga, have abducted our herbalist, Shizuru Yamada, and taken her across the water to the island over yonder.$B$BI suspect they plan to make her suffer unspeakable agonies as they sacrifice her to their Dark Kami. Go there and save her, for we cannot cross the water. She is likely to be caged and the nearby naga will hold the key. Rescue her quickly, then I will know you to be a true friend.','Find and rescue Shizuru Yamada for Dae-woong Kim in Desolace.','Where is Shizuru? We have no time to squander.','Shizuru returned shortly before you did. Yasu was ready to cut you down had you failed.$B$BI am glad it did not come to that.',0,0,0,0,0,0,0,0, 60041,1,0,0,0,0,0,0, 0,0, 0,21000,3500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Rescue Shizuru Yamada in Desolace.');

replace into creature_questrelation		(id, quest) values (61412, 40837);
replace into creature_involvedrelation	(id, quest) values (61412, 40837);

REPLACE INTO creature_template VALUES
(60041, 328, 0, 0, 0, 0, 'quest_40837_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set name = 'Shizuru Yamada', phase_quest_id = 40837 where entry = 61414;
update creature_template set script_name = 'npc_shizuru_yamada' where entry = 61415;
update creature set spawntimesecsmin = 20, spawntimesecsmax = 20 where guid = 2575788;

-- Honorable Retribution
delete from quest_template where entry = 40838;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40838,2,15,35,30,0,0,'Honorable Retribution','I have no love for your people. I will kill you where you stand if you so much as conceive a treacherous thought.$B$BYet, I trust Dae-Woong\'s judgment. If you are truly heading out there to rescue Shizuru I only ask one thing: Kill as many Naga as you can for me.$B$BLet their blood flow in retribution for all the people they\'ve murdered. Bring me their heads!','Bring 12 Slitherblade Heads from the nearby Naga to Yasu Ping in Desolace.','I will not be content until I shall have a heap of those serpents\' skulls!','I see the blood of our enemy adorns you. You have fought well and brought justice to our people. As a Senshi of Kontsuma, I salute you.',61344,12,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61413, 40838);
replace into creature_involvedrelation	(id, quest) values (61413, 40838);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61344,40132,'Slitherblade Head',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4711, 61344, -40, 0, 1, 1, 0),
(4712, 61344, -40, 0, 1, 1, 0),
(4713, 61344, -40, 0, 1, 1, 0),
(4714, 61344, -40, 0, 1, 1, 0),
(4715, 61344, -40, 0, 1, 1, 0),
(4716, 61344, -40, 0, 1, 1, 0),
(4718, 61344, -40, 0, 1, 1, 0),
(4719, 61344, -40, 0, 1, 1, 0);

-- Cloth of Power
delete from quest_template where entry = 40839;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40839,2,15,35,30,0,0,'Cloth of Power','I am humbled in your presence as I owe you my life, $N. It is a debt I can only hope to one day repay.$B$BIt is verily remiss of me to ask for more, but if you would help me again, my gratitude shall be twofold.$B$BAs we battled the naga and the horse people here, I happened to notice that they carried a textile far superior to silk.$B$BIt appeared as if the cloth itself could store the powers of the Kami. Please acquire some of this cloth for me so that I may use it to keep my companions in good health, as well as take it to my homeland to assist my people.','Bring 6 Mageweave Cloth to Shizuru Yamada in Desolace.','These lands are so alien to me, but they are not all as hideous and uncivilized as others thought.$B$BIf you know where to look, there is wonder and beauty aplenty, enough to fill the heart.','This fabric is sublime. Even in Kamio, I have never seen its like.$B$BYou have been a dear friend to me, thank you for everything you\'ve done. May fortune ever be upon your path, $N.',4338,6,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,10800,1800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61414, 40839);
replace into creature_involvedrelation	(id, quest) values (61414, 40839);

-- From Dae to Ane
delete from quest_template where entry = 40840;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40840,2,15,35,33,0,0,'From Dae to Ane','You have helped both me and my companions. While we remain please inform Aneka Konko in Ratchet of our progress and thank her for having kept us in her thoughts.$B$BBut you ought to be thanked as well, $N. Shizuru owes her life to you, and together we may complete our mission. Rest assured, Yasu and I can keep her safe going forward.','Deliver news to Aneka Konko at Ratchet in The Barrens.','Desolace is a foreboding name. I have no doubt it has reason for bearing it.$B$BPlease, tell me all, I yearn to hear of Dae-Woong and his comrades.','Earning the trust of Dae-Woong and especially Yasu is no easy task. The Senshi are tasked with keeping outsiders out of Kamio and to protect our citizens from criminals, invaders, and the Dark Kami.$B$BYes, even the Kami, or holy spirits, are not immune to corruption. The Kami exist in everything around us, every stone, tree and stream. The Dark Kami have absorbed negative energy and turned into monsters that only seek to devour and defile.$B$BThe legends speak of a time when our people were nearly destroyed by Haka, the Dark Kami of blood that masqueraded as a savior.$B$BDae-Woong on the other hand is an Onmyoji, they wield the energy of the Kami and can call forth the powers of the land. With allies such as you, the hope of the people of Kamio will never fade.$B$BThank you, hero of my kin.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61345,1,61346,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61412, 40840);
replace into creature_involvedrelation	(id, quest) values (90983, 40840);

replace into item_template values
 ('61345', '4', '1', 'Kimono of the Sea', '', '61038', '2', '0', '1', '16432', '4108', '5', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '53', '0', '0', '0',
 '0', '0', '0', '9304', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '70', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61346', '2', '8', 'Katana of the Senshi', '', '26588', '2', '0', '1', '56436', '14109', '17', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3100', '0',
 '0', '61', '114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

-- Create object named 'Joshua the Redeemer' (Copy appearance from Grim Batol Memorial) (gobject entry 1772030), readable, with the following pagetext : "Hierophant Joshua the Redeemer was the holiest man that ever walked the land of Gilneas: Through his blessed sermons he brought salvation to our country, illuminating our souls in the grace of the Holy Light. May our elder brother rest in sacred peace, and when the darkest of days fall upon our city, may his hallowed memory bring solace to our troubled hearts." ((SHOULD HAVE STONE BACKGROUND))
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (2020000, 9, 218, 'Gilneas Memorial Stone', 0, 0, 1, 50630, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020001, 5, 3673, 'The Crying Pony', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020002, 5, 3673, 'Huntsman\'s Axe', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020003, 5, 3673, 'Millie\'s Apothecary', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020004, 5, 3671, 'True Blades', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020005, 5, 25702, 'Spider\'s Thread', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020006, 5, 25679, 'Shoemaker and Co.', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020007, 5, 25686, 'The Luring Rod', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020008, 5, 25696, 'Flappy Chicken', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020009, 5, 25696, 'Repeated History', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020009, 5, 27544, 'Micah\'s Goods', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020010, 5, 27544, 'A Hat You Need', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020011, 5, 25705, 'Orven Vintage Limited', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020012, 5, 25677, 'Gilneas City Customs', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020013, 5, 25687, 'Gelson Crossbows', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020014, 5, 25674, 'Adaman Armor', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Behind The Wall
delete from quest_template where entry = 40841;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40841,2,5180,41,36,0,0,'Behind The Wall','Have you heard of the tidings from the north? The Greymane Wall lies open at last.$B$BI never thought I would see the day after hearing all the horrible things I did, and by the sounds of it, things don\'t bode well. Still, within Gilneas City one of my dearest friends used to work with a rare material called \'Dawnstone\' which could only be found within Gilneas itself.$B$BI have no doubt his patterns are still within his shop in the city, and I ask you to recover them for me. I would advise to bring some comrades in arms along with you; word has it that there is unrest, entailing worgen and civil war, so it certainly is not a safe place to venture alone.','Venture into Gilneas City and recover the Dawnstone Plans for Therum Deepforge in Stormwind.','Have you had any luck with the plans?$B$BI know it is nothing easy I asked of you, but those plans were a man\'s life\'s work, it would be a tragedy if they were lost.','Are these it? I haven\'t had the opportunity to read these plans in quite some years.$B$BAdaman was an exceptionally talented blacksmith and I grieve deeply for his passing. I will make sure his findings are properly recorded here and in Ironforge, so that his name may earn the recognition he always deserved.$B$BThank you, $N. I have prepared something for you as well, as compensation for the immense trouble you put yourself through.',61347,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,23400,3900,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61348,1,61349,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (5511, 40841);
replace into creature_involvedrelation	(id, quest) values (5511, 40841);

update quest_template set type = 81 where entry = 40841;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61347,7601,'Dawnstone Plans',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2020015, 3, 27229, 'Dawnstone Plans', 0, 4, 1, 43, 2020015, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020015,61347,-100,0,1,1,0);

replace into item_template values
 ('61348', '4', '4', 'Inlaid Plate Boots', '', '28396', '2', '0', '1', '24616', '6154', '8', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '4', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '388', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '55', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61349', '2', '4', 'Dwarven Battle Bludgeon', '', '19703', '2', '0', '1', '75064', '18766', '21', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '56', '91', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '56', '0', '0', '0', '600000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- The True Enemy
delete from quest_template where entry = 40842;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40842,2,311,30,27,0,0,'The True Enemy','The foul demons dare to challenge us by occupying a stronghold south of Forest Song, in the wretched Demon Fall Canyon.$B$BSadly, the Sentinels stubbornly refuse to lend me aid, while our true enemy grows stronger and prepares for another invasion.$B$BIt is imperative that we take action: I urge you to journey into their territory and thin their numbers. Eliminating at least ten demons of each kind you come across will send a powerful message.$B$BThese fiends must be banished back into the Twisting Nether, never to desecrate our sacred groves again.','Slay 10 Searing Infernals, 10 Felguards and 10 Mannoroc Lashers for Delos Talonheart at Forest Song in Ashenvale.','Our war with the Legion has been waged across many millennia, through countless battlefields.$B$BWe are the guardians of this world and we will not suffer them to taint it.','The trees, the beasts, the wind; all of nature rejoices. In its song, it is you who are owed thanks, $N.$B$BYour bravery and tenacity in cleansing Demon Fall Canyon have bought us precious time to prepare for the final confrontation. Your actions have not gone unnoticed, and I am proud to call you a comrade in our holy war to protect these lands.',0,0,0,0,0,0,0,0, 6073,10,6115,10,11697,10,0,0, 0,0, 2500,12000,2000,69,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61145, 40842);
replace into creature_involvedrelation	(id, quest) values (61145, 40842);

-- The Fall in Demon Canyon
delete from quest_template where entry = 40843;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40842,40843,2,311,31,25,0,0,'The Fall in Demon Canyon','Have you ever wondered why the Demon Fall Canyon bears its name?$B$BFour years ago, an ancient enemy of our people, the Pit Lord Mannoroth, returned to destroy our world. It was there that one of his most cruel Orcish servants, Grommash Hellscream, the callous murderer of Cenarius, betrayed his own master and sought to slay him.$B$BIn the end, Mannoroth and Grommash killed each other in the struggle, doing us all a great favor.$B$BBut the weapon that Mannoroth brandished still lies shattered in the canyon, and it is said that a powerful satyr by the name of Varaxxius plots to reforge it and use it for his own nefarious purposes.$B$BPut an end to this satyr\'s schemes at once.','Slay Varaxxius, who is rumored to reside in Demon Fall Canyon and return to Delos Talonheart in Forest Song.','They say the orcs have left a monument to Grommash in the canyon.$B$BI hope you have spat on it.','It brings great comfort to me to know that I can always rely on your dedication and courage. The satyr Varaxxius was a powerful and dangerous foe, but you have proven yourself to be an expert in combat. Your actions have saved our sacred groves from the vile ambitions of those who seek to exploit the weapon of Mannoroth for their own dark purposes.$B$BBy ending the satyr and preventing any further attempts to repair the weapon, you have struck a heavy blow to our enemies and secured a significant victory for the Kaldorei. May you ever be honored for your service to us.',0,0,0,0,0,0,0,0, 61427,1,0,0,0,0,0,0, 0,0, 3000,13800,2300,69,350,0,0,0,0,0,0,0,0,0, 1710,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61145, 40843);
replace into creature_involvedrelation	(id, quest) values (61145, 40843);

-- Report to Luke Agamand
delete from quest_template where entry = 40844;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40844,2,5179,45,38,0,0,'Report to Luke Agamand','Luke Agamand was always the outcast among his family. Disowned and banished, he found his way into my notice and joined our crew.$B$BHis old home was one of his first raids. I have entrusted a task to him personally, and you will ensure that he succeeds.','Speak with Luke Agamand at Blackthorn\'s Camp in Gilneas.','Well, hello there.','The boss wants you to help me? I hope you\'re a capable $c and not some diplomatic noodle.$B$BWhat you\'re about to do will take some guts.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,75,68,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61375, 40844);
replace into creature_involvedrelation	(id, quest) values (61377, 40844);

-- Heist in Dryrock Mine
delete from quest_template where entry = 40845;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40844,40845,2,5179,45,38,0,0,'Heist in Dryrock Mine','There is a mine up in the hills, Dryrock Mine I believe the locals call it, responsible for providing the Gilnean army with Mithril ore. The boss believes this Mithril is far better suited to supply the Horde, wouldn\'t you agree?$B$BTravel up to the mine, kill anyone who tries to stand in your way, and acquire 16 Sacks of Mithril Ore. Return to me when you\'ve finished the job.','Gather 16 Sacks of Mithril Ore from Dryrock Mine for Luke Agamand in Blackthorn\'s Camp.','Did you get the ore?','Well I\'ll be damned. You actually went and pulled it off! The boss will ensure this Mithril gets where it\'s most needed. I\'d say you\'ve proven your worth, kid. Here\'s your cut.',61350,16,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2014,20250,3375,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61377, 40845);
replace into creature_involvedrelation	(id, quest) values (61377, 40845);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61350,1168,'Sack of Mithril Ore',12,1,2048,1,-1,-1,1,16,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61395, 61350, -38, 0, 1, 1, 0);

REPLACE INTO gameobject_template VALUES
(2020016, 3, 25522, 'Sack of Mithril Ore', 0, 4, 1, 43, 2020016, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020016,61350,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 300, spawntimesecsmax = 300 where ID = 2020016;

-- Report to Livia Strongarm
delete from quest_template where entry = 40846;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40846,2,5179,45,38,0,0,'Report to Livia Strongarm','Livia has been part of this outfit since the very beginning. If she judges you worthy, then so will I.$B$BI have given her a task of the utmost importance. Go assist her.','Seek out Livia Strongarm at Blackthorn\'s Camp in Gilneas.','Ah, it\'s you.','Listen up kid: I never wanted to set eyes nor foot upon the land of fancy pantsy Gilneans, not even to rob it. You want to earn my appreciation? Then help me complete this task from the boss so we can finish down here and leave this wretched place.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,75,68,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61375, 40846);
replace into creature_involvedrelation	(id, quest) values (61376, 40846);

-- Rendezvous with the Infiltrator
delete from quest_template where entry = 40847;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40846,40847,2,5179,45,38,0,0,'Rendezvous with the Infiltrator','Our intelligence on this region is poor. We knew Gilneas was an isolationist nation, but we did not expect it to be in such a miserable state.$B$BBeing among the living, we have no trouble blending in to conduct espionage. One of ours has assumed the name "Greta Longpike", who in her last missive reported she had infiltrated a settlement named Greyshire.$B$BSeek her out and tell her "Night Lady, gold in mouth at dawn". That is the code phrase. She will give you a report, the details of which are of vital importance, that you are to bring back to me.','Travel to the Ruins of Greyshire, locate Greta Longpike, and acquire the Sealed Report for Livia Strongarm at Blackthorn\'s Camp in Gilneas.','You return. You had better have that report in hand.','Gilneas appears to be in open rebellion. One side is led by Prince Liam Greymane and a certain Ravenwood, while the other side is led by corrupt Gilnean nobles. The boss will want to hear about this. You have done well. This task couldn\'t have been easy, but as a member of the Horde, you have proven yourself capable with this flawless execution.',61351,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,7650,1275,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61376, 40847);
replace into creature_involvedrelation	(id, quest) values (61376, 40847);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, max_count, description, page_text) values
(61351,3023,'Sealed Report to Livia',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,1,'',0);

update creature_template set script_name = 'npc_greta_longpike' where entry = 61379;

set @gossip_menu_id = 41450; set @magic_number = 61379;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Well, this is a fine day here in Gilneas, isn\'t it? Take care if you leave town, alright?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into broadcast_text (entry, Male_Text) values (30108, 'What are you talking about? Don\'t make me call the guards!');
replace into npc_text (ID, BroadcastTextID0) values (30108, 30108);

replace into broadcast_text (entry, Male_Text) values (30109, 'I didn\'t expect Livia to send a member of the Horde. What was she thinking?$B$BWhatever. Make sure this sealed report gets to her.');
replace into npc_text (ID, BroadcastTextID0) values (30109, 30109);

-- Quality Time with Blackthorn
delete from quest_template where entry = 40848;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40848,2,5179,46,40,0,0,'Quality Time with Blackthorn','You may wonder why a gaggle of humans are working with the Horde. The answer to that question lies in the Civil War in the Plaguelands, when we Forsaken first gained liberty...$B$BYes, we Forsaken. You see, I am a banshee currently possessing Blackthorn, and I have convinced his band of cutthroats to fight for us. Rest assured, I am not alone in this endeavor.$B$BIf you wish to know more, then you will need to earn my trust. Some of those naga creatures have been encroaching upon the camp from the beach. Slaughter them and we will resume our conversation upon your triumphant return.','Slay 8 Spitecrest Netters for Blackthorn at Blackthorn\'s Camp in Gilneas.','Shall we continue the tale?','You have done well.$B$BFollowing the victory of the Forsaken, those who possessed a body during the conflict were sent out as the Dark Lady\'s eyes and ears. My group is usually sent to spy upon the Alliance as we are suited for blending in among humans.$B$BI have come to grow fond of my comrades in this group. They lacked discipline and purpose once, but are now skilled infiltrators and spies.',0,0,0,0,0,0,0,0, 61408,8,0,0,0,0,0,0, 0,0, 0,19050,3175,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61375, 40848);
replace into creature_involvedrelation	(id, quest) values (61375, 40848);

-- Genn Greymane Must Die!
delete from quest_template where entry = 40849;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40848,40849,2,5180,49,40,0,0,'Genn Greymane Must Die!','Storytime is over. The time to act is at hand. I have read the report you retrieved from Livia, and I have decided how best to proceed.$B$BKing Genn Greymane was ever a force to be reckoned with in the old Alliance of Lordaeron. His strength and shrewdness were only matched by his stubbornness and pride. He cannot be allowed a to wrest control over his crumbling kingdom once more.$B$BVenture into his city with as many comrades as you can find and bring me his head.','Enter Gilneas City and slay Genn Greymane, then bring his head to Blackthorn at Blackthorn\'s Camp in Gilneas.','The King of Gilneas was once a force to be reckoned with. Though his power and grip over the kingdom has diminished, he will be no easy prey.','Wonderful! You have proven yourself a capable agent of the Dark Lady.$B$BThough your tale of what happened in the city troubles me... If Genn Greymane was truly behind the rebellion, we may have inadvertently aided our enemies. That, however, is neither your fault nor your concern.$B$BWe will take it from here. You are dismissed.',61352,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,37200,6200,68,500,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61353,1,61354,1,61355,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61375, 40849);
replace into creature_involvedrelation	(id, quest) values (61375, 40849);

update quest_template set type = 81 where entry = 40849;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61352,2975,'Genn Greymane\'s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61418, 61352, -100, 0, 1, 1, 0);

replace into item_template values
 ('61353', '4', '2', 'Blackthorn Gauntlets', '', '17183', '3', '0', '1', '23952', '5988', '10', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '3', '3',
 '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '86', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '35', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61354', '4', '0', 'Banshee\'s Tear', '', '26391', '3', '0', '1', '16872', '4218', '11', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '21618', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61355', '4', '3', 'Dark Footpad Belt', '', '26210', '3', '0', '1', '27128', '6782', '6', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '-8', '4', '13',
 '6', '7', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '158', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '40', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

-- To Gilneas
delete from quest_template where entry = 40850;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40850,2,5179,41,35,0,0,'To Gilneas','The Dark Lady has a task for a capable $c such as yourself that would benefit the interests of the Horde.$B$BOne of the Banshee Queen\'s agents has been sent to Gilneas in order to survey the situation, acquire assets for the Horde, and evaluate whether the area is suitable for exploitation by the Forsaken.$B$BThe Greymane Wall was recently breached and the nation it once protected is in chaos, granting us access and an opportunity. Follow the road south into Gilneas, circle around the city, and you will find a camp by the western shore occupied by Blackthorn.$B$BYou may be surprised by the nature of his followers, but rest assured that he and his minions are devoted in their service to the Horde and the Dark Lady. Report to him and he will make good use of you.','Seek out Blackthorn at Blackthorn\'s Camp in Gilneas.','And you are?','I see that the Dark Lady has sent someone to assist us. I may look human, but do not let appearances deceive you.$B$BI am fully committed to the Horde, as my loyalty lies with the Banshee Queen. If you are here to assist, I shall put you to work.$B$BHelp my subordinates, then I will have further instructions for you.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,375,68,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61374, 40850);
replace into creature_involvedrelation	(id, quest) values (61375, 40850);

-- Forsaken at the Church
delete from quest_template where entry = 40851;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40851,2,5179,41,35,0,0,'Forsaken at the Church','While our scouts were surveying these lands, they encountered a contingent of Forsaken in the northeast. We have not received any information that we would be getting reinforcements, or that any other Forsaken would be here.$B$BPerhaps you would be interested in investigating? These Forsaken were located by a church in the northeast the locals call Stillward Church. If they need assistance, it is our duty to our Forsaken brethren to provide it.','Seek out the Forsaken at Stillward Church in Gilneas.','A wandering soul comes to our flock.','I am surprised to learn that there exists other like us in this land. It is no surprise they were unaware of our presence, as we came here of our own accord.$B$BNonetheless, if you have come all this way, then surely you intend to assist us.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,75,68,50,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61377, 40851);
replace into creature_involvedrelation	(id, quest) values (61281, 40851);

replace into item_template values
 ('61356', '4', '2', 'Dreamhide Mantle', '', '17365', '4', '0', '1', '219356', '54839', '3', '-1', '-1', '76',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '19', '4', '11',
 '5', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '148', '0', '0', '0',
 '0', '0', '0', '13670', '1', '0', '0', '-1', '0', '-1', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '70', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61357', '4', '2', 'Dreamhide Bracers', '', '17998', '4', '0', '1', '83128', '20782', '9', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '7', '11',
 '5', '6', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '87', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '40', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61358', '4', '2', 'Dreamhide Leggings', '', '13140', '4', '0', '1', '163464', '40866', '7', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '26', '5', '16',
 '7', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '228', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '13680', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '90', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61359', '4', '2', 'Dreamhide Belt', '', '13309', '4', '0', '1', '87584', '21896', '6', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '19', '7', '14',
 '3', '13', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '108', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '40', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61360', '4', '1', 'Dreamthread Mantle', '', '66417', '4', '0', '1', '167144', '41786', '3', '-1', '-1', '76',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '26', '7', '9',
 '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '72', '0', '0', '0',
 '0', '0', '0', '14521', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '18384', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '60', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61361', '4', '1', 'Dreamthread Kilt', '', '8424', '4', '0', '1', '123464', '30866', '7', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '28', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '84', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '15714', '1', '0', '0', '-1', '0', '-1', '21628', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '75', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61362', '4', '1', 'Dreamthread Bracers', '', '16636', '4', '0', '1', '66540', '16635', '9', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '0', '0', '0',
 '0', '0', '0', '8815', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61363', '4', '1', 'Dreamthread Gloves', '', '16633', '4', '0', '1', '70776', '17694', '10', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '6', '3',
 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '61', '0', '0', '0',
 '0', '0', '0', '21637', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61364', '4', '4', 'Dreamsteel Mantle', '', '32659', '4', '0', '1', '170124', '42531', '3', '-1', '-1', '76',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '33', '3', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '638', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '9141', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '100', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61365', '4', '4', 'Dreamsteel Leggings', '', '13206', '4', '0', '1', '138752', '34688', '7', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '35', '3', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '648', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '48031', '1', '0', '0', '-1', '0', '-1', '45420', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '120', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61366', '4', '4', 'Dreamsteel Bracers', '', '27420', '4', '0', '1', '70432', '17608', '9', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '19', '7', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '318', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '55', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61367', '4', '4', 'Dreamsteel Boots', '', '27419', '4', '0', '1', '97236', '24309', '8', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '31', '3', '7',
 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '502', '0', '0', '0',
 '0', '0', '0', '48029', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '75', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61368', '4', '0', 'Greymane Tabard', '', '66415', '1', '0', '1', '0', '0', '19', '-1', '-1', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61369', '4', '0', 'Ravenshire Tabard', '', '66416', '1', '0', '1', '0', '0', '19', '-1', '-1', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Add the following item to the loot table of Bristleback Shaman (entry 2953) / Bristleback Battleboar (entry 2554) / Bristleback Quilboar (entry 2952) at 0.2% drop chance. Also add this item to the loot table of Chief Sharptusk Thornmantle (entry 8554) at 3% drop chance
replace into item_template values
 ('61370', '4', '6', 'Bristlehide Buckler', '', '18508', '2', '0', '1', '600', '150', '14', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '161', '0', '0', '0',
 '0', '0', '0', '22351', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '4', '0', '0', '45', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2953, 61370, 0.2, 10, 1, 1, 0),
(2554, 61370, 0.2, 10, 1, 1, 0),
(2952, 61370, 0.2, 10, 1, 1, 0),
(8554, 61370, 3,   10, 1, 1, 0);

-- Add the following item to the loot table of Scarlet Initiate (entry 1507) / Scarlet Convert (entry 1506) at 0.2% drop chance. Also add this item to the loot table of Meven Korgal (Entry 1667) at 3% drop chance.
replace into item_template values
 ('61371', '2', '15', 'Pious Blade', '', '20318', '2', '0', '1', '800', '200', '21', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1400', '0',
 '0', '4', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9392', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '25', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(1506, 61371, 0.2, 10, 1, 1, 0),
(1507, 61371, 0.2, 10, 1, 1, 0),
(1667, 61371, 3,   10, 1, 1, 0);

-- Add the following item to the loot table of Felstalker (entry 3102) / Vile Familiar (entry 3101) at 0.2% drop chance. Also add this item to the loot table of Yarrog Baneshadow (Entry 3183) at 3% drop chance.

replace into item_template values
 ('61372', '2', '0', 'Bloody Pick', '', '14039', '2', '0', '1', '800', '200', '21', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '6', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '15042', '2', '0', '1', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '60', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3102, 61372, 0.2, 10, 1, 1, 0),
(3101, 61372, 0.2, 10, 1, 1, 0),
(3183, 61372, 3,   10, 1, 1, 0);

-- Add the following item to the loot table of Webwood Spider (entry 1986) at 0.2% drop chance. Also add this item to the loot table of Githyiss the Vile (Entry 1994) at 3% drop chance.
replace into item_template values
 ('61373', '2', '7', 'Venom Infused Blade', '', '1544', '2', '0', '1', '800', '200', '13', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2500', '0',
 '0', '7', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '6751', '2', '0', '1', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '40', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(1986, 61373, 0.2, 10, 1, 1, 0),
(1994, 61373, 3,   10, 1, 1, 0);

-- Add the following item to the loot table of Risen Oilblaze (entry 80116) at 0.2% drop chance. Also add this item to the loot table of Tomb Shadow (Entry 80120) at 3% drop chance.
replace into item_template values
 ('61374', '2', '19', 'Grungy Firestick', '', '6093', '2', '0', '1', '600', '150', '13', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1800', '0',
 '0', '9', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '1', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '35', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(80116, 61374, 0.2, 10, 1, 1, 0),
(80120, 61374, 3,   10, 1, 1, 0);

-- Add the following item to the loot table of Shadowforge Fire Priest (entry 80205) / Shadowforge Prowler (entry 80207)  at 0.3% drop chance.
replace into item_template values
 ('61375', '2', '8', 'Crossguarded Blade', '', '23224', '2', '0', '1', '800', '200', '17', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '0',
 '0', '12', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '1', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '45', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(80205, 61375, 0.3, 10, 1, 1, 0),
(80207, 61375, 0.3, 10, 1, 1, 0);
