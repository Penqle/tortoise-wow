-- Remove resistances from Kolkar Wrangler.
UPDATE `creature_template` SET `fire_res`=0, `shadow_res`=0 WHERE `entry`=3272;
