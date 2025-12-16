-- Prevent reducing respawn time of Stormscale Siren and Stormscale Wave Rider.
UPDATE `creature` SET `spawntimesecsmin`=180, `spawntimesecsmax`=300, `spawn_flags`=(`spawn_flags` | 256) WHERE `id` IN (2179, 2180);
