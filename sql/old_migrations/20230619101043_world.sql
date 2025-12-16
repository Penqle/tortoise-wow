-- Revenge After Death
delete from quest_template where entry = 40974;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40974,2,5180,47,39,0,0,'Revenge After Death','In life I was a soldier, loyal to the Greymane cause. I participated in the battle of Greyshire and basked in the great victory over the scourge.$B$BWhilst I considered myself a great warrior, I was ambushed by a great beast with my fellow comrades. The large worgen tore us apart, and though I fought back, I was felled.$B$BNow I am here, to toil in the ceaseless memories of my failures. I want revenge upon that worgen. It goes by the name Snarlclaw. He is known to lurk deep within a cave to the west of here near the Bloodclaw camp.$B$BBring me his paw, and you shall be rewarded.','Bring the Paw of Snarlclaw to Dominic Larson at Stillward Church in Gilneas.','Has the deed been done $c?','<Dominic Larson has a smirk resting upon his face.>$B$BWell done. I must commend you for your efforts. You\'ve defeated the beast that has cursed me with eternal undeath. Take one of these, as a token of my gratitude.',61618,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,24600,4100,0,0,0,0,0,0,0,0,0,0,0, 61490,1,61619,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61284, 40974);
replace into creature_involvedrelation	(id, quest) values (61284, 40974);
update quest_template set requiredraces = 434		 where entry = 40974;
update quest_template set type = 1					 where entry = 40974;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61618,940,'Paw of Snarlclaw',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61405,61618,-100,0,1,1,0);

replace into item_template values
 ('61619', '2', '0', 'Worgen Cleaver', '', '19217', '2', '0', '1', '98768', '24692', '21', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '6', '5',
 '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '45', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- The Judge and the Phantom
delete from quest_template where entry = 40975;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40975,2,5180,46,35,8,0,'The Judge and the Phantom','<The phantom begins to phase into reality, a howling of wind heard as it begins to speak.>$B$BIn life my name was Karl Glaymore, my family was one of prominence within Gilneas. Now, we are nothing, all of us removed from the world of the living.$B$BWe were tried for conspiracy, all of us, for claims that held no merit. My children were butchered one by one by that cruel Judge Sutherland. His judgements passing with each swing of the gavel.$B$BWe were set to be examples, and now I am here to haunt this existence, to fester in anger...$B$BBring me peace. Find Judge Sutherland in Gilneas City, and end his life. I will know when the deed is done.','Slay Judge Sutherland within Gilneas City for the Angered Phantom at the Glaymore Stead in Gilneas.','<A silence hangs on the ethereal wind.>','You have done well, I am at peace, once and for all.$B$BI can feel the nether claiming the lingering essence of my spirit. It is my time to go, and rest.$B$BI have left an item for you, as thanks for everything you have done.$B$B<The phantom begins to fade.>',0,0,0,0,0,0,0,0, 61421,1,0,0,0,0,0,0, 0,0, 0,29100,4850,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61620,1,61621,1,61622,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61559, 40975);
replace into creature_involvedrelation	(id, quest) values (61559, 40975);
update quest_template set type = 81					 where entry = 40975;

replace into item_template values
 ('61620', '4', '3', 'Glaymore Family Breastplate', '', '4723', '2', '0', '1', '50548', '12637', '5', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '19', '5', '7',
 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '295', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '100', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61621', '2', '6', 'Ceremonial Gilnean Pike', '', '22242', '2', '0', '1', '127032', '31758', '17', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '18', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '69', '147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '75', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '85', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61622', '4', '0', 'Glaymore Shawl', '', '23097', '2', '0', '1', '35456', '8864', '16', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '3', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- War on Worgen
delete from quest_template where entry = 40976;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40976,2,5179,45,38,8,0,'War on Worgen','The worgen of Gilneas are surprisingly well organized for a bunch of beasts. Their packs have caused us quite a lot of headache in spreading our influence.$B$BI am in need of someone who can sever the chain of command. An aimless group of worgen will serve us much better in the end. Travel west and search for the cavern where the Bloodclaw alpha call home. Slay them so that their packs cannot organize against us.','Slay 9 Bloodclaw Alpha for Deathstalker Vernon at Stillward Church in Gilneas.','I advise you to carry yourself with caution.$B$BYour foe is not as weak as you may think.','You have done well, with the alphas scattered there will be struggles for dominance. Whatever comes of that is not our concern, however. We have already removed the head of the beast.$B$BYour efforts to serve the Dark Lady will not go unnoticed. Take this as a commendation for your work.',0,0,0,0,0,0,0,0, 61252,9,0,0,0,0,0,0, 0,0, 0,20700,3450,68,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61623,1,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61283, 40976);
replace into creature_involvedrelation	(id, quest) values (61283, 40976);
update quest_template set requiredraces = 434		 where entry = 40976;

