-- Item "Font of Arcana" (entry 61484), needs to have its drop chance increased to 72% and must drop from Azurescale Manaweaver (Entry 60910).
update creature_template set loot_id = 60910 where entry = 60910;
update creature_loot_template set ChanceOrQuestChance = -72 where entry = 60910 and item = 61484;

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20273, 0, 0, 0, 0);
-- Guard Captain Marson, display ID 20273, faction 14, level 45, humanoid, scale 1, weapon 61074
REPLACE INTO creature_template VALUES
(61543, 20273, 0, 0, 0, 0, 'Guard Captain Marson', NULL, 0, 45, 45, 3120, 3120, 0, 0, 3100, 14, 0, 1, 1.14714, 1, 18, 5, 0, 0, 1, 97, 119, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20403; set @weapon_1 = 61074; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61543;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Wolf Amongst Sheep
delete from quest_template where entry = 40948;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40948,2,5179,42,35,0,0,'Wolf Amongst Sheep','Tell me: what is the essence of a nation, the heart of a country, the will of a people? Is it the lands themselves? The rule of law? The economy? No, undoubtedly, it\'s none of these things. The essence of a nation is found in its tradition, history, legacy, determination, willpower.$B$BWe must steel ourselves for the worst, as the entirety of our people wishes to free our king and place him on the throne once more, But what happens if he is not capable of doing so? After the death of the queen, Genn thought it best to send his children away. We only heard about it months later, but it seems that both Liam and Tess are now prisoners of the Harlows.$B$BWe believe Liam is captive in the Dryrock Mine deep under Gilneas City to the west. He is the heir of this country, and so he must bleed with his people in order to liberate it.','Find Liam Greymane.','Yes?','I have not been forgotten, it seems.$B$BTo you I say: well met, one from beyond the wall. I have imagined this encounter several times in my head only to be at a loss for words now. You are here to free me, no?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,6600,1100,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61257, 40948);
replace into creature_involvedrelation	(id, quest) values (61457, 40948);

-- One Chain at a Time
delete from quest_template where entry = 40949;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40948,40949,2,5179,42,35,0,0,'One Chain at a Time','It\'s ironic. I was about to say that I haven\'t been able to see the sun in so long, yet I grinned realising I have yet to see an actual Sunrise in Gilneas anyway, with all its fog and rain.$B$BI must be free of these chains. That harlot, Celia, convinced Father to send us away to Kul Tiras only to bind Tess and I, hiding us away from the world! I helped Tess escape, but they tossed me into this place.$B$BAid me, so that I may find my way towards my people, and so I may help them against the scum that took over my city and poisoned the mind of my father.$B$BGuard Captain Marson, that\'s the name of the brute that holds the key to my freedom. You should be able to find him around here. Perhaps lingering outside in the fresh air.','Find and slay Guard Captain Marsow, gather the Rust-Covered Key and and free Liam.','I wish we had the time to spare a few more words but we really must hurry.','He did not deserve the mercy of a quick death.$B$B<Liam chuckles.>$B$BPerhaps the weeks spent in this hole are making me question my integrity as a follower of the Light. I have brought shame to my teacher.',61494,1,0,0,0,0,0,0, 61543,1,0,0,0,0,0,0, 0,0, 0,22500,3750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61457, 40949);
replace into creature_involvedrelation	(id, quest) values (61457, 40949);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61494,8951,'Rust-Covered Key',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61543,61494,-100,0,1,1,0);

-- On Legend's Trail
delete from quest_template where entry = 40950;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40949,40950,2,5179,42,35,0,0,'On Legend\'s Trail','You have my thanks. While it would be best for us to return to Ravenshire and report to Darius, I must have you do something else. You must follow my sister\'s footsteps.$B$BBefore she managed to escape, she spoke of Mother\'s stories, though they were nothing more than fairy tales. Alas, it seems that Tess was strongly convinced of the Wolf-Serpent and its followers named the Pellars. She left for the middle of the land, in search of a legend, which is why you must do the same. Find my sister and deliver her safely to Ravenshire.$B$BWe shall meet there once more, since lingering here is the last thing on my mind.$B$BGo with the Light, friend, may it shine brightest when you most need it.','Find Tess Greymane beneath the great tree at the center of Gilneas.','Yes?','A foreigner, here of all places? Liam sent you? Ah, Then my brother is safe. We were just about ready to save him ourselves.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,6900,1150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61457, 40950);
replace into creature_involvedrelation	(id, quest) values (61448, 40950);

