-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/5668

UPDATE `item_template` SET `subclass` = 6 WHERE `entry` = 41034;

-- Fix spellpower coefficient of Rank 9 Smite
UPDATE spell_template SET effectBonusCoefficient1 = 0.714 WHERE entry = 45968;