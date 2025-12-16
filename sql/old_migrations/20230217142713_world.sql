-- Quest fixes by RMJ.
UPDATE quest_template SET RewOrReqMoney = 50 WHERE entry = 80301;
UPDATE quest_template SET RewOrReqMoney = 500 WHERE entry = 80304;
UPDATE quest_template SET RewRepValue1 = 150,RewOrReqMoney = 2000 WHERE entry = 80360;
UPDATE quest_template SET RewOrReqMoney = 5000 WHERE entry = 80303;
UPDATE quest_template SET NextQuestInChain = 80261 WHERE entry = 80260;
UPDATE quest_template SET NextQuestInChain = 80262 WHERE entry = 80261;
UPDATE quest_template SET NextQuestInChain = 80263 WHERE entry = 80262;
UPDATE quest_template SET NextQuestInChain = 80264 WHERE entry = 80263;
UPDATE quest_template SET NextQuestInChain = 80265 WHERE entry = 80264;
UPDATE quest_template SET RewXP = 650,RewRepValue1 = 50 WHERE entry BETWEEN 80260 AND 80265;
UPDATE quest_template SET RewXP = 1350,RewRepValue1 = 150 WHERE entry = 40369;
