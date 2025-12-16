-- Eye of Kilrogg should not have Immune to NPC flag.
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=4277;
