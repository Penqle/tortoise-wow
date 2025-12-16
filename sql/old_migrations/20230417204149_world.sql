UPDATE quest_template SET
Details = 'Only shortly ago, we learned that not all of Daelin Proudmoore''s lieutenants were slain in the War for Durotar. We were expecting their return, but we did not think they''d be so well-armed.$B$BAll wars are fought on supplies, however, and there is no doubt they are stretched thin so far from their homeland.$B$BSearch their camps on the southern rims of the Echo Isles and pillage their stocks — they may be forced to leave before ever setting foot near Orgrimmar.',
Objectives = 'Gather 6 Bundles of Expedition Supplies for War Crier Dar''nakk in Razor Hill.',
RequestItemsText = 'Have you taken their provisions, $c?',
OfferRewardText = 'Proudmoore thought us ill-made mongrels, unthinking and mad with bloodlust.$B$BBut true warfare requires strategic acuity as much as it requires a sharp edge and strong guts.$B$BYou have done well, $N. We have defeated the Kul Tirans once, we shall defeat them again.'
WHERE entry = 40666;

UPDATE quest_template SET
Details = 'War is upon our lands, $c.$B$BThe arrogant Kul Tirans think us weak and it is up to the brave sons and daughters of the Horde to teach them otherwise!$B$BA second wave of their old fleet, the same we vanquished years ago, has landed just off our shores, posing a threat to our people.$B$BOn the southern edge of the Echo Isles, their scouts and commandos can be found, probing and plotting for their next move. Slay them in the name of the Horde, and return to me!',
Objectives = 'Slay 7 Expedition Scouts and 7 Expedition Commandos for War Crier Dar''nakk in Razor Hill.',
RequestItemsText = 'Throw them back into the waves. Let the sea churn red with their blood.',
OfferRewardText = 'You have done well, but do not yet sing for victory: Our foe is as vicious as it is relentless.'
WHERE entry = 40665;

UPDATE quest_template SET NextQuestInChain = 40667 WHERE entry = 40665;
UPDATE quest_template SET NextQuestInChain = 40668 WHERE entry = 40667;
UPDATE quest_template SET NextQuestInChain = 40669 WHERE entry = 40668;
UPDATE quest_template SET NextQuestInChain = 40670 WHERE entry = 40669;
UPDATE quest_template SET NextQuestInChain = 40671 WHERE entry = 40670;
UPDATE quest_template SET NextQuestInChain = 40675 WHERE entry = 40674;
UPDATE quest_template SET PrevQuestId = 40671, NextQuestId = 40674, ExclusiveGroup = -40672 WHERE entry = 40672;
UPDATE quest_template SET PrevQuestId = 40671, NextQuestId = 40674, ExclusiveGroup = -40672 WHERE entry = 40673;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 40672;

UPDATE item_template SET Required_Level = 0 WHERE entry IN (60915, 60916, 60917, 70034);

UPDATE quest_template SET RewXP = 200 WHERE entry = 60122;
UPDATE quest_template SET RewXP = 300 WHERE entry = 80321;
UPDATE quest_template SET RewXP = 400 WHERE entry = 80395;
UPDATE quest_template SET RewXP = 500 WHERE entry IN (80322, 80323);
UPDATE quest_template SET RewXP = 600 WHERE entry IN (70052, 80320);
UPDATE quest_template SET RewXP = 900 WHERE entry IN (39996, 70048, 80396);
UPDATE quest_template SET RewXP = 1050 WHERE entry IN (39998, 39999, 55049);

UPDATE creature SET spawntimesecsmin = 600, spawntimesecsmax = 600 WHERE id = 50677;

-- should not be bind on pickup
update item_template set bonding = 2 where entry = 2315; -- Dark Leather Boots
update item_template set bonding = 2 where entry = 2316; -- Dark Leather Cloak
update item_template set bonding = 2 where entry = 5739; -- Barbaric Harness
update item_template set bonding = 2 where entry = 2314; -- Toughened Leather Tunic
update item_template set bonding = 2 where entry = 4246; -- Fine Leather Belt
update item_template set bonding = 2 where entry = 2307; -- Fine Leather Boots
update item_template set bonding = 2 where entry = 5966; -- Guardian Gloves
update item_template set bonding = 2 where entry = 2857; -- Runed Copper Belt
update item_template set bonding = 2 where entry = 2854; -- Runed Copper Bracers
update item_template set bonding = 2 where entry = 3835; -- Green Iron Bracers
update item_template set bonding = 2 where entry = 6040; -- Golden Scale Bracers
update item_template set bonding = 2 where entry = 7922; -- Steel Helm
update item_template set bonding = 2 where entry = 3472; -- Runed Copper Gauntlets
update item_template set bonding = 2 where entry = 7048; -- Azure Silk Hood
update item_template set bonding = 2 where entry = 7058; -- Crimson Silk Vest
update item_template set bonding = 2 where entry = 7050; -- Silk Headband
update item_template set bonding = 2 where entry = 7062; -- Crimson Silk Pantaloons
update item_template set bonding = 2 where entry = 2584; -- Woolen Cape
update item_template set bonding = 2 where entry = 4315; -- Reinforced Woolen Shoulders
update item_template set bonding = 2 where entry = 2582; -- Green Woolen Vest

