-- Make sure NPC ID 61465, 61464 and 61466 utilize dynamic respawns.

UPDATE `creature` SET `spawn_flags`=(`spawn_flags` | 16) WHERE `id` IN (61465, 61464, 61466);