-- Make Scarlet Recruit and Vladeus Springriver non aggressive.
UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry` IN (50673, 50674);
