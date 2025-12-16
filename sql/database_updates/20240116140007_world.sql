-- Assign leash range to Grizikil, Brood Queen Araxxna, Clawlord Howlfang, Moroes.
UPDATE `creature_template` SET `leash_range`=50 WHERE `entry` IN (61224, 61221, 61223, 61225);
