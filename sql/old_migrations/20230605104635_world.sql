-- Into the Dream I
delete from quest_template where entry = 40957;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40957,2,616,60,58,0,0,'Into the Dream I','I am Ralathius, a servant of the Green Dragonflight. It is unusual to find me outside of the Dream, but there is a pressing reason for my presence here.$B$BOur sacred realm has been tainted by an unknown darkness. This corruption emerged suddenly and without warning, spreading its foul touch throughout the Dream. Druids, dragons, and all denizens of the Dream are engaged in a valiant struggle against this insidious force, but we are facing significant losses.$B$BAmong those lost is Solnius the Awakener, a noble soul and one of Ysera\'s most cherished children. Solnius carried the responsibility of safeguarding our most sacred ritual, known as the Awakening. Yet, he has succumbed to the alluring whispers of the Nightmare, and now this sacred power rests in the hands of darkness.$B$BPlease, listen to my tale. He must be stopped at any cost.','Listen to the story of Ralathius.','The Emerald Dream is in danger.','So now you know. Solnius must be stopped.',0,0,0,0,0,0,0,0, 60044,1,0,0,0,0,0,0, 0,0, 0,3900,650,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Listen to the story of Ralathius');

replace into creature_questrelation		(id, quest) values (61326, 40957);
replace into creature_involvedrelation	(id, quest) values (61326, 40957);

REPLACE INTO creature_template VALUES
(60044, 328, 0, 0, 0, 0, 'quest_40957_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set script_name = 'npc_ralathius' where entry = 61326;

replace into broadcast_text (entry, Male_Text) values (30117, 'Are you familiar with what the Emerald Dream is, mortal?$B$BIn essence, Azeroth and the Emerald Dream can be perceived as parallel reflections of each other, intricately intertwined yet distinct in their nature. The Emerald Dream acts as a mystical lens, offering a pristine vision of Azeroth untouched by mortal intervention.$B$BWithin the Emerald Dream lies the original landmass of Kalimdor, unmarred by the cataclysmic Shattering, covered in lush, emerald-green forests that have flourished for aeons.');
replace into npc_text (ID, BroadcastTextID0) values (30117, 30117);

replace into broadcast_text (entry, Male_Text) values (30118, 'Visitors from the waking world of Azeroth, both sentient and wild, unknowingly or knowingly, find themselves wandering into this ethereal domain.$B$BThese creatures enter the Dream through their slumber, bringing with them the whispers of the mortal realm. In this enchanted realm, dreams take on a profound significance, often weaving visions of prophecy and guidance for those who dare to listen.');
replace into npc_text (ID, BroadcastTextID0) values (30118, 30118);

replace into broadcast_text (entry, Male_Text) values (30119, 'The Emerald Dream stands as the dominion of Ysera, the venerable Green Aspect, and we, the green Dragonflight, stand steadfastly by her side, resolute in our duty to protect this realm at all costs.$B$BThe majority of our kin dwell within the Dream, their spirits and physical forms intertwined within its ethereal embrace. Ages ago, guided by her infinite wisdom, Ysera selected one of our own, Solnius, to fulfill the pivotal role of the Awakener.$B$BBestowed with the power to rouse the green dragons from their slumber within the Dream in the face of dire perils, Solnius held a position of great responsibility.');
replace into npc_text (ID, BroadcastTextID0) values (30119, 30119);

replace into broadcast_text (entry, Male_Text) values (30120, 'However, none among us could have foreseen the insidious emergence of the Nightmare. The Nightmare, a malevolent force of unknown origin, engulfs everything it touches, leaving naught but ruin and madness in its wake.$B$BAlas, Solnius has succumbed to the clutches of this vile corruption, his very essence ensnared within the grasp of the Nightmare.');
replace into npc_text (ID, BroadcastTextID0) values (30120, 30120);

replace into broadcast_text (entry, Male_Text) values (30121, 'We must prevent Solnius from awakening our kin from the Dream. Should their physical forms return to the mortal realm while fragments of their souls remain tethered to the Dream, they shall become profoundly susceptible to the insidious corruption of the Nightmare.$B$BThe corruption shall permeate their souls, eventually corrupting their physical forms, and the Nightmare shall find its pernicious path into Azeroth—a force that knows no bounds and defies all attempts to halt its advance.');
replace into npc_text (ID, BroadcastTextID0) values (30121, 30121);

replace into broadcast_text (entry, Male_Text) values (30122, 'Our only hope lies in the daunting task of halting Solnius and restoring him to the embrace of the Dream, even if it means resorting to the ultimate act of ending his life. It is our only hope.');
replace into npc_text (ID, BroadcastTextID0) values (30122, 30122);

-- Into the Dream II
delete from quest_template where entry = 40958;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40957,40958,2,616,60,58,0,0,'Into the Dream II','The Nightmare could be everywhere. $B$BEven those who appear as noble heroes may harbor a hidden allegiance to this malevolent force. I cannot afford to trust blindly. Thus, I require tangible proof of your loyalty.$B$BIn the depths of these enchanted forests, dwell the wretched satyrs, vile creatures who have embraced the darkness. These fiends possess Nightmare Effigies, artifacts imbued with the corrupting power. While these effigies may lack the strength to unleash the full might of the Nightmare upon our world, they still pose a significant threat when wielded by the enemy.$B$BYet, their significance transcends their immediate danger. These nefarious effigies serve as conduits, linking the realms of the Dream and the mortal world. By bringing these fiendish artifacts to me, we can harness their unique properties to expose any agent of the Nightmare who dares to wield them. Three will be enough.','Bring three Nightmare Effigies to Ralathius in Nordanaar.','While it is with a heavy heart that I bear this burden of caution and mistrust, the threat of the enemy lurks in every shadow, ready to exploit any weakness or vulnerability.','You bear the effigies in your hands, yet I see no signs of corruption within you.$B$B<Ralathius exhales, relieved.>$B$BI see the enemy in every shadow, and it\'s taking a toll on me. I am sorry for my initial distrust, but I have to take these steps. Now, please, hand these effigies to me.',61556,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,39000,6500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61326, 40958);
replace into creature_involvedrelation	(id, quest) values (61326, 40958);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61556,34924,'Nightmare Effigy',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(61338,61556,-10,0,1,1,0),
(61339,61556,-10,0,1,1,0),
(61340,61556,-10,0,1,1,0),
(61341,61556,-10,0,1,1,0);