replace into item_template values
 ('61623', '4', '0', 'Deathstalker Band', '', '9840', '2', '0', '1', '12832', '3208', '11', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '8', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Ebonmere Bat Infestation
delete from quest_template where entry = 40977;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40977,2,5179,40,35,8,0,'Ebonmere Bat Infestation','Hey, you there.$B$BYou know anything about bat extermination? These past few weeks have been hell. All of my efforts to drive away these bats have ended in disappointment. Perhaps you can do me a solid and rid me of their annoyance.$B$BIf I am to restore the Ebonmere farm they need to go, and for good. Thin their population, and kill twelve of them, return to me when the task is done.','Slay 12 Vilewing Batlings for Joshua Ebonmere at Ebonmere Farm in Gilneas.','So, has the work been done?','I feel like I can breathe again. These blasted vermin roam the forests in droves, at least now there are less of them about.',0,0,0,0,0,0,0,0, 61230,12,0,0,0,0,0,0, 0,0, 0,18600,3100,68,150,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61290, 40977);
replace into creature_involvedrelation	(id, quest) values (61290, 40977);
update quest_template set requiredraces = 434		 where entry = 40977;

-- Ebonmere Worgen Infestation
delete from quest_template where entry = 40978;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40978,2,5179,40,35,8,0,'Ebonmere Worgen Infestation','The worgen in Gilneas entered shortly after the Greymane wall was destroyed in Oldrock Pass. You see, a powerful lich invaded the land and destroyed Greyshire some time ago. Now the forests themselves are packed full of the beasts, threatening to overtake my farm at any minute.$B$BI need you to collect their pelts and prevent any future attacks. Six pelts from the Bloodclaw and Nighthowl worgen should suffice. You can find these packs to the west and southwest.','Collect 6 Bloodclaw Pelts, and 6 Nighthowl Pelts for Joshua Ebonmere at Ebonmere Farm in Gilneas.','Watch yourself during the night. Dark things are always lingering.','The worgen, defeated?$B$B<A wiry smirk crosses his features.>$B$BYou have done well, outsider.',61624,6,61625,6,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,18600,3100,68,150,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61290, 40978);
replace into creature_involvedrelation	(id, quest) values (61290, 40978);
update quest_template set requiredraces = 434		 where entry = 40978;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61624,3591,'Bloodclaw Pelt',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,8),
(61625,1421,'Nighthowl Pelt',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61251,61624,-100,0,1,1,0),
(61252,61624,-100,0,1,1,0),
(61253,61624,-100,0,1,1,0),
(61236,61625,-100,0,1,1,0),
(61237,61625,-100,0,1,1,0),
(61238,61625,-100,0,1,1,0);

-- Ebonmere Affairs
delete from quest_template where entry = 40979;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40977,40979,2,5180,45,35,0,0,'Ebonmere Affairs','Now that you\'ve proven yourself to me as a valuable ally, I have more pressing matters that I need looked into.$B$BYou see, three weeks ago my farm was robbed. A swindling rogue named Dustivan Blackcowl was employed to take the deed of Ebonmere Farm itself!$B$BHe is a lackey to Greymane and serves like an obedient dog. I want his hand for this treachery, and I want my family deed recovered. Do this for me and I will see you rewarded justly.$B$BI have no doubt you will find this rogue deep within the bowels of Gilneas City itself.','Slay Dustivan Blackcowl and recover the Ebonmere Deed for Joshua Ebonmere at Ebonmere Farm in Gilneas.','So, what news do you have?','You\'ve brought me peace, something I have been longing to have.$B$BWith this deed I can continue as I always have. I have prepared some rewards for you as thanks for returning my property.',61626,1,0,0,0,0,0,0, 61422,1,0,0,0,0,0,0, 0,0, 0,31200,5200,68,350,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61627,1,61628,1,61629,1,61630,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61290, 40979);
replace into creature_involvedrelation	(id, quest) values (61290, 40979);
update quest_template set requiredraces = 434		 where entry = 40979;
update quest_template set type = 81					 where entry = 40979;
update quest_template set exclusivegroup = -40977 where entry in (40977,40978);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61626,811,'Ebonmere Deed',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(61422,61626,-100,0,1,1,0);

