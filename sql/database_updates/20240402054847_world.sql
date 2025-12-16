UPDATE quest_template SET
Objectives = 'Speak to Mayten Boomrifle at Rustgate Ridge on Blackstone Island.',
Details = 'Hello, young hunter. You look to me like you are skilled enough to handle a beast and train it as your companion.$B$BWe hunters tend to have a pet by our side, though I hear your kind have some... unorthodox methods. Nonetheless, you should speak to Mayten Boomrifle at Rustgate Ridge over on Blackstone Island if you wish to learn how to tame a pet of your own.',
OfferRewardText = 'There you are! I was wondering where you''d run off to. You didn''t think I''d notice you go missing?$B$BWell at least you''re here now, so let''s get down to business.'
WHERE entry = 80330;

UPDATE quest_template SET Title = '[DEPRECATED] Taming the Beast' WHERE entry BETWEEN 80331 AND 80334; -- LOOK BROTALNIA, I REMEMBERED TO USE TITLE INSTEAD OF NAME, OKAY???
DELETE FROM creature_involvedrelation WHERE id = 80903 AND quest = 80330;
REPLACE INTO creature_involvedrelation VALUES (80105, 80330);
UPDATE quest_template SET NextQuestInChain = 0 WHERE entry IN (80330, 80366, 6071, 6072, 6073, 6074, 6075, 6076, 6721, 6722, 80339, 6065, 6066, 6067, 6068, 6069, 6070, 40261);
UPDATE quest_template SET PrevQuestId = 0 WHERE entry IN (6061, 6062, 6063, 6064, 40248, 41131, 41177, 60160, 80340);
UPDATE quest_template SET NextQuestInChain = 41178 WHERE entry = 41177;
UPDATE quest_template SET NextQuestInChain = 41179 WHERE entry = 41178;
UPDATE quest_template SET NextQuestInChain = 41180 WHERE entry = 41179;
UPDATE quest_template SET RequiredRaces = 4 WHERE entry IN (6074, 6075, 6076, 6064, 6084, 6085, 6086);
UPDATE creature_involvedrelation SET id = 3171 WHERE id = 3038 AND quest = 6070;

UPDATE creature_involvedrelation SET id = 80245 WHERE id = 1231 AND quest = 80366;
UPDATE quest_template SET
Details = 'Blessed and swift be your arrows, young one. It seems you have honed your skills well, honoring our lost rangers.$B$BIt is time for you to find Damilara Sunsorrow in Alah''Thalas. With her aid, you will learn the means to obtain a worthy companion.',
OfferRewardText = 'I''ve been looking for you. Are you ready to begin?'
WHERE entry = 80336;
