-- https://turtle-wow.org/bug-report?id=6754
-- https://turtle-wow.org/bug-report?id=5557
UPDATE `spell_template` SET `reagent8` = 0, `reagentCount8` = 0 WHERE `entry` = 46657;

-- https://turtle-wow.org/bug-report?id=6466
UPDATE `spell_template` SET `targets` = 0 WHERE `entry` = 57519;
UPDATE `spell_template` SET `effectImplicitTargetA1` = 1 WHERE `entry` = 57519;