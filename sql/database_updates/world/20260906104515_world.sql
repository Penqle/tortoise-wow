-- ==============================================
-- FILE: balor_missing_ally_gossips.sql
-- GENERATED: 20260906104515
-- ==============================================
DELETE FROM `gossip_menu`
WHERE `entry` IN (
    62462, 62456, 62460, 62464, 62459
    );

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(62462, 6246201, 0, 0),
(62456, 6245601, 0, 0),
(62460, 6246001, 0, 0),
(62464, 6246401, 0, 0),
(62459, 6245901, 0, 0);

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`
WHERE `entry` IN (
    62462, 62456, 62460, 62464, 62459
    );

