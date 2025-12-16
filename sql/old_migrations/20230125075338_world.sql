UPDATE quest_template SET Objectives = 'Eliminate the Scarlet forces outside the Scarlet Monastery, then return to Deathguard Burgess in Brill.' WHERE entry = 60116;

UPDATE creature SET spawntimesecsmin = 300,spawntimesecsmax = 300 WHERE guid IN (2572651, 2572655, 2572656);


UPDATE creature_addon SET display_id = 18212 WHERE guid IN (30646, 30725, 31322, 31327, 33917, 73251);
UPDATE creature_addon SET display_id = 18213 WHERE guid IN (30634, 31323, 31326, 2530572);

UPDATE creature_addon SET display_id = 18212 WHERE guid IN (30646, 30725, 31322, 31327, 33917, 73251);
UPDATE creature_addon SET display_id = 18213 WHERE guid IN (30634, 31323, 31326, 2530572);

UPDATE quest_template SET
Details = 'You see kid, every time you add a pet to your collection you become stronger. Your pet is like an extension of you. We goblins may not be the strongest, but we got the biggest brains. Let the animal be your strength while you make with the plans!$B$BThat goes double for showing ''em who''s boss, feel me? Why wrestle a beast into submission when you can outsmart ''em?$B$BLet''s turn things up a notch. You''re gonna have to get your boots wet for this next critter. This one really likes the sea, particularly past that Troll village down south.$B$BYou know the one... Sen''jin Village? Down near the Echo Isles. Keep your eyes peeled for a Surf Crawler, slap the ol'' "Friend Request" on ''em, and bring it back to me.',
RequestItemsText = 'Well? C''mon, kid! If you can''t even tame a crab, you can kiss your dreams of taming a crocolisk goodbye!',
OfferRewardText = 'You made that look easy! You got a bright future in this hunter business, pal. You''ll be bagging dragons in no time.$B$BYou can take that to the bank. I got a good intuition about these sorta things.'
WHERE entry = 80332;	

UPDATE quest_template SET
Objectives = 'Use the Taming Rod to tame an Armored Scorpid. Practice your skills, then return the Taming Rod to Viz Fizbeast in Razor Hill.',
Details = 'Time for your final exam, champ. You better be ready, ''cause otherwise you ain''t coming back breathing. Our Orc friends call these babies Armored Scorpids.$B$BThey''re quick on their tiny legs, and their carapace is light yet durable. Kinda goes with the whole "armored" thing. They got a deadly sting to boot, so if you get your hands on one, ain''t no one gonna push you around no more, ever.$B$BWhen you get back, I''m gonna show you something real nice. Let me tell you, pal, these skills are beyond mad! You''ll be able to tame whatever beast you want, and call ''em and dismiss ''em at your leisure.',
RequestItemsText = 'Move it, kid. You want to miss your chance to be a legendary beast-tamer? I mean, same goes for dying to scorpid venom, so... Don''t take that big a chance.',
OfferRewardText = 'Look at you, kid! You grew up so fast. It''s enough to make this old goblin tear up. Almost. Thanks for the merchandise. These are some great specimens. Now, you''re gonna have to choose one of your own.$B$BI''ve taught you all I know and given you my spare collar. It''s pretty much unbreakable, but try to be careful with it anyway, alright?$B$BYou can summon and dismiss a pet whenever you want from now on. Flex that confidence you been building up with this training and all the critters in the land will call you master before long.$B$BIn no time at all, you and your pet will make an unstoppable duo! Payment due for these lessons when that day comes, by the way.'
WHERE entry = 80333;

