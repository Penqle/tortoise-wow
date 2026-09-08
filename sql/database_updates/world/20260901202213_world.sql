-- ==============================================
-- FILE: spell_coeff_update.sql
-- GENERATED: 20260901202213
-- ==============================================
-- Hurricane
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.096
WHERE `entry` IN (
    16914, 17401, 17402
    );

-- Arcane Missiles Rank 3+
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.328
WHERE `entry` IN (
    7270, 8419, 8418, 10273, 10274, 25346
    );

-- Holy Light Rank 1
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.33
WHERE `entry` = 635;

-- Holy Shield
UPDATE `spell_template`
SET `effectBonusCoefficient2` = 0.15
WHERE `entry` IN (
    20169, 20925, 20927, 20928
    );

-- Swipe
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.04
WHERE `entry` IN (
    779, 780, 769, 9754, 9908
    );

