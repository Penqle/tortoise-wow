-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2370
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2371
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2369
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2360
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2365

UPDATE `broadcast_text` SET `male_text` = 'Food can get scarce in the swamp if you don\'t know what to search for.' WHERE `entry` = 982;
UPDATE `quest_template` SET `OfferRewardText` = 'The Horde would surely prevail if the Kolkar centaurs were to attack.\n\nBut by preventing such an attack, we have spared our mighty warriors unnecessary bloodshed.\n\nAnd as sure as there is sand in the Tanaris desert, we know that there will be blood spilled before these trying times are through.\n\nYou have served your people well, $C.' WHERE `entry` = 786;
UPDATE `gameobject_template` SET `name` = 'Attack Plan: Razor Hill' WHERE `entry` = 3192;
UPDATE `quest_template` SET `ObjectiveText3` = 'Attack Plan: Razor Hill destroyed' WHERE `entry` = 786;
UPDATE `quest_template` SET `RequestItemsText` = 'No good lazy...$b$bEh? Do you have my blackjack? Did you catch any peons sleeping on the job?!' WHERE `entry` = 5441;
UPDATE `quest_template` SET `OfferRewardText` = 'Good, good. Maybe they\'ll think twice before slacking next time!$b$bThanks for the help!' WHERE `entry` = 5441;
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 51280;
UPDATE `item_template` SET `allowable_race` = 589 WHERE `entry` = 17008;