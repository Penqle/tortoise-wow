-- Quest name: Willing to Serve
-- NPC name: Mangletooth
-- Issue: Misspelling 
-- Proposed fix: Change "Brink" to "Bring"

UPDATE `quest_template` SET `Objectives` = 'Bring 20 Saltstone Eyes from basilisks in the Shimmering Flat to Mangletooth.' WHERE `entry` = 40575;

-- Quest: Goblin Engineering At It's Finest!
-- Issue: "It's" instead of "Its"

UPDATE `quest_template` SET `Title` = 'Goblin Engineering At Its Finest!' WHERE `entry` = 50310;

-- Quest Name: Da Unforgiving Lands
-- Issue: Hyena typoed as Hyeana in quest objectives

UPDATE `quest_template` SET `Objectives` = 'Bring 12 Roc Meat and 8 Hyena Skins to Hingozu at Sandmoon Village in Tanaris.' WHERE `entry` = 40520;

-- Quest: Special Forces
-- Location: Lieutenant Doren in the Rebel Camp above Stranglethorn Vale

UPDATE `quest_template` SET `RequestItemsText` = 'Sergeant Yohwa tells me you are skilled and brave, $c. Do you have something to report?' WHERE `entry` = 574;

-- Quest name: The Depths of Karazhan VII
-- NPC Name: Kor'gan
-- Issue: Semantic
-- Proposed fix: Change "much" to "must" in the 2 row of the 2 paragraph.

UPDATE `quest_template` SET `Details` = 'There is only one step left for us, as honorable members of the Horde. We must step forth into the darkness, and vanquish this evil before it grows even stronger. If we were to let the humans deal with this, who knows if they could even stop it?$B$BAs Grom Hellscream slayed Mannoroth, we too must look upon something terrible and destroy it from this world. I ask of you to venture into the Karazhan Crypts, and put an end to this madness, for the good of this world.$B$BThis will not be a task you can handle alone, make sure you bring strong allies to journey with you.' WHERE `entry` = 40310;

-- Item Name: Tyrants Crown (ID: 15492)
-- Issue:  Grammar
-- Proposed fix: Tyrant's Crown

UPDATE `item_template` SET `name` = 'Tyrant''s Crown' WHERE `entry` = 60227;

-- Spell name: Moonkin Form
-- Issue: Wording
-- Proposed fix: Modify the second sentence to specify it reduces mana cost by 20%. The way it's currently worded seems like it increases it. 

UPDATE `spell_template` SET `description` = 'Transforms the Druid into Moonkin Form. While in this form the armor contribution from items is increased by $24905s1%, the Mana cost of your Balance spells is reduced by $24905s3%, and all party members within $24907a1 yards have their spell critical chance increased by $24907s1%.\n\nThe Moonkin can only cast Balance spells, Innervate, and Remove Curse while shapeshifted.\n\nThe act of shapeshifting frees the caster of Polymorph and Movement Impairing effects.' WHERE `entry` = 24858;

-- Quest Name/NPC Name: A Friend of the Tribe/Yesu'gei
-- Issue: Just a minor typo.
-- Proposed fix: In the first sentence of the second paragraph, change "When we think you have helpes us enough to be truly accepted," to "When we think you have helped us enough to be truly accepted,

UPDATE `quest_template` SET `Details` = 'Hmm. One day, you may walk among us as an esteemed visitor, $r. You should be thankful some of our kind already respect you.$B$BWhen we think you have helped us enough to be truly accepted, I will have further words with you. There are some matters that I cannot entrust with many in the tribe, let alone an outsider.$B$B<He continues rambling quietly to himself for some time after his business with you is finished.>' WHERE `entry` = 40625;

-- Second stage of mushrooms, ready for stage 3. Should say "Small mushrooms (that) (y)earn for some water"

UPDATE `gameobject_template` SET `name` = 'Small mushrooms that yearn for some water.' WHERE `entry` = 1000361;

-- Learn Spell Text: Savage Bite
-- Issue: Description missing
-- Proposed fix: The text on the bottom should use the tooltip text for the spell instead of "Teaches X".
-- Compare Savage Bite to Ambush text.

UPDATE `spell_template` SET `description` = '' WHERE `entry` = 47325;

-- Quest name: Telasa's Word
-- Issue: One
-- Proposed Fixes: "It" instead of "Is" as shown in the screenshot.

UPDATE `quest_template` SET `Details` = 'There is a shadow that lurks unseen in the forests of Teldrassil, a tainted air that hangs like an acrid pall over the seemingly pristine glades. It has twisted and corrupted my sisters, making them distempered and aggressive. Malos assures me his research may lead to a cure for my sisters.$B$BThe treant Malos speaks of I have seen meandering the forests below here, withered, twisted, and enraged. A haunting visage it possesses, its mind tainted by the very darkness that has touched my sisters. You should be able to find it walking along the eastern edge of the Wellspring Lake.$B$BGo and bring this news to Malos. I hope that I have been of aid to him in return for his kindness.' WHERE `entry` = 40202;

