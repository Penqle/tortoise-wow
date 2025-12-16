-- Add disorient immunity to several mobs.
UPDATE `creature_template` SET `mechanic_immune_mask` = (`mechanic_immune_mask` | 2) WHERE `entry` IN (61221, 61222, 61223, 61224, 61225, 61226, 61319);
