-- ==============================================
-- FILE: battleground_vendors.sql
-- GENERATED: 20260813162900
-- ==============================================
DELETE FROM `npc_vendor`
WHERE `entry` = 13216 AND `item` NOT IN (19032, 19484);

DELETE FROM `npc_vendor`
WHERE `entry` = 13217 AND `item` NOT IN (19032, 19484);

DELETE FROM `npc_vendor`
WHERE `entry` = 13218 AND `item` NOT IN (19031);

DELETE FROM `npc_vendor`
WHERE `entry` = 13219 AND `item` NOT IN (19031, 19483);

DELETE FROM `npc_vendor`
WHERE `entry` = 14753 AND `item` NOT IN (19506);

DELETE FROM `npc_vendor`
WHERE `entry` = 14754 AND `item` NOT IN (19505);

DELETE FROM `npc_vendor`
WHERE `entry` = 15126;

DELETE FROM `npc_vendor`
WHERE `entry` = 15127;

INSERT INTO `npc_vendor`
(
    `entry`,
    `slot`,
    `item`,
    `maxcount`,
    `incrtime`,
    `itemflags`,
    `condition_id`
)
VALUES
(15126, 0, 20131, 0, 0, 0, 0),
(15127, 0, 20132, 0, 0, 0, 0),
(13218, 0, 19483, 0, 0, 0, 0);
