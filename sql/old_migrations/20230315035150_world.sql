-- Warlock's Doomguard should not be immune to enslave.
UPDATE `creature_template` SET `mechanic_immune_mask` = (`mechanic_immune_mask` & ~1) WHERE `entry`=11859;
