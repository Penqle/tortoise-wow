-- Waypoint mob should be normal so you can see its level.
UPDATE `creature_template` SET `rank`=0, `type_flags`=0 WHERE `entry` IN (1,2);
