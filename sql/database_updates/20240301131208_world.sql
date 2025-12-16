-- Item 'Heavy Gritted Paper' entry 55152, change item type to trade goods.
update item_template set class = 7, subclass = 0 where entry = 55152;
-- Item 'Coarse Gemstone Cluster' (entry 41320) , 'Heavy Gemstone Cluster' (Entry 41344) change item type to junk.
update item_template set class = 15, subclass = 0 where entry in (41320,41344);
-- Item entry 55268 , quicksilver whirl, change display ID to 3109.
update item_template set display_id = 3109 where entry = 55268;
-- Item entry 55196 (Aquamarine Pendant), change display ID to 9853.
update item_template set display_id = 9853 where entry = 55196;
-- Item entry 55263, change display ID to 66261.
update item_template set display_id = 66261 where entry = 55263;