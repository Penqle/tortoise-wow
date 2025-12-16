-- Fix cast duration of Decisive Strike.
UPDATE `spell_template` SET `castingTimeIndex`=5 WHERE `entry` IN (45599, 45960);
