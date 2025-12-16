-- Add enslave immunity to several demons.
UPDATE `creature_template` SET `mechanic_immune_mask` = (`mechanic_immune_mask` | 1) WHERE `entry` IN (7461, 7462, 7463, 7665, 7666, 7667, 7728, 8318, 8717, 8718, 9516, 10201, 10813, 11490, 11492, 11859, 12236, 12396, 14101, 14354, 15467);