replace into item_template values
 ('61627', '2', '0', 'Ebonmere Reaver', '', '14029', '2', '0', '1', '71864', '17966', '13', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '45', '79', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61628', '4', '1', 'Clutch of Joshua', '', '24762', '2', '0', '1', '14324', '3581', '6', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 '0', '0', '0', '25975', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61629', '2', '3', 'Farmer\'s Musket', '', '66393', '2', '0', '1', '48836', '12209', '26', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '100',
 '3', '38', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '65', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61630', '4', '4', 'Ebonmere Vambracers', '', '24410', '2', '0', '1', '14472', '3618', '9', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '3', '7', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '198', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Greymane Hatred
delete from quest_template where entry = 40980;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40980,2,5179,45,35,0,0,'Greymane Hatred','My brother Franklin Blackheart may have been living, but he was my brother. He took up the cause to fight with the Ravenwood rebellion. It is here he met his fate, ambushed by the Greymane. Not a single person was spared, and the entire camp was burned to the ground.$B$BSeeing his twisted remains hurt me in a way nothing else has. I can feel it deep within, the sadness of his demise lingers still. I want retribution on those that have done this, slay the Greymane that inhabit Gilneas. They can be found to the east, just north of Ravenshire, or to the west of here, in a place called Dryrock Valley.$B$BBring me forty Greymane Signets from any who would swear allegiance to their cause.','Slay those loyal to the Greymane cause, and gather from them 40 Greymane Signets for Harrison Blackheart in Gilneas.','So, you\'ve returned, have you dealt justice to those that murdered my brother?','Ahh, is this what revenge feels like?$B$BI must admit, I only feel an emptiness. The true killer is still out there, and must be found.',61631,40,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,29700,4950,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61287, 40980);
replace into creature_involvedrelation	(id, quest) values (61287, 40980);
update quest_template set requiredraces = 434		 where entry = 40980;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61631,1705,'Greymane Signet',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61363,61631,-100,0,1,1,0),
(61366,61631,-100,0,1,1,0),
(61393,61631,-100,0,1,1,0),
(61394,61631,-100,0,1,1,0),
(61395,61631,-100,0,1,1,0),
(61396,61631,-100,0,1,1,0),
(61397,61631,-100,0,1,1,0);

-- The Blackheart Killer
delete from quest_template where entry = 40981;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40980,40981,2,5179,45,35,0,0,'The Blackheart Killer','I have heard rumors from the Deathstalkers that the ambush was facilitated by Captain Veller stationed at Freyshear Keep. If this information is true, then this man was the murderer of my brother.$B$BA very valuable piece of jewelry was taken from Franklin\'s corpse; the Blackheart Necklace. I have no doubt in my mind that this pompous man has taken the necklace.$B$BFreyshear Keep can be found far to the west, isolated on an island that looms overtop of Ravenshire. Kill him, and recover the necklace.','Assault Freyshear Keep and Slay Captain Veller to recover the Blackheart Necklace for Harrison Blackheart in Gilneas.','Have you found the necklace?','<Harrison Blackheart takes the jewelry with soft hands, taking a moment to admire the beauty.>$B$BI must thank you for recovering this. It certainly does mean a lot to me.',61632,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,30000,5000,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61287, 40981);
replace into creature_involvedrelation	(id, quest) values (61287, 40981);
update quest_template set requiredraces = 434		 where entry = 40981;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61632,15420,'Blackheart Necklace',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61566,61632,-100,0,1,1,0);

