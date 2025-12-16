-- Remove Gouge immunity from Meshlok the Harvester.
UPDATE `creature_template` SET `mechanic_immune_mask` = (`mechanic_immune_mask` & ~8192) WHERE `entry`=12237;
