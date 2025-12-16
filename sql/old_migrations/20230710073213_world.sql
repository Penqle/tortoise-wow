-- The Wildshaper
delete from quest_template where entry = 41016;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41016,2,2557,60,55,0,0,'The Wildshaper','The Wildshaper, a title given to him by the druids in Hyjal. Alzzin is what they go by now. A twisted, corrupted form of what they once were. Standing opposed to all beliefs they held before corruption.$B$B\'Alzzin\' was once a friend of mine, and now seeks nothing but the total corruption of Feralas. I feel it is my duty to put an end to his evil schemes once and for all.$B$BYou can find him lurking deep within Dire Maul with his satyr kin. Slay him, and bring me his head, only then will I find solace.','Bring the Head of Alzzin the Wildshaper for Arch Druid Dreamwind at Nordanaar in Hyjal.','Has that foul beast been brought to justice?','I could never imagine such a betrayal, it struck me so deep that I do not even wish to recall the memories.$B$BI thank you for putting this traitor to death. Without your interferance I fear what Alzzin may have accomplished. Please, take this, as a gesture of my extreme thanks.',61702,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 11500,46800,7800,0,0,0,0,0,0,0,0,0,0,0, 61199,1,61703,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41016);
replace into creature_involvedrelation	(id, quest) values (61512, 41016);
update quest_template set type = 81 where entry = 41016;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61702,5981,'Head of Alzzin the Wildshaper',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(11492,61702,-100,0,1,1,0);

replace into item_template values
 ('61703', '4', '0', 'Talisman of the Dreamshaper', '', '32073', '3', '0', '1', '48996', '12249', '2', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '9345', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Vilemusk Infiltration
delete from quest_template where entry = 41017;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41017,2,616,60,55,0,0,'Vilemusk Infiltration','Nordrassil Glade has been a place of tranquility for many ages, but already agents of the legion have begun to spread their taint. Satyrs, traitors of a most disgusting kind have been probing at our borders.$B$BThey call themselves the \'Vilemusk\' a name befitting of their illbegotten kin. I demand their presence removed from Hyjal, hunt them, and bring me their hooves as proof of your deeds. Do so, and you shall be rewarded.','Gather thirty Vilemusk Hooves for Arch Druid Dreamwind at Nordanaar in Hyjal.','The satyr were once much like us, and now they stalk from the shadows and undermine our efforts.','You have done well, such a task will not be forgotten. For each satyr that has fallen there shall be one less for when the time truly comes.$B$BThis battle for Hyjal is dependant on such heroic actions. Take this Bright Dream Shard, as thanks from us.',61704,30,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,42600,7100,0,0,0,0,0,0,0,0,0,0,0, 61199,1,61705,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41017);
replace into creature_involvedrelation	(id, quest) values (61512, 41017);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61704,7295,'Vilemusk Hoof',12,1,2048,1,-1,-1,1,30,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61338,61704,-88,0,1,1,0),
(61339,61704,-88,0,1,1,0),
(61340,61704,-88,0,1,1,0),
(61341,61704,-88,0,1,1,0);

replace into item_template values
 ('61705', '4', '0', 'Dreamwind Sigil', '', '66245', '2', '0', '1', '35620', '8905', '11', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12',
 '0', '12', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

-- Corrupted Dream Shards
delete from quest_template where entry = 41018;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41018,2,616,60,55,0,1,'Corrupted Dream Shards','Dream Shards are a resonation of magical energy from the Emerald Dream made manifest here in Hyjal. They contain a very powerful energy that, when manipulated, can be used for darker purposes. The Burning Legion have been collecting them and corrupting them for their nefarious purposes.$B$BHunt down the demons still present in Hyjal, and collect these Corrupt Dream Shards, bring them to me so that they can be restored.','Gather 5 Corrupt Dream Shards for Arch Druid Dreamwind at Nordanaar in Hyjal.','Have you found these corrupt shards?','Dark magic lingers deep in these shards, it is good that you have recovered them before it was too late.$B$BTake this, as thanks for recovering these from the brink of destruction. If you find any more, bring them to me.',61706,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41018);
replace into creature_involvedrelation	(id, quest) values (61512, 41018);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61706,1364,'Corrupt Dream Shard',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61338,61706,-24,0,1,1,0),
(61339,61706,-24,0,1,1,0),
(61340,61706,-24,0,1,1,0),
(61341,61706,-24,0,1,1,0),
(61354,61706,-44,0,1,1,0),
(61349,61706,-44,0,1,1,0),
(61350,61706,-44,0,1,1,0),
(61352,61706,-89,0,1,1,0),
(61353,61706,-89,0,1,1,0);

-- Shadeflayer Tribal Bracelets
delete from quest_template where entry = 41019;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41019,2,616,60,55,0,1,'Shadeflayer Tribal Bracelets','The Shadeflayer trolls have taken a stance of hostility towards us in Hyjal. They were once called the Shadowtooth Tribe, and valiantly fought alongside us against the Burning Legion.$B$BSuch times are now long gone, as corruption has taken hold of even those we held as allies. I task you to travel to Zul\'Hatha where they call home to the west, slay them, and procure 10 Shadeflayer Tribal Bracelets. Bring these bracelets to me and you will be rewarded.','Gather 10 Shadeflayer Tribal Bracelets at Nordanaar in Hyjal.','Do not doubt the will of our enemies. They are united to destroy us.','You have done well. Such actions ensure our safety here in Nordanaar. Nordrassil Glade must be kept as a safe haven, not threatened by the evil whims of maddened trolls.$B$BTake this Small Dream Shard, as thanks from us here.',61707,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61520, 41019);
replace into creature_involvedrelation	(id, quest) values (61520, 41019);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61707,3600,'Shadeflayer Tribal Bracelet',12,1,2048,1,-1,-1,55,20,-1,-1,-1,-1,0,'',0,8);

update item_template set buy_price = 600, sell_price = 150 where entry = 61707;

replace into creature_loot_template values
(61356,61707,-10.4,0,1,1,0),
(61357,61707,-10.4,0,1,1,0),
(61358,61707,-10.4,0,1,1,0),
(61359,61707,-10.4,0,1,1,0),
(61367,61707,-6.3,0,1,1,0),
(61533,61707,-100,0,1,1,0);