-- Quest Name/NPC Name: The Old Church of Westfall X/Gryan Stoutmantle
-- Issue: Typo
-- Proposed fix:
-- Description upon turning in the quest, first passage, last word should be "grateful".
-- I suggest the second passage to look like this: "With these deeds there is hope we may resettle the land once the Defias threat is removed. Let us hope such a future comes soon, (playername)."

UPDATE `quest_template` SET `OfferRewardText` = 'You have brought justice to the Eastons, and have removed a dangerous criminal from our lands, for that we cannot be more grateful.$B$BWith these deeds there is hope we may resettle the land once the Defias threat is removed. Let us hope such a future comes soon, $N.$B$BFor your efforts I have prepared some items, they should serve you well.' WHERE `entry` = 40602;

-- Quest Name/NPC Name: Arugal's Folly/High Sorcerer Andromath
-- Issue:  Mostly typos in the description of the quest. 
-- Proposed fix:
-- Second passage: "I" should be a capital letter, "against" is misspelled.
-- Third passage: At the end of the first sentence, there should be a full stop instead of a comma. Last sentence has "and" typed twice (...he adopted the Worgen as his children and retreated...
-- Fourth passage: First sentence, "I" should be capital letter, change "has" into "had" (After what had transpired, I moved to Stormwind...). Merge the last two sentences into one (Although it pains my heart to say this, you must travel to...) 

UPDATE `quest_template` SET `Details` = 'Greetings, $C!$B$BWe\'ve been on the tail of Archmage Arugal for some time, since the end of the Third War actually. What did he do? When the Scourge came to Dalaran, we were devastated.$B$BSeeing our friends and family being turned undead really messed with his mind. He thought the solution was a summoning ritual, to summon something that could aid us and stop the Scourge\'s advance. Even though as his mentor I advised against his idea, my warnings fell on deaf ears.$B$BThe resulting monstrosities are the Worgen. Even though they killed the Scourge, they quickly turned on us, worsening the situation. After going mad with his failure, he adopted the worgen as his children and retreated to Shadowfang Keep.$B$BAfter what had transpired I moved to Stormwind to try to forget what happened. Although it pains my heart to say this, you must travel to Shadowfang Keep in southern Silverpine Forest and end his life.' WHERE `entry` = 60108;

-- Quest Name: The Stockade's Search
-- Issue: It's a dungeon quest and should be represented as such
-- Proposed fix: Add (Dungeon) to match other dungeon quests. 

UPDATE `quest_template` SET `Type` = 81 WHERE `entry` = 55221;

-- Quest name: Tower of Lapidis II
-- Issue: Wrong word
-- Proposed fix: "stronger than many" instead of "stronger then many"

UPDATE `quest_template` SET `Details` = 'Arch Hydromancer Lapidis held incredibly skills in Hydromancy, and was much stronger than many even upon Boralus. Many had their opinions on how the man was able to achieve such power, though I always gave him the benefit of the doubt. I believe he has had some assistance from either a magical artifact, or an outside force, though I cannot prove my suspicions.$B$BRegardless, if there is a way in the tower, I would believe it to be this key. <Hydromancer Flakereef produces a small Shimmering Brass Key>.$B$BThis key was given to me by Lapidis before we had arrived, he entrusted it within my care, I was to be one of his pupils, but after he created the large tower, and began to close himself off from the rest I instead returned here. This key fits the lock to the tower, but cannot open it, and perhaps requires some magical attuning to grant access.$B$BWe must look to those with a greater knowledge of the Arcana, Archmage Ansirem Runeweaver of Dalaran may perhaps help, seek him out.' WHERE `entry` = 40164;

-- Quest name: Tower of Lapidis III
-- Issue: Typo, extra comma
-- Proposed fixes:
-- - regeants -> reagents
-- - Remove the comma from "need to be both attuned, and enchanted to the magic that once powered it"

UPDATE `quest_template` SET `Details` = 'Lapidis was always an interesting, if strange man, at the time we hadn\'t considered his refusal to our curiosity as something potentially bad. But hearing of what he has done upon Lapidis Isle has certainly shifted my opinion.$B$B<Ansirem Runeweaver studies the Shimmering Brass Key>. It would appear that this key still has lingering of magic upon it. It is possible to reconstruct the enchantment, but may take considerable power and  reagents to do so. If the key is to work upon the lock as suggested, it will need to be both attuned and enchanted to the magic that once powered it.$B$BIt is within my power to enchant this key with the same magic that once powered it. The coast of Feralas is covered in water elementals. Bring me a Pure Aqua Orb from one of them, it should be sufficient and powerful enough to mimic the magic of the key.' WHERE `entry` = 40165;
