-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2453
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 7395;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2441
UPDATE `creature_template` SET `inhabit_type` = 3 WHERE `entry` = 17252;