update creature_template set phase_quest_id = 40950 where entry = 61458;

-- Back to Ravenshire
delete from quest_template where entry = 40951;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40950,40951,2,5179,42,35,0,0,'Back to Ravenshire','I will remain here with the Pellars. Demetreus has acknowledged my will to learn, and I am prepared to learn their ways before the final battle. As much as possible, that is. There will be a final battle $N, you know. Mark my words, it has been foreseen. With them at our side, we are sure to hold an advantage, even though Demetreus is sure I will play little part in taking down the evil that has corrupted this land.$B$BIf anything he believes that YOU, $N, will play a deciding role in this. They speak in riddles and are very vague, but they are dependable. Find my brother in the town of Ravenshire to the southeast and let him be worry-free.$B$BTell him this: the mane grows grey with wisdom when the long dark sets. He will know what it means.','Report to Liam Greymane at Ravenshire in Gilneas.','Yes?','My little sister... a gift from the Light. $B$B<Liam chuckles and nods.>$B$BMay we find wisdom in our own actions then?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3900,650,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61448, 40951);
replace into creature_involvedrelation	(id, quest) values (61458, 40951);

-- Dim Light in the Darkness
delete from quest_template where entry = 40952;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40951,40952,2,5179,42,35,0,0,'Dim Light in the Darkness','While you were searching for Tess, I was trying to make my way back to Ravenshire. I dealt with some traitors that sold our country to the Harlows, first, though. With the Light at my side, I wished to rest among the dead and pay my respects to Mother\'s grave.$B$BAs I reached the crypt, I saw a rugged, unfamiliar face. One that showed only aggression to me. Growling like an animal. To say the least, I was not well received, yet they\'ve offered me shelter. They are a strange bunch, led by a stoic, violent lady. Her name is Moranna, she is leading a group of four, and they claim to be a cult that researches immortality. I figure that she might be of aid to us. Reach her at the Hollow Web Cemetery to the west.','Find Moranna Rosenberg at the Hollow Web Cemetary in Gilneas.','Yes?','So, it was the prince that visited us on his way to Ravenshire? I didn\'t take him for royalty.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,650,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61458, 40952);
replace into creature_involvedrelation	(id, quest) values (61260, 40952);

-- Vilest of Men
delete from quest_template where entry = 40953;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40952,40953,2,5179,42,35,0,0,'Vilest of Men','It\'s clear to me that Prince Greymane seeks aid from my research group. I am afraid he must\'ve misunderstood us, however, as we do not intend to reach immortality. Rather, we seek power and healthiness beyond what the human body is capable of. I assume you\'ve already figured out our little secret. If not, let me put this as bluntly as possible: we have accepted the worgen curse.$B$BWe are more than willing to aid Liam in reclaiming his city and his lands; our alchemical knowledge, our teeth, and our latent power are all at his disposal.$B$BWe have yet to have full control of our abilities, but I think I have discovered a way to aid in that regard. Travel back to the lumber mill, kill as many of the traitorous ones as possible, drain their blood, and bring it back to me. It will play an important part in our research.','Collect 20 Vials of Blood from the Greymane loyalists around Dryrock Valley for Moranna Rosenberg at the Hollow Web Cemetary in Gilneas.','You cannot even begin to understand how much power resides in the blood.','I was skeptical of your aid, but it seems that I have doubted you for naught. Well done.',61495,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,23700,3950,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61260, 40953);
replace into creature_involvedrelation	(id, quest) values (61260, 40953);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61495,15741,'Vials of Blood',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,3);

update creature_template set loot_id = 61393 where entry = 61393;
replace into creature_loot_template values
(61393,61495,-87,0,1,1,0),
(61394,61495,-87,0,1,1,0),
(61395,61495,-87,0,1,1,0),
(61396,61495,-87,0,1,1,0);