-- Lord Xanvarak
delete from quest_template where entry = 41020;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41016,41020,2,616,60,55,0,0,'Lord Xanvarak','During the Third War, the Burning Legion tested their strength against our might, and were defeated by the armies that gathered before Nordrassil. Again they come, gathering in preparation for nefarious deeds.$B$BThis time we have no mighty armies to defend us, or the wisdom of Malfurion to guide us. The defense of Hyjal relies on us, the brave remaining few, to be vigilant against evil.$B$BI ask you to challenge the might of Lord Xanvarak. The leader of the Burning Legion here in Hyjal. He has begun to assemble a mighty host of demonic soldiers in Bleakhollow Crater, just outside of Nordrassil Glade to the west. Bring me his heart, and put an end to our worries.','Bring the Heart of Xanvarak to Arch Druid Dreamwind in Nordanaar.','The power of the Burning Legion should not be taken lightly. Bring your own host of would-be adventurers, or mercenaries to challenge Xanvarak\'s strength.','The Heart of Xanvarak, such foul power can be felt emitting from his life-blood. Your efforts in defending Hyjal have been paramount. With Xanvarak destroyed, it will be some time before the demons can rally behind a new leader.$B$BYou have brought us peace, for however long that may last. Such an achievement is worthy of a reward most sacred.',61707,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,48600,8100,0,0,0,0,0,0,0,0,0,0,0, 61199,2,0,0,0,0,0,0, 61708,1,61709,1,61710,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41020);
replace into creature_involvedrelation	(id, quest) values (61512, 41020);
update quest_template set type = 1 where entry = 41020;

update quest_template set exclusivegroup = -41016 where entry in (41016,41017);

update creature_template set script_name = 'npc_arch_druid_dreamwind' where entry = 61512;

replace into item_template values
 ('61708', '4', '2', 'Dreamwind Spaulders', '', '29928', '3', '0', '1', '93124', '23281', '3', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131', '0', '0', '0',
 '0', '0', '0', '15714', '1', '0', '0', '-1', '0', '-1', '21618', '1', '0', '0', '-1', '0', '-1', '7694', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61709', '4', '0', 'Windtalker Cape', '', '29681', '3', '0', '1', '70820', '17705', '16', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '3', '8',
 '5', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '10',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61710', '4', '6', 'Defender of Nordrassil', '', '20873', '3', '0', '1', '153164', '38291', '14', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '5', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '2289', '0', '0', '5',
 '0', '0', '0', '9345', '1', '0', '0', '-1', '0', '-1', '21509', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '4', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Culling Wildlife
delete from quest_template where entry = 41021;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41021,2,616,60,55,0,0,'Culling Wildlife','The effects of the Third War are still present in Hyjal. Demonic corruption lingers upon the land, and has touched the wildlife of the region, driving it into madness. There is still hope, however, if we can conserve the younger generations and remove the corruption of their kind, there is still a chance for the majestic animals native here.$B$BWe must act as conservationists for the better of nature. Bring me ten Great Beaks from the Greathorn Owls, and ten Misthoof Hide from the Misthoof Stags, for your actions I will reward you with a Small Dream Shard.','Gather 10 Great Beaks, and 10 Misthoof Hide for Naesanna Moongrace at Nordanaar in Hyjal.','Has progress been made?','Such grim tasks are required for the betterment of nature in Hyjal. If we do not act, the animals in Hyjal will be reduced to aggressive and hostile beasts, perhaps even slaves to the legion.$B$BTake this Dream Shard, as thanks on my behalf.',61711,10,61712,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61355, 41021);
replace into creature_involvedrelation	(id, quest) values (61355, 41021);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61711,1294,'Great Beak',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3),
(61712,1495,'Misthoof Hide',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61336,61711,-68,0,1,1,0),
(61337,61711,-68,0,1,1,0),
(61332,61712,-68,0,1,1,0),
(61333,61712,-68,0,1,1,0);

-- Manifestations of Nightmare
delete from quest_template where entry = 41022;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41022,2,616,60,55,0,0,'Manifestations of Nightmare','All around Hyjal, manifestations of corruption taking place within the Emerald Dream are appearing. The green sludges taint the land and actively threaten our way of life. We need to combat this hazard as we would demons of the Burning Legion.$B$BI required you collect forty Enchanted Sludge as proof of your deeds. Do this, and I shall make sure you are rewarded well.','Gather 40 Enchanted Sludge from Oozes for Farana Leafblade at Nordanaar in Hyjal.','Be careful, these monstrosities have no value for life.','You have done well, the lands are safer thanks to your efforts. Though I still have many questions about where these creatures have come from.',61713,40,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3500,39600,6600,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61562, 41022);
replace into creature_involvedrelation	(id, quest) values (61562, 41022);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61713,1507,'Enchanted Sludge',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61334,61713,-100,0,1,1,0),
(61335,61713,-100,0,1,1,0);

-- Sample for Glanthas
delete from quest_template where entry = 41023;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41022,41023,2,616,60,55,0,0,'Sample for Glanthas','I have prepared a sample of the Enchanted Sludge you have gathered for me. I request that you bring it to Glanthas the Ancient at Nordanaar.$B$BLast I heard, Glanthas and a druid were working together to find the root cause of something similar. Perhaps this sample of sludge can offer them both assistance.','Bring the Sludge Sample to Glanthas the Ancient in Nordanaar.','Yes, can I help you?','Farana Leafblade has sent you? Such a fine warrior, she is as dedicated to this land as I am.$B$B<Glanthas takes the sample, studying it carefully.>$B$BSuch a foul material, contaminated with magical energies.',61714,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61714,1, 0,0,600,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61562, 41023);
replace into creature_involvedrelation	(id, quest) values (61528, 41023);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61714,1507,'Sludge Sample',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

-- Studying Manifestations
delete from quest_template where entry = 41024;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41023,41024,2,616,60,55,0,0,'Studying Manifestations','A druid named Canos Clearwood tasked himself with the inquiry into such monstrosities within Azshara some years ago. His research, however, has led him on a trip to the once human realm of Eastern Plaguelands.$B$BFrom what I hear, he is currently investigating there to find a link between the sludge-like monsters.$B$BBring him this sample, and perhaps you may both learn what is causing this new phenomenon here in Hyjal.','Bring the Sludge Sample to Canos Clearwood in Eastern Plaguelands.','Can I assist you?','Glanthas has sent you to find me?$B$B<Canos takes a moment, looking over the sludge.>$B$BIt would appear some sort of magical properties remain in this sludge, but I take it Glanthas has already gleamed this information.',61714,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61714,1, 0,0,600,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61528, 41024);
replace into creature_involvedrelation	(id, quest) values (61576, 41024);

-- Manifestation Similarities
delete from quest_template where entry = 41025;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41024,41025,2,616,60,55,0,0,'Manifestation Similarities','My research in Azshara has yielded interesting information, though I still need to conduct research here in the Eastern Plaguelands. I have been attempting to find a link between magic and the Oozes themselves, but so far it would appear I have no luck. I have come to the conclusion that these creatures have been here for quite a while, and thus their magical potency has diminished.$B$BI ask of you to find an Imbued Sludge, one that contains a trace of magical energy. You can find the monstrosities near Light\'s Hope Chapel and Corin\'s Crossing here in the Plaguelands.','Gather an Imbued Sludge from the Oozes in Eastern Plaguelands for Canos Clearwood near Lake Mereldar.','I have been searching for quite some time to find a magical linking. Maybe you will have better luck than I.','A trace of magic.$B$B<A sigh escapes Canos.>$B$BI was beginning to doubt myself.',61715,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,40800,6800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61576, 41025);
replace into creature_involvedrelation	(id, quest) values (61576, 41025);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61715,2797,'Imbued Sludge',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(8606,61715,-6.1,0,1,1,0),
(8607,61715,-6.1,0,1,1,0);

