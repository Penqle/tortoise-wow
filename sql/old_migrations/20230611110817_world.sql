-- Corporal Danmere, display id 20403, faction 84, level 50, humanoid, scale 1, weapon2 12743, quest flags.
REPLACE INTO creature_template VALUES
(61557, 20403, 0, 0, 0, 0, 'Corporal Danmere', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 84, 2, 1, 1.14286, 1, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 61557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20406; set @weapon_1 = 0; set @weapon_2 = 12743; set @weapon_3 = 0; set @creature = 61557;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- The Brigade is Coming Home
delete from quest_template where entry = 40964;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40964,2,5179,38,35,0,0,'The Brigade is Coming Home','Did you hear the news? The Greymane Wall, once an impenetrable barrier, now stands open. Granting us access to our long-lost homeland!$B$BThe call to action has been sounded, and a ship laden with our brave soldiers has set sail for Gilneas. By now, they should have reached the port town of Ravenshire, the very heart of the rebellion against the oppressive regime. Together, under the banner of the Ravenwood Rebellion, we shall liberate Gilneas from the shackles of unjust rule!$B$BIn this critical juncture, we seek any assistance that can be mustered. Make your way to Ravenshire without delay. Once you arrive, seek out Sergeant Arbington.','Venture to Gilneas and find Sergeant Arbington in Ravenshire.','A new face. Welcome to Gilneas.','Ah, so Danmere has sent you our way, eh? Well, as you can clearly observe, the situation here is far from ideal. We are in dire need of assistance, and any help you can offer will be greatly appreciated. Welcome to the frontlines of the struggle.$B$BIn order to get properly acquainted with our operations, I suggest introducing yourself to two key figures in our ranks. Darius Ravenwood and Caliban Silverlaine are the stalwart leaders orchestrating our resistance against the Harlow forces. You will typically find them at the town hall, tirelessly strategizing and planning our next moves. Waste no time in seeking them out and informing them of your arrival. They will undoubtedly appreciate your presence and may have specific tasks or assignments to entrust you with.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2700,450,108,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61557, 40964);
replace into creature_involvedrelation	(id, quest) values (61265, 40964);
update quest_template set requiredraces = 589		 where entry = 40964;

-- Feeding the Rebellion
delete from quest_template where entry = 40965;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40965,2,5179,42,35,0,0,'Feeding the Rebellion','I\'ve led a rugged existence in these parts. Life here ain\'t always been gentle, but it\'s been plain and straightforward. My duty has been to provide sustenance for my kinfolk and the folks in town, tracking down the savage creatures that roam these woods.$B$BA lot has changed since the rebellion. Now, it falls upon my weary shoulders to not only keep my own family fed but also help supply an entire army! It\'s a burden fit for no ordinary man like myself. I reckon, stranger, could you lend me a hand in this dire situation?$B$BVenture deep into the heart of the forest and set your sights on the batlike creatures known as Vilewings. Don\'t bother with the young ones, their flesh is all stringy and full of veins. It\'s the greater beasts we\'re after. Hunt them down and bring me back no less than nine hefty chunks of their meat. That\'ll be the key to keepin\' bellies full and spirits high in these troubled times.','Bring 9 Chunks of Greater Vilewing Meat to Narwick at Ravenshire in Gilneas.','Ah, the thrill of the hunt.','Well, ain\'t you a sight for sore eyes, stranger! You\'ve done some mighty fine work for our cause, and I reckon we owe you a debt of gratitude.',61599,9,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 8000,22800,3800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61278, 40965);
replace into creature_involvedrelation	(id, quest) values (61278, 40965);
update quest_template set requiredraces = 589		 where entry = 40965;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61599,25466,'Greater Vilewing Meat',12,1,2048,1,-1,-1,1,9,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61401,61599,-65,0,1,1,0);

