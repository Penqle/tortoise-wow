-- Remove Hive'Regal Hunter-Killer Crowd Control Immunity
UPDATE `creature_template` SET `mechanic_immune_mask` = 0 WHERE `entry` = 15620;

-- Update respawn time for Krug Skullsplit to 2-3 minutes
UPDATE `creature` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 180 WHERE `guid` = 46167;

-- Update respawn time for Merok Longstride to 2-3 minutes
UPDATE `creature` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 180 WHERE `guid` = 46168;

-- Update respawn time for Shadow Priestess Shai to 2-3 minutes
UPDATE `creature` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 180 WHERE `guid` = 46170;