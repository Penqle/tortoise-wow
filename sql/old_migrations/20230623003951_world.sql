UPDATE quest_template SET RewItemId1 = 23083, RewItemCount1 = 1, RewItemId2 = 23247, RewItemCount2 = 10, PrevQuestId = 0 WHERE entry IN (9319, 9386);
UPDATE quest_template SET Objectives = '', Details = '', OfferRewardText = 'You''ve proven yourself today, $N.$B$BWhile I have little else to give you, I do have this crown; a fitting gift for a conqueror. May it light your way.', RewMoneyMaxLevel = 29700 WHERE entry IN (9339, 9365);
UPDATE quest_template SET NextQuestId = 9365, ExclusiveGroup = -9324 WHERE entry IN (9324, 9325, 9326);
UPDATE quest_template SET NextQuestId = 9339, ExclusiveGroup = -9330 WHERE entry IN (9330, 9331, 9332);
REPLACE INTO creature_involvedrelation (id, quest) VALUES (16818, 9339);
REPLACE INTO creature_involvedrelation (id, quest) VALUES (16817, 9365);
