-- Fix Fey Dreamcatcher:
UPDATE `item_template` SET `spellid_1` = 12160 WHERE `entry` = 80830;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2496
UPDATE `item_template` SET `buy_price` = 400, `sell_price` = 100 WHERE `entry` = 18945;