-- Report to Dreamwind
delete from quest_template where entry = 41026;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41025,41026,2,616,60,55,0,0,'Report to Dreamwind','It would appear that the Oozes are linked to surges of intense and dark magical powers. Lingering as an after effect to great magical energy itself. Perhaps this is a natural occurance, or something much deeper.$B$BIn truth, I cannot be certain if my evidence is correct, or if I am looking in the right area. Regardless, I have prepared a report for Arch Druid Dreamwind in Hyjal. It should explain everything I have come to find.$B$BI must thank you for your assistance, without you, I would still be digging through oozes.','','Can I help you?','My, Canos has put in an impressive amount of work in his research. It is not conclusive, but I am sure he is on the right footing. A magical feedback, or remnant certainly is an interesting theory, and one that will need to be looked into further.$B$BYour assistance in this matter has been emphasized by Glanthas himself, one I hold with the deepest of respects. Take this, as a token of our thanks here in Hyjal.',61716,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61716,1, 0,15000,2500,0,0,0,0,0,0,0,0,0,0,0, 61199,1,61717,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61576, 41026);
replace into creature_involvedrelation	(id, quest) values (61512, 41026);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61716,2797,'Imbued Sludge',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

replace into item_template values
 ('61717', '2', '7', 'Groveslicer Glaive', '', '25507', '3', '0', '1', '256432', '64108', '21', '-1', '-1', '64',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '88', '133', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
-- Annesastrasza, <Red Dragonflight>, display ID 20428, faction 35, level 63 elite, dragonkin, scale 1.5, quest/gossip flags, gossip text : "Greetings $r. I am Annesastrasza of the Red Dragonflight. I have been sent here to protect the world tree from those who would abuse its power. Although a lot of the energy from Nordrassil was expended when Archimonde was defeated, more still remains.$B$BRemnants of Archimonde\'s forces continue to intrude upon the mountain as they plot to capture the tree. My people are the protectors of Life, and the fall of the world tree to demons would be catastrophic for all, it might even bring the Legion back. Should you learn anything pertaining to this matter, let me know."
-- Shadowhunter Trak\'nal, <Shadowtooth Tribe>, display ID 20429, faction 35, level 61, humanoid, scale 1, quest/gossip flags, gossip text : "I be Trak\'nal, Shadowhunter of the Shadowtooth tribe. My duty to protect our ancestral home remains in spite of these difficult times. These demons will fall by my blade, as will anyone endangering the mountain. You be delaying the killing. What do you want?"
-- Melanastrasza, <Red Dragonflight>, display ID 12821, faction 35, level 58 ,dragonkin, scale 1, quest/gossip flags, gossip text : "Hello! Please be quiet, it is important that the demons don\'t take note of me. It is my duty to keep an eye on them. Can I help you somehow?"
-- Faelindella, display ID 876, faction 1684, level 60, humanoid, scale 1, quest/gossip flags, gossip text : "Hi! You seem very capable $r! Welcome to Hyjal! I wish the mountain was in a better state, but we are doing our best. Show your respect while here, alright? It\'d be inconvenient if I had to kill you."
-- Kiri Starstalker, display ID 18102, faction 35, level 61, humanoid, scale 1, quest/gossip flags, gossip text : "The wardens are a dying order, one that has seen better days. That, however, will not stop me from doing my duty. These cretins encroach and defile our sacred mountain. The punishment for this transgression is death, and I intend to duly deliver it, with or without help. Now, what do you want?"
-- Nordrassil Nymph, display ID 876, faction 1684, level 60, humanoid, scale 1 
-- Commander Anashya Starfall, display ID 7275, faction 79, level 55 elite. humanoid, scale 1, quest/gossip flags, weapon 17382, gossip text:”An outsider approaches.$B$BWelcome to Thalanaar. I am Commander Anashya Starfall.$B$BI have been banished by my own General for what she considers insubordination, though she clearly underestimated the loyalty of my squad. Now we find ourselves here, cast aside by our own leaders who have lost sight of what truly matters - the safety of our people and the preservation of our ancestors' legacy.$B$BFor millennia, the Night Elves have held dominion over these lands, and we shall continue to do so until the end of time. Do I make myself clear?$B$BExcellent. Let us proceed.”
-- Larodar Wildwhisper, <Druid of the Talon>, display ID 20432, faction 80, level 50, humanoid, scale 1, quest/gossip flags, weapon 19566, gossip text:”Feralas, a land of unrivaled beauty, remains as one of the last sanctuaries of untamed nature in the southern Kalimdor. Come, immerse yourself in its magnificence and sense the ancient tales of our kin.$B$BAlas, these territories have been abandoned for far too long and have now fallen prey to those who seek to obliterate our heritage and fade it into oblivion.$B$BI have been summoned here to reclaim what rightfully belongs to us and I shall not rest until it is done. Perhaps, fate will guide you to aid me in this noble cause.”
-- Sentinel Glensha, display ID 14615, faction 80, level 50, humanoid, scale 1, quest/gossip flags, weapon 17382, gossip text:”Greetings, $r. I regret that our meeting takes place in such unfavorable conditions. These lands are far from hospitable, and despite what the druids may suggest, I find the melodious bird songs of Ashenvale preferable to the relentless downpours of this untamed jungle or the parched gusts of Thousand Needles.$B$BMight I ask what brings you to this place? If you seek to discuss our current circumstances, I implore you to abstain. This matter concerns the Sentinels exclusively, and it will be addressed by Sentinels alone.”
-- Cenerron, <Feralkin Druid>, display ID 20410, faction 35, level 60, beast, scale 1, quest/gossip flags, gossip text:”No matter how far I retreat from the trappings of civilization, it appears that its grasp is unyielding, relentless in its pursuit.$B$B Speak your mind, and never come back.”
-- Bethelon Wildwhisper, <Druid of the Claw>, display ID 20434, faction 80, level 50, humanoid, scale 1, quest/gossip flags, weapon 6505, gossip text:”Listen well, traveler. My brother may choose to be a pawn in Fandral's game, but I am no puppet of the archdruid. I came to these lands to safeguard my younger kin from any perils that may cross his path, and from the gaze of those Sentinels. Always watching…$B$B<Bethelon chuckles and gives a playful wink to one of the Sentinels nearby, causing her to blush and hastily avert her gaze.>$B$BBut enough about them. Know this, I care not for politics, and to be frank, I am weary of its machinations. My foremost allegiance is to the natural world, and I am its willing servant.”
-- Velos Sharpstrike, display ID 20433, faction 80, level 55, humanoid, scale 1, quest/gossip flags, weapon 13056, gossip text:”Hail, weary traveler. You have ventured far to reach this secluded vale. Though it may appear desolate and in ruins, do not be deceived. This vale was once a place of great importance, a vital stronghold in the defense of our people.$B$BIt is now my solemn duty to restore it to its former glory, to bring new life to these crumbling monuments and to train a new generation of chimaeras to defend the people of Kalimdor.$B$BBut I cannot do it alone.”
REPLACE INTO creature_template VALUES
(61577, 20428, 0, 0, 0, 0, 'Annesastrasza', 'Red Dragonflight', 0, 63, 63, 32033, 32033, 0, 0, 5044, 35, 3, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 906, 1182, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61578, 20429, 0, 0, 0, 0, 'Shadowhunter Trak\'nal', 'Shadowtooth Tribe', 0, 61, 61, 3144, 3144, 0, 0, 4391, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 101, 126, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 136, 182, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61579, 12821, 0, 0, 0, 0, 'Melanastrasza', 'Red Dragonflight', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61580, 876, 0, 0, 0, 0, 'Faelindella', NULL, 0, 60, 60, 3296, 3296, 0, 0, 3075, 1684, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 99, 121, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 120, 162, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61581, 18102, 0, 0, 0, 0, 'Kiri Starstalker', NULL, 0, 61, 61, 3144, 3144, 0, 0, 4391, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 101, 126, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 136, 182, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61582, 876, 0, 0, 0, 0, 'Nordrassil Nymph', NULL, 0, 60, 60, 4120, 4120, 0, 0, 3791, 1684, 0, 1, 1.14286, 1, 18, 5, 40, 2, 1, 107, 131, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61583, 7275, 0, 0, 0, 0, 'Commander Anashya Starfall', NULL, 0, 55, 55, 7842, 7842, 0, 0, 4500, 79, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61584, 20432, 0, 0, 0, 0, 'Larodar Wildwhisper', 'Druid of the Talon', 0, 50, 50, 2990, 2990, 0, 0, 2958, 80, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61585, 14615, 0, 0, 0, 0, 'Sentinel Glensha', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 80, 1, 1, 1.14286, 1, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61586, 20410, 0, 0, 0, 0, 'Cenerron', 'Feralkin Druid', 0, 60, 60, 4120, 4120, 0, 0, 3791, 35, 3, 1, 1.14286, 1, 18, 5, 40, 2, 1, 107, 131, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61587, 20434, 0, 0, 0, 0, 'Bethelon Wildwhisper', 'Druid of the Claw', 0, 60, 60, 4120, 4120, 0, 0, 3791, 80, 3, 1, 1.14286, 1, 18, 5, 40, 2, 1, 107, 131, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61588, 20433, 0, 0, 0, 0, 'Velos Sharpstrike', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 80, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20419; set @weapon_1 = 13056; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61588;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20418; set @weapon_1 = 6505; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61587;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20417; set @weapon_1 = 17382; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61585;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20416; set @weapon_1 = 19566; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61584;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20415; set @weapon_1 = 17382; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61583;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41513; set @magic_number = 61588;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hail, weary traveler. You have ventured far to reach this secluded vale. Though it may appear desolate and in ruins, do not be deceived. This vale was once a place of great importance, a vital stronghold in the defense of our people.$B$BIt is now my solemn duty to restore it to its former glory, to bring new life to these crumbling monuments and to train a new generation of chimaeras to defend the people of Kalimdor.$B$BBut I cannot do it alone.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41512; set @magic_number = 61587;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Listen well, traveler. My brother may choose to be a pawn in Fandral\'s game, but I am no puppet of the archdruid. I came to these lands to safeguard my younger kin from any perils that may cross his path, and from the gaze of those Sentinels. Always watching…$B$B<Bethelon chuckles and gives a playful wink to one of the Sentinels nearby, causing her to blush and hastily avert her gaze.>$B$BBut enough about them. Know this, I care not for politics, and to be frank, I am weary of its machinations. My foremost allegiance is to the natural world, and I am its willing servant.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41511; set @magic_number = 61586;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'No matter how far I retreat from the trappings of civilization, it appears that its grasp is unyielding, relentless in its pursuit.$B$BSpeak your mind, and never come back.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41510; set @magic_number = 61585;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings, $r. I regret that our meeting takes place in such unfavorable conditions. These lands are far from hospitable, and despite what the druids may suggest, I find the melodious bird songs of Ashenvale preferable to the relentless downpours of this untamed jungle or the parched gusts of Thousand Needles.$B$BMight I ask what brings you to this place? If you seek to discuss our current circumstances, I implore you to abstain. This matter concerns the Sentinels exclusively, and it will be addressed by Sentinels alone.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41509; set @magic_number = 61584;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Feralas, a land of unrivaled beauty, remains as one of the last sanctuaries of untamed nature in the southern Kalimdor. Come, immerse yourself in its magnificence and sense the ancient tales of our kin.$B$BAlas, these territories have been abandoned for far too long and have now fallen prey to those who seek to obliterate our heritage and fade it into oblivion.$B$BI have been summoned here to reclaim what rightfully belongs to us and I shall not rest until it is done. Perhaps, fate will guide you to aid me in this noble cause.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41508; set @magic_number = 61583;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'An outsider approaches.$B$BWelcome to Thalanaar. I am Commander Anashya Starfall.$B$BI have been banished by my own General for what she considers insubordination, though she clearly underestimated the loyalty of my squad. Now we find ourselves here, cast aside by our own leaders who have lost sight of what truly matters - the safety of our people and the preservation of our ancestors\' legacy.$B$BFor millennia, the Night Elves have held dominion over these lands, and we shall continue to do so until the end of time. Do I make myself clear?$B$BExcellent. Let us proceed.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41507; set @magic_number = 61581;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The wardens are a dying order, one that has seen better days. That, however, will not stop me from doing my duty. These cretins encroach and defile our sacred mountain. The punishment for this transgression is death, and I intend to duly deliver it, with or without help. Now, what do you want?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41506; set @magic_number = 61580;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hi! You seem very capable $r! Welcome to Hyjal! I wish the mountain was in a better state, but we are doing our best. Show your respect while here, alright? It\'d be inconvenient if I had to kill you.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41505; set @magic_number = 61579;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hello! Please be quiet, it is important that the demons don\'t take note of me. It is my duty to keep an eye on them. Can I help you somehow?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41504; set @magic_number = 61578;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I be Trak\'nal, Shadowhunter of the Shadowtooth tribe. My duty to protect our ancestral home remains in spite of these difficult times. These demons will fall by my blade, as will anyone endangering the mountain. You be delaying the killing. What do you want?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41503; set @magic_number = 61577;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings $r. I am Annesastrasza of the Red Dragonflight. I have been sent here to protect the world tree from those who would abuse its power. Although a lot of the energy from Nordrassil was expended when Archimonde was defeated, more still remains.$B$BRemnants of Archimonde\'s forces continue to intrude upon the mountain as they plot to capture the tree. My people are the protectors of Life, and the fall of the world tree to demons would be catastrophic for all, it might even bring the Legion back. Should you learn anything pertaining to this matter, let me know.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Lataro Swifthoof , display ID 20436, faction 35, level 55, humanoid, scale 1.1, gossip flag, gossip text:”It is exciting to train under the guidance of such an experienced mentor. While he may seem harsh at times, it is only because he knows that the lessons he teaches are vital. Chimaeras are vicious creatures, and one mistake can be the difference between life and death.”
-- Venomlash Chimaera, display ID 20414, faction 16, level 42-44, beast, scale 1((copy stats and loot from 5307, casts 46272 every 8 seconds))skinnable, copy skinning table from 5307
-- Dunebound Chimaera, display ID 20412, faction 16, level 42-44, beast, scale 1((copy stats and loot from 5307, casts 20717 every 20 seconds))skinnable, copy skinning table from 5307
-- Marat Grimtotem, display ID 10231, faction 16, level 45, humanoid, scale 1.4, weapon 81199 ((copy stats and loot from 7725))
-- Darksaber, display ID  20437, faction 15, level 42-44, beast, scale 1 ((copy stats from 5287, loot from 756, remove item 1524 for loottable, skinnable, copy skinning table from 5307)) 
-- Thalanaar Sentinel, display ID 4842, 4841, 4844, 4843, faction 79, level 55, humanoid, scale 1, weapon 5598 ((copy stats and loot from 7939)
-- Ancient Guardian, display ID 12238, faction 14, level 48, undead, scale 1 ((copy stats from 2929))
-- Sentinel Glensha, display ID 12476, faction 35, level 50, humanoid, scale 1, quest/gossip flags, weapon 17382, gossip text:”These lands serve as a stark reminder of what would occur if the Burning Legion were granted a foothold in our world.” 
-- Yohan Wildwalker, display ID 20401, faction 79, level 55, humanoid, scale 1, quest/gossip flags, gossip text:”I have been sent here by Fandral Staghelm to investigate and study Ethwyr\'s sacrifice. What has transpired here holds hope not only for Felwood but also for the lands beyond.$B$BIf we can uncover the means to halt the effects of Fel Moss, the future for the Kaldorei will shine brighter than ever before. I advise you not to interrupt me, for there will be grave consequences if you do.”
-- Marlonias Shademoon, display ID 20402, faction 79, level 50, humanoid, scale 1, quest flag 
-- Dark Spirit of Loresh, display ID 3031, faction 16, level 61 no type, beast, scale 2.4 (Has 11302 hp, 3312 armor, 50 shadow resistance, casts 8716 every 13-18 seconds, casts 20539 every 5-7 seconds, casts 29685 every 16-18 seconds) ((HAS A SHADOW AURA VISUAL))
-- Spirit of Loresh, display ID 3031, faction 35, level 61 elite, no type, scale 1.8, quest flags ((Should not be visible until the quest 'Saving Loresh' is complete)) ((HAS GHOST VISUAL)) 
-- Matthew Beckett, display ID 3358, faction 32, level 43, humanoid, scale 1, weapon1 2092, weapon3 (ranged weapon) :60309 , casts 23337 every 8-12 seconds, casts 15547 every 2 seconds when at range ((When aggroed say the line "What have you done to Catherine? Stay back!"
-- Thunder, display ID 785, faction 32, level 41, beast, scale 1, casts 7938 every 12-15 seconds
REPLACE INTO creature_template VALUES
(61589, 10810, 0, 0, 0, 0, 'Voltra', 'Velos\' Pet', 0, 45, 45, 2217, 2217, 0, 0, 2725, 80, 0, 1, 1.14286, 0.5, 30, 30, 100, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61590, 20436, 0, 0, 0, 0, 'Lataro Swifthoof', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 1.1, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61591, 12476, 0, 0, 0, 0, 'Sentinel Glensha', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61592, 20401, 0, 0, 0, 0, 'Yohan Wildwalker', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 79, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61593, 20402, 0, 0, 0, 0, 'Marlonias Shademoon', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 79, 2, 1, 1.14286, 1, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61594, 3031, 0, 0, 0, 0, 'Dark Spirit of Loresh', NULL, 0, 61, 61, 11302, 11302, 0, 0, 3312, 16, 0, 1, 1.14286, 2.4, 18, 5, 0, 1, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 0, 0, 61594, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61595, 3031, 0, 0, 0, 0, 'Spirit of Loresh', NULL, 0, 61, 61, 11302, 11302, 0, 0, 3312, 35, 2, 1, 1.14286, 1.8, 18, 5, 0, 1, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 41030, ''),
(61596, 20414, 0, 0, 0, 0, 'Venomlash Chimaera', NULL, 0, 42, 44, 1902, 2059, 0, 0, 2245, 16, 0, 1, 1.42857, 1, 18, 5, 0, 0, 1, 61, 81, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 55.968, 76.956, 100, 1, 0, 61596, 0, 5307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61597, 20412, 0, 0, 0, 0, 'Dunebound Chimaera', NULL, 0, 42, 44, 1902, 2059, 0, 0, 2245, 16, 0, 1, 1.42857, 1, 18, 5, 0, 0, 1, 61, 81, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 55.968, 76.956, 100, 1, 0, 61597, 0, 5307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61598, 10231, 0, 0, 0, 0, 'Marat Grimtotem', NULL, 0, 45, 45, 1981, 2059, 0, 0, 2397, 16, 0, 1, 1.14286, 1.4, 18, 5, 0, 0, 1, 65, 83, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61598, 7725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61599, 20437, 0, 0, 0, 0, 'Darksaber', NULL, 0, 42, 44, 2059, 2138, 0, 0, 2557, 15, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 57.0064, 78.3838, 100, 1, 0, 61599, 0, 5307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61600, 4841, 4842, 4843, 4844, 0, 'Thalanaar Sentinel', NULL, 0, 55, 55, 5996, 5996, 0, 0, 7700, 79, 0, 1, 1.42857, 1, 18, 5, 0, 0, 0, 284, 330, 0, 248, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 61600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 739, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 1, 0, 525312, 0, ''),
(61601, 12238, 0, 0, 0, 0, 'Ancient Guardian', NULL, 0, 48, 48, 2487, 2487, 0, 0, 2246, 14, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 85, 109, 0, 212, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 6, 0, 61601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 89, 121, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61602, 3358, 0, 0, 0, 0, 'Matthew Beckett', NULL, 0, 43, 43, 2059, 2059, 0, 0, 2311, 32, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 66, 85, 0, 182, 1, 2000, 2000, 1, 512, 0, 0, 2, 0, 0, 0, 59.7872, 82.2074, 100, 7, 0, 61602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61603, 785, 0, 0, 0, 0, 'Thunder', NULL, 0, 41, 41, 1981, 1981, 0, 0, 2397, 32, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 63.7824, 87.7008, 100, 1, 1, 61603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20423; set @weapon_1 = 2092; set @weapon_2 = 0; set @weapon_3 = 60309; set @creature = 61602;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20422; set @weapon_1 = 5598; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61600;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20421; set @weapon_1 = 81199; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61598;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20420; set @weapon_1 = 17382; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61591;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41516; set @magic_number = 61592;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have been sent here by Fandral Staghelm to investigate and study Ethwyr\'s sacrifice. What has transpired here holds hope not only for Felwood but also for the lands beyond.$B$BIf we can uncover the means to halt the effects of Fel Moss, the future for the Kaldorei will shine brighter than ever before. I advise you not to interrupt me, for there will be grave consequences if you do.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41515; set @magic_number = 61591;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'These lands serve as a stark reminder of what would occur if the Burning Legion were granted a foothold in our world.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41514; set @magic_number = 61590;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is exciting to train under the guidance of such an experienced mentor. While he may seem harsh at times, it is only because he knows that the lessons he teaches are vital. Chimaeras are vicious creatures, and one mistake can be the difference between life and death.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Loot table: Thalanaar Sentinel.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61600, 14047, 74.64, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61600, 24024, 2.5, 0, -24024, 1, 0);
-- Loot table: Darksaber.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61599, 1688, 66.667, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61599, 5637, 53.333, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61599, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61599, 30048, 2.5, 0, -30048, 1, 0);
-- Loot table: Marat Grimtotem.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30035, 0.0025, 0, -30035, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30036, 0.0025, 0, -30036, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 1685, 0.0061, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30026, 0.01, 0, -30026, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30028, 0.01, 0, -30028, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30030, 0.01, 0, -30030, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 13068, 0.0182, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 2775, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 2838, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3358, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3395, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3821, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3831, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3832, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3869, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3874, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4353, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4417, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 5974, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 7084, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 7975, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 7992, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 8385, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 8386, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 8387, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 8389, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 9355, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 9357, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10300, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10302, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10320, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 10606, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 11167, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 11204, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 11224, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3864, 0.0304, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 7910, 0.0365, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 2772, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3914, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4637, 0.0851, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 7909, 0.0851, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4422, 0.32, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4419, 0.42, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4424, 0.52, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 8705, 1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 6149, 1.26, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 3928, 1.3734, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 1645, 2.2789, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4601, 4.7402, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4306, 9.9423, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61598, 4338, 24.4424, 0, 1, 2, 0);
-- Loot table: Dunebound Chimaera.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 6826, 58.7826, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 6444, 36.4348, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 8705, 1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 4637, 0.6087, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 7909, 0.28, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 8838, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 3864, 0.087, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 7910, 0.087, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 3821, 0.06, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 3358, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 8029, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 1645, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 3868, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 3914, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 4300, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 4416, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 4417, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 4602, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 5974, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 7971, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 7975, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 8387, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 13464, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30026, 0.01, 0, -30026, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30028, 0.01, 0, -30028, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30030, 0.01, 0, -30030, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30036, 0.0025, 0, -30036, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61597, 30075, 0.0025, 0, -30075, 1, 0);
-- Loot table: Venomlash Chimaera.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 6826, 58.7826, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 6444, 36.4348, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 8705, 1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 4637, 0.6087, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 7909, 0.28, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 8838, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 3864, 0.087, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 7910, 0.087, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 3821, 0.06, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 3358, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 8029, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 1645, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 3868, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 3914, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 4300, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 4416, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 4417, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 4602, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 5974, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 7971, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 7975, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 8387, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 13464, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30026, 0.01, 0, -30026, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30028, 0.01, 0, -30028, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30030, 0.01, 0, -30030, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30036, 0.0025, 0, -30036, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61596, 30075, 0.0025, 0, -30075, 1, 0);

-- Thunder
set @creature_entry = 61603;
set @description = ': Thunder';
set @spell_list_id = 180214;

set @spellid_1 = 7938; -- Fatal Bite
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 12;
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

-- Dunebound Chimaera
set @creature_entry = 61597;
set @description = ': Dunebound Chimaera';
set @spell_list_id = 180213;

set @spellid_1 = 20717; -- Sand Breath
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

-- Venomlash Chimaera
set @creature_entry = 61596;
set @description = ': Venomlash Chimaera';
set @spell_list_id = 180212;

set @spellid_1 = 46272; -- Poison Spit
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

-- Dark Spirit of Loresh
set @creature_entry = 61594;
set @description = ': Dark Spirit of Loresh';
set @spell_list_id = 180211;

set @spellid_1 = 8716; -- Low Swipe
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 13;
set @delayrepeatmax_1 = 18;

set @spellid_2 = 20539; -- Fatal Bite
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 5;
set @delayrepeatmax_2 = 7;

set @spellid_3 = 29685; -- Terrifying Roar
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 4;
set @delayinitialmax_3 = 4;
set @delayrepeatmin_3 = 16;
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

-- Matthew Beckett
set @creature_entry = 61602;
set @description = ': Matthew Beckett';
set @spell_list_id = 180210;

set @spellid_1 = 23337; -- Shoot
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 16;
set @delayinitialmin_1 = 3;
set @delayinitialmax_1 = 3;
set @delayrepeatmin_1 = 8;
set @delayrepeatmax_1 = 12;

set @spellid_2 = 15547; -- Shoot
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 8;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 2;
set @delayrepeatmax_2 = 2;

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

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30128, 'What have you done to Catherine? Stay back!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id = 2200034;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200034, 61602, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200034, 0, 0, 'Matthew Beckett - Say on Aggro');

delete from creature_ai_scripts where id = 2200034;
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30128, 0, 0, 0, 0, 0, 0, 0, 0, 'Matthew Beckett - Say on Aggro');

