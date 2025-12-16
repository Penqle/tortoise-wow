-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2357
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2356

UPDATE `quest_template` SET `Title` = 'Suppressing the Dreadweavers ', `Objectives` = 'Slay 8 Shadowsworn Dreadweavers for Commander Baelos at Nethergarde Keep.' WHERE `entry` = 40434;
UPDATE `item_template` SET `name` = 'Crate of Ley-Shards' WHERE `entry` = 60114;

