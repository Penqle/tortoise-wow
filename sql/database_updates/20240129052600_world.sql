-- Fix chaining of Ashenvale Druids vs Sentinels quests
UPDATE quest_template SET NextQuestInChain = 40802 WHERE entry = 40801;
UPDATE quest_template SET NextQuestInChain = 40803 WHERE entry = 40802;
UPDATE quest_template SET NextQuestInChain = 40804 WHERE entry = 40803;
UPDATE quest_template SET NextQuestInChain = 40805 WHERE entry = 40804;
UPDATE quest_template SET NextQuestInChain = 40806 WHERE entry = 40805;

UPDATE quest_template SET NextQuestInChain = 40808 WHERE entry = 40807;
UPDATE quest_template SET NextQuestInChain = 40809 WHERE entry = 40808;
UPDATE quest_template SET NextQuestInChain = 40810 WHERE entry = 40809;
UPDATE quest_template SET NextQuestInChain = 40811 WHERE entry = 40810;
UPDATE quest_template SET NextQuestInChain = 40812 WHERE entry = 40811;

-- Fix chaining of Gurky baby Murloc pet quests
UPDATE quest_template SET NextQuestInChain = 40541 WHERE entry = 40540;
-- Alliance
UPDATE quest_template SET NextQuestInChain = 40545 WHERE entry = 40542;
UPDATE quest_template SET NextQuestInChain = 40546 WHERE entry = 40545;
-- Horde
UPDATE quest_template SET NextQuestInChain = 40544 WHERE entry = 40543;
UPDATE quest_template SET NextQuestInChain = 40547 WHERE entry = 40544;

-- Holy shit that's a lot of text fixes
UPDATE quest_template SET
Details = 'If you are sufficiently prepared, then we should begin. Let me explain the process to you.$B$BI will begin by creating the basic summoning circle. When that is finished, my acolytes will use the rods of channeling to create the greater circle.$B$BOnce that is done, read the incantation from the Tome of the Cabal, and the felhunter will be pulled forth. Be careful, $N. A felhunter is a powerful foe, and I''d like to see you keep your head on your shoulders.'
WHERE entry = 1795;

UPDATE quest_template SET
OfferRewardText = 'You''ve done it! Praise be to Elune and whichever powers you worship, $N. You have done an honorable and noble thing this day. I am certain Arko''narin will be pleased that you not only took the time to save her, but to also slay the creature who tortured one of her best friends.$B$BI wish I could do more for you, but please, take this.'
WHERE entry = 5385;

UPDATE quest_template SET
Details = 'What, treason? No, no. I assure you, my intentions are completely harmless. Is it so wrong to help those who wish to ease the painful ritual of courtship? Come now, that is no crime.$B$BAnd to prove that I mean no harm, I will even tell you my source. They were shipped to me by a Staffron Lerent, an apothecary of some sort. I never spoke with him. Our goblin middle man said that he worked in the foothills over Hillsbrad past that mysterious Ravenholdt Manor. I wish you luck in finding him.'
WHERE entry = 9028;

UPDATE quest_template SET
OfferRewardText = 'The Sanv Charm means a lot to me, outsider. The Sanv were once a large tribe in Outlands. Sadly, I am the only that remains. Let me prepare the communication with the lost one.'
WHERE entry = 40027;

UPDATE quest_template SET
Details = 'My strength is sapped. I feel aged and weak, but I saw a city. A city that was submerged beneath the waves, as if the tides themselves had come and drowned it all. There were tall cliffs, massive in scale, and it seemed as if the spirits there wallowed in misery. Red leaves fell from the trees and a strong magic lingered and pulsated as if it wanted me gone. It weakened me and made it hard to focus.$B$BI am certain that Akh Z''ador is on this world right now. He must have faced something on Outland and been forced to leave. That, or his rift''s instability sent him to this foreign landscape.$B$BThis is but all I can remember, outsider. It seemed as if whatever resided there was strong -- much stronger than the wildlife here. Much stronger than even you. I beg of you to try to find Akh Z''ador wherever he may be, no matter how long it takes you.'
WHERE entry = 40033;

UPDATE quest_template SET
OfferRewardText = 'It is a relief to know that the delusions these once wise elders spread have been halted. I hope they will find a better place in the afterlife.'
WHERE entry = 40090;

