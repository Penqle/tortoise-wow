-- Increase hitbox of Buru the Gorger.
UPDATE `creature_display_info_addon` SET `bounding_radius`=11, `combat_reach`=12 WHERE `display_id` IN (15654, 15655);
