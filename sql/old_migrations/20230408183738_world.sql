UPDATE creature_template SET Name = 'Hydromancer Shaleborn' WHERE entry = 60899;

UPDATE quest_template SET
Details = 'It has been a long and arduous campaign for us all. Through many months of struggle I made do with what implements I brought from Boralus, but my stocks are running dangerously low.$B$BIf I am to retain my dominion over water long enough to expedite the fleet on our return journey, I will require a new source.$B$BTo the northwest lies the foreign, bewitched forest of Ashenvale. I have scryed the presence of strong, yet volatile elemental spirits within the region''s heart, in the Mystral Lake.$B$BTravel there, claim a rare Refined Aqua Core from those beings and Kul Tiras will not soon forget your service.',
Objectives = 'Collect a Refined Aqua Core from the water elementals of Ashenvale for Hydromancer Shaleborn at Anchor''s Edge in the Barrens.',
RequestItemsText = 'Has the Aqua Core been recovered?$B$BI know it might take you some time to find, but it is imperative it comes into my possession.',
OfferRewardText = 'The Aqua Core, and even more potent than I had hoped!$B$BIn this arid land of beasts, mongrels and demi-humans, I dared not hold faith in assistance from anyone. But now, my control of the tidal elements is secured.$B$BYou have my thanks, $c.'
WHERE entry = 40792;

UPDATE quest_template SET NextQuestInChain = 40235, RequiredSkillValue = 250 WHERE entry = 40234;
UPDATE quest_template SET NextQuestInChain = 40236, RequiredSkillValue = 250 WHERE entry = 40235;
UPDATE quest_template SET NextQuestInChain = 40237, RequiredSkillValue = 250 WHERE entry = 40236;
UPDATE quest_template SET NextQuestInChain = 40238, RequiredSkillValue = 250 WHERE entry = 40237;
UPDATE quest_template SET NextQuestInChain = 40239, RequiredSkillValue = 250 WHERE entry = 40238;
UPDATE quest_template SET NextQuestInChain = 40240, RequiredSkillValue = 250 WHERE entry = 40239;
UPDATE quest_template SET NextQuestInChain = 40241, RequiredSkillValue = 250 WHERE entry = 40240;
UPDATE quest_template SET NextQuestInChain = 40259, RequiredSkillValue = 250 WHERE entry = 40241;

-- Change "To Alah'Thalas!" quest=80251 XP to 250
-- Change "Welcome to Alah'Thalas" quest=80256 XP to 150

UPDATE `quest_template` SET `RewXP`=250 WHERE `entry`=80251;
UPDATE `quest_template` SET `RewXP`=150 WHERE `entry`=80256;

-- Raise drop rate of https://database.turtle-wow.org/?item=61102.  This is ridiculous if you're going to ask for 20 of these.  Even Murloc and Raptor head quests don't ask for this many at such a low drop rate.

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -80 WHERE `item` = 61102;