UPDATE quest_template SET
Details = 'Margon the Mighty and his son Hargul the Hardy are two sea giants that roam the island of Lapidis and the surrounding waters. Hargul especially has been something of a nuisance and attacked Caelan''s Rest many weeks ago. While no one was harmed, he did away with a few items of importance before the marines had assembled and prepared to engage him.$B$BOne such item was the Aqua Stone, a magically potent stone that has been imbued with the energy of powerful Hydromancers. With this stone, we could better channel our abilities with increased potency. I would like you to reclaim this valuable treasure, and to that end, slay Hargul the Hardy. More than for the benefit of the Hydromancers, so that it does not ever fall into the wrong hands.'
WHERE entry = 40151;

UPDATE quest_template SET
Details = 'Hello! My name is Smallgill. I was once among the murlocs, up until we came here, and they allied with the slithery naga! They go by the name Deeptide now, and attack any who come near. They even stole my necklaces!$B$BThose were mine, that I made, and that I gave to friends, and they stole each and every one of them! I tried to ask nicely but they attacked me, and now I want them back by any means.$B$BCould you please, oh very please get me my necklaces back? I don''t need all of them, just a few! Maybe six? I know that the other murlocs around here have them, so make sure you ask nicely.',
Objectives = 'Collect 6 Lovely Shell Necklaces for Smallgill in Gillijim''s Island.'
WHERE entry = 40162;

UPDATE quest_template SET
OfferRewardText = '<Malos contemplates the roots you hand him with great concern.>$B$BIt would appear that the roots are decayed, suggesting the treant was already deceased by the time you found it. What a horrible fate for a protector of the forests... No, for any of nature''s creatures. I cannot begin to fathom how this could have happened.$B$BThis is a disturbing revelation indeed, and I am afraid that it has only created more questions. My research continues without the breakthrough we had hoped for, it seems. Nonetheless, you have done a great service to the forests and myself.$B$BPlease take one of these items as a token of my gratitude.'
WHERE entry = 40203;

UPDATE quest_template SET
Details = 'The Deathstrike Tarantula are a formidable foe out within the swamps that lurk just southeast of Stonard. They can be found creeping about the swamps and laying traps for those they hunt.$B$BIt is from these Tarantula that I ask you to gather their poison. I have been attempting to mix the tang of poison, once nullified, into food. In truth, I do have ulterior motives of attempting to make such recipes work. Perhaps one day I may be a renowned cook within Orgrimmar, and not stuck in the Swamp of Sorrows.$B$BTravel into the swamp, and collect me 5 Deathstrike Venom!'
WHERE entry = 40207;

UPDATE quest_template SET
OfferRewardText = 'We move forward, as much as the satyr are nothing more than worthless agents of a fading order. They still had this coming, and much more should I ever have the agency to torment them.$B$BWith these horns and lotus I can begin to channel energy to locate this dark source with my own magics. Until then, there is much more to do before we can unveil the source of the evil that taints the islands.'
WHERE entry = 40211;

UPDATE quest_template SET
RequestItemsText = 'Travel, and with haste. There is much to do, and little time to do it, mortal.'
WHERE entry = 40212;

UPDATE quest_template SET
Details = 'With the Hazzuri slain, my heart burns with glee, retribution is such a fine wine, and one I would eagerly drink down again. It is time for the final task, we must drag free the shadow that has rooted itself upon the islands, and destroy it.$B$BWhen this is done, I can begin to rebuild my throne on these islands. The time is at hand. Follow me to the center of the island, and await my summoning to be complete. When it is, you must do battle with this evil as I keep it bound to the island. Only when it is weak enough, will I be able to join you.$B$BI suggest you bring friends, or others that may assist you. This should not be taken lightly, so do not fail me.'
WHERE entry = 40214;

UPDATE quest_template SET
Details = 'The Maul Orb was once a powerful artifact to our tribe, but we lost it a long time ago.$B$BIn olden days we were once part of the larger Gor''dosh tribe and dominated both Gillijim and Lapidis. The Maul Orb was created in those days, and since the tribes split, it has been lost in their hands.$B$BThere is no doubt that the Maul Orb still exists, tucked away within the Gor''dosh Heights located on the northwestern edge of Lapidis Isle, far to the north. Go there and recover it.'
WHERE entry = 40258;

