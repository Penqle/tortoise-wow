-- Remove empty creature group and link 2 Slime Maggots.
DELETE FROM `creature_groups` WHERE `leader_guid`=33676;
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (33617, 33618, 0, 0, 2);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (33617, 33617, 0, 0, 2);
