-- Banana's material fix:

UPDATE `item_template` SET `material` = 0 WHERE `entry` = 60955;
UPDATE `item_template` SET `material` = 0 WHERE `entry` = 60954;
UPDATE `item_template` SET `display_id` = 6420 WHERE `entry` = 60954;