-- Add missing Large Mithril Bound Chest spawns in Dire Maul.
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`) VALUES 
(429030, 153469, 429, 122.562, 392.1, 28.601, 3.07177, 0, 0, 0.999391, 0.0349061, 36000, 36000, 1, 100),
(429031, 153469, 429, 476.613, 570.668, 27.9231, 4.88692, 0, 0, -0.642787, 0.766045, 36000, 36000, 1, 100),
(429032, 153469, 429, 43.2012, -383.143, -58.6196, 4.55531, 0, 0, -0.760406, 0.649449, 36000, 36000, 1, 100),
(429033, 153469, 429, 122.574, 366.941, -3.48382, 2.89725, 0, 0, 0.992546, 0.12187, 36000, 36000, 1, 100);
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`) VALUES
(4302, 1, 'Dire Maul - Large Mithril Bound Chest', 0, 0);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES
(429030, 4302, 0, 'Dire Maul - Large Mithril Bound Chest', 0),
(429031, 4302, 0, 'Dire Maul - Large Mithril Bound Chest', 0),
(429032, 4302, 0, 'Dire Maul - Large Mithril Bound Chest', 0),
(429033, 4302, 0, 'Dire Maul - Large Mithril Bound Chest', 0);
