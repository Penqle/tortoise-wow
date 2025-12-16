update item_template set class = 4, subclass = 0, inventory_type = 23 where entry = 84509; -- Emerald Rod

DELETE FROM npc_vendor WHERE item = 18300;
DELETE FROM npc_vendor_template WHERE item = 18300;
