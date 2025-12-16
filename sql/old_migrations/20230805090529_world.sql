-- Increase respawn time of AV base guards.
UPDATE `creature` SET `spawntimesecsmin`=600, `spawntimesecsmax`=600 WHERE `guid` IN (52034, 52036, 52037, 52038, 52039, 52040, 114758, 114759, 114760, 114761, 114762, 114763, 114764, 114765, 114766, 114767, 114768, 114769, 114773, 114774, 114775, 114776, 115334, 115335, 115336, 115338, 115339, 115341, 115342, 115343, 115344, 115348, 115349, 115350, 115351, 115352, 115353, 115356, 115359, 115360, 115361, 115362, 115363, 115364, 115365, 115366, 115371, 115384, 115385, 115386, 118991, 118992, 118994, 118995, 119018, 119019, 119020, 119021, 119022, 119023, 119024, 119025, 150027, 150028, 150029, 150030, 150031, 150087, 150107, 150116, 150118, 150119, 150124, 150125, 150156, 150157, 150158, 150159, 150184, 150185, 150186, 150187, 150212, 150213, 150214, 150215, 150240, 150241, 150242, 150243, 1245768, 1245769, 1246492, 1246493, 1246494, 1246514, 1246516, 1246517, 1246518, 1246519, 1246539, 1246541, 1246542, 1246543, 1246544, 1246573, 1246574, 1246575, 1246577, 1246578, 1246579, 1246580, 1246581, 1246697, 1246698);

-- Invisible walls for AV.
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (90088, 180322, 30, 543.994, -57.747, 24.348, 5.41828, 0, 0, 0.419097, -0.907942, 300, 300, 100, 1, 0, 0);
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (90087, 180322, 30, 529.87, 20.5319, 43.5278, 0.270001, 0, 0, 0.134591, 0.990901, 300, 300, 100, 1, 0, 0);
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (90086, 180322, 30, 525.698, 36.7578, 42.6597, 3.54297, 0, 0, 0.97993, -0.199343, 300, 300, 100, 1, 0, 0);
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (90085, 180322, 30, -1420.83, -419.534, 91.6939, 2.13427, 0, 0, 0.875821, 0.482637, 300, 300, 100, 1, 0, 0);
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (90084, 180322, 30, -1434.71, -357.841, 86.6341, 1.037, 0, 0, 0.495577, 0.868564, 300, 300, 100, 1, 0, 0);

-- Mobs that don't drop appropriate loot should not be elite.
UPDATE `creature_template` SET `health_min`=3052, `health_max`=3052, `dmg_min`=119, `dmg_max`=162, `rank`=0 WHERE `entry`=12156;
UPDATE `creature_template` SET `health_min`=2369, `health_max`=2442, `dmg_min`=279, `dmg_max`=360, `rank`=0 WHERE `entry`=12157;
UPDATE `creature_template` SET `health_min`=3553, `health_max`=3663, `dmg_min`=279, `dmg_max`=360, `rank`=0 WHERE `entry`=11679;

-- There are only 2 of these mobs, they have 17k hp, and they hit like raid bosses.
-- Dropping only 7 silver is not appropriate given their rarity and difficulty, Jamey!!!
UPDATE `creature_template` SET `gold_min`=10000, `gold_max`=20000 WHERE `entry` IN (10984, 12159);

-- AV should not require only 9 players to start. The blizzlike minimum player count is 20.
-- It makes no sense to have it require less players than SV, a way smaller battleground.
-- Especially when turtle is the highest population server, reaching 9k online.
UPDATE `battleground_template` SET `min_players_per_team`=15 WHERE `id`=1;
