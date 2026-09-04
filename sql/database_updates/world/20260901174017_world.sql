-- ==============================================
-- FILE: remove_deprecated_npcs.sql
-- GENERATED: 20260901174017
-- ==============================================
-- Mysterious Stranger NPCs.
DELETE FROM `creature`
WHERE `guid` IN (
    2581911, 2561537, 2561538, 2561539, 2561542, 2561543, 2561544, 2582199
    );

-- Glyph Master NPCs.
DELETE FROM `creature`
WHERE `guid` IN (
    2569062, 2582354, 2569280, 2569281, 2569282, 2569283, 2569284, 2579235
    );

-- temporary flying mount NPCs.
DELETE FROM `creature`
WHERE `guid` IN (
    2569823, 2568873
    );

-- postworker NPCs.
DELETE FROM `creature`
WHERE `guid` IN (
    2578341, 2578340
    );

