-- Fix Daemar Swiftstrike not being able to train players.
DELETE FROM `npc_trainer` WHERE `entry`=61839;
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61839, 8615, 10, 0, 0, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61839, 8619, 500, 393, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61839, 8620, 5000, 393, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61839, 10769, 50000, 393, 200, 35);
DELETE FROM `creature_addon` WHERE `guid`=2581867;
UPDATE `creature` SET `position_x` = 4441.885742, `position_y` = -2837.935303, `position_z` = 10.376669, `orientation` = 0.254661 WHERE `guid` = 2581867;

