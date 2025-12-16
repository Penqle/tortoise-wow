-- Hotfixes for broken quests:

UPDATE `gameobject_template` SET `flags`= 0 WHERE `entry` = 1000082;
UPDATE `gameobject_template` SET `flags`= 0 WHERE `entry` = 3000209;

UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 51299 WHERE `entry` = 60041;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 80120 WHERE `entry` = 80107;

-- Grammar fixes from Joe:

UPDATE `quest_template` SET
`details` = 'Alright, pal, listen up! I know this is your first job for the Venture Company, so I\'ll speak real slow for ya.\n\nWe\'re up here to find a valuable treasure, y\'hear? Supposed to be worth more than half the jewels in Undermine, and Boss can\'t wait to get his hands on it. The last crew he sent up here never sent anything back. Thievin\' jerks think they\'re gonna cut and run from the boss? You better believe Boss\'ll track them down and have their hides. Boss says don\'t come back empty-handed, so let\'s get to work.\n\nWe busted up a few gizmos on our flyer gettin\' down here, but luckily for us, the last crew seems to have left their bots behind. Run around and grab some whizmagigs from them, would ya?'
WHERE `entry` = 80100;

UPDATE `quest_template` SET
`details` = '<Among the remains of the elemental, you find a note soaked in oil and scorched at the edges. Most of the writing is barely legible, but you can decipher one critical excerpt.>\n\n... stupid boss didn\'t tell us anythin\' about this place. Not a norm ... tomb. Somethin\' bad buried ... center of the forest ...\n\n<This seems worth reporting back to the foreman.>',
`offerrewardtext` = '<Nert looks over the note.>\n\nWell... That probably ain\'t good. But we didn\'t come this far just to quit because something scared off the last crew. Can\'t go back to the boss empty-handed, right?\n\n<Nert looks troubled as he waves you off, perhaps trying to convince himself more than you that all is well.>'
WHERE `entry` = 80105;

UPDATE `quest_template` SET
`offerrewardtext` = 'Nice! Just you wait. Mama Sprat\'s gonna make magic out of these here buzzard bits.\n\nYou won\'t even know you\'re eatin\' a bird that feeds on rotting corpses!\n\nUh... Forget I said that.'
WHERE `entry` = 80101;

UPDATE `quest_template` SET
`offerrewardtext` = 'Nicely done, recruit! Consider yourself officially on my star employee list. Stick with old Nert and you\'re gonna go far!\n\nOh, uh... I guess if I\'ve got you doing bruiser work, it might be worth arming you with something more than sharp wits. Just don\'t tell anyone I gave you this weapon for free!'
WHERE `entry` = 80102;
 
UPDATE `quest_template` SET
`details` = 'Hey, $N! Employee of the day! How\'s about an unpaid break?\n\nWhile you were busy doing my... I mean YOUR job, Grizzie the Enforcer came around looking for you. Said something about him owing you a favor? Here, he mentions it in this letter... which I may or may have not dropped into my buzzard wings.\n\nDon\'t take too long, though.\n\nYour break is already half over!',
`requestitemstext` = '$N, pal, great to see ya. Let\'s have a quick chat.',
`offerrewardtext` = 'If it isn\'t my old buddy, $N! Man, we\'ve made some good memories together, yeah?\n\nI ain\'t giving out no discounts, though. You know how it is.'
WHERE `entry` = 80115;

UPDATE `quest_template` SET
`details` = 'Well, I guess we figured out why the elves are up here. The whole dang forest up ahead is on fire! And it\'s gotta be goblin-made, too. No one else uses the kind of oil that burns that long!\n\nThat\'s Undermine stuff, kid. There ain\'t no way a gnome could get their hands on it.\n\nI don\'t know what\'s goin\' on, but I don\'t like this. Go out there and bring back some of that oil.\n\nMaybe it\'ll tell us what happened before we got here. If not, at least we\'ll have topped off our own oil supplies!'
WHERE `entry` = 80103;

