UPDATE quest_template SET
Details = 'Our moonwells are pure springs of Elune''s hallowed light. They are not tainted as the first Well of Eternity once was.$B$BThey will restore the mana of the High Elves, but will never grant them access to the pernicious power that drove others to madness.$B$BI have sent Priestess Alunasha and a few of our masons and wisps to begin construction of a moonwell.$B$BAlunasha shall remain there, to watch over the well and teach the High Elves how its waters should be used in accordance to our ways.$B$BAnde''thoras-ethil, $N, and thank you again, for your deeds in Feralas.',
RequestItemsText = 'The preparations for the moonwell are ready.',
OfferRewardText = 'Elune will soon lay her divine hand upon these lands. Stand back and watch as her silver light blesses this sacred ritual.'
WHERE entry = 40384;

UPDATE quest_template SET
Details = 'Take this. I have convinced a few of my fellow priestesses to vouch for you and your Quel''dorei friends, but know that creating a new moonwell for Alah''thalas to use will not be easy, even with our endorsement.$B$BLet us hope that the High Priestess will be amenable to extending her support once again.',
OfferRewardText = 'Hail to you again, $N. What tidings do you bear?$B$B<Tyrande opens and reads the missive>$B$BI see. The ancestral sickness that once plagued even Dath''remar Sunstrider still assails the hearts of the Quel''dorei. That is a heavy burden to endure.'
WHERE entry = 40383;

UPDATE quest_template SET
Details = 'As you must know, our moonwells are very sacred to us.$B$BHaving such a well corrupted is considered a great offense to Elune. Unfortunately, even with our constant vigil, this can happen.$B$BA twin set of moonwells exists outside Eldre''thalas, known to many as Dire Maul.$B$BWhile one well remains pure, the other was defiled by Ogres.$B$BHelp me cleanse the moonwell and bring those responsible to justice, and I will present your case to the High Priestess herself.$B$BI will wait in the shadows until you arrive. You shall have to guard me until the ritual is completed, as it will require my full attention.',
Objectives = 'Protect Vestia Moonspear while she''s cleansing the waters of the Corrupted Moonwell outside Dire Maul.',
OfferRewardText = 'An exhilarating experience. Let us agree to avoid these perilous ventures from now on, yes? Jests aside, you have my gratitude. And as promised, I will do my best to help you with your case.'
WHERE entry = 40382;

UPDATE quest_template SET
Details = 'I do sympathize with the Quel''dorei''s plight. Perhaps there is another way to provide them with what they need.$B$BIf the High Elves are willing to honor the sanctity of our moonwells, then there might be a chance to plead for a small well to be built in Alah''talas under the guidance and vigilance of a priestess.$B$BAfter all, we agreed once before to do the same for Stormwind.$B$BTravel to Feathermoon Stronghold in Feralas and look for Vestia Moonspear. She is sympathetic to your cause and will be likely to listen.$B$BGive her this missive and pay close attention to what she has to say.',
OfferRewardText = 'What you ask is difficult, but not impossible.$B$BIf you render me aid, I will do what I can to help.'
WHERE entry = 40381;

UPDATE quest_template SET
Details = 'With the Quel''dorei''s accession to the Alliance, I do not doubt that it is only a matter of time before we rise to our former glory. But as my people celebrate, I must keep track of the problems that remain.$B$BFor years my people relied on the magic of the great fount called the Sunwell. Its destruction made us realize how dependent we became on its energies.$B$BWithout it, we are vulnerable to succumbing to magic addiction.$B$BMiraculously, the rangers who were hunting Dra''lox with you stumbled upon a mystical pool of restorative waters whose effects are reminiscent of the Sunwell.$B$BIf this is true, it could be our salvation. I need you to travel to Darnassus and ask Ashylah Starcaller if such waters can be procured for the Quel''dorei.',
OfferRewardText = '<Ashylah Starcaller blinks as you make your request.>$B$BYou have to understand, $N, our moonwells are not like the Well of Eternity of old. Their waters have been cleansed, and sanctified by the Great Mother.$B$BThey can replenish health, mana and even stave off hunger. But we hold them as hallowed shrines, we cannot grant them to others so easily.'
WHERE entry = 40380;

