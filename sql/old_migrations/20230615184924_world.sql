UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 49008 AND `item` = 60437;

-- Glyph of the Frostkin (51430) (Not used?)
-- Glyph of the Frostkin (51431)
-- Glyph of the Frostsaber (51057)
-- Glyph of the Ice Bear (51266)
-- Glyph of the Stag (51056)

-- Change the tooltip of these from ...while this Glyph is on your bag to ...while this Glyph is on your keyring.

UPDATE `item_template` SET `description` = 'Your Travel Form appears as a Stag, while this Glyph is on your keyring' WHERE `entry` = 51056;
UPDATE `item_template` SET `description` = 'Your Cat Form appears as a Frostsaber, while this Glyph is on your keyring' WHERE `entry` = 51057;
UPDATE `item_template` SET `description` = 'Your Bear Form appears as an Ice Bear, while this Glyph is on your keyring' WHERE `entry` = 51266;
UPDATE `item_template` SET `description` = 'Your Moonkin Form appears as a Frostkin, while this Glyph is on your keyring' WHERE `entry` = 51430;
UPDATE `item_template` SET `description` = 'Your Moonkin Form appears as a Frostkin, while this Glyph is on your keyring' WHERE `entry` = 51431;

-- Suggested edits for quest: https://database.turtle-wow.org/?quest=60030

UPDATE quest_template SET
Details = 'Greetings!$B$BAren''t you here for the Fashion Coins exchange? Well, here''s the deal then: One coin will cost you some materials. I require all the items listed below and none less. Please ensure they are in mint condition, undamaged, and unscratched. I have no interest in dealing with damaged goods, as I am not one who dabbles in such things.',
RequestItemsText = 'Were you able to obtain all the materials on my list?',
OfferRewardText = 'Your contributions to fashion have been outstanding, and this reward is a testament to your efforts.'
WHERE entry IN (60030, 60031, 60032, 60033, 60034, 60035);
-- Suggested edits for quest: https://database.turtle-wow.org/?quest=40359
UPDATE quest_template SET
Details = 'Alright, you''re here to steal my finds? I''ve been keeping my eye on these statues for a while. I''m not gonna let some random $R come in and take my loot, understand? Besides, we can''t carry all of them anyway. There are four more scattered around these ruins.$B$BSay, how about a truce? You get me some parts and I''ll come up with a gnomish contraption that can shrink them down. We''ll split up the statues, three for me, two for you. Remember, I''m the one who came up with this plan, after all.$B$BSo you got all that, bub? Then, get me those materials and let''s make these statues more portable.'
WHERE entry = 40359;
-- Typo fixed for quest: https://database.turtle-wow.org/?quest=40256
UPDATE quest_template SET
Details = 'The Blackrock Clan belongs to the Old Horde, a very large and dangerous enemy to Orgrimmar. Do not be fooled by the distance between the Blackrock Mountain and Orgrimmar. Should the Blackrock Clan ever gain a sizeable amount of strength, they will come to destroy us as well. The Old Horde consists of many factions that remained here on the Eastern Kingdoms during their fights in the First and Second Wars and are a grizzled enemy that should not be underestimated.$B$BI have been sent here directly from Orgrimmar to be a damper on the Blackrock Clan, and you shall help. It is the honor of the Horde that is at stake after all.$B$BGather me 20 Blackrock Signets, worn by all members of the Blackrock Clan in the region. Kill them, take their signets, and bring them to me.'
WHERE entry = 40256;
-- Suggested edits for quest: https://database.turtle-wow.org/?quest=80399
UPDATE quest_template SET
Details = 'Makasgar, my once faithful apprentice, has become arrogant and deserted me. He has fled north along the coast with a vast amount of dark mojo I had reserved for my future plans.$B$BPerhaps we can make a deal if you and your minions retrieve this artifact along with his head. Bring me what rightfully belongs to me, and you shall receive what you seek in return.'
WHERE entry = 80399;
-- Typo edits for quest: https://database.turtle-wow.org/?quest=40786

UPDATE quest_template SET
Objectives = 'Bring 5 Twisted Basilisk Hearts from Gravelhide Basilisks in Tel''Abim to Golhine the Hooded at Talonbranch Glade in Felwood.'
WHERE entry = 40786;
-- Suggested edits for quest: https://database.turtle-wow.org/?quest=40535
UPDATE quest_template SET
Details = 'May the Earthmother guide the path you''re traveling, young one. Welcome to Red Cloud Roost, where we keep the wyverns of Highperch, which have a unique bond with members of the Horde.$B$BWyverns are intelligent and generous creatures that have been invaluable allies to our ways for many years. Many would like to journey to the skies with them, and if that is your goal, I would be happy to teach you.$B$BTo begin, listen to what their stomachs crave and offer meat as a bribe to earn their trust. I recommend obtaining meat from adult plainstriders.$B$BSimply bring back two pieces of leg meat, but be mindful that if you hunt these majestic birds with excessive force, you may cause irreparable damage, making it impossible to harvest the meat.$B$BI look forward to seeing whether you will demonstrate the virtues of patience or creativity to complete this task.'
WHERE entry = 40535;

-- Suggested edits for quest: https://database.turtle-wow.org/?quest=40798

UPDATE quest_template SET
Details = 'Greetings, $c. Were you sent by my sister? My brother? No? Who might you be, then?$B$B$N, is it? Allow me to introduce myself: I am Alleana Moonfeather youngest of the Moonfeather family. My siblings already wear the mantle of Hippogryph Master, but I am finding it difficult to focus on my training since my mentor...$B$BNevertheless, I must press on, for my family''s reputation and in my mentor''s memory! Without proper guidance, however, it is quite difficult to gauge my methods. We raise fledgling hippogryphs from a young age, so they bond to us and rely wholly upon our guidance.$B$BMake no mistake, these children belong to nature first and foremost, but the Kaldorei share a bond with nature that allows us to commune with these younglings effectively. Yet these fledglings seem indifferent towards me. Perhaps it is their diet.$B$BIt would be of great help if you could gather some food from the creatures in Darkshore and Ashenvale for me.'
WHERE entry = 40798;