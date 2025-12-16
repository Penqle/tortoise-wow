-- Dreadlord should be immune to Enslave Demon.
UPDATE `creature_template` SET `mechanic_immune_mask` = (`mechanic_immune_mask` | 1) WHERE `entry` = 8716;

