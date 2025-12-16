-- Change respawn time of Half-Buried Treasure Chest to 5 days.
UPDATE `gameobject` SET `spawntimesecsmin`=432000, `spawntimesecsmax`=432000 WHERE `id`=379545;