-- The Deed to Ravenshire
delete from quest_template where entry = 40966;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40966,2,5179,45,38,0,0,'The Deed to Ravenshire','Greymane, or rather, Harlow, has persistently launched assaults upon Ravenshire, yet to no avail. Our valiant soldiers have repelled their attacks time and time again, displaying unwavering courage. However, in one of their audacious night assaults, the enemy managed to breach the defenses of our city hall and abscond with the Deed to Ravenshire.$B$BWhile this parchment holds little personal value for me, it carries great significance to the common folk as a symbol of my rightful rule. For order to be restored in Gilneas, I must retrieve it without delay.$B$BUndoubtedly, the enemy forces have brought it back to Gilneas City itself. However, as to its current whereabouts, one can only speculate.','Find the Deed to Ravenshire in Gilneas City and bring it back to Caliban Silverlaine.','The Deed to Ravenshire must be reclaimed.','I commend your stellar work. With the Deed once again safely back in my possession, any troublemakers who dare challenge my rule shall be forced to reconsider their actions. The return of this document serves as a powerful deterrent, casting doubt upon the audacity of those who would question our authority.$B$BThough the path ahead may be arduous, we shall not waver in our commitment to rebuilding Gilneas. We have a long and challenging journey before us, but with each passing day, we will labor tirelessly to restore our beloved homeland to its rightful place of glory and splendor.',61600,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 120000,33000,5500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61601,1,61602,1,61603,1,61604,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61257, 40966);
replace into creature_involvedrelation	(id, quest) values (61257, 40966);
update quest_template set requiredraces = 589		 where entry = 40966;
update quest_template set type = 81					 where entry = 40966;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61600,7629,'Deed to Ravenshire',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

