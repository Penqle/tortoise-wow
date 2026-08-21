-- ==============================================
-- FILE: efflorescence.sql
-- GENERATED: 20260721095654
-- ==============================================
UPDATE `spell_template` SET `script_name` = 'spell_druid_efflorescence'
WHERE `entry` IN (
    774, 1058, 1430, 2090, 2091, 3627, 8910, 9839, 9840, 9841, 25299,
    8936, 8938, 8939, 8940, 8941, 9750, 9856, 9857, 9858
);

-- ==============================================
-- FILE: rake_ap_scaling.sql
-- GENERATED: 20260721095654
-- ==============================================
UPDATE `spell_template` SET
    `effectBonusCoefficient1` = 0.12,
    `effectBonusCoefficient2` = 0.03,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` IN (1822, 1823, 1824, 9904);

-- ==============================================
-- FILE: rip_duration.sql
-- GENERATED: 20260721095654
-- ==============================================
UPDATE `spell_template` SET `script_name` = 'spell_druid_rip' WHERE `entry` IN (1079, 9492, 9493, 9752, 9894, 9896);

-- ==============================================
-- FILE: swipe_ap_scaling.sql
-- GENERATED: 20260721095654
-- ==============================================
UPDATE `spell_template` SET
    `effectBonusCoefficient1` = 0.06,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` IN (779, 780, 769, 9754, 9908);