UPDATE quest_template SET
OfferRewardText = 'He met with my friend? I know I should be cautious to heed the words of a stranger, but I trust him.$B$BIf he says the last place he remembers seeing him was at the Temple of Arkkoran, then that must be it.'
WHERE entry = 40285;

UPDATE quest_template SET
Objectives = 'Collect 5 Bloodfen Claws for Tharg in Dustwallow Marsh.'
WHERE entry = 40402;

UPDATE quest_template SET
Details = 'It would appear that fel energy has indeed begun to ripple across the Blasted Lands, sending the region into a torrent of arcane irregularities and unstable conditions. Let us hope this is simply due to the Dark Portal itself, and not its reactivation.$B$BIt will take many more of our kin to keep everything under control. Now then, I am asking you to deliver an important letter, one that is magically sealed. Breaking it will destroy the parchment.$B$BI trust that you will do for the good of the Kirin Tor, and for the Alliance itself. Make sure this reaches Mahar Ba, so that he may begin the necessary preparations.'
WHERE entry = 40440;

UPDATE quest_template SET
Objectives = 'Slay 10 Hateforge Excavators at the Hateforge Excavation and return to Morgrim Firepike at Blackrock Pass in Burning Steppes.'
WHERE entry = 40462;

UPDATE quest_template SET
Details = 'Well, I have the cores now. But they are as useful as pebbles, as I don''t know what to do with them. I have a new task for you, if you''re willing to accept.$B$BThere''s this goblin I know, Jabbey, that lives in the Steamwheedle Port. I am sure he has some sort of information about arcane golem cores.'
WHERE entry = 40466;

UPDATE quest_template SET
Details = 'I did indeed promise you the rest of the story. So where did we pause? Oh yes, the arrival of the Defias.$B$BVery soon, they started producing Harvest Golems on their own. How they managed this is a mystery to me; I have my suspicions though. It requires a powerful mage to produce an Animation Rune, far beyond the level of the parlor mages The Defias possess. I suspect they are working with the person who turned the golems hostile in the first place. Their original creator.$B$BI will handle rewiring the golems of Westfall. It will take months, maybe years, but it will be done. However, the Defias can still easily produce new ones faster than I can rewire them. We need to halt their production. Fortunately, I know where we can find the shipments of Animation Runes.$B$BGo to the Jangolode Mine and Gold Coast Quarry. The Defias hide their runes deep inside, awaiting transport to their underground foundry. Bring them to me.'
WHERE entry = 40477;

UPDATE quest_template SET
Details = 'Whelping, I need your assistance.$B$BThe Blood Fury itself remains untapped to its full potential. Long has it been since we have followed the demons and worked in tandam with their magic to become stronger. I intend to explore what may be possible without their help. My dark magic is practiced and ready for use, I simply need the correct regeants.$B$BThis is where you come in. Within the Burning Steppes are imps of a demonic nature, no doubt remnants of the burning legion. Slay them, and bring me five of their scalding hearts.'
WHERE entry = 40492;

UPDATE quest_template SET
Details = 'I just can''t seem to get it to work! I managed to fix it once as we took it from Silvermoon to Farstrider Lodge, and it worked on the journey here, but I simply cannot understand what''s wrong with it! It might''ve been damaged. Arcane Golems aren''t easy to build or repair. If only my master was still alive...$B$BWait, that''s it! I remember that Thalestien, my master, gave his notes to a friend of his in Gnomeregan. He was so enthralled by the gnomish inventors that he gave Masey Wirefuse his notes, hoping that the gnomes could assist in improving upon his work.$B$BSee if you can find her in Tinker Town. I truly hope she survived Gnomeregan, or else I''m doomed.'
WHERE entry = 40515;

UPDATE quest_template SET
Details = 'You. You can help me, us. The ogres of Dunemaul be driving us away from our ancient temples. I will not tolerate them defilin'' our sacred grounds and relics. Their foul warlocks and mages tarnish the idols of our gods.$B$BVenture south to where the Dunemaul reside and slay them. Retrieve three Loa Charms and bring them to me. We shall unleash their wrath upon dem!'
WHERE entry = 40521;

UPDATE quest_template SET
Title = 'The Gusting Vortex',
Objectives = 'Bring a Harmonized Sand to Ginlo Taxxo at Steamwheedle Port in Tanaris.'
WHERE entry = 40592;

