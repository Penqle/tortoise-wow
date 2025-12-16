-- Fix Fallen Soldiers and other mobs around them pretending to be dead.
UPDATE `creature` SET `health_percent`=100, `spawn_flags`=0 WHERE `id` IN (60410, 60418, 60417, 60416, 60415, 60414, 60403);
UPDATE `creature_template` SET `flags_extra`=(`flags_extra` | 134217728), `unit_flags`=768 WHERE `entry` IN (60410, 60418, 60417, 60416, 60415, 60414, 60403);