-- Stolen Ferocity
delete from quest_template where entry = 41027;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41027,2,493,60,55,0,0,'Stolen Ferocity','<The Cat Spirit looks upon you with a growing curiosity.>$B$BI sense purpose upon you. A strength that lingers from your essence. I have a task for you, one that will test your cunning and resilience.$B$BNestled within Felwood is a place called Shadow Hold. Once a barrow den of the druids, now infested by the Burning Legion. This stronghold contains a relic most important to me, the Fang of Loresh. You see, the corruption that lingers deep within Shadow Hold has turned the spirit of Loresh into madness and I seek to bring an end to the torment that has been inflicted.$B$BShow me your ferocity, and bring me this relic.','Recover the Fang of Loresh from deep within Shadow Hold for the Great Cat Spirit in Moonglade.','Fabricate a plan, and put it in motion. Use cunning and skill to achieve your goals $c.','The Fang of Loresh, returned to me, but it is worse than I had feared. Dark magic has already festered deep within the relic. There is no wonder why the Loresh\'s spirit has gone mad.',61718,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,43200,7200,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (11957, 41027);
replace into creature_involvedrelation	(id, quest) values (11957, 41027);
update quest_template set requiredclasses = 1024 where entry = 41027;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61718,1227,'Fang of Loresh',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020043, 3, 23435, 'Sealed Barrow Trunk', 0, 4, 1, 43, 2020043, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020043,61718,-100,0,1,1,0);

