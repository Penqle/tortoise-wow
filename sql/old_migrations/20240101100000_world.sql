-- Fix The Black Shield quest chain.
UPDATE `quest_template` SET `ExclusiveGroup`=0 WHERE `entry` IN (1268, 1273, 1323);
