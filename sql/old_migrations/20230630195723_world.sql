-- fix chilton wand
update item_template set required_level = 48, delay = 1500, dmg_min1 = 39, dmg_max1 = 73 where entry = 12468; -- Chilton Wand