-- The Fang of Loresh
delete from quest_template where entry = 41028;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41027,41028,2,493,60,55,0,0,'The Fang of Loresh','Corruption has completely dominated all essence that was once held within the Fang of Loresh. To preserve the spirit still contained within, we will need to collect a large amount of materials to begin my ritual.$B$BI ask you to bring me ten Bright Dream Shards, found in Hyjal. Ten Living Essence, and a single Large Brilliant Shard. These last materials may require some searching to acquire.$B$BReturn to me once these items are gathered.','Gather 10 Bright Dream Shards, 10 Living Essence, and 1 Large Brilliant Shard for the Great Cat Spirit in Moonglade.','<The Great Cat Spirit stares with intensity.>','You are resourceful.$B$BThere is one final thing we must do before I can begin to purify the spirit of Loresh.',61199,10,12803,10,14344,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,24000,4000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (11957, 41028);
replace into creature_involvedrelation	(id, quest) values (11957, 41028);
update quest_template set requiredclasses = 1024 where entry = 41028;

-- The Spirit of Loresh
delete from quest_template where entry = 41029;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41028,41029,2,493,60,55,0,0,'The Spirit of Loresh','The dark and twisted shadow of Loresh has been made manifest by the powerful magic lingering upon his fang. If we desire to purify his spirit, this dark entity must be destroyed. Prove yourself to me, and dispatch this shade.$B$BUse your tracking on the island of Tel\'Abim, it is there you will find your prey.','Slay the Spirit of Loresh and return to the Great Cat Spirit in Moonglade.','Be vigilant, and direct with your approach. Do not let the dark magic cow you into submission.','Loresh\'s spirit is one step closer to freedom. The foul magic that entrapped him was no match for your speed and skill.',0,0,0,0,0,0,0,0, 61594,1,0,0,0,0,0,0, 0,0, 0,43200,7200,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (11957, 41029);
replace into creature_involvedrelation	(id, quest) values (11957, 41029);
update quest_template set requiredclasses = 1024 where entry = 41029;

