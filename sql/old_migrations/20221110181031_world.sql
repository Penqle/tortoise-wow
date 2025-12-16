-- Remove buy and sell price from Armor Scraps.
UPDATE `item_template` SET `buy_price`=0, `sell_price`=0 WHERE `entry`=17422;