UPDATE `quest_template` SET
`details` = 'Glad you\'re back, $N. You know I love me some gossip, and I bet you do, too. Maybe you\'d care to shed a little light on why your name is on the lips of such bad news?\n\nI hear you owe Leyti Quicktongue some money. Did you gamble all of your savings back home or what?\n\nIs she your loan shark? Do I have to pay for your health insurance? That\'s not gonna happen, pal.\n\nLook, just take this letter she left for you. I don\'t want to hold this thing anymore, especially with that nasty looking green stuff dripping off the corner. Probably acid or poison or something.\n\nShort break, and I mean short!',
`requestitemstext` = 'If it ain\'t $N. You thieving scoundrel.\n\nWhat do you mean it was your gig?',
`offerrewardtext` = 'So peach, you got my money?\n\nNo? What do you mean no?!\n\nTsk, I guess you\'re still a low grade thief. In that case, I guess I could teach you the ropes.\n\nIt\'s not like I like you or anything... You still gotta pay me back!'
WHERE `entry` = 80116;

UPDATE `quest_template` SET
`details` = 'I don\'t envy you right now, kid.\n\nSee, those weird vultures aren\'t the worst thing in the woods. Some of the other bruisers were havin\' a look around, and they found a tomb that looks like it\'s from Uldaman for how old it is.\n\nTried to get close, but they heard some kind of unholy sound coming from inside. These guys have been around for some of the boss\'s "persuasive" interviews before, and they\'ve never heard sounds like that.\n\nSaid it echoed around the hills all unnatural-like, as if it was bouncin\' off trees that weren\'t there.\n\nI\'ll fight elves. I\'ll fight plant monsters. I\'ll fight our own blasted tanks! But I am not messing with some ancient cursed tomb.\n\nI want you to go down there, find out what\'s behind those doors, and deal with it. Do that for me, and you and me are chums for life. There may even be a promotion in your future.'
WHERE `entry` = 80107;

UPDATE `quest_template` SET
`details` = 'Back for more work, $N? I appreciate your dedication to all this scut work, but Mayten Boomrifle is looking for you. Gave me this letter for you and everything, said something about teaching you some proper shootin\'!\n\nHeh, like you need some so-called expert to teach you how to launch metal projectiles or harness explosions. We\'re goblins!\n\nWhatever... Here, take this letter and go pay him a visit. Hurry it up. No stalling, or no meals for you today!',
`requestitemstext` = 'Shhhh, $N. Not so loud. I\'m trying to take that buzzard out of the sky.',
`offerrewardtext` = 'You got my letter, $N?\n\nGood, good. Let\'s do something about your shoddy aim. Before you know it, you\'ll be putting holes in gold pieces from a hundred yards away.\n\nWhat? No, no, no! It was a figure of speech! Don\'t go wasting perfectly good coin.'
WHERE `entry` = 80117;

UPDATE `quest_template` SET
`details` = 'Great work so far, $N. I knew having a mage in our labor force would come in handy. Speaking of handy, how\'s about conjuring up some water for your poor parched foreman?\n\nWhat? You don\'t know how to conjure water yet? You kidding me?\n\nLucky for you, ol\' Nert\'s got a letter for you from someone who can help. Wizette Icewhistle\'s looking for you, so maybe she can teach you some spells.\n\nGet moving, and don\'t come back without some sparkling water!',
`requestitemstext` = 'I been looking for you, $N! I got a new spell I\'d like to try out, and I need an assistant.',
`offerrewardtext` = 'Heya, sweetie! Great to see ya. Ready for Mama Wiz to teach you all these sparklin\' spells?'
WHERE `entry` = 80118;