-- Saving Loresh
delete from quest_template where entry = 41030;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41029,41030,2,493,60,55,0,0,'Saving Loresh','Your efforts in helping me will not go unrewarded, but first, I must tend to a matter most important to me. I must purify the spirit of Loresh, and free him from the suffering of dark magic.$B$BStand back, and speak to me when I am finished.','Wait for the Great Cat Spirit to free Loresh from his suffering.','Yes?','It is done, Loresh has been freed from dark magic. You have succeeded in what was asked, and for that, you shall be rewarded.$B$BTake this Gift of Ferocity, and use it for the greater good of all nature.',0,0,0,0,0,0,0,0, 60050,1,0,0,0,0,0,0, 0,0, 0,7200,1200,0,0,0,0,0,0,0,0,0,0,0, 61081,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Wait for the Great Cat Spirit to free Loresh from his suffering');

replace into creature_questrelation		(id, quest) values (11957, 41030);
replace into creature_involvedrelation	(id, quest) values (11957, 41030);
update quest_template set requiredclasses = 1024 where entry = 41030;

REPLACE INTO creature_template VALUES
(60050, 328, 0, 0, 0, 0, 'quest_41030_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set script_name = 'npc_great_cat_spirit' where entry = 11957;

-- The Gift of Ferocity
delete from quest_template where entry = 41031;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41030,41031,2,493,60,55,0,1,'The Gift of Ferocity','I have been freed from eternal torment, and my spirit may now rest within Moonglade peacefully.$B$BAs thanks, I can offer you an enchantment most powerful. This gift is a sacred item amongst our kin, only given to those we trust most. Bring me three Bright Dream Shards, and I can make sure you receive this blessing as well.','Gather 3 Bright Dream Shards for the Spirit of Loresh at Moonglade.','Have the shards been acquired?','As I have promised, The Gift of Ferocity.$B$BUse it wisely, and your enemies will tremble before your might!',61199,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61081,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61595, 41031);
replace into creature_involvedrelation	(id, quest) values (61595, 41031);

