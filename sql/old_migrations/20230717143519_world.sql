-- Make Sunnyglade bosses attack slower.
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry` IN (93000, 93005);
