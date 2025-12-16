-- The Collector
delete from quest_template where entry = 41296;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41296,2,8,48,42,0,0,'The Collector','My people have been divided. We\'ve endured much on the escape from our home, in search of security and a place to survive. While my brethren in the Harborage remained resilient and clung to hope, I cannot say the same about the lost ones. Their madness has taken a deep hold in their minds, and its roots cannot be cut anymore. In a fruitless endeveour to return to the hellscape that is Draenor, they gather the Draenethyst crystals, potent gems from said world, without knowing they won\'t be able to utilize them properly. This was, however, not always the case.$B$BAmong them was a powerful rift walker, under the name of Kum\'isha, who parted ways with the maddened draenei of Fallow Sanctuary. He now roams the hostile plains of the lands to the south, in search of myths and legends. What I seek is his knowledge about our sacred crystals - but should you be able to convince him to join us; please, do not hesitate.','Locate Kum\'isha in the Blasted Lands.','Yes?','You reek, $R, horribly. I can smell the despicable stench of naivety and senseless hope on you. Let me take a guess, Sanv K\'la and his wretched followers sent you to pry knowledge from my great mind. If that is the case, then I cannot wait to see the disappointment in your face.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,11400,1900, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (91781, 41296);
replace into creature_involvedrelation  (id, quest) values ( 7363, 41296);
update quest_template set requiredskill = 755		 where entry = 41296;
update quest_template set requiredskillvalue = 225	 where entry = 41296;
update quest_template set nextquestinchain = 41297	 where entry = 41296;

-- Seeking Seekers
delete from quest_template where entry = 41297;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41296,41297,2,4,48,42,0,0,'Seeking Seekers','I left the lost ones behind, their leaders have become bumbling fools drooling over the sacred Draenethyst, forgetting their true potential. Sanv K\'la is no different, hope poisoned him and his acolytes\' heart, neglecting the fact he is trapped in a world of avarice. That goes for you too. For what other reason are you standing before me, Kum\'isha the Collector, if not to tear from me what you desire? But I know you and your kind, and your greed is what will further my ambitions.$B$BRoaming these cursed lands are mindless draenei, wielders of rift walking magic without the means to do so. In their endless search for Draenethyst, they have lost their mind, scouring the sand like the vermin that they are. Rabid beasts, all of them! They have raided my camp, stealing a valuable cache of crystals. Slaughter them, retrieve my belongings and I may reward your usefulness.','Recover the Rummaged Chest from the Draenei of the Blasted Lands and return it to Kum\'isha in the Blasted Lands.','Have your abilities forsaken you? Useless dreg, I shouldn\'t have wasted my time with you.','Damaged, as to be expected. Savage brute. Atleast its contents are intact. You can consider yourself fortunate, then. Still, this scroll... could it be...? Filthy one, your greed has been of great service to me, but your price is not yet ready to be claimed.',41361,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,23400,3900, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (7363, 41297);
replace into creature_involvedrelation  (id, quest) values (7363, 41297);
update quest_template set nextquestinchain = 41298	where entry = 41297;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41361,27056,'Rummaged Chest',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(5979, 41361, -60, 0, 1, 1, 0),
(5981, 41361, -60, 0, 1, 1, 0);