REPLACE INTO gameobject_template VALUES
(2020033, 3, 24337, 'Deed to Ravenshire', 0, 4, 1, 43, 2020033, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020033,61600,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 25, spawntimesecsmax = 25 where ID = 2020033;

replace into item_template values
 ('61601', '2', '0', 'Ebonmere Axe', '', '19214', '2', '0', '1', '67732', '16933', '13', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '48', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61602', '4', '4', 'Gilneas Brigade Helmet', '', '66375', '2', '0', '1', '20388', '5097', '1', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '364', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '70', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61603', '4', '1', 'Robes of Ravenshire', '', '21114', '2', '0', '1', '30432', '7608', '5', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '61', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '70', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61604', '4', '2', 'Greyshire Pauldrons', '', '17193', '2', '0', '1', '29132', '7283', '3', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '4', '6',
 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '93', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- Ravenwood Keep
delete from quest_template where entry = 40967;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40967,2,5179,44,35,0,0,'Ravenwood Keep','In the wake of the rebellion\'s inception, my home, Ravenwood Keep, became the target of an assault by the forces under the command of the Harlows. Our defenders fought with unwavering valor, but we found ourselves outmatched. It seemed that the Harlows, had delved into dark magicks to bolster their armies.$B$BThough some of our forces managed to escape the onslaught, the majority fell victim to the blades of our adversaries. Even my loyal servants were not spared from the carnage. Among the casualties were two of my dearest friends, Gately and Mathias.$B$BNow, as the dust settles, a haunting presence looms within the very walls that once provided solace and protection. The restless spirits of Gately and Mathias wander aimlessly, their once noble hearts consumed by bitterness. No longer able to distinguish friend from foe, they wreak havoc upon any who dare to cross their path.$B$BLay these tormented souls to rest, so that they may find peace in the embrace of the eternal slumber.','Bring rest to 8 Ravenwood Apparitions, 8 Ravenwood Spectres, Sergeant Gately and Custodian Matthias for Lord Darius Ravenwood at Ravenshire in Gilneas.','Ravenwood Keep... my home.','<Darius Ravenwood sighs with relief.>$B$BThe knowledge that my soldiers and servants no longer wander this world, tormented by the dark magic of the Harlows, brings me great peace. In their name, I express my deepest gratitude. Please, accept this token as a symbol of my appreciation as well as theirs.',0,0,0,0,0,0,0,0, 61242,1,61241,1,61240,8,61239,8, 0,0, 10000,28800,4800,0,0,0,0,0,0,0,0,0,0,0, 61605,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61259, 40967);
replace into creature_involvedrelation	(id, quest) values (61259, 40967);
update quest_template set requiredraces = 589		 where entry = 40967;
update quest_template set type = 1					 where entry = 40967;

replace into item_template values
 ('61605', '4', '0', 'Ravenwood Signet', '', '29697', '2', '0', '1', '29624', '7406', '11', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '5', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- The Wall Comes Crashing Down
delete from quest_template where entry = 40968;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40968,2,5179,38,33,0,0,'The Wall Comes Crashing Down','Indeed, it is a momentous occasion. The Greymane Wall has finally been breached.$B$BDuring their long years of isolation, the Gilnean throne has fallen into the hands of a pair of Alteraci nobles - Harlows. They harbor open hostility towards the Alliance, making it crucial for us to support the rebellion that has taken root within Gilneas. They call themselves the Ravenwood Rebellion, and it is through their efforts that the gates of Gilneas have been opened once more. Their leader has reached out to the Alliance, beseeching us for aid.$B$BI have received orders from Lord Fordragon himself to deploy any able-bodied soldiers to lend assistance to the Ravenwood Rebellion in their struggle for the liberation of Gilneas. Travel westward, through Silverpine until you reach the Greymane Wall. Beyond it, nestled along the coastline, you will find the town of Ravenshire.$B$BOnce you arrive, seek out Lord Ravenwood. Assure him that the Alliance stands unwavering in its commitment to its allies.','Venture to Gilneas and pledge your support to Lord Darius Ravenwood.','I haven\'t seen you here before.','So the promised aid finally arrives.$B$BGenn Greymane\'s profound lack of trust in the Alliance was undoubtedly one of his gravest misjudgments. Though I can appreciate his reasoning behind such a decision, I could never fully endorse it. However, that is all in the past now, and dwelling on it serves no purpose.$B$BI extend my warmest welcome to you and the formidable might of the Alliance. Ravenshire may be a modest town, but it holds the flame of resilience and hope that will ignite the rekindling of our beloved Gilneas. In due time, we shall extend our hospitality and invite you to partake in a grand feast within the walls of Gilneas City itself. But before we can revel in such festivities, there is much work to be done.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5400,900,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 2263, 40968);
replace into creature_involvedrelation	(id, quest) values (61259, 40968);
update quest_template set requiredraces = 589		 where entry = 40968;

-- Crystalvein Ore
delete from quest_template where entry = 40969;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40969,2,5179,42,35,0,0,'Crystalvein Ore','Working with sturdy Gilnean ore is no small feat, let me tell ya. But there were times when I yearned for something more exotic, especially when the Greymane Walls closed shut. Oh, the longing I felt!$B$BBut now fate has smiled upon me. Finally, I\'ve been given a chance to once again lay my skilled hands on those rare ores. There\'s one ore in particular that holds a special place in my heart, Crystalvein. Back in the days of my apprenticeship, I had the honor of working with it. It was a beauty, I tell ya—strong, durable, and a joy to forge. Having that ore by our side would be a true blessing for the rebellion.$B$BSadly, Crystalvein is a treasure found only in the distant lands of Stranglethorn. If, by some stroke of luck, you happen to set foot in Booty Bay, seek out a goblin by the name of Crank. He used to be my go-to supplier for that precious ore. Tell him I sent ya, and maybe, just maybe, he\'ll be able to hook you up with some Crystalvein once again.','Find Crank in Booty Bay.','What do you want?','So the rumors are true. Gilneas is once again open for business.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2700,450,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61277, 40969);
replace into creature_involvedrelation	(id, quest) values ( 2498, 40969);
update quest_template set requiredraces = 589		 where entry = 40969;

-- Crystalvein Mine Cleanup
delete from quest_template where entry = 40970;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40969,40970,2,33,42,35,0,0,'Crystalvein Mine Cleanup','Ah, Todd, good ol\' blacksmith, that one. He sure had a knack for working with those metals. I\'ll give him that. But here\'s the thing, I can\'t exactly fulfill his request for that ore he\'s after. It\'s a bit of a sticky situation, ya see.$B$BThe mine he\'s talkin\' about, the Crystalvein Mine, got itself overrun by those pesky basilisks. Nasty creatures, they are. Just one gaze from \'em, and poof, you\'re a crystal! So, understandably, we goblins have been keepin\' our distance.$B$BBut hey, if you\'re feelin\' either foolish or brave, and you\'re up for clearin\' out the basilisks from that cave, well, we might just have ourselves a deal. You do the dirty work, and any ore you find there is yours to keep. Fair and square. Mind ya, it\'s gotta fit in your backpack, though. Can\'t have ya luggin\' around mountains of the stuff.$B$BSo, what do ya say, adventurer? You up for the challenge? If so, head northeast from here, and you\'ll find the Crystalvein Mine.','Gather 10 Crystalvein Ore and slay 6 Trashtail Basilisks and 6 Ironjaw Basilisks for Crank Fizzlebub in Booty Bay.','Well, I told you already. You need to clear the mine.','Whoa there, pal! I gotta say, I didn\'t expect you to make it outta there in one piece. You\'re a real survivor, I\'ll give ya that! So, you\'re tellin\' me the mine\'s clear of them nasty basilisks? Well, ain\'t that splendid news! I\'ll have a mining team dispatched there pronto!$B$BNow, about that ore you managed to snag, I\'ll need ya to hand it over. Don\'t worry, I\'ll package it all up real nice and attach a fancy note for Todd. Long time no see, right? I\'m sure he\'ll be thrilled to get a package from me.',61606,10,0,0,0,0,0,0, 1550,6,1551,6,0,0,0,0, 0,0, 4000,24000,4000,21,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61277, 40970);
replace into creature_involvedrelation	(id, quest) values ( 2498, 40970);
update quest_template set requiredraces = 589		 where entry = 40970;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61606,6614,'Crystalvein Ore',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(1551,61606,-5,0,1,1,0),
(1550,61606,-5,0,1,1,0);

REPLACE INTO gameobject_template VALUES
(2020034, 3, 2975, 'Crystalvein', 0, 4, 1, 43, 2020034, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020034,61606,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 25, spawntimesecsmax = 25 where ID = 2020034;

-- Crystalvein Delivery
delete from quest_template where entry = 40971;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40970,40971,2,5179,42,35,0,0,'Crystalvein Delivery','Alright, my pal, here\'s the package you\'ve been waiting for. Crystalvein, all neatly packaged and ready for delivery. Take good care of it now, ya hear?$B$BNow, when you see Todd, pass along my message. Tell him to swing by once he\'s done with all this Rebellion business and whatnot. We\'ll have a good ol\' chat and catch up on things. Wish him the best of luck from me, will ya?$B$BAs for me. Well, I have got business to attend to. There\'s money to be made and deals to be struck.','Deliver the Crystalvein Shipment to Todd Bolder at Ravenshire in Gilneas.','Yes?','I can hardly believe my own eyes! Crystalvein ore, just as I remembered it. This is a treasure indeed. I can already envision the magnificent weapons I\'ll forge from this exquisite batch.$B$BLarry! Fire up the forge, lad! It\'s time to showcase the true artistry that can be achieved with these precious ores. We shall create masterpieces that will leave tongues wagging in awe and envy.$B$BOh, where are my manners? I apologize. Allow me to express my profound gratitude for your efforts. Here, accept this piece as a token of my appreciation. It\'s one of my finest works, crafted with the utmost care and skill. May it serve you well, my friend, as a testament to our collaboration.$B$BNow, let\'s get to work, shall we?',61607,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61607,1, 0,12000,2000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61608,1,61609,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 2498, 40971);
replace into creature_involvedrelation	(id, quest) values (61277, 40971);
update quest_template set requiredraces = 589		 where entry = 40971;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61607,11449,'Crystalvein Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into item_template values
 ('61608', '4', '3', 'Crystaltouched Breastplate', '', '15731', '2', '0', '1', '47844', '11961', '5', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '12', '4', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '258', '0', '0', '0',
 '0', '10', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '100', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61609', '4', '3', 'Crystalforged Leggings', '', '4339', '2', '0', '1', '51732', '12933', '7', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '5', '8',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '231', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '75', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- The Rebellion
delete from quest_template where entry = 40972;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40972,2,5179,40,35,0,0,'The Rebellion','Welcome to the remnants of Gilneas. $B$BWhat lies before your eyes may not match the grandeur and splendor you envisioned. This once-mighty bastion of human power now stands as a testament to the relentless march of time and the ravages of war. We, too, have succumbed to the fate that has befallen much of the world.$B$BTake a moment and lend an ear to the tale of an old knight.','Listen to the tale of Darius Ravenwood.','The situation in Gilneas is dire.','So now you know. I left many details out, but there\'s no time for chatting. We must act now, with the newfound strength of our allies.',0,0,0,0,0,0,0,0, 60046,1,0,0,0,0,0,0, 0,0, 0,2700,450,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Listen to the tale of Darius Ravenwood');

replace into creature_questrelation		(id, quest) values (61259, 40972);
replace into creature_involvedrelation	(id, quest) values (61259, 40972);
update quest_template set requiredraces = 589		 where entry = 40972;

REPLACE INTO creature_template VALUES
(60046, 328, 0, 0, 0, 0, 'quest_40972_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into broadcast_text (entry, Male_Text) values (30123, 'I\'ll try to keep things short.$B$BGenn Greymane sought to shield Gilneas from the troubles that plagued the rest of the world. He firmly believed that we possessed the strength and resilience to stand alone, that the outside world brought nothing but strife. And for a time, it seemed he was right. Soon after the completion of the formidable Greymane Wall, the dread Scourge descended upon the North, leaving only desolation and ruins in its wake.$B$BYet, our isolated existence brought forth its own challenges. Scarce food and crippling trade restrictions plagued us. Scourge and worgen managed to find its way to our kingdom. Despite these hardships, the king remained steadfast, stubbornly refusing to open our gates and growing increasingly detached from his nobles and subjects.');
replace into npc_text (ID, BroadcastTextID0) values (30123, 30123);

replace into broadcast_text (entry, Male_Text) values (30124, 'He grew increasingly isolated, ensconced within the confines of his own family. And then came the Harlows, Alteraci scum who had found refuge within our walls. Whispering poison into Genn\'s ears, they further isolated him from his loyal nobles and common folk.$B$BTo preserve what scarce resources remained, many nobles, including myself, had our lands and possessions seized for redistribution. It was a painful blow, for I had been a vocal opponent of the king\'s decision. Stripped of my holdings, I was left with nothing but the fire of righteous indignation burning within me.$B$BThroughout this turmoil, Genn\'s unwavering love for his wife, Mia, provided a semblance of sanity. At her behest, he emerged from seclusion, organizing a public event to distribute food and clothing to the Gilnean populace. Regrettably, the meager resources quickly dwindled, leading to a confrontation between the common folk and the guards. In the ensuing chaos, Mia tragically lost her life.');
replace into npc_text (ID, BroadcastTextID0) values (30124, 30124);

replace into broadcast_text (entry, Male_Text) values (30125, 'Devastated, Genn withdrew to the confines of his mansion, retreating from public view. The Harlow family seized power as regents, ushering in a reign of tyranny over Gilneas. Falsely accused of Mia\'s murder, I had no choice but to rally the support of the commonfolk and rise up against the oppressive regime.$B$BIn my heart, I know Genn is no longer among the living. Even in his compromised state, he would never have allowed such injustices to prevail. As we forge ahead in this rebellion, we strive to restore justice and bring about the liberation of Gilneas from the clutches of tyranny.');
replace into npc_text (ID, BroadcastTextID0) values (30125, 30125);

-- Mass Harmonization
delete from quest_template where entry = 40973;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40973,2,616,60,55,0,1,'Mass Harmonization','We must all do our part here in Hyjal, and my part is to harmonize Small Dream Shards into Bright Dream Shards. The harmonization process makes the shards much more potent in regards to their magical properties. If you require a large amount of Bright Dream Shards, simply let me know.$B$BI will require fifteen in order to create five Bright Dream Shards.','Collect 15 Small Dream Shards for Lantho Talonmoon at Nordanaar in Hyjal.','So you\'ve returned, do you have those shards ready for me?','Excellent work, the harmonization process does not take me long, especially with all this practice, if you find any more, come and let me know.',61198,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,450,0,0,0,0,0,0,0,0,0,0,0, 61199,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61325, 40973);
replace into creature_involvedrelation	(id, quest) values (61325, 40973);

-- Item 61559, change display ID to 31205.
update item_template set display_id = 31205 where entry = 61559;
-- Item Book: Smelt Dreamsteel, change spell to 57120.
update item_template set spellid_1 = 57120 where entry = 61226;
-- Item Book: Craft Dreamhide change spell to 57124.
update item_template set spellid_1 = 57124 where entry = 61228;
-- Item Powerful Smelling Salts (Entry 8546) set to bind on pickup, add cooldown to spell and set to 7200000 miliseconds. MAKE SURE THIS ITEM IS CONSUMED ON USE AND HAS -1 CHARGES.
update item_template set bonding = 1, spellcooldown_1 = 7200, spellcharges_1 = -1 where entry = 61228;