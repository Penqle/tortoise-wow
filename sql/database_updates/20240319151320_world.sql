-- Fix A-Me 01 respawn issues.
UPDATE `creature` SET `spawn_flags`=1 WHERE `id`=9623;
