-- Compounding Flame currently has a cast time and should not have any cast time at all.
UPDATE `spell_template` SET `castingTimeIndex`=1 WHERE `entry`=44026;

-- Curse of Ember - Change icon to something with a flame, make this spell be cast as an aoe with a 20 yard range.
UPDATE `spell_template` SET `spellIconId`=678 WHERE `entry`=44027;
UPDATE `spell_template` SET `spellVisual1`=5423 WHERE  `entry`=44027;
UPDATE `spell_template` SET `effectImplicitTargetA1`=22, `effectImplicitTargetA2`=22, `effectImplicitTargetB1`=15, `effectImplicitTargetB2`=15, `effectRadiusIndex1`=9, `effectRadiusIndex2`=9 WHERE `entry`=44027;

-- Embernova -  please use the animation for flame nova.
UPDATE `spell_template` SET `spellVisual1`=963 WHERE `entry`=44028;