-- Into the Dream III
delete from quest_template where entry = 40959;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40958,40959,2,616,60,58,512,0,'Into the Dream III','We will need more materials to attune you to the Dream. Your physical form could become trapped there, and you would surely fall prey to the Nightmare. To ensure your safe passage through the Dreamway, I require the following items: first, a Binding Fragment of Cliffbreaker Giants. This powerful relic will bind your spirit to Azeroth, offering protection in the event of any failures along the way. $B$BNext, an Overloaded Arcane Prism from Dire Maul shall serve as your shield against the magical tempests that permeate the Dream.$B$BAdditionally, acquire a Slumberer\'s Shard, retrieved from our fallen brethren in the depths of the Sunken Temple. This shard possesses the ability to cloak your presence from the defenders of the Dream.$B$BLastly, seek out a skilled blacksmith who can craft an Arcanite Rod. $B$BOnce you have gathered these items, seek out Itharius, brother of Eranikus, in the Swamp of Sorrows. We need his blessing to grant you access to the Dream, as this decision is not mine to make.','Gather a Binding Fragment from Cliffbreaker Giant in Azshara, Overloaded Arcane Prism from Arcane Torrents in Dire Maul West, Slumberer\'s Shard from Weaver in Sunken Temple and an Arcanite Rod. Report to Itharius in Swamp of Sorrows with the collected items.','What is it?','What do you want, mortal? What brought you to this forsaken place?$B$BWait... I sense an aura of the Dream from you.',61559,1,61557,1,61558,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,57000,9500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61326, 40959);
replace into creature_involvedrelation	(id, quest) values ( 5353, 40959);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61557,40145,'Slumberer\'s Shard',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4),
(61558,898,'Binding Fragment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4),
(61559,36693,'Overloaded Arcane Prism',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(5720,61557,-100,0,1,1,0),
(6146,61558,-50,0,1,1,0),
(6147,61558,-50,0,1,1,0),
(14399,61559,-100,0,1,1,0);

-- Into the Dream IV
delete from quest_template where entry = 40960;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40959,40960,2,616,60,58,0,0,'Into the Dream IV','<Itharius listens attentively to your account, his eyes filled with wisdom and compassion.>$B$BI understand. Though Ralathius may have acted impulsively, his intentions were noble. He lacks full comprehension of the unfolding events and his destined role within them.$B$BAs I have remained vigilant here, witnessing the corruption of my brethren by the insidious Nightmare, my heart aches to learn of Solnius\'s unfortunate fate. Such a tragedy befalls us all.$B$BI am on the precipice of unraveling the enigma that shrouds the Nightmare, seeking the means to vanquish it once and for all. Perhaps, in your valiant quest, you shall unearth a vital piece of knowledge that will empower us to triumph. Take this Command, bearing my blessing, to Ralathius. He shall grant you passage into the Dream, as decreed by my authority.','Bring Itharius\' Command to Ralathius at Nordanaar in Hyjal.','Yes?','You have my deepest gratitude for gathering the materials I\'ve asked you for. With the collected items and Itharius\'s benevolent blessing, we are now ready to peer into the realm of the Dream and attune you to its potent energies.',61560,1,61557,1,61558,1,61559,1, 0,0,0,0,0,0,0,0, 0,0, 0,21000,3500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 5353, 40960);
replace into creature_involvedrelation	(id, quest) values (61326, 40960);

update creature_template set script_name = 'npc_itharius' where entry = 5353;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61560,40146,'Itharius\' Command',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,8);