UPDATE `quest_template` SET
`details` = '$N, pal! Back so soon? W-we\'re pals, right? Heh heh...\n\nBeing honest, you kinda give me the creeps, not unlike Amri Demondeal. She came looking for you, and boy I hope I never have to speak to her again.\n\nYou, uh, do all that freaky demon stuff, too? With the green fire and blood circles and such?\n\nLook, I didn\'t see nothin\'! J-just take this letter Amri left and go do your business. Take as long as you want!',
`requestitemstext` = '$N! Welcome, welcome. The dark arts await, friend.',
`offerrewardtext` = 'Ooh, just in time! Ready to embrace the shadows?'
WHERE `entry` = 80119;

-- Page text edits:

UPDATE `page_text` SET `text` = 'Hey bub! It\'s me, Grizzie, from Undermine. Remember me?\n\nI\'m writing this here letter to let you know I saw you swinging that weapon at them fools that tried to give you the gutter. It reminded me of the good ol\' days when we were just little runts, and that time you saved me from that hobgoblin!\n\nThanks to you, I trained hard and became a big-shot bruiser, and now I\'m teaching other goblins how to smack. Come by later and let me teach you a thing or two about how to use that thing you\'re flailing around. Make sure you bring your coin purse!', `next_page` = 0 WHERE `entry` = 80150;

UPDATE `page_text` SET `text` = 'Thief! Scoundrel! Son of a Gnome!\n\nDon\'t think I didn\'t hear you were skulking around up here, $N. You got some nerve showing your face in the same operation as Leyti Quicktongue.\n\nYou stole my gig, the greatest heist this side of Azeroth! I would have been filthy rich and vanished without a trace!\n\nUntil you bungled in and screwed everything up. You went and got yourself caught, and I\'ll bet you\'re not laboring for Venture Co. because you wanted to.\n\nNo matter. Come by the collapsed cave and give me back the money you owe me! Maybe you could learn a thing or two from a real Rogue.', `next_page` = 0 WHERE `entry` = 80151;

UPDATE `page_text` SET `text` = 'For $N:\n\nI\'m Mayten Boomrifle, the local big game hunter. Believe it or not, I was going to be on the hunt in Stranglethorn Vale with Hemmet Nesingwary himself. Unfortunately, my debts to the Venture Co. dragged me out here to this dirt hole.\n\nThere\'s not much to shoot out here but buzzards or crows, but that doesn\'t mean you shouldn\'t try to be a proper marksman. I saw the way you were lining up your shots earlier, and I think you could benefit from training with me. For just a few coins, you could learn to be a real sharpshooter.', `next_page` = 0 WHERE `entry` = 80152;

UPDATE `page_text` SET `text` = 'Heya, $N! The name\'s Wizette Icewhistle.\n\nI hear you got big brains and a knack for magic just like yours truly. One day you wished so hard you could blow something up, your hands just caught fire! Am I right?\n\nAmazing what you can do if you just think it hard enough. Like this whole operation full of lunk-heads spontaneously bursting into flame. It\'s so miserable in this hole.\n\nCome pay me a visit and let\'s talk magic! Teaching you some new spells might distract me from thinking this place on fire.\n\nOh, don\'t forget to bring some coin!', `next_page` = 0 WHERE `entry` = 80153;

UPDATE `page_text` SET `text` = 'Hail, $N. I am Amri Demondeal, dark arts practitioner extraordinaire.\n\nWhen I first saw you toiling with the other dregs, I felt an aura similar to mine. I think you\'ve got the chops for summoning demons and conjuring felfire!\n\nI am intrigued, and wish to see what you\'re capable of. Meet me in my cave and let\'s see if you\'ve got what it takes.', `next_page` = 0 WHERE `entry` = 80154;

set @gossip_menu_id = 60905; set @magic_number = 80101;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'How ya doin\', kid? Come give ol\' Mama Sprat a hug. Don\'t be shy!\n\nI gots the best cooking skills around here and I can make anything at hand edible.\n\nI\'ll feed ya well, just like your mama used to. Unless she didn\'t... then think of me as your new mama!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60906; set @magic_number = 80106;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What\'s better than a bag of coins, $N? A bag of coins you pilfered from some sucker\'s pocket. Better than that? One you pried from their cold, dead hands.\n\nI hear you can sell a whole body for some nice coin, too... So don\'t test me.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- New Year Celebrations:

UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmoteDelay1`=3000, `CompleteEmote`=2, `IncompleteEmote`=2, `OfferRewardEmote1`=4, `OfferRewardEmote2`=2, `RewRepValue1`=100, `RewOrReqMoney`=900, `ReqItemId1` = 21545  WHERE `entry`IN (8860, 8861);
UPDATE `item_template` SET `description` = 'Use before 2010!' WHERE `entry` = 21545;

-- https://database.turtle-wow.org/?quest=60041 Suggest removing this requirement for quest completion. 

UPDATE `quest_template` SET `ObjectiveText1` = '', `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 60041;
UPDATE `gameobject_template` SET `flags`=0 WHERE `entry` = 1000082;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 60042;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `entry` = 1650;
UPDATE `quest_template` SET `Details` = 'At last, they sent aid!\n\nThere\'s a large camp full of gnolls led by a mighty gnoll known all over Elwynn as Fedfennel. Rumor has it he\'s been eaten by his own rivals... I digress. The camp is further up to the north, past Stone Cairn Lake.\n\nIt\'s tucked away in a distant corner that the guards don\'t patrol, so the gnolls run rampant out there. Do us all a favor and wipe out a full brigade of them and we\'ll have at least a week of sound sleep.' WHERE `entry` = 60042;
DELETE FROM `gameobject_loot_template` WHERE `item` = 51320;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `entry` = 1000001 AND `item` = 51325;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 1000082;
UPDATE `item_template` SET `class` = 0, `bonding` = 4 WHERE `entry` = 51325;
UPDATE `gameobject_template` SET `data0` = 43 WHERE `entry` = 1000082;

UPDATE `quest_template` SET
`details` = 'Hey, $N! Employee of the day! How\'s about an unpaid break?\n\nWhile you were busy doing my... I mean YOUR job, Grizzie the Enforcer came around looking for you. Said something about him owing you a favor?\n\nHere, he mentions it in this letter... which I may or may not have dropped into my buzzard wings.\n\nDon\'t take too long, though. Your break is already half over!'
WHERE `entry` = 80115;

UPDATE `quest_template` SET
`details` = 'Well, I guess we figured out why the elves are up here. The whole dang forest up ahead is on fire! And it\'s gotta be goblin-made, too.\n\nNo one else uses the kind of oil that burns that long! That\'s Undermine stuff, kid. There ain\'t no way a gnome could get their hands on it.\n\nI don\'t know what\'s goin\' on in this site, but I don\'t like it. Go out there and bring back some of that oil.\n\nMaybe you\'ll find some clues about what happened before we go here. If not, at least we\'ll have topped off our own oil supplies!'
WHERE `entry` = 80103;

UPDATE `quest_template` SET
`offerrewardtext` = 'So peach, you got my money? No? What do you mean no?!\n\nTsk, I guess you\'re still a low grade thief. In that case, I guess I could teach you the ropes.\n\nIt\'s not like I like you or anything... You still gotta pay me back!'
WHERE `entry` = 80116;

UPDATE `quest_template` SET
`details` = 'Alright, pal, listen up! I know this is your first job for the Venture Company, so I\'ll speak real slow for ya.\n\nWe\'re up here to find a valuable treasure, y\'hear? Supposed to be worth more than half the jewels in Undermine, and Boss can\'t wait to get his hands on it. The last crew he sent up here never sent anything back.\n\nThievin\' jerks think they\'re gonna cut and run from the boss? You better believe he\'ll track them down and have their hides. Boss says don\'t come back empty-handed, so let\'s get to work.\n\nWe busted up a few gizmos on our flyer gettin\' down here, but luckily for us, the last crew seems to have left their bots behind. Run around and grab some whizmagigs from them, would ya?'
WHERE `entry` = 80100;

