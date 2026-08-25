-- ==============================================
-- FILE: transports_moonwhisper.sql
-- GENERATED: 20260711191209
-- ==============================================
INSERT INTO `transports`
(
    `guid`,
    `entry`,
    `name`,
    `period`
)
VALUES
(14, 20809, 'Spadowprey Village and Moonhoof Village', 355000);

UPDATE `gameobject_template`
SET `flags` = 40
WHERE `entry` = 20809;
