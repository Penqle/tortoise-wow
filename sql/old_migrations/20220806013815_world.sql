-- Remove spell pushback on damage from Slam.
UPDATE `spell_template` SET `interruptFlags` = (`interruptFlags` &~2) WHERE `entry` IN (1464, 8820, 11604, 11605, 45961);
