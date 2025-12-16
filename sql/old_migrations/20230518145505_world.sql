-- A Mysterious Missive
delete from quest_template where entry = 40914;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40914,2,41,60,55,0,0,'A Mysterious Missive','The letter appears before you: unsealed, but very much untouched. Inside, the letter has been scribbled in a harsh and crude manner, the words entirely foreign.$B$BSomething feels very wrong about this. A familiar, dreadful voice appears in your head; you are drawn to the Master\'s Cellar near Karazhan.','Seek out this mysterious energy at the Master\'s Cellar in the Deadwind Pass.','<Silence.>','<A familiar voice penetrates your mind.>$B$BGood, you have made it. The sender of this letter has already failed me. Perhaps you will not.',61457,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 100,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_involvedrelation	(id, quest) values (2020028, 40914);

replace into item_template values
 ('61457', '12', '0', 'A Mysterious Missive', 'A feeling of dread lingers upon this letter.', '5567', '1', '0', '1', '0', '0', '0', '-1', '-1', '60',
 '55', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update item_template set start_quest = 40914 where entry = 61457;

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020028, 2, 27514, 'Mysterious Mailbox', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_mysterious_mailbox');

REPLACE INTO broadcast_text VALUES (30116, 'This mailbox appears to have been here for some time.$B$BAn aura of dread seems to emanate from it, you should not linger long.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into npc_text (ID, BroadcastTextID0) values (30116, 30116);

-- A Mysterious Errand
delete from quest_template where entry = 40915;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40914,40915,2,41,60,55,0,0,'A Mysterious Errand','We meet again $N. I must say, I am impressed with your progress so far. You have proven far more… resilient... than most.$B$BYou know deep down why I have called you here. You still cheat death with every passing moment. You cling to this mortal coil, despite all adds. Yet, you still hunger for more. I can sate that hunger, assuming you manage to fulfil some... obligations. Only the most fierce souls are worthy of my second blessing, after all.$B$BIf I have divined your spirit accurately, then you will want to go to Gadgetzan and speak to Marin Noggenfogger. Tell him I need the... 52nd package.','Seek out Marin Noggenfogger in Gadgetzan.','Yo! What can I do for you?','The...52nd?!$B$B<Marin looks like he has seen a ghost for a moment, then regains his composure.>$B$B Kid, we got a problem.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	(id, quest) values (2020028, 40915);
replace into creature_involvedrelation	(id, quest) values (7564   , 40915);

-- The 52nd Package
delete from quest_template where entry = 40916;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40915,40916,2,41,60,55,0,0,'The 52nd Package','Who told you about that? Hmm? No answer?$B$B Fine. The 52nd Package was lost, anyway. Missing straight outta the vault itself, like it just spirited itself away.$B$B I paid a guy to track it down, and he ended up at that centaur tomb in Desolace, Maradona or something? Your guess is as good as mine as to how it got there.$B$B I guess if you want it, you better go get it.','Get the 52nd Package and bring it to the Mysterious Mailbox.','You return.','Good, good. You have retrieved something worth its weight in souls, and thus, passed your first test.',61458,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3200,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		 (id, quest) values (7564   , 40916);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40916);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61458,12331,'52nd Package',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(12201,61458,-100,0,1,1,0);

-- An Eye For a mystery
delete from quest_template where entry = 40917;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40916,40917,2,41,60,55,0,0,'An Eye For a mystery','This package contains an incredibly important crystal, $N. This crystal once housed powers drawn from the Well of Eternity itself. And though its power has long since been depleted, there is ever the chance of it being restored, wouldn’t you agree?$B$BI require its power and you will help me restore it, if you wish for your hunger to be satiated, that is. Firstly, you must delve deep into Blackrock Mountain and grab the eye of Overlord Wyrmthalak, who stalks the lower halls of Blackrock Spire.','Acquire the Eye of Wyrmthalak and bring it to the Mysterious Mailbox.','You return.','Good...',61459,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3200,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	 (id, quest) values (2020028, 40917);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40917);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61459,920,'Eye of Wyrmthalak',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(9568,61459,-100,0,1,1,0);

-- The Stranger and the Potion
delete from quest_template where entry = 40918;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40917,40918,2,41,60,55,0,0,'The Stranger and the Potion','You have done well so far, but you certainly took your time returning, didn’t you? The eye is already decomposing, and its powers are fading. Which adds yet another step to your growing list of tasks, $N.$B$BSome necromancy is now going to be required, and though traveling to Northrend is not an option, Scholomance still exists. I am sure they will have a potion that can preserve the eye.$B$BYou know what to do, do not disappoint me.','Acquire a Necromantic Potion and bring it to the Mysterious Mailbox.','You return.','This potion will preserve and reawaken the power of the eye. It seems you have not doomed this quest after all.',61460,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3200,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	 (id, quest) values (2020028, 40918);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40918);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61460,22191,'Necromantic Potion',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(1853,61460,-100,0,1,1,0);

