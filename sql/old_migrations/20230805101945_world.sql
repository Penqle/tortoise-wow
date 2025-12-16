-- Remove double drop of T2 helm/legs from Onyxia and Ragnaros.
DELETE FROM `creature_loot_template` WHERE `entry`=10184 && `item`=30000 && `groupid`=1;
UPDATE `creature_loot_template` SET `maxcount`=1 WHERE `entry` = 11502 && `item` IN (30484, 30547);
