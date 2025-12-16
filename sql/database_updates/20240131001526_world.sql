-- Reduce respawn times of hunter quest bosses to 15 minutes.
UPDATE `creature` SET `spawntimesecsmin`=900, `spawntimesecsmax`=900 WHERE `id` IN (14529, 14527, 14536, 14531, 14535, 14530, 14533, 14534);