-- Focusing on the Mystery
delete from quest_template where entry = 40919;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40918,40919,2,41,60,55,0,0,'Focusing on the Mystery','An Arcane Focus is needed to properly channel the powers of the Eye into the crystal. Such foci were common during the height of the Kaldorei civilization, alas, I remember it well… Now what remains of those haughty seats of power, hmm? Ruins. Knowledge lost to time.$B$BYou may, then, think it an impossible task to locate one. Fortunately for you, I will give you a lead. Perhaps one lingers with the Highborne of Dire Maul.','Acquire an Arcane Focus and bring it to the Mysterious Mailbox.','You return.','Now this is a surprise, indeed. Good.',61461,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3200,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	 (id, quest) values (2020028, 40919);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40919);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61461,26772,'Arcane Focus',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(11486,61461,-100,0,1,1,0);

-- Hammering the Mystery Home
delete from quest_template where entry = 40920;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40919,40920,2,41,60,55,0,0,'Hammering the Mystery Home','Oh, what a pathetic little impersonation this is. Did you deliberately bring back the most amateur specimen you could find?$B$BSince you enjoy adding to your own list of tasks with your own sheer incompetence, then listen: the crystal needs its imperfections removed. This is no easy task, and very specialist tools will be required. Two hammers: One forged deep within Hateforge Quarry, and the other utilized by the Dark Irons of Blackrock Depths. Bring them to me, and your missteps may be forgiven.','Acquire a Hammer of Hate, and a Hammer of the Depths and bring them to the Mysterious Mailbox.','You return.','With these, I can amend the focus. Soon, the crystal shall brim with the raw power it once did...',61462,1,61463,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3200,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	 (id, quest) values (2020028, 40920);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40920);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61462,8567,'Hammer of Hate',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(61463,8574,'Hammer of the Depths',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60735,61462,-100,0,1,1,0),
(9019,61463,-100,0,1,1,0);

-- The Last Ominous Mystery
delete from quest_template where entry = 40921;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40920,40921,2,41,60,55,0,0,'The Last Ominous Mystery','The Crystal is almost complete: the eye is ready to be fused, the focus is ready to provide the energy. Now, we need a liquid flux to bind them. The most powerful blood you can acquire. The blood of a powerful Dragonkin mortal.$B$BThere is one known as General Drakkisath, a mighty being even among other mighty beings. If you wish to finish your task, then best him, and bring me his heart. With it, the crystal shall be reborn, you shall receive a reward you have been yearning for so desperately… and for so long.','Acquire a Dragonblood Heart and bring it to the Mysterious Mailbox.','You return for the last time, yes?','It seems the time has come, then? The crystal is complete...',61464,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 10000,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	 (id, quest) values (2020028, 40921);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40921);

update quest_template set type = 64 where entry = 40921;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61464,3320,'Dragonblood Heart',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(10363,61464,-100,0,1,1,0);

-- Eternal Mortality
-- Additional notes:  Hardcore 60 questline. 
-- Upon completing this quest, you will unlock Hardcore mode past lv 59. A pop up will offer to enable XP again after this quest if you had it off.
delete from quest_template where entry = 40922;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40921,40922,2,41,60,55,0,0,'Eternal Mortality','And so, here we stand, $N. The end of your journey, immortality awaits. But is that truly what you want? To be like those haughty creatures of old, never fearing the cold grip of death? Never feeling the adrenaline rush of living on the edge? The risk that makes life worth living... gone. War, which I can see in your soul you live for, will become lackluster.$B$BYou will live forever. You will watch your family pass away. Your friends. Your loves. And then what? When all you value is gone?$B$BNo, I will spare you this torture, and instead grant you the true blessing: the blessing of mortality. This is the moment you have been waiting for. To face the greatest challenges and know your life may come to an end at any moment. That... that is what truly makes life worth fighting for. Am I not correct, $N?','Speak to the Mysterious Mailbox again to be mortal forever, or abandon this quest and reap immortality at your 60th level.','What is your decision? Think carefully, this cannot be undone.','You actually impress me, $N. Very well. From this day forth, you will walk this land as a mortal.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	 (id, quest) values (2020028, 40922);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40922);

-- A Mysterious Boon
delete from quest_template where entry = 40923;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40922,40923,2,41,60,55,0,0,'A Mysterious Boon','Before you go... I feel some sympathy for you. You have assisted me significantly after all, and all for a sense of thrill and danger.$B$BPerhaps I will grant you a boon in return.','Speak to the Mysterious Mailbox again to receive a boon.','A rare kindness.','<The mailbox opens. A rather magnificent pendant falls forth, before the mailbox shuts with a deathly clatter.>$B$BMay this help with your fated future journey. Leave now. I have things to do and places to be.$B$B<Your connection with the mailbox is severed... permanently.>',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 100,0,15000,0,0,0,0,0,0,0,0,0,0,0, 61465,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	 (id, quest) values (2020028, 40923);
replace into gameobject_involvedrelation (id, quest) values (2020028, 40923);

replace into item_template values
 ('61465', '15', '0', 'Pendant of Mortality', 'A deal with a devil, signed in blood...', '1148', '4', '0', '1', '0', '0', '12', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '44', '6', '-1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