UPDATE quest_template SET
Details = 'Here at last is the formal endorsement of the Kaldorei. Bring it to the Highlord Bolvar Fordragon, along with my warm regards for the young King Anduin.$B$BTogether with the High Elves, we shall chart a bright course for all the peoples of the Alliance. One day, I hope, we shall stand together side by side as friends, beneath the eaves of a renewed Quel''thalas.',
Objectives = 'Present the letter of Darnassian Endorsement to Highlord Bolvar Fordragon in Stormwind.',
OfferRewardText = 'What wonderful news! With Darnassus'' Endorsement, the Alliance has unanimously agreed that the Quel''dorei of Alah''thalas will officially join the Alliance. Let us discuss further steps, my friend.'
WHERE entry = 40379;

UPDATE quest_template SET
Title = 'Thalassian Accession',
Details = 'There, it is done. I have prepared a writ for the High Priestess, explaining how instrumental you and the Quel''dorei were in slaying our ancient enemy Dra''lox Felstar.$B$BHis deeds were unforgivable, which is why your actions may prove just enough to sway even the stern Archdruid Staghelm and his stringent followers.',
OfferRewardText = 'I know the message you bear. Word of Felstar''s demise has been spreading swiftly.$B$BMay the Night Warrior ever bear steel with you, $N. May such be the fate of all those who dare threaten us.$B$B<She lets out a long sigh.>$B$BYou might have begun to glimpse the rift that divides Darnassus. Many of Fandral''s druids have rescinded their former protests about the accession of the Quel''dorei, but the Archdruid himself remains unyielding.$B$BYet with his support on the matter ebbing, nothing more ties my hands in granting Silvermoon my full support.'
WHERE entry = 40378;

UPDATE quest_template SET
Details = 'With the pleasantries out of the way, it is time I let you in on our next move.$B$BTyrande Whisperwind has sent a Sentinel, Ashylah Starcaller, to warn us of a powerful Satyr plotting an invasion near the tainted thickets of Felwood.$B$BI have sent a detachment of my best rangers to find him, hiding with his minions around an artifact of fel power: A Corrupted Felstone.$B$BThis is our opportunity to prove ourselves to any Kaldorei who still doubt us. You will find the artifact north of Raynewood''s Retreat, around the border with Felwood.$B$BThe Satyr will be drawn by the destruction of his coveted stone: do not fear him, our rangers will come out of hiding to assist you during the battle.$B$BWhen you have won, make sure to bring proof of your victory to Ashylah Starcaller in Darnassus.',
Objectives = 'Interact with the Corrupted Felstone to provoke the Satyr near the border of Felwood. Defeat the Satyr threat and take the Satyr''s horn to Ashylah Starcaller in Darnassus.',
OfferRewardText = 'You found and slew Dra''lox Felstar?$B$BI knew the High Priestess was right in her judgement of the Quel''dorei.$B$BNow allow me to return the favor.'
WHERE entry = 40377;

UPDATE quest_template SET
RequestItemsText = 'So you are the one that everyone has been talking about. It''s a pleasure to meet you, $N.$B$BMy name is Vereesa Windrunner, and I wanted to personally thank you for your efforts in bringing our people closer to the Alliance.$B$BAlthough it is unfortunate that some Kaldorei still doubt our intentions, we will prove we are not what they would fear us to be.'
WHERE entry = 40376;

UPDATE quest_template SET
Details = 'Lastly, we prepared an unique message just for High Priestess Tyrande Whisperwind. Some say she provided aid to our people in the past; I can only hope she will still see that only by working together can we craft a better future for both our nations.$B$BGood luck, and please return with her reply as soon as you receive it.',
Objectives = 'Deliver the Sealed Missive to High Priestess Tyrande Whisperwind.',
OfferRewardText = 'The plight of the Quel''dorei is one that grieves me deeply. Their noble Prince Kael has been in my prayers since the day our paths crossed in Lordaeron.$B$BI would gladly welcome Silvermoon into the Alliance, yet there are those among my people who believe they are beneath Elune''s boundless compassion, those who see the High Elves and can only forebode the repetition of the darkest chapter of our ancient history.$B$BI shall help you dispel these doubts. You may go, with my answer and my blessing.'
WHERE entry = 40375;

UPDATE quest_template SET
Objectives = 'Deliver the Sealed Missive to the High Tinker Mekkatorque.'
WHERE entry = 40374;

UPDATE quest_template SET
Objectives = 'Deliver the Sealed Missive to King Magni Bronzebeard.',
OfferRewardText = 'There is a saying among the Wildhammer dwarves of the north: "You can sooner count on a High Elf than on the hair of your own beard."$B$BThe Senate will need to discuss this matter in detail, but know that I am keen to believe the Wildhammers, as I have been supportive of the Quel''dorei''s accession to the Alliance for a while now. Especially after all the refugees have done to help secure Loch Modan.$B$BNot to mention the aid we received from them during the Second War, without their help and that of the Alliance, who knows how the war would have turned out for us.$B$BAs I see it, now is our turn to return the favor. Deliver my reply, and I wish you safe travels.'
WHERE entry = 40373;

