-- Disable dynamic respawns for these creatures.
UPDATE `creature` SET `spawn_flags`=(`spawn_flags` | 256) WHERE `id` IN (2003, 2002, 2004, 2005, 2010, 2009, 2011, 475, 40, 476, 1117, 1115, 3197, 3198, 2951, 2950, 2978, 2979, 1534, 1530, 2180, 2179, 1175, 1174, 1163, 1161, 1164, 1166, 1197, 1165, 589, 590);