-- In Memory of Franklin
delete from quest_template where entry = 40982;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40981,40982,2,5179,45,35,0,0,'In Memory of Franklin','I have one last request from you. I figure you should do the honors, since you have recovered this necklace after all.$B$BPlace it upon the grave of Franklin, we can honor him in this way at least.','Place the Blackheart Necklace on the grave of Franklin.','Hmm, yes?','<With a nod of approval Harrison seems content.>$B$BYou\'ve done a lot for me, and I am certainly greatful. I am sure Franklin is as well.$B$B<A heavy chuckle escapes Harrison.>$B$BTake one of these, as tribute from us.',0,0,0,0,0,0,0,0, 60047,1,0,0,0,0,0,0, 61632,1, 0,2700,450,68,250,0,0,0,0,0,0,0,0,0, 61633,1,61634,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Place the Blackheart Necklace on the grave of Franklin');

replace into creature_questrelation		(id, quest) values (61287, 40982);
replace into creature_involvedrelation	(id, quest) values (61287, 40982);
update quest_template set requiredraces = 434		 where entry = 40982;

REPLACE INTO creature_template VALUES
(60047, 328, 0, 0, 0, 0, 'quest_40982_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template values
 ('61633', '2', '15', 'Bleaktalon', '', '20398', '2', '0', '1', '65632', '16408', '13', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '3', '3',
 '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '27', '63', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '55', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61634', '4', '1', 'Blackheart Boots', '', '27861', '2', '0', '1', '22536', '5634', '8', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '5', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '0', '9398', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Report to Nordanaar
delete from quest_template where entry = 40983;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40983,2,616,60,55,0,0,'Report to Nordanaar','I am bound to hold the demons at bay, and such duties compel me to remain here. The lack of word from Nordanaar is worrying, but I suspect the growing demonic presence may be what is causing delays.$B$BI must ask you to deliver my report to Nordanaar at the very top of the summit. Follow the road until you reach the town. Find Arch Druid Dreamwind, and give him this letter.','Bring the Report from Endaras to Arch Druid Dreamwind at Nordanaar in Hyjal.','How may I assist you outsider?','Hmm, so the demonic presence at Darkwhisper Gorge is as I feared. It may only be a matter of time until they figure out a way past our barriers.',61635,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61635,1, 0,0,350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61560, 40983);
replace into creature_involvedrelation	(id, quest) values (61512, 40983);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61635,3029,'Report from Endaras',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

-- The Runestone of Cenarius
delete from quest_template where entry = 40984;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40984,2,616,60,55,0,0,'The Runestone of Cenarius','We have been charged with the duty to reactivate the Runestone of Cenarius. The magical energies that once ran through this stone were linked with the Runestone of Nordrassil, allowing transporation between here and Nordanaar.$B$BHowever, a foreign magic is interfering with this process. I require materials in order to ascertain what is exactly happening.$B$B From the Barkskin Furbolg gather five Barkskin Spirit Beads, from the Misthoof gather three of their antlers, and finally, I require a single Shimmering Ooze from the sludge like creatures that inhabit the region.','Gather 5 Barkskin Spirit Beads, 3 Misthoof Antlers, and a Shimmering Ooze for Buthok Cloudhorn near the base of Hyjal.','Have the materials been acquired $c?','You have done well, I have already begun to prepare for the ritual.',61636,5,61637,3,61638,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,39000,6500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61561, 40984);
replace into creature_involvedrelation	(id, quest) values (61561, 40984);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61636,609,'Barkskin Spirit Bead',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0,4),
(61637,1500,'Misthoof Antler',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0,2),
(61638,1507,'Shimmering Ooze',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61343,61636,-26,0,1,1,0),
(61344,61636,-26,0,1,1,0),
(61345,61636,-26,0,1,1,0),
(61347,61636,-26,0,1,1,0),
(61332,61637,-38,0,1,1,0),
(61333,61637,-38,0,1,1,0),
(61334,61638,-12,0,1,1,0),
(61335,61638,-12,0,1,1,0);

-- The Runestone Ritual
delete from quest_template where entry = 40985;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40984,40985,2,616,60,55,0,0,'The Runestone Ritual','I have prepared the ritual. Using the materials you have collected I should be able to uncover the magic that is lingering upon the Runestone.$B$BGive me some time, and speak to me when I am done.','Wait for Buthok Cloudhorn to finish his ritual.','<Buthok Cloudhorn seems lost in the ritual.>','I have uncovered the source of this magic. Satyrs have tained the Runestone, and placed a curse upon it.$B$B<Buthok Cloudhorn lets out a sigh.>$B$BThis will take some considerable effort to fix.',0,0,0,0,0,0,0,0, 60048,1,0,0,0,0,0,0, 0,0, 0,0,500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Wait for Buthok Cloudhorn to finish his ritual');

