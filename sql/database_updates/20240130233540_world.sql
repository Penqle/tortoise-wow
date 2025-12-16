-- Increase speed of custom bosses and make sure they are marked as bosses.
UPDATE `creature_template` SET `speed_run`=1.42857, `rank`=3 WHERE `entry` IN (61223, 61224, 61222, 61221, 61225, 61226, 60747, 60748);
