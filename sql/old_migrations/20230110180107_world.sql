-- Fixed Questchains ~by RMJ
UPDATE quest_template SET NextQuestInChain = 40249,Title = 'Taming the Beast',PrevQuestId = 0 WHERE entry = 40248;
UPDATE quest_template SET NextQuestInChain = 40250,Title = 'Taming the Beast' WHERE entry = 40249;
UPDATE quest_template SET NextQuestInChain = 40262,Title = 'Taming the Beast' WHERE entry = 40250;
UPDATE quest_template SET NextQuestInChain = 80755,Title = 'Taming the Beast' WHERE entry = 40262;
UPDATE quest_template SET NextQuestInChain = 80332 WHERE entry = 80331;
UPDATE quest_template SET NextQuestInChain = 80333 WHERE entry = 80332;
UPDATE quest_template SET NextQuestInChain = 80334 WHERE entry = 80333;
UPDATE quest_template SET RewXP = 40 WHERE entry BETWEEN 80115 AND 80119;
UPDATE quest_template SET RewXP = 355 WHERE entry = 80121;
UPDATE quest_template SET RewXP = 350 WHERE entry = 60145;
UPDATE quest_template SET RewXP = 200 WHERE entry = 80102;
UPDATE quest_template SET RewXP = 200 WHERE entry = 80104;
UPDATE quest_template SET RewXP = 250 WHERE entry = 80101;
UPDATE quest_template SET RewXP = 200 WHERE entry = 80120;
UPDATE quest_template SET RewXP = 300 WHERE entry BETWEEN 80105 AND 80106;
UPDATE quest_template SET RewXP = 400 WHERE entry = 80107;
UPDATE quest_template SET RewXP = 300 WHERE entry BETWEEN 80108 AND 80110;

-- Fixed Questtext ~By RMJ
UPDATE quest_template SET Objectives = 'Speak with Viz Fizbeast at Razor Hill.', Details = 'Hello, young hunter. You look to me like you are skilled enough to handle a beast and train it as your companion.$B$BWe hunters tend to have a pet by our side, though I hear your kind have some... unorthodox methods. Nonetheless, you should speak to Viz Fizbeast at Razor Hill if you wish to learn how to tame a pet of your own.', RewRepFaction1 = 0, RewRepFaction2 = 0, RewRepValue1 = 0, RewRepValue2 = 0, RewXP = 85, RewMoneyMaxLevel = 60 WHERE entry = 80330;

-- Fixed XP reward ~by RMJ
UPDATE quest_template SET ZoneOrSort = -261, RewXP = 85 WHERE entry = 40261;