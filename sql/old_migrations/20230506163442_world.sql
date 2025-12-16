-- Rumbling elementals in Stonetalon Mountains drop coins, but should not, since they are elementals.
UPDATE `creature_template` SET `gold_min` = 0, `gold_max` = 0 WHERE entry = 61038;


