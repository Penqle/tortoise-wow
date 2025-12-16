-- Remnants Farmer and Remnants Militia should be aggressive.
UPDATE `creature_template` SET `unit_flags`=0, `flags_extra`=0 WHERE `entry` IN (91980, 91981);