UPDATE quest_template SET
Details = 'One last tip, kid! For a small addition to your tab, of course. There''s an orc in Orgrimmar who goes by the name Ormak Grimshot. He can teach you how to train the beasts you tame.$B$BWhat? You thought you were gonna become a big-shot hunter with a pet who can''t learn some fancy tricks? I like you, kid: you''re a laugh!$B$BYou can find Ormak in the Valley of Honor, as the orcs call it. Now hit the road! Next time we meet, it''ll be when I''m on your doorstep to collect my payment.',
RequestItemsText = '',
OfferRewardText = 'A young $c, I see. Yes, I will grant you the skills you need to train and guide your pet. Not only will you be able to teach your pet new abilities, you will now be able to feed your pet, as well as revive it, should it fall in battle.$B$BNow, go, $c. We will speak again, at a later date.',
RewMoneyMaxLevel = 240
WHERE entry = 80334;

UPDATE quest_template SET RewXP = 840 WHERE entry IN (40248, 40249);
UPDATE quest_template SET RewXP = 420,RewMoneyMaxLevel = 255 WHERE entry IN (40250, 40262);
UPDATE quest_template SET RequestItemsText = '' WHERE entry = 80330;

UPDATE quest_template SET
RewRepFaction1 = 0,RewRepFaction2 = 0,RewRepValue1 = 0,RewRepValue2 = 0,RewMoneyMaxLevel = 510
WHERE entry BETWEEN 80331 AND 80333;
 
 UPDATE quest_template SET
Details = 'Hello, young hunter. You look to me like you are skilled enough to handle a beast and train it as your companion.$B$BNormally, I''d send you to Grif Wildheart, but I believe you need the help of one of your own kin. Clover Spinpistol in Kharanos should be able to help you.',
RequestItemsText = ''
wHERE entry = 80339;

UPDATE quest_template SET
Details = 'I am Clover Spinpistol, Mountaineer and Sniper. We may be good shots, but unfortunately us little folk aren''t too suited for close combat. No worries, though! You just need to have a beast take the hits for you!$B$BTinker Town''s best and brightest recently made an amazing scientific breakthrough to address our less than stellar record with large animals who find us appetizing and bite-sized.$B$BYou seem like a promising marksman. Just the talent we need in our efforts to retake Gnomeregan! To that end, I''ll teach you how to use the patented G.N.O.E.M.R. Taming Rod.$B$BTake this and try to use it on a Large Crag Boar. Make sure it''s large!'
WHERE entry = 80340;

UPDATE quest_template SET
Details = 'Haha! My, that boar sure is a BIG one, isn''t it? I bet you''d like something more suited to a gnome, though. How about a quick-thinking, majestic Snow Leopard?$B$BYou can find them to both the south and east of here. I''ve recharged your G.N.O.E.M.R. Taming Rod, so you''re ready to go out there and catch a cat!$B$BWatch out, though. They''re far more feisty than that boar! Don''t underestimate them or you might end up as kitty kibble!'
WHERE entry = 80341;

UPDATE quest_template SET
Details = 'One thing I should mention is both the boar and the leopard are fierce offensive pets, but they leave a bit to be desired in defensive capabilities. Since our ranged weapons can pop ANY enemy with ease, what we need is something to keep them busy.$B$BHmm... I''ve got it! The Ice Claw Bear is sturdy and tenacious. When facing an angry bear, who would choose to go after a tiny gnome?$B$BIce Claw Bears can be found east of Kharanos. You have enough experience and skill under your belt now, so you should be able to handle one.$B$BOnce you''re done, I''ll give you access to the finalized Taming Rod so you can tame your own pet at will!',
OfferRewardText = 'Well done, $N! Marvelous! Together we''ve proven to those snooty dwarves that we gnomes are just as capable Mountaineers as they are! Your brilliant success is more than enough to stifle any further snickering and teasing.$B$BFor that, I thank you, $N. As promised, here''s the schematic and instructions for the G.N.O.E.M.R. Taming Rod!$B$BNow get out there, find yourself a companion, and show the world Gnomeregan''s best!'
WHERE entry = 80342;

