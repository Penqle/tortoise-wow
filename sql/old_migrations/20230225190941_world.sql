-- Reduce respawn time for Zeppelin Cargo.
UPDATE `gameobject` SET `spawntimesecsmin`=30, `spawntimesecsmax`=60 WHERE `id`=3000245;
