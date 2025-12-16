-- Reduce aggro radius of Anchor's Edge mobs.
UPDATE `creature_template` SET `detection_range`=10 WHERE `entry` IN (60894, 60895, 60896, 60897);
