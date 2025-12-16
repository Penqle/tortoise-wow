-- Fix unit flags of Marshal Reginald Windsor.
UPDATE `creature_template` SET `unit_flags`=320 WHERE `entry` IN (9023, 9682);
