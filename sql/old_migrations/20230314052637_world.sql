-- Fix cases where you can generate gold by buying and selling same item.
UPDATE `item_template` SET `sell_price` = `sell_price` / 2 WHERE `buy_price` > 1 && `buy_price` <= `sell_price`;

