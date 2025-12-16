-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2376
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2377
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2375
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2363

UPDATE `quest_template` SET `Details` = 'Truly a spirit of strength resides in your body, willing to help an old man brew his potions.\n\nThe generosity found in our new home and the strength of relying on our allies is what sets us apart from others, $c.\n\nI need one more thing to begin brewing a batch of my potion, eight shimmerweed.\n\nYou can find the herbs northwest of Razor Hill in Thunder Ridge, and be careful, $N.' WHERE `entry` = 820;
UPDATE `quest_template` SET `OfferRewardText` = 'An eye-opener, isn\'t it, $N?\n\nYou now feel closer to the Earthmother than ever before.\n\nRejoice and be one with nature!' WHERE `entry` = 40003;
UPDATE `quest_template` SET `ZoneOrSort` = 4 WHERE `entry` = 40421;
UPDATE `quest_template` SET `ZoneOrSort` = 4 WHERE `entry` = 40423;
UPDATE `creature_template` SET `loot_id` = 5465 WHERE `entry` = 60544;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2364

UPDATE `creature_template` SET `skinning_loot_id` = 5272 WHERE `entry` = 60545;
UPDATE `creature_template` SET `loot_id` = 5272 WHERE `entry` = 60545;
UPDATE `creature_template` SET `gold_min` = 0, `gold_max` = 0 WHERE `entry` = 60545;