-- Envoy Of Draenor
delete from quest_template where entry = 41298;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41297,41298,2,4,52,42,0,0,'Envoy Of Draenor','<Kum\'isha is studying the foreign scroll, his shifting body fading in and out of view. After finishing reading, he furiously rips the parchment into bits.>$B$BKarak-tokal! What are they thinking? This is heresy to all draenei, heresy! Them roaming these lands of death like drones was concerning, albeit not dangerous. What they are aiming for, however, is very much so. According to this scripture, the seekers you\'ve encountered are gathering Draenethyst for a vile creature, a rift walker named Mato\'gar. That alone is an affront to my ambitions, his true goal however is revolting and must be stopped. Should he be able to take the crystals with him to Draenor, the only way for us to return will be gone - condemning us to rot and decay, jailed to never see our home ever again.$B$BYou will not let that happen, for Kum\'isha will bestow upon you what you wish; in exchange for his head. He awaits his seekers to the northwest of my camp.','Bring the Head of Mato\'gar to Kum\'isha the Collector in the Blasted Lands.','To relocate the Draenethyst crystals to Draenor would mean the death for all draenei stranded in his forlorn and sickening world. Kum\'isha cannot let this happen.','<The broken draenei grabs the decapitated head with unexpected force. Spitting on the bloodied skin of Mato\'gar\'s head, he throws it unto the ground before stomping it violently into the red sand.>$B$BPathetic wretch, ambassador of ruin and desolation. May your ancestors tear your soul to shreds, for betraying your people, your kin! Taking away our - taking away MY means of escape - it sickens me to my core.',41362,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,25800,4300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (7363, 41298);
replace into creature_involvedrelation  (id, quest) values (7363, 41298);
update quest_template set nextquestinchain = 41299	where entry = 41298;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41362,11650,'Head of Mato\'gar',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace INTO creature_template VALUES
(61929, 20597, 0, 0, 0, 0, 'Mato\'gar', NULL, 0, 52, 52, 3544, 3544, 4033, 4033, 2669, 51, 0, 1, 1.14286, 1.5, 18, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 61929, 0, 0, 0, 0, 0, 0, 50, 25, 0, 0, 0, 0, 0, 0, 0, NULL, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 41362, -100, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30052, 0.0025, 0, -30052, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30103, 0.0025, 0, -30103, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30047, 0.01, 0, -30047, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30044, 0.01, 0, -30044, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 24032, 0.01, 0, -24032, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 24028, 0.01, 0, -24028, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 14499, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 11734, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 16043, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 12691, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 12694, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 12704, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 11732, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 14474, 0.012, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 8846, 0.018, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 15731, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 14498, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 14478, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 14470, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 15737, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 15743, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19280, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19278, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19271, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19270, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19231, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19230, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 16220, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 16218, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 16215, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 16044, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 15755, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 14466, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 13488, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 8838, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 7993, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 3914, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 3864, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 11733, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19269, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 8390, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 12682, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 12684, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 12695, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 12697, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 3395, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 4625, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 7912, 0.024, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 5758, 0.0345, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 19260, 0.0345, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 11736, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 20400, 0.054, 0, 1, 1, 108);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 4500, 0.054, 0, 1, 1, 109);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 7910, 0.0689, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 7909, 0.083, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 10306, 0.149, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 10305, 0.18, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 4426, 0.25, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 4425, 0.262, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30080, 0.5, 0, -30080, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30049, 0.5, 0, -30049, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30046, 0.5, 0, -30046, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30045, 0.5, 0, -30045, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30043, 0.5, 0, -30043, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 13443, 0.73, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 13446, 1.29, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 8766, 2.0331, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 24024, 2.5, 0, -24024, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 30090, 2.5, 10, -30090, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 8952, 4.7209, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 15727, 10.768, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61929, 14047, 24.6382, 0, 1, 2, 0);

-- Mato'gar
set @creature_entry = 61929;
set @description = ': Mato\'gar';
set @spell_list_id = 180299;

set @spellid_1 = 25309; -- Immolate
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 9;
set @delayrepeatmax_1 = 9;

set @spellid_2 = 8417; -- Arcane Missiles
set @probability_2 = 100;
set @casttarget_2 = 4;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
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

-- Gratitude Of Kum'isha
delete from quest_template where entry = 41299;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41298,41299,2,4,52,42,0,0,'Gratitude Of Kum\'isha','Here, take this scroll. On it you and the naive Sanv K\'la will find my knowledge of Draenethyst and its uses. May he do whatever he intends to do with it, as long as it does not interfere with my plans. It is in his best interest to heed my warning, lest he ends like Mato\'gar.$B$BTo you, I say the following: unless you wish to aid me further, I do not want to lay my eyes upon you again. Begone if it is so.','Return to Sanv K\'la in the Swamp of Sorrows with Kum\'isha\'s scroll.','You are back, from the accursed wastes; and alone. Please tell me what happened.','Tragic and harrowing to hear. Both the intervention of draenei from our homeworld, and Kum\'isha\'s desperate desire to return to said place. I have led my people to this place in search of a haven, a sanctuary they can someday call home again. With the wisdom on this scroll and the magic of the Draenethyst, we may achieve this - together.$B$BBe rest assured, your deeds for my people will not be forgotten. Let me share insight on these scriptures, as you cannot read its pages yourself.',41363,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41363,1, 0,4800,800, 0,0,0,0,0,0,0,0, 0,0,0, 70140,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 7363, 41299);
replace into creature_involvedrelation  (id, quest) values (91781, 41299);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41363,7957,'Kum\'isha\'s Scroll',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

