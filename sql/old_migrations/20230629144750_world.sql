-- Greymane Elite, increase damage by 5%

-- Greymane Knight increase damage by 10%

-- NPC Regent-Lord Mortimer Harlow increase HP to 9108

-- NPC Regent-Lady Celia Harlow increase HP to 8455

-- Genn Greymane increase HP to 17280

UPDATE `creature_template` SET `dmg_min` = 431, `dmg_max` = 512 WHERE `entry` = 61388;
UPDATE `creature_template` SET `dmg_min` = 452, `dmg_max` = 536 WHERE `entry` = 61365;
UPDATE `creature_template` SET `health_min` = 9108, `health_max` = 9108 WHERE `entry` = 61264;
UPDATE `creature_template` SET `health_min` = 8455, `health_max` = 8455 WHERE `entry` = 61263;
UPDATE `creature_template` SET `health_min` = 17280, `health_max` = 17280 WHERE `entry` = 61418;