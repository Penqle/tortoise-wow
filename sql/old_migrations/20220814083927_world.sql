-- Fix duration of Druid's Berserk talent.
UPDATE `spell_template` SET `durationIndex`=18 WHERE `entry` IN (45709, 45710);
