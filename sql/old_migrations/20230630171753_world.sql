-- make cleansed timberling heart a trinket
update item_template set item_level = 15, quality = 2, bonding = 1, class = 4, inventory_type = 12, spellcharges_1 = 0, spellcooldown_1 = 1800000 where entry = 5218; -- Cleansed Timberling Heart