UPDATE quest_template SET
Details = 'Now that you''ve got your rod and all, $N, you can tame companions of your own to help advance the cause of all gnomekind!$B$BHowever, taming them isn''t enough on its own. They also need training, and sadly, I don''t have that knowledge to share. Even though you''ve done well under my tutelage, I can''t mentor your pet! For that, you''ll need to find someone else.$B$BI know just the person for the job, too! If you''re ever in Ironforge, there''s a dwarf named Belia Thundergranite in the Hall of Arms. She should be able to help you out. Be sure to tell her I sent you!$B$BGood luck!',
RequestItemsText = '',
OfferRewardText = 'Spinpistol sent you? That must mean her hairbrained scheme panned out after all. That wee lass you trained with actually managed to accomplish her crazy scheme of taming beasts, then? I''ll be... And you helped her? You''re clearly more than meets the eye, already on your way to becoming a great $c, I see.$B$BVery well. I can bestow you with the skills you need to train and guide your pet. Not only will you be able to teach your pet new abilities, but you will also be able to feed your pet as well as revive it if it falls in battle.$B$BRemember that the key to getting the most from your new pet is to respect it and treat it well. In turn, your pet will be your most loyal friend.'
WHERE entry = 80343;

UPDATE quest_template SET OfferRewardText = 'A young $c, I see. Yes, I can bestow you with the skills you need to train and guide your pet. Not only will you be able to teach your pet new abilities, you will now be able to feed your pet, as well as revive it, should it fall in battle.$B$BNow, go forth. May the Earthmother guide you on your path. We shall speak again, at a later date.' WHERE entry = 6089;

UPDATE quest_template SET OfferRewardText = 'Yes, I believe that it is time...' WHERE entry = 6072;
UPDATE quest_template SET OfferRewardText = 'Yes, it is time to train you...' WHERE entry = 6722;

UPDATE quest_template SET
Details = 'Greetings, dark ranger aspirant. You appear more than capable of handling a beast to claim as your own. Though I may train you in the ways of the hunter, it is not I who can teach you mastery over beasts.$B$BYou must speak to Liott Maneskin in Brill. Only he possesses the knowledge you seek to enthrall the creatures of this wretched land.',
RequestItemsText = '',
OfferRewardText = 'And you are...?$B$BOh, yes. Morpheus and Lanissa spoke on your behalf. I suppose it is time, then, to offer you my expertise.'
WHERE entry = 40261;

UPDATE quest_template SET
Details = 'You and I were once citizens of Lordaeron, $N. We are no strangers to the forests, and likewise, to the wolves that lurked in the shadow of night. Terrified of their wailing howls.$B$BYet now, even they have succumb to the corruption of the Scourge plague, faring no better than we. As you can see, Blackpaw here is my loyal pet that I keep ever by my side, a darkhound I tamed by no special skill. The Forsaken need only sheer force of will to dominate.$B$BYou will find that the creatures of this land vary in how they respond to our... condition. While there are those who think nothing of the smell of death, some may seek to make a meal of a carcass like yours. For this reason, I have made special preparations for our Forsaken kin who seek a beast of their own.$B$BI do not impart this gift lightly, $N. Show me you can dominate wild beasts without it, first. Go, return with a Decrepit Darkhound.',
RequestItemsText = 'Do not waste my time. The Dark Lady has no need of the weak, nor do I for that matter.',
OfferRewardText = 'Most excellent. I can see this darkhound is eager to sink its fangs into the Scourge and gnaw on their bones.$B$BYou have performed... adequately.'
WHERE entry = 40248;

UPDATE quest_template SET
Details = 'The darkhound was but the first of your trials, hardly an appropriate test of your will. Nonetheless, you have earned some respect. The next beast you will subdue will not be so easily won over.$B$BThe duskbats of Tirisfal are large, gruesome beasts who were drawn here by the stench of death all around. They are capable of growing large enough to be used for transportation akin to the gryphons of the dwarves of Khaz Modan. Their screech can bring agony even to the undead, making them formidable foes.$B$BThis also makes them ideal allies. Every beast in this world has adapted its own unique means of fighting and defending itself. Fight beside them, learn from them, never hesitate to adapt so long as your mind still reigns over your diseased body. The beasts, too, will learn from you and adapt.$B$BStill, accepting such unnatural abberations as us may prove more difficult. Find a Greater Duskbat, exert your will, and bring it to me.',
RequestItemsText = 'Being undead does not make you a cripple. My expectations of you are no lower than if you were still alive.',
OfferRewardText = 'This creature flies around you with a spirit of ease. It would seem that you have earned its trust.$B$BYou are improving.'
WHERE entry = 40249;

