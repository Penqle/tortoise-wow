-- Remove low level items from Fire Roc.
DELETE FROM `creature_loot_template` WHERE `entry`=5429 && `item` IN (30017, 30019);
