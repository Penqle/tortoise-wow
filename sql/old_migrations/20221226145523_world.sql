-- Prevent kiting Korrak to friendly npcs.
UPDATE `creature_template` SET `leash_range`=200, `unit_flags` = (`unit_flags` | 512) WHERE `entry`=12159;
