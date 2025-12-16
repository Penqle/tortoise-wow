-- Remove civilian rank from Warsong Outrider.
UPDATE `creature_template` SET `civilian`=0 WHERE `entry`=12864;
