-- Make Zetharia immune to Fear.
UPDATE `creature_template` SET `mechanic_immune_mask`=8388624 WHERE `entry`=61069;