UPDATE quest_template SET
Details = 'As you can see, hardly a living creature remains in these forsaken lands. Such as it is, your next task is to bring under your sway another victim of the Scourge plague. An undead pet is not so easily conquered, however.$B$BLordaeron once saw brown bears migrate from Silverpine in the summer, hiding in our forests and scavenging the farmer''s crops. Those that remained during the plague are now here forever. Having broken the cycle of life and death like yourself, they are lost, confused, resentful.$B$BAs your skill grows, so too does that of your beasts. Yet for a creature no longer of the living, it will take great patience and dedication to reach deep into their wayward minds and find that lingering spark of intellect. Only then can you train it.$B$BThe bear is a strong companion who will stand between you and harm, ferociously keeping your foes at bay that you may shoot them where they stand. Find a Plagued Bear, awaken its mind, and bring it to me.',
RequestItemsText = 'Time and dedication this path takes. As your luck would have it, I have begun to see you possess both.',
OfferRewardText = 'This beast no longer feels lost, your strength of will earning its trust and coaxing from it once suppressed emotions. Though we dominate, we are not incapable of affection for our new companions.$B$BNever forget that each beast has its own story. Your actions will bring to them salvation... or destruction.'
WHERE entry = 40250;

UPDATE quest_template SET
Objectives = 'Talk to Diane Willowfield in the War Quarter of the Undercity to learn the incantation to tame beasts.',
Details = 'You have learned how to dominate beasts by your own skill, but you must also learn to train them. Understand that some beasts will not accept you as their master. As an undead being you may seem to them a delicious snack, or repulsive to their instinctive necrophobia.$B$BAided by an incantation devised by the Cult of Forgotten Shadow, we can soothe the mind of a beast, altering its perception of you as vibrant and healthy. Only use it on creatures that your condition repels, that are stricken with terror and distress by what you are.$B$BThe one who can teach you the incantation as well as the means by which to train your beasts is Diane Willowfield. You will find her in the War Quarter of the Undercity. You will gain a variety of potent skills on your journey that will serve you and your companion well, but without her assistance, you cannot hope to make proper use of them.$B$BGo now! Show the living that the Forsaken are no mere walking corpses. Dark Lady watch over you.',
RequestItemsText = '',
OfferRewardText = 'Well, well, what have you brought me? My, what a gorgeous, fresh specimen! Allow me to assist you with that.$B$BI will teach you the incantation by which you can persuade creatures who still walk among the living to serve you faithfully.'
WHERE entry = 40262;

UPDATE quest_template SET
Objectives = 'Speak with Diane Willowfield in the War Quarter of the Undercity.',
Details = 'Yes, yes, I understand why Liott sent you to me. Without that incantation, you would have had quite the struggle taming all but the most indiscriminate of beasts. Now you may tame living creatures the world over!$B$BBut you must know that is not enough. You must realize that the true power of the creatures you turn to your whims lies in bestowing them the talents you observe in the wild. It is not enough to simply sic a wild animal upon your foes.$B$BIf you wish to tap into the true potential of your pets, then speak to me once again. I will spare no detail in enlightening you in the ways of the beast master.',
RequestItemsText = '',
OfferRewardText = 'I will now grant you the skills you need to train and guide your pet. Not only will you be able to teach your pet new abilities, you will now be able to feed your pet, as well as revive it, should it fall in battle.$B$BNow, go. Gather your beasts and turn them to the cause of the Dark Lady.'
WHERE entry = 80755;