-- A Crossroads Deal
delete from quest_template where entry = 40954;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40953,40954,2,5179,42,35,0,0,'A Crossroads Deal','Perhaps the Prince will feel he has gained more than he bargained for. But I have seen a fire in his eyes, one that you should remind him of. In dire times, you must not be half-hearted about your actions. There is no greater evil than that which hurts those that you care for.B$B$I would rather abstain from calling myself a necessary evil, but perhaps that\'s how others will perceive us. Anyway. Report to your Prince. Though this may feel like a deal struck with one less than savory, assure him know that my loyalty is towards the common folk of the land that have long been suffering.','Return to Liam Greymane at Ravenshire in Gilneas.','Yes?','Darius is a strongheaded man. He will understand the necessity of this alliance.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2100,350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61260, 40954);
replace into creature_involvedrelation	(id, quest) values (61458, 40954);

-- Assaulting Freyshear Keep
delete from quest_template where entry = 40955;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40954,40955,2,5179,42,35,0,0,'Assaulting Freyshear Keep','The threat of Freyshear Keep is a constant pressure upon us here in Ravenshire. It holds great strategical importance, and can deny all of our incoming shipments into the town.$B$BFor us to take a final stand against the city, we need this place destroyed! To the north, a bridge crosses onto the island where Freyshear Keep is located. Go there, and slay the defenders along with Cannoneer Rileson, the one who commands their large guns.$B$BWhen this task is complete, give the news to Lord Ravenwood. He will oversee our final operation.','Slay 8 Greymane Preservers and Cannoneer Rileson at Freyshear Keep and then report to Lord Darius Ravenwood at Ravenshire in Gilneas.','Has the operation been complete?','Your actions have severely weakened the abilities of the Greymane in the eastern parts of the region. I must give my thanks for your work.$B$BNow we can focus our attentions on the final matters.',0,0,0,0,0,0,0,0, 61363,8,61398,1,0,0,0,0, 0,0, 0,23100,3850,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61458, 40955);
replace into creature_involvedrelation	(id, quest) values (61259, 40955);

-- The Fall and Rise of Greymane
delete from quest_template where entry = 40956;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40955,40956,2,5180,42,35,0,0,'The Fall and Rise of Greymane','The entirety of Gilneas stands at our side! The tyranny of the royalists can no longer be allowed to stand! If this nation is to ever recover from the darkness, then we must hold fast, and strike even faster still!$B$BThe Greymane Crown must be recovered if our dream is ever to be realized. Enter Gilneas City. Fight your way through his most loyal soldiers. End the Harlows, and reclaim the Greymane birthright. A new king and a new beginning awaits us, $N.','\'Save\' Genn, and recover the Greymane Crown for Lord Darius Ravenwood at Ravenshire in Gilneas.','Be brave adventurer, the city itself has struggled through civil strife as we have.','The end of an era is upon us. A darkness has been lifted on this day, and with it, a new hope emerges from the clouds. A ray of light for all to see. Liam Greymane shall be named king and his reign shall bring prosperity to the people who have suffered for so long!$B$B<His eyes shine with hope, for perhaps the first time in a generation.>',61496,1,0,0,0,0,0,0, 61418,1,0,0,0,0,0,0, 0,0, 0,44400,7400,0,0,0,0,0,0,0,0,0,0,0, 61369,1,0,0,0,0,0,0, 61497,1,61498,1,61499,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61259, 40956);
replace into creature_involvedrelation	(id, quest) values (61259, 40956);

update quest_template set type = 81 where entry = 40956;

update creature_template set script_name = 'npc_lord_darius_ravenwood' where entry = 61259;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61496,2528,'The Greymane Crown',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,1);

replace into creature_loot_template values
(61418,61496,-100,0,1,1,0);

replace into item_template values
 ('61497', '4', '3', 'Ravenwood Belt', '', '26210', '3', '0', '1', '27128', '6782', '6', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '16', '4', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '158', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '40', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61498', '4', '0', 'Signet of Gilneas', '', '23728', '3', '0', '1', '16872', '4218', '11', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61499', '4', '2', 'Ravenshire Gloves', '', '17183', '3', '0', '1', '23952', '5988', '10', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '11', '6', '7',
 '7', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '86', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '35', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