UPDATE quest_template SET
Objectives = 'Deliver the Sealed Missive to Highlord Bolvar Fordragon.',
OfferRewardText = 'I have no objections. During the Second War, the High Elves were instrumental in defeating the Orcish Horde. And I cannot deny that the refugees have done a lot for the Alliance.$B$BIt would be remiss of me to reject their aid. Even Lady Prestor has taken a personal interest in this matter and petitioned to send the military abroad to help.$B$BWith that said, please give my response to Alah''thalas.'
WHERE entry = 40372;

UPDATE quest_template SET
Details = 'Greetings, $N. While others see our people as only refugees and survivors of a once-great nation, we must show the rest of the Alliance that the Quel''dorei are here to stay.$B$BWith Alah''thalas prospering and our people slowly mobilizing into a formidable force, this is the perfect time for us to officially join the Alliance.$B$BOur magisters have prepared a set of missives that need to be delivered directly to the leaders of the Alliance, and I think that the honor of delivering such important messages should be yours.',
Objectives = 'Seek audience with all four Alliance leaders and represent Alah''thalas'' interests.',
OfferRewardText = 'The stories about Tyrande Whisperwind were true after all.$B$BIn her letter, she writes she was not only honored to stand with Prince Kael''thas, but once fought beside Dath''remar Sunstrider himself, the founder of our great kingdom!$B$BBut it seems not all Kaldorei think as she does. We shall soon work to prove ourselves in their eyes as well.$B$BFor now, with the approval of most of the Alliance''s leaders, our future grows more secure.$B$BI hope we can count on you again, should such need arise. And $N, thank you for all you have done.'
WHERE entry = 40371;

update item_template set stackable = 12 where entry = 81335;

UPDATE quest_template SET
Title = 'Raiding Quel''Lithien Lodge',
Objectives = 'Venture to the Quel''Lithien Lodge in the Eastern Plaguelands and slay 6 Quel''Lithien Pathstriders, 6 Quel''Lithien Woodsmen, and 6 Quel''Lithien Rangers.'
WHERE entry = 80303;

UPDATE quest_template SET
Objectives = 'Slay 15 Mangy Wolves around Elwynn Forest, then return to Lulu in Goldshire.'
WHERE entry = 60007;

DELETE FROM creature WHERE id = 7846;

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (300380, 7846, 0, 0, 0, 0, -11391.4, -2829.08, -2.36521, 2.19519, 72000, 72000, 0, 100, 100, 2, 1, 0);

update item_template set stat_value3 = 0, stat_type1 = 7, stat_type2 = 6, spellid_1 = 0, spellid_2 = 0 where entry = 13503; -- Alchemists' Stone

UPDATE `creature_template` SET `faction` = 79 WHERE `entry` = 80242;

-- Make all spawned houses to be visible from a long distance:
UPDATE `gameobject` SET `visibility_mod` = 5000, spawn_flags = 1 WHERE `id` = 1000008;
UPDATE `gameobject` SET `visibility_mod` = 5000, spawn_flags = 1 WHERE `id` = 2007523;

-- https://database.turtle-wow.org/?item=83502 is not consumed on use:
UPDATE `item_template` SET `spellcharges_1` = -1 WHERE `entry` = 83502;

-- Add a 0.5 second cast time to interaction with https://database.turtle-wow.org/?object=3000242 so players can't spam-click and get all 3 credits on a single pyre. Make Spirit Pyres usable only when player is on the quest.
UPDATE `gameobject_template` SET `flags`=36 WHERE `entry`= 3000242;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=-3000242 WHERE `entry`= 80301;

UPDATE `quest_template` SET `ReqCreatureOrGOCount1` = 5 WHERE `entry` = 40608;
UPDATE `quest_template` SET `Objectives` = 'Travel to the farm at Bael Hardul beneath the town, slay 5 Plateau Fleshrippers, and gather 4 Bundled Crop Harvest for Segwar Ironback in Stonetalon Mountains.' WHERE `entry` = 40608;

UPDATE `creature` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 120 WHERE `id` = 61018;

-- Add more instances of https://database.turtle-wow.org/?item=60850 or lower the respawn time. 4 required for quest, only 6 available with what appears to be a 5 minute respawn.

UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 120 WHERE `id` = 2010930;