-- Add leash limit to Stitches and Teremus the Devourer.
UPDATE `creature_template` SET `leash_range`=100 WHERE `entry` IN (412, 7846);
