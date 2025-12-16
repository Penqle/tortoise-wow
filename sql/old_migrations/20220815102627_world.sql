-- Add forced leash to Burning Blade Adept and Whirlwind Shredder.
UPDATE `creature_template` SET `leash_range`=30 WHERE `entry` IN (4665, 11578);
