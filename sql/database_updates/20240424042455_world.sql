-- Disable dynamic respawns for Stranglethorn Raptor.
UPDATE `creature` SET `spawntimesecsmin`=300, `spawntimesecsmax`=300, `spawn_flags`=256 WHERE `id`=685;
