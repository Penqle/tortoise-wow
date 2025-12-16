-- Maraudine Scout should not be elite.
UPDATE `creature_template` SET `dmg_min`=51, `dmg_max`=67, `rank`=0 WHERE `entry`=4654;