replace into creature_questrelation		(id, quest) values (61561, 40985);
replace into creature_involvedrelation	(id, quest) values (61561, 40985);

REPLACE INTO creature_template VALUES
(60048, 328, 0, 0, 0, 0, 'quest_40985_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set script_name = 'npc_buthok_cloudhorn' where entry = 61561;

-- The Clutch of Atherelex
delete from quest_template where entry = 40986;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40985,40986,2,616,60,55,0,0,'The Clutch of Atherelex','Undoing a powerful satyr curse is not something that can be easily done, especially not with any magic that we here possess. We will need to create a satyr relic named the Clutch of Atherelex. Each satyr tribe holds a specific rod. Should a specific curse need to be undone all of the rods must be attached together in unison in order to channel a specific magic to remove the curse.$B$BTo create the Clutch of Atherelex we require the Rod of \'Ath, from the Vilemusk satyrs in Hyjal. The Rod of \'Ere from the Legashi satyrs in Azshara. Finally, the Rod of \'Lex from the Jadefire satyrs.','Gather the Rod of \'Ath, the Rod of \'Ere, and the Rod of \'Lex for Buthok Cloudhorn near the base of Hyjal.','So, have you recovered what is required?','<Buthok Cloudhorn lets out a sigh of relief.>$B$BI feared that you would not return. I am happy my worries have not come true.',61639,1,61640,1,61641,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,40800,6800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61561, 40986);
replace into creature_involvedrelation	(id, quest) values (61561, 40986);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61639,20309,'Rod of \'Ath',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4),
(61640,20352,'Rod of \'Ere',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4),
(61641,18026,'Rod of \'Lex',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61338,61639,-11,0,1,1,0),
(61339,61639,-11,0,1,1,0),
(61340,61639,-11,0,1,1,0),
(61341,61639,-11,0,1,1,0),
(6200,61640,-11,0,1,1,0),
(6201,61640,-11,0,1,1,0),
(6202,61640,-11,0,1,1,0),
(7105,61641,-11,0,1,1,0),
(7106,61641,-11,0,1,1,0),
(7107,61641,-11,0,1,1,0),
(7108,61641,-11,0,1,1,0),
(7109,61641,-11,0,1,1,0),
(7110,61641,-11,0,1,1,0),
(7111,61641,-11,0,1,1,0);

-- Imbued Stone
delete from quest_template where entry = 40987;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40986,40987,2,616,60,55,0,0,'Imbued Stone','The Clutch of Atherelex is reliant on elemental magic, drawing power from potent natural energies. To access the magic that we so desire, we must acquire a Imbued Stone.$B$BPowerful, and enraged elementals of stone are known to hold such items.$B$BOn the island of Tel\'Abim to the east of Tanaris can be found Agitated Rock Elementals. Travel there, and acquire an Imbued Stone from them.','Acquire an Imbued Stone from Rock Elementals in Tel\'Abim for Buthok Cloudhorn near the base of Hyjal.','Has the work been completed $c?','This Imbued Stone holds considerable power, despite looking like an ordinary rock.',61642,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,39000,6500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61561, 40987);
replace into creature_involvedrelation	(id, quest) values (61561, 40987);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61642,4717,'Imbued Stone',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61093,61642,-13,0,1,1,0);

-- The Runestone Curse
delete from quest_template where entry = 40988;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40987,40988,2,616,60,55,0,0,'The Runestone Curse','I have tried my hand at lifting the curse with the required items, but it would appear there is still something wrong.$B$BAfter a careful studying of the Runestone I have come to the conclusion that a chunk of it has been removed. I have my guesses, but I believe a satyr named Xalthix is in control of this chunk. With it, he can keep this curse active indefinitely.$B$BFind Xalthix, and from him, recover the Runestone Chunk.','Find and slay the satyr Xalthix within Hyjal, and recover the Runestone Chunk for Buthok Cloudhorn near the base of Hyjal.','Have you tracked Xalthix?','<Buthok Cloudhorn inserts the Runestone Chunk back into place.>$B$BYou have done well, better than I ever had expected.',61643,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,39000,6500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61561, 40988);
replace into creature_involvedrelation	(id, quest) values (61561, 40988);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61643,4718,'Runestone Chunk',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61565,61643,-100,0,1,1,0);

