
-- Fix random movement type for bears and cubs.
UPDATE `creature_template` SET `movement_type` = 1 WHERE `entry` IN (91984, 91985);