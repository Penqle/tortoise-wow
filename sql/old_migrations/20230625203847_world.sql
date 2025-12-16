UPDATE quest_template SET RequiredRaces = 589 WHERE entry = 9339;
UPDATE quest_template SET RequiredRaces = 434 WHERE entry = 9365;
REPLACE INTO creature_questrelation VALUES (16817, 9339);
REPLACE INTO creature_involvedrelation VALUES (16817, 9339);
REPLACE INTO creature_questrelation VALUES (16818, 9365);
REPLACE INTO creature_involvedrelation VALUES (16818, 9365);
UPDATE quest_template SET Objectives = '', Details = '', OfferRewardText = 'You''ve proven yourself today, $N.$B$BWhile I have little else to give you, I do have this crown; a fitting gift for a conqueror. May it light your way.', RewMoneyMaxLevel = 2970, Method = 0 WHERE entry IN (9339, 9365);
UPDATE quest_template SET NextQuestId = 9339, ExclusiveGroup = -9324 WHERE entry IN (9324, 9325, 9326);
UPDATE quest_template SET NextQuestId = 9365, ExclusiveGroup = -9330 WHERE entry IN (9330, 9331, 9332);