-- Runestone Reactivation
delete from quest_template where entry = 40989;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40988,40989,2,616,60,55,0,0,'Runestone Reactivation','With everything in place, the power of the Runestone will soon be channeling once again. I require you to speak with Glanthas the Ancient in Nordanaar. It is he that controls the power of the Runestones here in Hyjal. With his magic, you should be allowed teleporation between both stones.','Speak with Glanthas the Ancient at Nordanaar in Hyjal.','Yes?','<Glanthas the Ancient offers a long, and silent stare.>$B$BThe Runestone?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61561, 40989);
replace into creature_involvedrelation	(id, quest) values (61528, 40989);

-- The Runestone Scepter
delete from quest_template where entry = 40990;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40989,40990,2,616,60,55,0,0,'The Runestone Scepter','<The creaking ancient lets out a grumble.>$B$BIt would appear Buthok has proven successful in re-energizing the Runestone of Cenarius. Though, there is one last problem that still offers trouble.$B$BYou see, I once charged a druid named Enthelar Valebranch with overseeing the Runestones some years ago. The Runestone Scepter, which activates the magic was in his possession when he succumbed to the whim of corruption.$B$BLast I heard, Enthelar Valebranch was seen wandering Winterspring, his mind addled, and lost. Recover the Runestone Scepter, and I will grant you access to the Runestones of Hyjal.','Recover the Runestone Scepter from Enthelar Valebranch, last seen wandering Winterspring for Glanthas the Ancient at Nordanaar in Hyjal.','Yes?','<Glanthas the Ancient lets out a creaking exhale of approval.>$B$BYou have done well in finding this. It eases my mind to know you have brought peace to Enthelar. He suffered great hardships, and I am sure he was relieved by your actions.$B$BAs I promised, you can now access the Runestones of Hyjal, offering transport between them. Use this power wisely, $c.$B$BFor your considerable efforts in restoring the Runestones I have prepared a suitable commendation.',61644,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,46800,7800,0,0,0,0,0,0,0,0,0,0,0, 61199,5,0,0,0,0,0,0, 61645,1,61646,1,61647,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61528, 40990);
replace into creature_involvedrelation	(id, quest) values (61528, 40990);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61644,66240,'Runestone Chunk',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61564,61644,-100,0,1,1,0);

replace into item_template values
 ('61645', '4', '0', 'Clutch of Renewal', '', '66424', '3', '0', '1', '144432', '36108', '23', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17988', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61646', '4', '4', 'Gladeforge Breastplate', '', '27384', '3', '0', '1', '98752', '24688', '5', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '23', '3', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '704', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '21598', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '135', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61647', '4', '2', 'Cuffs of Nordanaar', '', '3606', '3', '0', '1', '59900', '14975', '9', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '16', '6', '9',
 '3', '7', '5', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '79', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- GOBJECT Runestone of Nordrassil, uses model NEMagicImplement10, has gossip flags with the following text : <The stone hums softly.>
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020036, 2, 24516, 'Runestone of Nordrassil', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_runestone_of_nordrassil');
-- GOBJECT Runestone of Cenarius, , uses model NEMagicImplement09, has gossip flags with the following text : <The stone hums softly.>
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020037, 2, 24515, 'Runestone of Cenarius', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_runestone_of_cenarius');

replace into broadcast_text (entry, Male_Text) values (30127, 'The stone hums softly.');
replace into npc_text (ID, BroadcastTextID0) values (30127, 30127);

-- Link mooncloth item set.
update item_template set set_id = 628 where entry = 14140;
update item_template set set_id = 628 where entry = 14139;
update item_template set set_id = 628 where entry = 14138;
update item_template set set_id = 628 where entry = 18486;
update item_template set set_id = 628 where entry = 18409;
update item_template set set_id = 628 where entry = 14137;
update item_template set set_id = 628 where entry = 15802;
