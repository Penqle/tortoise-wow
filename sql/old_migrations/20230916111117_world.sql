-- Changes requested by Akalix.
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id` IN (5990, 5991, 5992, 5993, 5988, 5982, 5984, 5985);
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id2` IN (5990, 5991, 5992, 5993, 5988, 5982, 5984, 5985);
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id3` IN (5990, 5991, 5992, 5993, 5988, 5982, 5984, 5985);
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id4` IN (5990, 5991, 5992, 5993, 5988, 5982, 5984, 5985);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=15 WHERE `item`=12820 && `entry` IN (7441, 7442, 7440,  7439, 10916, 7438);
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id` IN (7441, 7442, 7440,  7439, 10916, 7438);
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id2` IN (7441, 7442, 7440,  7439, 10916, 7438);
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id3` IN (7441, 7442, 7440,  7439, 10916, 7438);
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id4` IN (7441, 7442, 7440,  7439, 10916, 7438);

-- Fix Idol of the Moonfang
UPDATE `item_template` SET `subclass` = 8 WHERE `entry` = 61293

