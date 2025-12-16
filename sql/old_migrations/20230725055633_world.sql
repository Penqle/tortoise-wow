-- Flamekin Torcher and Flamekin Rager should give reduced xp.
UPDATE `creature_template` sET `xp_multiplier`=0.2 WHERE `entry` IN (9778, 9779);
