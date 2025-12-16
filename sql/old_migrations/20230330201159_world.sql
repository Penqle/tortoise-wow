-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3130
UPDATE `item_template` SET `spellcharges_1` = -10 WHERE `entry` = 53003;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3122
UPDATE `item_template` SET `buy_price` = 40000, `sell_price` = 1000 WHERE `entry` = 4981;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3120

UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 7553;
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 7554;
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 7555;
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 7556;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3121

UPDATE `creature_template` SET `skinning_loot_id` = 213 WHERE `entry` = 3865;

-- QA requests:

UPDATE quest_template SET
Details = '<The troll''s ghostly visage speaks in a broken, howling tone that is hard to understand fully.>$B$BI... be lost... Forever wandering across the desert... to try and find a way out. But it don''t feel like... there be a way out.$B$BGo to Zul''Farrak... the place where my body is... and find my Ancient Troll Remains... in the burial grounds... Free me mon, from this... eternal torture...',
OfferRewardText = '<With the remains close to the spirit, the howling tone becomes more clear.>$B$BI can feel the end. It is in sight. My vision is no longer blurred and faded mon. You have shown me the way. That cursed Zum''rah and his magic brought me back from my rest, and left me to wander aimlessly. But I got no grudges mon, for I am free now.$B$BI will find the way, thanks to you.$B$B<The spirit drops a chained necklace onto the sand below, leaving it as a reward as he collects his remains.>',
Objectives = 'Venture into Zul''Farrak and find the Ancient Troll Remains, then return them to Hansu Go''sha at the Southmoon Ruins in Tanaris.',
RewMoneyMaxLevel = 23100
WHERE entry = 40519;

update item_template set stat_value1 = 12, stat_type1 = 7, stat_value2 = 0, stat_type2 = 0, spellid_1 = 13519, spelltrigger_1 = 2, spellppmRate_1 = 1.8, spellcooldown_1 = 420, dmg_type1 = 0, dmg_min2 = 3, dmg_max2 = 5, dmg_type2 = 1, item_level = 65, dmg_min1 = 98, dmg_max1 = 181, armor = 0 where entry = 60486; -- Fishbringer

UPDATE quest_template SET
Details = 'That''s right, I''m a Moonfeather! I have a gift, I just need to learn how to make use of it. Shan''do said so as well, and I will honor his legacy!$B$BSharptalon is a mighty hippogryph patriarch I have seen wandering the forest glades at twilight, though we have never met before. Such a majestic creature is surely one of Elune''s favored. Please, take the youngest of the hatchlings and head southwest of here. Avoid the Horde as best you can and protect the child with your life.$B$BSouth of the orcs'' eyesore of an encampment you will find those beautiful glades where our sisters keep vigil, waiting in the trees to ambush the invaders. Sharptalon is reported to aid the defense of Ashenvale near there.$B$BBring the little one to him and relay the Moonfeather family name. I pray his response will be favorable.',
OfferRewardText = 'He bowed his head? By Elune, that is amazing news! I understand. I shall spend more time with the fledglings in Sharptalon''s presence, and with hard work and some fortune, I will make my family proud. The Moonfeathers will have yet another Hippogryph Master in their lineage!$B$BIt seems this little one doesn''t want to leave your side. I suppose if you promise to care for and look after this child, there should be no issue in allowing it to follow you, right?$B$BThis is the least I can offer after everything you have done on my behalf. Elune smiles upon us both this day, $N.',
RequiredRaces = 589,
RewRepValue1 = 150
WHERE entry = 40800;

UPDATE quest_template SET
Objectives = 'Seek out Kaldorei Hippogryph Masters and request their counsel.',
Details = 'They still aren''t responding to me! How is it my siblings make it look so simple? How very infuriating!$B$B<Her ears prick and she bares her fangs when she fails to summon one of the fledglings to her side.>$B$BMy Shan''do would tell me to set aside my pride, I''m sure of it. His was always the way of patience. I implore you, $N, seek out Hippogryph Masters and request their counsel on these willful children. Spare no detail of my struggles, as much as it pains me to admit that I am in need of their aid.$B$BWait! Do not speak to Caylais or Fyldren! I cannot accept what could only be seen as preferential treatment.$B$BI would urge you to travel to Rut''theran Village and Astranaar, and I believe I received correspondence from Nijel''s Point once, wherever that may be. Teloren on Stonetalon Peak I am certain would help me in this, but be mindful of his... tendency to ramble.',
RequestItemsText = 'I hope you come bearing word from the masters, $N.',
OfferRewardText = '<She listens in quiet contemplation as you relate the masters'' advice, meditating on the words for minutes.>$B$BWait... Teloren said what??$B$B<Her face flushes with embarrassment.>',
RequiredRaces = 589,
NextQuestInChain = 40800
WHERE entry = 40799;

UPDATE quest_template SET
Objectives = 'Bring 5 Chunks of Crawler Marrow, 5 Heaven Peaches, 5 Bear Viscera, and 5 Giant Strider Wings to Alleana Moonfeather in Forest Song.',
Details = 'Greetings, $c. Were you sent by my sister? My brother? No? Who might you be, then?$B$B$N, is it? Allow me to introduce myself: I am Alleana Moonfeatherm youngest of the Moonfeather family. My siblings already wear the mantle of Hippogryph Master, but I am finding it difficult to focus on my training since my mentor...$B$B<She trails off for a moment, before leveling her gaze at you once more.>$B$BNevertheless, I must press on, for my family''s reputation and in my mentor''s memory! Without proper guidance, however, it is quite difficult to gauge my methods. We raise fledgling hippogryphs from a young age, so they bond to us and rely wholly upon our guidance.$B$BMake no mistake, these children belong to nature first and foremost, but the Kaldorei share a bond with nature that allows us to commune with these younglings effectively. Yet these fledglings seem indifferent towards me. Perhaps it is their diet. If they are not eating well, they will not be open to training and socializing.$B$BIt would be of great help if you could gather some food from the creatures in Darkshore and Ashenvale for me.',
RequestItemsText = 'Welcome back. Have you brought the hippogryph food?',
OfferRewardText = 'Thank you kindly for your efforts, $N.$B$BDid you carry all of these in your backpack? The smell must be... Nevermind.',
NextQuestInChain = 40799,
RequiredRaces = 589,
RewRepValue1 = 150
WHERE entry = 40798;

UPDATE `creature_template` SET `npc_flags` = 0 WHERE `entry` = 73010;