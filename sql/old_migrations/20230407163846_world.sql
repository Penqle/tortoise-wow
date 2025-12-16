-- Make damage bonus of Improved Curse of Agony apply after spell power.
UPDATE `spell_template` SET `effectMiscValue1`=22 WHERE `entry` IN (18827, 18829, 18830);