UPDATE quest_template SET
Details = 'The Dark Ranger, Lanissa, advised me to call on you specifically for a task after you''d finished your training. She and I agree that this will be a suitable demonstration of your skill and dedication to the Forsaken''s cause.$B$BEven before the plague struck, our current mayor still presided over Brill. Boltrus was the mayor''s assistant, a quiet yet competent man. He was sweet on one of the girls from the surrounding farms, and there were rumors about a clandestine rendezvous.$B$BAlas, touched by the plague and beyond the salvation of the Dark Lady, Boltrus haunts Tirisfal as a Scourge fiend. The mayor has asked that his suffering be put to an end. You can find him within the barn of the Balnir Farmstead. Perhaps he clings to memories of nights spent in that barn with her.$B$BFind Boltrus, end his suffering, and bring his remains back to Dark Ranger Lanissa. Perhaps then he can find peace. Your mercy will be rewarded.',
OfferRewardText = 'You have done well.$B$BIt is a tragedy what all the Scourge took from many of us beyond our sanity. That Boltrus still clung to emotions from his past life stirs something within me. I wonder... By another fate, could I have been in his place? A barely sentient yet mindless husk?$B$B... Alas.',
ReqCreatureOrGOId1 = 0,
ReqCreatureOrGOCount1 = 0
WHERE entry = 40263;

UPDATE quest_template SET Details = 'It\'s probably one of the most potent poisons in the world, $r!$B$BI\'ve overheard the Blackrock speaking about its lethality in my jaunts into the Spire. They call it \'Mother\'s Milk\', named after Mother Smolderweb, the big nasty spider in the Skitterweb cave.$B$BNow here\'s what I need from you: A live sample of the Milk, flowing through YOUR veins. Just bringing me the gland won\'t be enough! Get her to poison you and come back to me!$B$BThen... I get to milk ya!$B$B<Rubs his hands together in anticipation.>' WHERE entry = 4866;

UPDATE quest_template SET Details = 'Time\'s a wastin\', $glad:lass;. It\'s time for you to return home to Darnassus. Priestess Alathea\'s sent word here that you\'re to return there for training. Seems they feel you\'re ready to be tested much like those who serve the Light. You should head out whenever you can. Alathea\'s message said that she\'d be waitin\' for you in the Temple of the Moon. Good luck.' WHERE entry = 5675;

UPDATE quest_template SET Details = 'Hey there, friend! If I were to say to you, \'Don\'t you think that soldiers should have food to eat like anyone else?\', you would of course reply, \'yes\'. I agree with you 110%! I\'m glad we\'re in accord. All I need for you to do is to head out there, fish up a whole bunch of raw rainbow fin albacore, and then cook it all up and bring it back to me right here. Mmm, mmm, I can taste it already.' WHERE entry = 8524;

UPDATE quest_template SET Details = 'It be a nice day for fishin\', don\'t\'cha think mon? Good thing, cuz I be needin\' a lot of fish it lookin\' like. The Horde, they askin\' me to be in charge of collectin\' a ton of the spotted yellowtail for them. They say they needin\' it for the war they getting\' ready for at Ahn\'Qiraj. I say to them I do the best I can. So I be needin\' to get some help. You gonna be helpin\' me, $c?' WHERE entry = 8613;

UPDATE quest_template SET Details = '\'Ey, mon, come \'ere real quick, Odo\'s got sum words fo\' ya. I see ya be crawlin\' \'round Quark\'s gamblin\' bar and I be havin\' this feelin\' in me gut that be tellin\' me somethin\' be at work \'ere.I be thinkin\', he be doin\' sumthin\' under tha\' table, mon. A goblin ya can trust be as rare as a beautiful troll woman, and let me tell ya, they do be pretty ugly.So, would ya keep an eye open for ol\' Odo?This be official business, and I be payin\' ya. Jus\' go check tha\' cargo and maybe sum paperwork, and keep an eye on tha\' mon called Sturk. He be an associate of Quark. If anythin\', I think he be the one smugglin\' stuff.' WHERE entry = 80309;

