UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 40659;
UPDATE `creature_template` SET `name` = 'Kerrulg' WHERE `entry` = 61146;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2693
UPDATE `quest_template` SET `NextQuestInChain` = 0 WHERE `entry` = 40485;
UPDATE `quest_template` SET `Details` = 'A few months ago, a mysterious, blind man moved in to an abandoned shack south of Darkshire. A goblin accompanied him, helping him with everyday tasks for exchange for mentorship. He was a renowned engineer, of some kind. Strange couple, that\'s for sure. He paid us very well for protection and privacy. So I had my right to be suspicious. Especially as a commander of Night Watch.$B$BAnd I was right.$B$BRegularly, late at night, strange people were visiting him. I couldn\'t get too close, but they were trading, for sure. I still don\'t have any evidence against him, though.$B$BHowever, I wouldn\'t be too mad if he disappeared silently. There is something sinister going on. Do what you want with him.' WHERE `entry` = 40485;

-- Remove spaces after line-break!

UPDATE `quest_template` SET `details` = REPLACE(`details`, '$B$B ', '$B$B');