UPDATE quest_template SET
Details = 'Busy day in the port, kid. Always is, since the day our big boss, the Warchief, gave us his blessing to make our home in this dusty place. No complaints here, o''course. We''re just trying to get by and earn our keep after all.$B$BSpeaking of which, I''ve sent an expedition to the Stonetalon Mountains. Our horned friends, the Tauren, told us of a place where we can freely field-test our engineering experiments. My most trusted man, Nazz, has been given the task to oversee the construction of the BIGGEST bomb to ever exist.$B$BThis is one of two things we can provide to the Horde. The other being the best economics in Kalimdor! Report to Nazz in Powder Town, close to the Charred Vale. See what explosive progress he''s made on The Big One, for the Horde!',
OfferRewardText = 'Nert sends yet another employee to me. Perfect, we need all the hands we can get.'
WHERE entry = 40638;

UPDATE quest_template SET
Details = 'Always problem-problem for Mosshide, first with Raptor, now with dragon! Every day-day more and more dragon whelps roam the countryside, so many that it is hard to properly walk the land without worrying about dragon fire!$B$BBogpaw need valuable herb-herb, and many of my good spots are now crowded with dragon!$B$BGo kill whelp-whelp for Bogpaw, let Bogpaw get good spot again. You find dragon whelp to southeast, now go-go!'
WHERE entry = 40683;

UPDATE quest_template SET
OfferRewardText = 'You honor your word, and so I will honor mine.'
WHERE entry = 40699;

UPDATE quest_template SET
Details = 'The Winterfall and Deadwood tribes have already been lost to madness. Their hatred burns deep and already they have sent speakers to collaborate with the corrupt Barkskin. I have no doubt in my mind it will only be a matter of time before they conspire to destroy us.$B$BThe Timbermaw cannot stand idle whilst corruption drives hostile factions to unite towards a massacre. I implore you to travel deep into Barkskin Village to the southwest of here, near the bottom of the summit. Find and slay the Winterfall and Deadwood envoys both.'
WHERE entry = 40909;

UPDATE quest_template SET
Details = 'I have heard rumors from the Deathstalkers that the ambush was facilitated by Captain Veller stationed at Freyshear Keep. If this information is true, then this man was the murderer of my brother.$B$BA very valuable piece of jewelry was taken from Franklin''s corpse; the Blackheart Necklace. I have no doubt in my mind that this pompous man has taken the necklace.$B$BFreyshear Keep can be found far to the east, isolated on an island that looms overtop of Ravenshire. Kill him, and recover the necklace.'
WHERE entry = 40981;

UPDATE quest_template SET
Details = 'Alzzin he calls himself, The Wildshaper, a title given to him by the druids in Hyjal. A twisted, corrupted mockery of what he once was, standing opposed to all beliefs he once held dear.$B$B''Alzzin'' was once a friend of mine, yet now seeks nothing but the total corruption of Feralas. I feel it is my duty to put an end to his evil schemes once and for all.$B$BYou can find him lurking deep within Dire Maul with his satyr kin. Slay him, and bring me his head, only then will I find solace.'
WHERE entry = 41016;

UPDATE quest_template SET
Details = 'The effects of the Third War are still present in Hyjal. Demonic corruption lingers upon the land and has touched the wildlife of the region, driving it to madness. There is still hope, however. If we can preserve the younger generations and remove the corruption of their kind, there is still a chance for the majestic animals native here to thrive.$B$BWe must act as conservationists for the sake of nature''s creatures. Bring me ten Great Beaks from the Greathorn Owls, and ten Misthoof Hide from the Misthoof Stags. For your efforts, I will reward you a Bright Dream Shard.'
WHERE entry = 41021;

UPDATE quest_template SET
Details = 'All around Hyjal, manifestations of corruption taking place within the Emerald Dream are appearing. The green sludges taint the land and actively threaten our way of life. We need to combat this hazard as we would demons of the Burning Legion.$B$BCollect forty Enchanted Sludge as proof of your deeds. Do this, and I shall make sure you are rewarded well.'
WHERE entry = 41022;

UPDATE quest_template SET Objectives = 'Bring 5 vials of Witherbark Blood from the Witherbark Trolls in The Hinterlands to Ethan Ravencroft in Hollow Web Cemetery.' WHERE entry = 41033;