UPDATE quest_template SET
Title = 'Stay Awhile and Listen...',
Details = 'Hmm, another one? Very well.$B$BYou seek to prove yourself to your people, no? To rise above all others as the strongest, no? To leave behind a legacy of courage and heroism, rather than to fade from history as yet another wanderer of no consequence, no?$B$BI have your attention, do I? I have just the offer for you, then. I will grant you the opportunity to become Immortal, should you prevail over death in your journey for glory.$B$BHowever... If you die, you shall not return. Your soul shall be forever severed from your body.$B$BThis offer I extend to you only here and now. There will be no second chance should you refuse my deal.',
RequestItemsText = '',
OfferRewardText = 'Well then, have you decided, $c? Do you have what it takes to become Immortal? Once you start walking this path, you will not be able to abandon it. It will forever dominate your destiny. Only those who follow the same path will be of aid to you.$B$BNo mail will ever bring you good news. No auction will take your money.$B$BVery well. Should you die, your soul will forever be mine. If you survive the trials ahead, we shall meet again one day.'
WHERE entry = 80388;

UPDATE creature SET spawntimesecsmin = 36000,spawntimesecsmax = 36000 WHERE guid BETWEEN 2565302 AND 2565344;

UPDATE item_template SET
dmg_min1 = 30,
dmg_max1 = 48,
spellppmRate_1 = 0.6
WHERE entry = 80811;

UPDATE quest_template SET
Details = 'While you were helping me out, this rune was given to me to pass on to you. Take some time to read it when you have a chance. I''m thinkin'' it came from the hunter trainer Thorgas. Take a gander at it and go find him inside Anvilmar when you''ve a chance.',
RequestItemsText = 'Ya made it! Good to hear! Betcha didn''t have to track me to find the place either. Haha!$B$BOur profession is pretty steeped in tradition, $N. Learning the ways of the land. Learning to track a bear through the mountains. Even just surviving on wits alone takes a great deal of courage and cunning. Think you''re capable?$B$BCan''t say I''m sure ye''ve got what it takes. A gnome hunter, eh? I can see you''re determined to succeed and put your own twist on the profession, though, so who am I to stop ye?',
OfferRewardText = 'One thing you should always remember is that you gotta respect the world you''re livin'' in. The beasts that choose to fight along side you; the shine of your weapon; the weight of your ammo; the bite of a bitter wind; all these things you need to know intimately.$B$BFixated as the gnomes may be on technology and machinery, never forget that respect for nature it essential to a hunter. I''ll do what I can to help you, but most of the work''s up to you. Anytime you think you''re ready, come back and talk to me. I''ll train you when I can.'
WHERE entry = 80350;

UPDATE quest_template SET
Details = 'Pardon me $c, might I ask a favor of you? I''m sure my association with Grimrizz and his dark rituals does little to put you at ease, but I assure you I''m no power-thirsty demon-dabbler! This doesn''t suit me...$B$BTruth be told, I always wanted to be a blacksmith. No, not an engineer. Not all gnomes are engineers, you know! From the moment I laid eyes on the Great Forge, I''ve dreamed of working beside the great Tormus Deepforge.$B$BThe suffocating heat of the forge''s flames, the shrill cry of hammers striking hot iron, the glint of a finely crafted blade. Yes, nothing would make me happier!$B$BIf you''re headed to Ironforge, won''t you please take this letter to Tormus Deepforge for me? It''s an application to join the Blacksmith Guild in Ironforge. Tormus should be near the Great Forge.',
RequestItemsText = 'Here to learn how to swing a smithing hammer, friend?',
OfferRewardText = '<Tormus takes the letter and reads it. He furrows his brows before giving a hearty laugh.>$B$BA gnome looking to be a blacksmith? It has been a long time since we had a gnome join our ranks. Well, why not? Perhaps he''ll be the next Klockmort Spannerspan!$B$BI appreciate you bringing this to me, $c. Here, some extra stones to give your weapon an extra edge in battle.'
WHERE entry = 60142;

UPDATE quest_template SET NextQuestInChain = 40516 WHERE entry = 40515;
UPDATE quest_template SET NextQuestInChain = 40517 WHERE entry = 40516;