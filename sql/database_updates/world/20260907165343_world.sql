-- ==============================================
-- FILE: spell_chain.sql
-- GENERATED: 20260907165343
-- ==============================================

DELETE FROM `spell_chain` WHERE `spell_id` IN (
    13165, 14318, 14319, 14320, 14321, 14322, 25296, 20043, 20190, 51346,
    51565, 51566, 51433, 51434, 51435, 52714, 52715, 52716, 52717, 24858,
    45734, 45599, 45560, 45960, 45910, 45911
    );

UPDATE `spell_chain`
SET `first_spell` = 3035
WHERE `spell_id` = 3035
AND `first_spell` = 0;

UPDATE `spell_chain`
SET `req_spell` = 0
WHERE `spell_id` = 16689
AND `req_spell` = 339;

-- ==============================================
-- FILE: spell_proc_event.sql
-- GENERATED: 20260907165343
-- ==============================================
DELETE FROM `spell_proc_event`
WHERE `entry` IN (
    15335, 15336, 15337, 15338
    );

