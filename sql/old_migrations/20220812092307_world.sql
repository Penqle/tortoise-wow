-- Reduce aggro distance of guards that used to be lower level.
UPDATE `creature_template` SET `detection_range`=10 WHERE `entry` IN (1423, 5953, 727, 13076, 1434, 3501, 6086, 6087, 7489, 7730, 8055, 8096, 10696, 9525, 1475, 2621);
