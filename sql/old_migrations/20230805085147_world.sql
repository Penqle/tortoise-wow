-- set shadowforge senators and arena spectator faction to dark iron dwarves based on sniff data
UPDATE `creature_template` SET `faction` = 54 WHERE `entry` = 8904;
UPDATE `creature_template` SET `faction` = 54 WHERE `entry` = 8916;