UPDATE quest_template SET
Details = '<The dwarf looks flustered as he mumbles under his breath.>$B$BBlast ''em buggers all to pieces...$B$BOh, hallo there. Perfect timing, my friend. Why, I''d sure as hell like yer helping hand!$B$BSo, listen up, I''ve had me book finished recently and was about tae get some components I needed fer ma new invention. I left me camp fer a wee spell and whaddayaknow?! Bloody troggs came over and had a carousin'' with me stuff!$B$BAlas, me book got ripped to pieces and judging by what''s left of it, all 25 pages of perfectly drawn patterns and schematics were lost.$B$BAll I care about now is me book pages returned and them mauchit troggs sufferin'' in the process. They''re numpties, same as kobolds, but just like kobolds they tend to run in packs — so be careful when ye find them!',
Objectives = 'Find 10 Dwarven Writings and return them to Prospector Brotalus in the Badlands.',
RequestItemsText = 'Wreckin'' me camp, stealin'' me belongings, eatin'' me haggis and even settin'' me camp ablaze are nowhere near as horrible a crime as stealin'' me bonnie book!$B$BMake ''em suffer worse than a gryphon with clipped wings!',
OfferRewardText = 'Oh, me bonnie, precious, darling book! What did those scunnered bampots dae to ye?$B$BThank ye, $c, I''ll never forget yer kindness.$B$BI''ll be sure to add a dedication to yer name once I put me book back together!'
WHERE entry = 80400;

UPDATE quest_template SET `Method` = 0 WHERE entry IN (40619, 40631);
UPDATE item_template SET buy_price = 0, sell_price = 0 WHERE entry = 60856;

UPDATE item_template SET Name = 'Horde Defender''s Axe' WHERE entry = 40065;
UPDATE quest_template SET ZoneOrSort = 17 WHERE entry BETWEEN 39994 AND 39999;

UPDATE quest_template SET RewXP = 2650, RewMoneyMaxLevel = 15900 WHERE entry = 40609;
UPDATE quest_template SET
RewXP = 350, RewMoneyMaxLevel = 2100, RewRepFaction1 = 93, RewRepValue1 = 200, RewRepFaction2 = 92, RewRepValue2 = -1000
WHERE entry = 40633;
UPDATE quest_template SET RewRepFaction1 = 92, RewRepValue1 = 200, RewRepFaction2 = 93, RewRepValue2 = -1000 WHERE entry = 40621;
UPDATE quest_template SET RewXP = 2750, RewMoneyMaxLevel = 16500 WHERE entry = 40610;
UPDATE quest_template SET RewXP = 2950, RewMoneyMaxLevel = 17700, ReqCreatureOrGOCount1 = 4 WHERE entry = 40613;
UPDATE quest_template SET
RewXP = 4000, RewMoneyMaxLevel = 24000, RewRepFaction1 = 93, RewRepValue1 = 1500, RewRepFaction2 = 92, RewRepValue2 = -7500
WHERE entry = 40615;
UPDATE quest_template SET RewRepFaction1 = 92, RewRepValue1 = 1500, RewRepFaction2 = 93, RewRepValue2 = -7500 WHERE entry = 40628;
UPDATE quest_template SET RewRepFaction1 = 93, RewRepValue1 = 1500, RewRepFaction2 = 92, RewRepValue2 = -7500 WHERE entry = 40616;
UPDATE quest_template SET RewRepFaction1 = 92, RewRepValue1 = 1500, RewRepFaction2 = 93, RewRepValue2 = -7500 WHERE entry = 40629;

UPDATE quest_template SET NextQuestInChain = 0 WHERE entry = 40383;

UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 60107;