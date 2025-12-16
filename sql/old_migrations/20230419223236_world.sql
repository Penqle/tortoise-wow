-- Vengeful Spirit should not flag players for PvP.
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=61118;