-- Into the Dream V
delete from quest_template where entry = 40961;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40960,40961,2,616,60,58,0,0,'Into the Dream V','With the gathered items in my possession and the profound knowledge bestowed upon me, I shall now initiate a sacred ritual that will serve as a conduit to the mystical energies of the Emerald Dream. Through this ancient ceremony, we shall establish a harmonious connection, ensuring your safe passage into our revered realm.$B$BAs I invoke the ancient incantations and channel the essence of the Dream, the veils between our worlds shall part, revealing a pathway of tranquility and wisdom. The ethereal mists of the Dream will embrace you, shielding you from harm and guiding you through its verdant landscapes.$B$BEmbrace the majesty of the Emerald Dream!','Wait until the ritual is finished.','The Emerald Dream is in danger.','Lady Ysera... we will not fail you. We will not fail the Emerald Dream.',0,0,0,0,0,0,0,0, 60045,1,0,0,0,0,0,0, 0,0, 0,21000,3500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Wait until the ritual is finished');

replace into creature_questrelation		(id, quest) values (61326, 40961);
replace into creature_involvedrelation	(id, quest) values (61326, 40961);

REPLACE INTO creature_template VALUES
(60045, 328, 0, 0, 0, 0, 'quest_40961_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Nightmare Apparition, level 60, faction:16, health: 4822, damage: 172-205, armor 3100, Display ID: 10553).
REPLACE INTO creature_template VALUES
(61544, 10553, 0, 0, 0, 0, 'Nightmare Apparition', NULL, 0, 60, 60, 4822, 4822, 0, 0, 3100, 16, 0, 1, 1.14286, 0, 18, 5, 40, 0, 1, 172, 205, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
-- Ysera (boss, faction 35, health: 3198000, Display ID 7806, scale 0.5, put shadow effect on it).
(61545, 7806, 0, 0, 0, 0, 'Ysera', NULL, 0, 63, 63, 3198000, 3198000, 0, 0, 4712, 35, 0, 1, 1.14286, 0.5, 20, 5, 0, 3, 1, 1999, 2650, 0, 290, 1, 2800, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 752, 1034, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
-- Ursoc (boss, faction 35, health: 3198000, Display ID 11909, put shadow effect on it).
(61546, 11909, 0, 0, 0, 0, 'Ursoc', NULL, 0, 63, 63, 3198000, 3198000, 0, 0, 4712, 35, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 1999, 2650, 0, 290, 1, 2800, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 752, 1034, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
-- Goldrinn (boss, faction 35, health: 3198000, Display ID 9567, put shadow effect on it).
(61547, 9567, 0, 0, 0, 0, 'Goldrinn', NULL, 0, 63, 63, 3198000, 3198000, 0, 0, 4712, 35, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 1999, 2650, 0, 290, 1, 2800, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 752, 1034, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Add a clickable dialogue option to Ralathius: I'm ready. Start the ritual.
-- Ralathius begins to cast a spell with the animation of Teleport:Moonglade
-- < 3 seconds>
-- Ralathius: I invoke the Ancient Pact! Dreamways, open before me. 
-- <5 seconds>
-- Ralathius: Something is wrong...
-- <5 seconds>
-- Ralathius: I invoke the Ancient Pact! Open the way to the Emerald Dream!
-- <5 seconds>
-- 3 Nightmare Apparitions should spawn and attack the player and Ralathius. When they are killed the event should continue.
-- Ralathius: These were the minions of Nightmare for sure. Oh, what is happening...
-- 3 NPC should spawn around Ralathius: Ysera, Ursoc, Goldrinn.
-- Ysera: Who dares to open the Dreamways?
-- <5 seconds>
-- Ralathius: Lady Ysera... 
-- <5 seconds>
-- Ysera: Speak quickly, Ralathius. The Nightmare is advancing on our positions.
-- <5 seconds>
-- Ralathius: We are in need of your blessing, my lady. I’ve found a mortal soul willing to stop the Awakening.
-- <5 seconds>
-- Ysera: Not a moment too soon. Solnius already enclosed himself in the Emerald Sanctum. The Awakening is upon us .
-- <5 seconds>
-- Ysera: Yet, I cannot grant my blessing to this mortal. It is too dangerous. The Dreamway in Hyjal can be destroyed at any moment.
-- <5 seconds>
-- Ysera: Larannikus has fallen to the Nightmare. In this very moment, he is working to sever the connection of the Dream to the World Tree.
-- <5 seconds>
-- Ysera: If this happens… The reflection of Nordrassil in the Dream would be vulnerable to attack, and the Dreamways would close, trapping those without the innate ability to Dreamwalk.
-- <5 seconds>
-- Ysera: Larannikus must be slain before I grant my blessing. 
-- <5 seconds>
-- Ursoc: Lady Ysera, they are approaching. We must go.
-- <5 seconds>
-- Ysera: Ralathius, my faithful servant. Fate of the Emerald Dream is in your hands.
-- <5 seconds>
-- Ysera, Ursoc and Goldrinn despawn.
-- < 3 seconds>
-- Ralathius: Oh no...
-- Ralathius stops his cast.
-- The quest is marked as complete after listening to this event. 

-- Into the Dream VI
delete from quest_template where entry = 40962;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40961,40962,2,616,60,58,0,0,'Into the Dream VI','Your safe passage into the Dream is impossible while Latharius attempts to sever the Dreamway. If you were to proceed, you would risk becoming trapped and succumbing to the clutches of the Nightmare.$B$BSeek out Larannikus and put an end to his suffering. As confirmation of this act, retrieve a gemstone bestowed upon him by Ysera. He is likely still in possession of it, a Nightmare’s mockery of our legacy.$B$BYou will find Larannikus somewhere within Hyjal, end him.','Slay Larannikus and retrieve the Charge of Ysera for Ralathius at Nordanaar in Hyjal.','Is Larannikus dead?','Larannikus has met his demise, and you have successfully retrieved the Charge of Ysera. With this significant accomplishment, you are now prepared to undergo the attunement process to the Emerald Dream. Remain still, mortal, as I bestow upon you the Gift of Ysera.',61561,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,39000,6500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61326, 40962);
replace into creature_involvedrelation	(id, quest) values (61326, 40962);

-- Required creature kills: 1 Larannikus.
-- Required items: 1 Charge of Ysera (display id 31204, stackable to 1, drops from Larannikus at 100%).
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61561,31204,'Charge of Ysera',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);
-- Upon completing this quest player should get access to enter Emerald Sanctum.

-- Head of Solnius
delete from quest_template where entry = 40963;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40963,2,616,60,58,0,0,'Head of Solnius','You hold in your hands the severed head of Solnius, once a noble and revered dragon, now corrupted by the insidious Nightmare. The sight is both awe-inspiring and unsettling, as the twisted patterns and symbols on his scales exude an eerie darkness. It is a testament to the power and malevolence of the Nightmare that even a mighty dragon could be so thoroughly corrupted.$B$BWith Solnius vanquished, the news of his demise will bring both relief and satisfaction to Ralathius in Nordanaar. The green dragonkin will rejoice in knowing that a formidable threat has been eliminated, and the Emerald Dream can rest a little easier.','Bring the Head of Solnius to Ralathius at Nordanaar in Hyjal.','What is it, mortal? You return from the Dream?','You have done it. The Awakening has been stopped.$B$BI will contact Ysera now. She must know.$B$BPlease, take this item as a token of gratitude from the Green Dragonflight.',61215,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,57000,9500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61195,1,61194,1,61193,1,0,0, 0,0,'');

replace into creature_involvedrelation	(id, quest) values (61326, 40963);

update item_template set start_quest = 40963 where entry = 61215;

update quest_template set type = 64 where entry = 40963;
