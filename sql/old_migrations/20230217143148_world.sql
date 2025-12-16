-- Reduce duration of Mark of Nature and Frost.
UPDATE `spell_template` SET `durationIndex`=41 WHERE `entry` IN (25040, 23182);
