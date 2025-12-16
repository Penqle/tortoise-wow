-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2776

UPDATE `quest_template` SET `Details` = '$C! I thought I would die out here with none to know of it. While I was hunting the scorpids of the Valley, I came across a particularly vicious-looking one. Hurling myself at it, I managed to inflict a massive blow to its claw before it closed around my leg.$b$bI wasn\'t ready for its stinger though, and it sliced down and into my chest, cutting into my flesh and letting my blood.$b$bPlease, you must kill the scorpid for me! My honor must be upheld! I fought it up on the plateau to the south.' WHERE `entry` = 790;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2786
UPDATE `quest_template` SET `RequiredRaces` = 434 WHERE `entry` = 40583;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2854
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 7768;
UPDATE `creature_template` SET `beast_family` = 3 WHERE `entry` = 7768;