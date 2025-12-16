UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0 WHERE entry = 41252; -- Don't require killing an NPC for a quest you HAVE to kill to get an item drop

UPDATE quest_template SET NextQuestInChain = 41269 WHERE entry = 41268;
UPDATE quest_template SET NextQuestInChain = 41270 WHERE entry = 41269;
UPDATE quest_template SET NextQuestInChain = 41272 WHERE entry = 41271;
UPDATE quest_template SET NextQuestInChain = 41273 WHERE entry = 41272;
UPDATE quest_template SET NextQuestInChain = 41188 WHERE entry = 41187;
UPDATE quest_template SET NextQuestInChain = 41189 WHERE entry = 41188;
UPDATE quest_template SET NextQuestInChain = 41195 WHERE entry = 41194;
UPDATE quest_template SET NextQuestInChain = 41236 WHERE entry = 41195;
UPDATE quest_template SET NextQuestInChain = 41238 WHERE entry = 41237;
UPDATE quest_template SET NextQuestInChain = 41239 WHERE entry = 41238;
UPDATE quest_template SET NextQuestInChain = 41240 WHERE entry = 41239;
UPDATE quest_template SET NextQuestInChain = 41251 WHERE entry = 41240;
UPDATE quest_template SET NextQuestInChain = 41243 WHERE entry = 41242;
UPDATE quest_template SET NextQuestInChain = 41244 WHERE entry = 41243;
UPDATE quest_template SET NextQuestInChain = 41250 WHERE entry = 41244;
UPDATE quest_template SET NextQuestInChain = 41232 WHERE entry = 41250;
UPDATE quest_template SET NextQuestInChain = 41233 WHERE entry = 41232;
UPDATE quest_template SET NextQuestInChain = 41234 WHERE entry = 41233;
UPDATE quest_template SET NextQuestInChain = 41235 WHERE entry = 41234;
UPDATE quest_template SET NextQuestInChain = 41248 WHERE entry = 41245;
UPDATE quest_template SET NextQuestInChain = 41249 WHERE entry = 41248;
UPDATE quest_template SET NextQuestInChain = 41217 WHERE entry = 41216;
UPDATE quest_template SET NextQuestInChain = 41222 WHERE entry = 41221;
UPDATE quest_template SET NextQuestInChain = 41225 WHERE entry = 41224;
UPDATE quest_template SET NextQuestInChain = 41247 WHERE entry = 41246;

UPDATE item_template SET Name = 'Hawkstrider Boots' WHERE entry = 41191;

-- If this doesn't fix the 200 Cenarion Circle Rep on the repeatable Christmas quest, I am going to fucking kill myself (RMJ)
UPDATE quest_template SET
RewRepFaction1 = 0, RewRepFaction2 = 0, RewRepFaction3 = 0, RewRepFaction4 = 0, RewRepFaction5 = 0,
RewRepValue1 = 0, RewRepValue2 = 0, RewRepValue3 = 0, RewRepValue4 = 0, RewRepValue5 = 0
WHERE entry = 50318;

UPDATE quest_template SET RewChoiceItemId1 = 0, RewChoiceItemId2 = 0, RewChoiceItemCount1 = 0, RewChoiceItemCount2 = 0 WHERE entry = 41223;

UPDATE spell_template SET Name = 'Tiny Snowman' WHERE entry = 26469;
