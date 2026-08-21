-- ==============================================
-- FILE: survival_training_fix.sql
-- GENERATED: 20260802152936
-- ==============================================
DELETE FROM `spell_learn_spell`
WHERE (`entry`, `SpellID`) IN
(
    (46050, 33427),
    (46053, 33428),
    (46054, 33429),
    (46056, 33430)
);

UPDATE `npc_trainer`
SET `reqskill` = 0
WHERE `spell` = 46051;