-- Just Ask Them Nicely
delete from quest_template where entry = 41300;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41300,2,1537,38,32,0,0,'Just Ask Them Nicely','Oh, this is bad! Just how unfortunate can one single gnome be? I made a horrible mistake and now it\'s gonna cost me my head or worse - my home!$B$BSimply put, my finances are dry, severely dry! Desperate as I was, I accepted the offer of a dubious merchant with the promise of heaps of gold. Yet, on his second visit, he was accompanied by two frightening thugs and demanded more wares from me than originally agreed! My pleas explaining that my supplies don\'t cover his demands fell on deaf ears - insteadand now they\'re threatening me. Me, the magnanimous and unmatched Talvash del Kissel!$B$BPlease, assist me with my dilemma! I promise, you\'ll get justly rewarded. The scoundrels left towards The Commons, I am sure these thieves are hiding somewhere in the countless houses along the outer ring!','Talk to the suspicious folk threatening Talvash del Kissel in Ironforge.','What is it?','Sending a goon on his own to sort out his problems? Now this is something I hadn\'t anticipated of that squirmy little gnome.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4200,700, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 6826, 41300);
replace into creature_involvedrelation  (id, quest) values (61930, 41300);
update quest_template set requiredskill = 755		 where entry = 41300;
update quest_template set requiredskillvalue = 200	 where entry = 41300;
update quest_template set nextquestinchain = 41301	 where entry = 41300;

replace INTO creature_template VALUES
(61930, 20615, 0, 0, 0, 0, 'Motsog Kegsipper', 'The Undermarket', 0, 48, 48, 2398, 2398, 0, 0, 2753, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 74, 96, 0, 208, 1, 1000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61931, 20614, 0, 0, 0, 0, 'Brutish Bouncer', NULL, 0, 53, 53, 8100, 8100, 0, 0, 3400, 35, 1, 1, 1.14286, 1, 18, 5, 0, 1, 1, 344, 444, 0, 244, 1, 1300, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41619; set @magic_number = 61931;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '<His gaze is intimidating.>');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41618; set @magic_number = 61930;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings, weary traveler. Are you here for some... good and honest trade?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Undermarket Offer
delete from quest_template where entry = 41301;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41300,41301,2,1537,38,32,0,0,'Undermarket Offer','So what are you here for? To ask me nicely to stop harassing your friend who doesn\'t want to uphold his end of the bargain? Or are you here to take the more... direct approach of solving problems? Either way, I regret to inform you that neither is going to work. Deadlines are something my organization values and those who are not able to meet them...$B$B<He gestures to the two daunting guards standing behind you.>$B$BI am however a welcoming merchant and will not forsake an opportunity for the sake of animosity towards disappointing trade partners. Instead, I will make you an offer. Deliver double the amount of goods that Talvash is still owing us, and me and my compatriots will consider leaving him be. A sound proposition, no? If I were in your stead, I\'d do my best accepting it...','Accept Motsog\'s offer and bring him the rest of Talvash\'s deal.','Whether you make these yourself or buy them somewhere else, I do not care. Just ensure they are of high quality, our benefactors value a certain standard.','I see you have returned. Now let us ensure you will be able to leave as well...',41342,4,41340,2,41343,2,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,15000,2500, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61930, 41301);
replace into creature_involvedrelation  (id, quest) values (61930, 41301);
update quest_template set nextquestinchain = 41302	 where entry = 41301;

-- Negotiated Truce
delete from quest_template where entry = 41302;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41301,41302,2,1537,38,32,0,0,'Negotiated Truce','<Motsog inspects the wares meticulously with a lens. While he does so, you can feel the bouncers breathing down your neck. After the shady merchant is done, he stores the jewelry in a box and tosses you a bag of money.>$B$BIt was a pleasure doing business with you. I\'d suggest running along to your friend now and not showing either of your faces here ever again. Begone.','Return to Talvash del Kissel.Kissel in the Mystic Ward of Ironforge and give him his payment.','$N! What took you so long? I feared they gave you an early visit to the afterlife. So, what is it? Am I safe?','<Talvash opens the bag and looks exasperated.>$B$BWhat?! This is only half of what I was promised! Oh, this damn cutthroat, sleezy slimebag, and damn his very threatening bodyguards too! Well, atleast I am not dead, correct? I have to thank you for that - really, I am grateful! You stuck out your neck for me without even hesitating, that\'s something not so common nowadays. Hopefully these thugs will not care to bother me again.$B$BBut do tell me: the jewelry you delivered in my stead, are you a jewelcrafter by chance? If so, please let me share one of my patented designs with you for your valiant heroism!',41364,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41364,1, 0,4800,800, 0,0,0,0,0,0,0,0, 0,0,0, 70139,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61930, 41302);
replace into creature_involvedrelation  (id, quest) values ( 6826, 41302);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41364,4056,'Lightweight Money Bag',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'It doesn\'t feel heavy.',0,3);

-- Change scale of entry 2020095 (Gemstone Deposit) to 0.7.
update gameobject_template set size = 0.7 where entry = 2020095;
-- Item 'Glowing Arctic Grayling' (entry 56086) needs to be openable/lootable and should loot item 56083.
update item_template set class = 15, flags = 4 where entry = 56086;
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(56086, 56083, 100, 0, 1, 1, 0);