UPDATE quest_template SET ZoneOrSort = 3277, PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0, RewRepValue1 = 10 WHERE entry BETWEEN 7863 AND 7868;
UPDATE quest_template SET ZoneOrSort = 3358 WHERE entry IN (8384, 8438);
UPDATE quest_template SET RequiredMinRepValue = 41500 WHERE entry IN (8115, 8122);
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0, RewRepValue1 = 10 WHERE entry BETWEEN 8260 AND 8265;
UPDATE quest_template SET RewRepValue1 = 1000 WHERE entry = 8114;
