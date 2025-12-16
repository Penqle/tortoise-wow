-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2335
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2345
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2340
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2337

UPDATE `creature_template` SET `skinning_loot_id` = 2732 WHERE `entry` = 14232;
UPDATE `spell_template` SET `description` = 'Increases the duration of Tiger\'s Fury by 3 seconds and your Enrage now also instantly generates 5 rage. In addition, Tiger\'s Fury and Enrage increase your attack speed by 6% for 6 seconds.' WHERE `entry` = 45721;
UPDATE `spell_template` SET `description` = 'Increases the duration of Tiger\'s Fury by 6 seconds and your Enrage now also instantly generates 10 rage. In addition, Tiger\'s Fury and Enrage increase your attack speed by 12% for 12 seconds.' WHERE `entry` = 45722;
UPDATE `quest_template` SET `ZoneOrSort` = 1337 WHERE `entry` = 40129;
UPDATE `creature` SET `spawntimesecsmin` = 1800, `spawntimesecsmax` = 1800 WHERE `id` = 818;