UPDATE `quest_template` SET
`details` = 'Okay, look. A treasure hunter is gonna find some haunted forests from time to time, see? And we can\'t go back to the boss empty-handed. I mean CAN\'T. Like he\'ll have us shipped off to the mines, can\'t.\n\nSo here\'s what we\'re gonna do, yeah? We\'re gonna try and grab the loot and get outta here quick-like. You\'ve done good work so far, kid, so I\'m counting on you for this job.\n\nThere looks to be more of the last crew\'s mechs further in this valley and, uh... some vultures that don\'t look real natural. Clear \'em out, and we\'ll see what\'s in there.'
WHERE `entry` = 80106;

UPDATE `quest_template` SET
`details` = 'Nert might be afraid of a little shadow magic, but you and I know what we\'re doing, yeah?\n\nIt\'s time for you to learn how to summon your first demon! Yeah, I know we\'re in the middle of a crisis, but what better time to have a demon\'s aid?\n\nBesides, we\'re warlocks. Crises are what we\'re about! That and I\'m contractually obligated to arm you to "enforce".\n\nWhile you\'re out on Nert\'s task, I want you to look for something that radiates darkness. That energy condenses into these purple crystals, see? Try to pinch one of those without getting yourself killed.\n\nBring me back one of those crystals, and I\'ll teach ya how to summon an imp. Fair trade, yeah?',
`requestitemstext` = 'Was I not crystal clear? I need a crystal full of shadow magic for the summoning spell.',
`offerrewardtext` = 'Beautiful! This will do nicely.\n\nNow watch and learn, kid - You only get to forcibly rip a demon from the void for the first time once in your life.'
WHERE `entry` = 80121;

UPDATE `item_template` SET `buy_price` = 6040 WHERE `entry` = 84037;
UPDATE `item_template` SET `sell_price` = 6000 WHERE `entry` = 12860;
UPDATE `item_template` SET `sell_price` = 2620 WHERE `entry` = 10038;
UPDATE `item_template` SET `sell_price` = 700 WHERE `entry` = 23578;

-- Modify https://database.turtle-wow.org/?quest=80121 to mirror behavior of quests listed in https://database.turtle-wow.org/?spell=688#taught-by-quest, https://database.turtle-wow.org/?item=6516 could then be removed.

UPDATE `item_template` SET `quality` = 0 WHERE `entry` = 6516;

REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (80121, 2, -61, 4, 0, 6, 0, 256, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80100, 0, 0, 0, 80154, 1, 0, 'This Is In My Contract', 'Nert might be afraid of a little shadow magic, but you and I know what we\'re doing, yeah?\n\nIt\'s time for you to learn how to summon your first demon! Yeah, I know we\'re in the middle of a crisis, but what better time to have a demon\'s aid?\n\nBesides, we\'re warlocks. Crises are what we\'re about! That and I\'m contractually obligated to arm you to \"enforce\".\n\nWhile you\'re out on Nert\'s task, I want you to look for something that radiates darkness. That energy condenses into these purple crystals, see? Try to pinch one of those without getting yourself killed.\n\nBring me back one of those crystals, and I\'ll teach ya how to summon an imp. Fair trade, yeah?', 'Collect a Howling Crystal from one of the creatures of the Grumbling Grove.', 'Beautiful! This will do nicely.\n\nNow watch and learn, kid - You only get to forcibly rip a demon from the void for the first time once in your life.', 'Was I not crystal clear? I need a crystal full of shadow magic for the summoning spell.', '', '', '', '', '', 80170, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 307, 0, 184, 688, 7763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2648
-- Quagmire Shawl text is incorrect #2648

UPDATE `item_template` SET `spellid_1` = 21362 WHERE `entry` = 60929;