-- To Numb the Pain
delete from quest_template where entry = 41032;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41032,2,5179,42,39,0,0,'To Numb the Pain','Enter, my child. You are welcome here amongst the restless dead. You likely know of the gifts we bestow upon our followers, so I shan\'t speak of it further.$B$BI chose to be a worgen, and have found much more power and knowledge in the curse than I ever did the life I left behind. Now I assist Lady Moranna with her research, which has sadly come to a stalemate. The venom I require comes from the Hollow Web spiders just to the east of this cemetery. It will be crucial for our new recruits to overcome the pain of their transition. Gather me ten vials. That should be enough.','Gather 10 Hollow Web Venom for Mother Tanya at Hollow Web Cemetery in Gilneas.','The transformation is often a difficult process for some. There is a point of immense pain as the old skin tears away, and the worgen form is forced underneath. You must understand how painful that can be, and how some people do not have the inner strength to complete it.','So you return! With the venom in hand! Greeted by the snarl of an old woman--I mean a smile of course.$B$BTake this coin, as thanks for the work.',61719,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 4000,0,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61447, 41032);
replace into creature_involvedrelation	(id, quest) values (61447, 41032);
update quest_template set requiredraces = 589 where entry = 41032;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61719,3663,'Hollow Web Venom',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61232,61719,-77,0,1,1,0),
(61233,61719,-77,0,1,1,0);

-- A Bloody Solution
delete from quest_template where entry = 41033;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41033,2,5179,42,38,0,0,'A Bloody Solution','Well met my friend. You\'ve come to join us? You have caught the spark of curiosity, and must surely satiate it. I will admit, those in Ravenshire look upon us as a cult. How foolish they are to see our strength as sin, eh?$B$BI have been tasked to study blood itself, and I am curious to see if the blood of other races shares similar properties to our own. To the east lay the Hinterlands, a place once called home by the Witherbark Trolls. From them, gather 5 vials of Witherbark Blood and return them to me.','Gather 5 vials of Witherbark Blood from the Witerbark Trolls in The Hinterlands for Ethan Ravencroft in Hollow Web Cemetery.','Blood is quite intriguing indeed. It holds immense power, you know. Some of Ur\'s research suggests that demons can be poisoned with a dead man\'s blood. Fascinating, is it not?','With enough research, we may be able to uncover the properties of blood itself. This could be very important to Moranna, if our suspicions are correct.',61720,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61460, 41033);
replace into creature_involvedrelation	(id, quest) values (61460, 41033);
update quest_template set requiredraces = 589 where entry = 41033;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61720,292,'Witherbark Blood',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(2651,61720,-32,0,1,1,0),
(2652,61720,-32,0,1,1,0),
(2649,61720,-32,0,1,1,0),
(2650,61720,-32,0,1,1,0);

