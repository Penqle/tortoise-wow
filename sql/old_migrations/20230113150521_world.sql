UPDATE quest_template SET NextQuestInChain = 40248 WHERE entry = 40261;
UPDATE quest_template SET PrevQuestId = 40261 WHERE entry = 40248;
UPDATE quest_template SET NextQuestInChain = 80340 WHERE entry = 80339;
UPDATE quest_template SET PrevQuestId = 80339,NextQuestInChain = 80341 WHERE entry = 80340;
UPDATE quest_template SET PrevQuestId = 80340,NextQuestInChain = 80342 WHERE entry = 80341;
UPDATE quest_template SET PrevQuestId = 80341,NextQuestInChain = 80343 WHERE entry = 80342;
UPDATE quest_template SET PrevQuestId = 80342,RewXP = 420,RewMoneyMaxLevel = 240 WHERE entry = 80343;
UPDATE quest_template SET NextQuestInChain = 80331 WHERE entry = 80330;
UPDATE quest_template SET PrevQuestId = 80330 WHERE entry = 80331;
UPDATE quest_template SET NextQuestInChain = 6064 WHERE entry = 80366;
UPDATE quest_template SET RewXP = 85,RewMoneyMaxLevel = 60 WHERE entry = 80339;
UPDATE quest_template SET RewXP = 840,RewMoneyMaxLevel = 510 WHERE entry BETWEEN 80340 AND 80342;
UPDATE quest_template SET RequiredRaces = 16 WHERE entry IN (40248, 40249, 40250, 40262, 40263);
UPDATE quest_template SET RequiredClasses = 4 WHERE entry = 40263;


UPDATE quest_template SET ZoneOrSort = -81,RewXP = 40,RewMoneyMaxLevel = 30 WHERE entry IN (80115, 80216);
UPDATE quest_template SET ZoneOrSort = -162,RewXP = 40,RewMoneyMaxLevel = 30 WHERE entry IN (80116, 80215);
UPDATE quest_template SET ZoneOrSort = -261,RewXP = 40,RewMoneyMaxLevel = 30 WHERE entry IN (80117, 80211, 40220, 80350);
UPDATE quest_template SET ZoneOrSort = -161,RewXP = 40,RewMoneyMaxLevel = 30 WHERE entry IN (80118, 80214, 3111);
UPDATE quest_template SET ZoneOrSort = -61,RewXP = 40,RewMoneyMaxLevel = 30 WHERE entry = 80119;
UPDATE quest_template SET ZoneOrSort = -141,RewXP = 40,RewMoneyMaxLevel = 30 WHERE entry = 80212;
UPDATE quest_template SET ZoneOrSort = -262,RewXP = 40,RewMoneyMaxLevel = 30 WHERE entry = 80213;
UPDATE quest_template SET RewRepValue1 = 50,QuestLevel = 1, MinLevel = 1 WHERE entry BETWEEN 80211 AND 80216;
UPDATE quest_template SET QuestLevel = 1,MinLevel = 1 WHERE entry BETWEEN 80115 AND 80119;
UPDATE quest_template SET QuestLevel = 1,MinLevel = 1,PrevQuestId = 364 WHERE entry = 40220;
UPDATE quest_template SET Title = 'Ranger\'s Letter' WHERE entry = 80211;
UPDATE quest_template SET Title = 'Paladin\'s Letter' WHERE entry = 80212;
UPDATE quest_template SET Title = 'Priest\'s Letter' WHERE entry = 80213;
UPDATE quest_template SET Title = 'Magister\'s Letter' WHERE entry = 80214;
UPDATE quest_template SET Title = 'Shady Letter' WHERE entry = 80215;
UPDATE quest_template SET Title = 'Swordsman\'s Letter' WHERE entry = 80216;
UPDATE quest_template SET RewRepValue1 = 50,RewRepFaction1 = 47 WHERE entry = 3111;
UPDATE quest_template SET RewRepValue1 = 50,RewRepFaction1 = 54 WHERE entry = 80350;

UPDATE quest_template SET QuestLevel = 4,MinLevel = 1 WHERE entry = 80121;


UPDATE quest_template SET Objectives = 'Use the Taming Rod to tame a Dire Mottled Boar. Practice your skills, then return the Taming Rod to Viz Fizbeast in Razor Hill.' WHERE entry = 80331;
UPDATE quest_template SET Details = 'Listen kid, every time you add a pet to your collection, you become stronger. Your pet is like an extension of you, so you gotta make sure it knows you\'re in charge.$B$BWe goblins may not be the strongest, but we got the biggest brains, feel me? Why wrestle a beast into submission when you can outsmart \'em? Let the animal be your strength while you make with the plans!$B$BLet\'s turn things up a notch. You\'re gonna have to get your boots wet for this next critter. This one really likes the sea, especially past that Troll village down south.$B$BYou know the one, Sen\'jin Village? Down near the Echo Isles. Keep your eyes peeled for a Surf Crawler, slap the ol\' "Friend Request" on \'em, and bring it back to me.' WHERE entry = 80332;

UPDATE quest_template SET ZoneOrSort = -141,RewXP = 1000 WHERE entry IN (60011, 60012);

UPDATE quest_template SET OfferRewardText = 'A report from Bixxle himself? Give me that!$B$B<Baron Telraz frantically reads the letter with utmost curiosity, letting out a sigh of relief.>$B$BMy, that certainly is a relief! Without Bixxle, I would have no idea how to manage things up there. Thanks for the work kid. Here, take some coins for the hassle of running around.' WHERE entry = 40766;


