-- Spawn two Dark Rider Apprentice (entry 61203) to follow Dark Rider Champion (entry 61204) in formation in kara10, requested this multiple times and it still hasn't been done.
-- These dark rider apprentices need to be respawned if the dark rider champion does not die and only they are killed, and should stay dead if the champion is dead. 

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES 

(99967, 61203, 0, 0, 0, 532, -11148.9, -1903.24, 74.3967, 0.598804, 604800, 604800, 0, 100, 100, 2, 0, 0),
(99968, 61203, 0, 0, 0, 532, -11148.9, -1903.24, 74.3967, 0.598804, 604800, 604800, 0, 100, 100, 2, 0, 0);

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (99967, 2574092, 3073);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (99968, 2574092, 3073);

-- REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2574092, 99967, 3.01465, 6.64826, 1);
-- REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2574092, 99967, 6.01465, 6.64826, 1);
