-- make cinder bracers a trinket
update item_template set class = 4, inventory_type = 12, spellcharges_1 = 0, spellcooldown_1 = 3600000, duration = 0 where entry = 23379; -- Cinder Bracers