UPDATE quest_template SET
Details = 'Heading to the city of Alah''Thalas, are you? If so, I''ve a task that requires your aid. My companion, Tiriel, has established an inn for the influx of refugees making their way to the city, and, as you can imagine, it''s teeming with occupants. We''ve just received a fresh supply package from the Wildhammers, and it would be of immense help if you could deliver it to her. You''ll find Tiriel''s inn adjacent to the city entrance, the first building on your left as you pass Anasterian Park.'
WHERE entry = 41197;

UPDATE quest_template SET
Details = 'I would spare you the intricacies of Quel''dorei politics. Nevertheless, it is imperative that you are informed. Our once-united nation has fractured into smaller factions, engaged in a regrettable bickering over influence and power. Witnessing this discord within our own ranks pains my heart, but it is a tempest we must weather.$B$B<She pauses, a sense of resignation in her eyes.>$B$BHowever, amidst this turmoil, there are those loyal to the broader vision. They have rallied beneath the banner of the Silver Covenant, their camp positioned beyond the city to the west. I implore you to venture there and seek out Commander Braedin, my esteemed right hand. He has been diligently investigating the matter, and your assistance will be met with gratitude.'
WHERE entry = 41236;

UPDATE quest_template SET
Details = 'I''m in need of some help here. A whole damn lot of help! I was supposed to receive an order of Yeti Fur from a trusted source, but they up and went AWOL on me!$B$BLook pal, if you can help me keep my knees or from ending up on Azeroth Missing Persons, I''d be in your debt!$B$BTo the southwest is a cave full of yeti, damn near packed with them. If you get me ten Yeti Fur, that would be a huge help. That should be more than enough to bring back to Laz. And please be quick! We don''t got all day here!',
OfferRewardText = 'I see you got the Yeti Fur. Let me box this up right quick to send to Laz!'
WHERE entry = 55037;

UPDATE quest_template SET
Details = 'The operations of the SI:7 are secretive in nature, and this must remain as such. If Lord Commander Ryke''s suspicions be true, then it means Harlus Ashbuckle would be breaking the vow he has sworn to the nobility of Stormwind.$B$BThat same nobility which saved him a lifetime in the Stormwind Stockade, with gross disregard that the man was wanted for the crime of practicing forbidden magic, and murder both. As much as I have my distaste for the House of Nobles, I am bound by duty to do as I am told.$B$BTake this report with my findings to Master Mathias Shaw, leader of the SI:7 within Stormwind''s Old Town. Keep them sealed... Should the seal be broken, don''t dare show yourself to him, or myself again.'
WHERE entry = 555220;

UPDATE quest_template SET
Title = 'The Stockade Search',
Details = 'Ahh yes, I had only figured a report from Robb would eventually lead back to this man. You may know him as Harlus Ashbuckle, but in truth that is nothing more than a false identity. The man you''re gathering information on is actually Martin Corinth, who hails from Lordaeron. He escaped south to Stormwind during the Third War and was recently let free from imprisonment.$B$BSomeone from the House of Nobles delayed his execution and eventually got his release with a vow from the man to swear off his practices and be exiled from the land. I kept a close eye on him, knowing just how much potential power he had within the dark arts.$B$BI would like to tie up some loose ends before simply having the man killed for his practices, I wish to figure out who else may be behind all of this forbidden magic, and what Noble set him free.$B$BThe Stockades has recently been overrun, but it is the last location that holds information valuable to this Martin Corinth, go there and find it.'
WHERE entry = 55221;

UPDATE quest_template SET
OfferRewardText = 'The town has been saved! I thank you again $N. Hawk''s Vigil shall remain a place of peace as long as brave souls like yourself walk Azeroth.$B$BHere, take one of these as a token of the town''s gratitude.'
WHERE entry = 55225;

UPDATE quest_template SET
Details = 'Hey, $r, down here! If you have some spare time, I could really use your help.$B$BYou see, there''s this kodo in Un''Goro Crater, their name is Dadanga. I''ve heard that they give you a gift if you feed them bloodpetals. It sounds like this gift could have a nice surprise in it, and I love surprises!$B$BAnyways, these bloodpetal sprouts are found all over the crater, and I''d love to get my hands on some. Bring me 30 Bloodpetal Sprouts and I''ll pay you. I''ll even give you something I cooked from one of my original recipes!',
Objectives = 'You''re pretty sure Reas wants you to bring 30 Bloodpetal Sprouts to her in Gadgetzan.'
WHERE entry = 60010;