-- A Vile Mantle
delete from quest_template where entry = 41034;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41034,2,5179,43,38,512,0,'A Vile Mantle','I don\'t know your face, $r, I don\'t like new faces. There\'s enough trouble in these forests without outlanders dragging theirs along.$B$BBut you\'re here now, curse it all. The Master says it is all part of the Wolf Serpent\'s will and who is foolish wee me to disagree? Thus, I say you should help with your part.$B$BIt gets pretty cold up here in Gilneas and we pellars need clothes as much as anyone. Track down the Vilewing Bats and the Duskpelt Wolves, then bring me their furs. You\'ll find them almost anywhere in this country, but the closest are to the southwest.','Gather 5 Vilewing Pelts and 5 Duskpelt Furs for Bearbane at the cave above Mossgrove Farm in Gilneas.','The sacrament of the hunt is crucial in the order of nature. Death feeds life, which feeds death, which feeds life.$B$BThe circle is unbroken.','Look at that, an outlander with some mettle. We say that a man is not made until he has won his first hunt, but I can see this wasn\'t your first.$B$BI can tolerate your foreign mug a little more. Now scurry.',61721,5,61722,5,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 500,0,3450,0,0,0,0,0,0,0,0,0,0,0, 61723,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61459, 41034);
replace into creature_involvedrelation	(id, quest) values (61459, 41034);
update quest_template set requiredraces = 589 where entry = 41034;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61721,7990,'Vilewing Pelt',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0,8),
(61722,1421,'Duskpelt Fur',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61230,61721,-40,0,1,1,0),
(61231,61721,-40,0,1,1,0),
(61401,61721,-40,0,1,1,0),
(61227,61722,-40,0,1,1,0),
(61228,61722,-40,0,1,1,0),
(61229,61722,-40,0,1,1,0);

replace into item_template values
 ('61723', '4', '3', 'Bearbane Cuffs', '', '6948', '2', '0', '1', '17952', '4488', '9', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '6', '4',
 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '104', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- The Hound and the Hunter
delete from quest_template where entry = 41035;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41035,2,5179,43,38,0,0,'The Hound and the Hunter','Adrift you have strayed, misplaced and mislaid. Unto the Wolf Serpent\'s coils have you wandered, chasing meaning, seeking wonder.$B$BAm I right? For once like you I were, an affrighted hen, beaten, bitten, driven from her pen. Bled and felled!$B$BIn the north, near Ebonmere Farm a woodsman stalks among trees, he who my life would end. Be you his last fare and the Wolf Serpent\'s blessings with you I\'ll share.','Find and slay Matthew Beckett, then return to Levandra at the cave above Mossgrove Farm in Gilneas.','Is it over, is it done? Is my nightmare gone?','A thousand and thousand thanks I lay upon you.$B$BMy family, my own blood, thought me sick with plague, thought me not worth the yoke. Now I am free to be Beckett no more.',0,0,0,0,0,0,0,0, 61602,1,0,0,0,0,0,0, 0,0, 0,0,3450,0,0,0,0,0,0,0,0,0,0,0, 2450,5,1710,2,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61454, 41035);
replace into creature_involvedrelation	(id, quest) values (61454, 41035);
update quest_template set requiredraces = 589 where entry = 41035;

-- Deathly Fetters
delete from quest_template where entry = 41036;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41036,2,5179,44,37,0,0,'Deathly Fetters','My father, Demetreus, has seen your likeness in a dream, $N. He knew you would come to us one day.$B$BThe Wolf Serpent, our eternal guardian, will soon return to this world. We must make ready for his rebirth, for the cleansing of these lands.$B$BIn the west lie the Ruins of Greyshire. There are items there, mementos of significance, that hold a spiritual bond with the dead that possessed them in life.$B$BGather them for me, that I may summon the souls of the departed and relieve them of their suffering.','Gather 10 Haunted Mementos for Lurn Five-Pelts in the Wolfswood.','These tokens hold vestiges of who these revenants once were, what they once valued.$B$BWedding rings, a family sword, a lost one\'s handkerchief could all become a tether from the realm of the dead to ours.','Once we are ready, I will place these items in a circle of salt, and light an incense of black roses to call the spirits forth.$B$BThough that day has not come, and will not for some time. You have done well, as I know you would have.',61724,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,4000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61725,1,61726,1,61727,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61452, 41036);
replace into creature_involvedrelation	(id, quest) values (61452, 41036);
update quest_template set requiredraces = 589 where entry = 41036;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61724,37241,'Haunted Memento',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61234,61724,-31,0,1,1,0),
(61235,61724,-31,0,1,1,0);

REPLACE INTO gameobject_template VALUES
(2020044, 3, 24108, 'Memento of Greyshire', 0, 4, 1, 43, 2020044, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020044,61724,-100,0,1,1,0);

replace into item_template values
 ('61725', '4', '1', 'Cowl of Memento', '', '15287', '2', '0', '1', '15260', '3815', '1', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '14', '5', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61726', '4', '0', 'Wolf Serpent Ring', '', '23728', '2', '0', '1', '15412', '3853', '11', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21599', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61727', '4', '3', 'Wolfwood Sash', '', '9358', '2', '0', '1', '19124', '4781', '6', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '5', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '138', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- <NO TITLE>
delete from quest_template where entry = 41037;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41037,2,5179,44,38,0,0,'<NO TITLE>','For what do you linger there, $c? Idle of hand, idle of spirit?$B$BIf you are looking for good work, then I have a task for you. From the soot on me you can see the markings of a blacksmith, and indeed, I have forged many a fine thing for us here.$B$BCopper and silver we do need, to craft the rods we wield to bridle lightning and shackle thunder. Find the talismans worn by the invading Foulhide gnolls south of here and bring them to me. They contain the metals that I need.','Gather 15 Foulhide Talismans for Mustang at the cave above Mossgrove Farm in Gilneas.','Won\'t be much silver in the trinkets the gnolls use, but copper they seem to like just enough.','Ugly, crude, cheap. What else can you expect of gnoll-make?$B$BBut metal is metal, \'tis better in my hands than theirs. You have me thanks, this copper will make proper rods.',61728,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,3500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61729,1,61730,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61449, 41037);
replace into creature_involvedrelation	(id, quest) values (61449, 41037);
update quest_template set requiredraces = 589 where entry = 41037;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61728,9636,'Foulhide Talisman',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61248,61728,-69,0,1,1,0),
(61249,61728,-69,0,1,1,0),
(61250,61728,-69,0,1,1,0),
(61362,61728,-69,0,1,1,0),
(61392,61728,-69,0,1,1,0),
(61399,61728,-69,0,1,1,0);

replace into item_template values
 ('61729', '2', '10', 'Staff of Shackled Lightning', '', '20443', '2', '0', '1', '77084', '19271', '17', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '17', '4', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2700', '0',
 '0', '66', '115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61730', '2', '4', 'Copper Infused Bludgeon', '', '2861', '2', '0', '1', '56524', '14131', '21', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '5', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '48', '72', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '3', '0', '0', '75', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

