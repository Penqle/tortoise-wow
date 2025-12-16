-- Fixed Questchains ~by RMJ
UPDATE quest_template SET NextQuestInChain = 80101, QuestLevel = 1 WHERE entry = 80104;
UPDATE quest_template SET NextQuestInChain = 80102 WHERE entry = 80100;
UPDATE quest_template SET NextQuestInChain = 80103, QuestLevel = 3 WHERE entry = 80102;