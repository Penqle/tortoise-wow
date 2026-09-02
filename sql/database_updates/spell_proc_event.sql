-- ==============================================
-- FILE: spirit_tap.sql
-- GENERATED: 20260810151900
-- ==============================================
INSERT INTO `spell_proc_event`
(
    `entry`,
    `procFlags`
)
VALUES
(15270, 2),
(15335, 2),
(15336, 2),
(15337, 2),
(15338, 2)
ON DUPLICATE KEY UPDATE
    `procFlags` = VALUES(`procFlags`);