UPDATE quest_template SET
Objectives = 'Drakin Swiftaxe has tasked you with the disposal of 10 Witherbark Scalpers, 10 Witherbark Zealots and 5 Witherbark Venombloods. Return to him when you are done.'
WHERE entry = 60071;

UPDATE quest_template SET
Details = 'Alright $N, we''ve chased the rats to their den. To the very southeast of the Hinterlands you''ll find the troll city of Jintha''Alor. You''ll encounter the very elite, practicing dark magic and foul rituals. I know you''re powerful, but I''m not gonna lie, I don''t think you can do this alone.$B$BBring some friends and kill EVERY. SINGLE. TROLL. Now go out there and sweep the city!'
WHERE entry = 60073;

UPDATE quest_template SET
Details = 'I''ve been making you kill trolls left and right, but this time we have an actual target! We got reports of their leader, Vile Priestess Hexx, rallying the Vilebranch trolls for an assault on Aerie Peak! We can''t let that happen, can we?$B$BGather your friends and climb the city of Jintha''Alor to the very southeast and kill Vile Priestess Hexx and her guards. You will be richly rewarded for your efforts.'
WHERE entry = 60074;

UPDATE quest_template SET
Details = 'Norvok is in no condition to be out looking for a family heirloom, but I worry that perhaps he may attempt to venture out before he is fully healed.$B$BIf you could search for any trace of the spear that he left behind, it would be greatly appreciated, by both Norvok and myself.$B$BThe demons to the east would be your best bet in finding it, so go swifty!'
WHERE entry = 70034;

UPDATE quest_template SET
Details = 'I hear Sven has taken shelter in a camp northwest of the Raven Hill Cemetery. I fear he''s filled with regrets and anger, both at himself and those who took everything from him.$B$BConsidering we''ve found this shovel of his among the ruins of his lost home, I think it would be appropriate to see it returned to him.$B$BPlease, be careful when you return this to Sven. He may be relieved to see it, or he might just break it in half in anguish. Who knows.$B$BThank you again, for all you''ve done.'
WHERE entry = 70057;

UPDATE item_template SET
Description = 'Unleashing the arcane essence contained within, this tome enables mages to conjure portals that transport them and their companions to the stronghold of Stonard, deep within the Swamp of Sorrows.'
WHERE entry = 92004;

UPDATE spell_template SET
Description = 'Your Water Shield ability grants an additional 8 mana per 5 sec. while active. In addition, the amount of mana restored by your Water Shield when attacked is increased by 10.'
WHERE entry = 47357;

UPDATE spell_template SET Description = 'Attaches a buckle to your belt that increases your Agility by 6.' WHERE entry = 57173;
UPDATE quest_template SET Objectives = 'Gather 10 Fine Free-Range Alterac Yeti Hides for Alix Gres.' WHERE entry = 41269;
UPDATE quest_template SET Objectives = 'Gather 10 Fine Free-Range Alterac Yeti Hides for Coco Gucci.' WHERE entry = 41272;
UPDATE quest_template SET ObjectiveText1 = 'Listen to Maltimor' WHERE entry = 40529;
UPDATE quest_template SET Title = 'The Keeper''s Charge' WHERE entry = 40243;
UPDATE quest_template SET Title = 'The Keeper''s Possession' WHERE entry = 40244;
UPDATE spell_template SET Description = '' WHERE entry IN (47324, 47326);
UPDATE creature_template SET Name = 'Hierophant Nerseus' WHERE entry = 61610;
UPDATE gameobject_template SET Name = 'Jintha''Alor Altar' WHERE entry = 142180;

-- Dragunovi item bug fixes
update item_template set name = 'Vambraces of Kin''Tozo' where entry = 60438; -- Vambracers of Kin'Tozo
update item_template set name = 'Ebonmere Vambraces' where entry = 61630; -- Ebonmere Vambracers
update item_template set name = 'Bloodfist Vambraces' where entry = 60395; -- Bloodfist Vambracers
update item_template set spellid_1 = 18078 where entry = 61372; -- Bloody Pick