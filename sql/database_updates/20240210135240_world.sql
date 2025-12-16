-- Fix mispelling of Earthen Dwarf in shop item.
UPDATE `shop_items` SET `description`='Earthen - Dwarf, male only' WHERE `id`=34;
UPDATE `item_template` SET `name`='Earthen [Dwarf, male only]' WHERE `entry`=50206;
