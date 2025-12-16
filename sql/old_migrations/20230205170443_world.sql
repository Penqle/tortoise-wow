-- Set Ammo Crate respawn to 5 seconds https://database.turtle-wow.org/?object=176785
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 10663;

-- Adjust rep rewards and clean up text of https://database.turtle-wow.org/?quest=60111
UPDATE quest_template SET
MinLevel = 7,
Details = 'You have proven yourself a capable defender of our roads and our people, $c. I believe you will be a great asset in putting an end to those responsible for these attacks once and for all. Our scouts have pinpointed the locations of two of the leaders of the Gnarlpine, Agal and Greenpaw.$B$BAgal, who orchestrates ambushes upon those traveling the road to Darnassus, resides in a cave just below the road. Greenpaw is a powerful shaman who has entrenched himself and his kin deep in the Ban''ethil Barrow Den, desecrating our sacred grounds and terrorizing those within and in the lands surrounding the den.$B$BExercise caution, for they are well protected by their tribesmen. I suggest you enlist the aid of a dependable ally if you intend to strike at these two. May Elune protect you and guide you on your path.',
RequestItemsText = 'Agal and Greenpaw were once honorable and powerful allies. Now, in their madness, they pose a great threat to all who travel this road. There cannot be peace so long as they live, $c.',
OfferRewardText = 'Then it is done? It pains me greatly that it had come to this, but your actions today have ensured safe passage to Darnassus for our people.$B$BYour valor shall not go unrewarded, $c. Elune''s blessing be upon you, always.',
RewRepValue1 = 150
WHERE entry = 60111;

-- Fix name of https://database.turtle-wow.org/?item=51815
UPDATE item_template SET Name = 'Githyiss\'s Venom Sac' WHERE entry = 51815;

-- Make these quests chain properly https://database.turtle-wow.org/?quest=70054 into https://database.turtle-wow.org/?quest=70055
UPDATE quest_template SET NextQuestInChain = 70055 WHERE entry = 70054;

-- Set Brannol's Sewing Kit respawn to 5 seconds https://database.turtle-wow.org/?object=1000395
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 4004053;
-- Set Elvish Notes respawn to 5 seconds https://database.turtle-wow.org/?object=2010914
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 5008626;
-- Set Felix's Box respawn to 5 seconds https://database.turtle-wow.org/?object=148499
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 1380;
-- Set Felix's Chest respawn to 5 seconds https://database.turtle-wow.org/?object=178084
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 1386;
-- Set Felix's Bucket of Bolts respawn to 5 seconds https://database.turtle-wow.org/?object=178085
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 1394;
-- Set MacGrann's Meat Locker respawn to 5 seconds https://database.turtle-wow.org/?object=272
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 10027;
-- Set Bingles's Toolbucket respawn to 5 seconds https://database.turtle-wow.org/?object=104564
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 12863;
-- Set Bingles's Toolbucket respawn to 5 seconds https://database.turtle-wow.org/?object=104569
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 12872;
-- Set Bingles's Toolbucket respawn to 5 seconds https://database.turtle-wow.org/?object=104574
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 12864;
-- Set Bingles's Blastencapper respawn to 5 seconds https://database.turtle-wow.org/?object=104575
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 12871;
-- Set Carver's Chest respawn to 5 seconds https://database.turtle-wow.org/?object=2010928
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 5010658;

-- Fix inflated rep reward and other quest reward values, as well as clean up text of https://database.turtle-wow.org/?quest=60110
UPDATE quest_template SET
Details = 'Iverron was attacked, you say? And by Githyiss herself, outside the Shadowthread Cave? This is grave news... To think that the broodmother of the webwood spiders has become this hostile.$B$BI had already heard rumors of her mercilessly overhunting the local wildlife. If she has gone so far as to attack our people, however... It pains me to say this, but I fear that she must be put down. Her violent nature now threatens the very balance of Shadowglen.$B$BTake great caution if you are to hunt her, $N; her poison is much stronger than any of her brood''s. If you could, please bring back her venom sac so that I may further my research. I only hope it may yield answers to what is happening across Teldrassil.',
RequestItemsText = 'We must put the broodmother down. I am afraid we have no other choice...',
OfferRewardText = 'Do not be troubled by what needed be done, $N. Githyss was aggressive beyond our ability to manage. The reason for this, I do not know, but one I hope to uncover in my research. Hold your head with pride; you have ensured the continued safety of Shadowglen.',
PrevQuestId = 3522,
ReqCreatureOrGOId1 = 0,
RewXP = 500,
RewRepValue1 = 150,
RewMoneyMaxLevel = 300
WHERE entry = 60110;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2806
UPDATE `item_template` SET `display_id` = 13120 WHERE `entry` = 60859;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2805
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0, stat_value1 = 19, frost_res = 15 WHERE `entry` = 61079;