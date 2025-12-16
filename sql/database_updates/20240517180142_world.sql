-- more fixes woo
update item_template set display_id =  9854 where entry = 55473;
update item_template set spellid_3 = 51072 where entry = 55117; -- Girdle of the Faded Primals
update item_template set display_id = 7162 where entry = 55087; -- Jewel of Wild Magics
update item_template set display_id = 66267 where entry = 55096; -- Phase-shifting Crossbow
update item_template set allowable_class = -1 where entry = 55114; -- Totem of Broken Earth
update item_template set display_id = 68089 where entry = 55112; -- Pendant of Forgiven Mistakes
update item_template set display_id = 9110 where entry = 55131; -- Shieldrender Stone
update item_template set display_id = 68086 where entry = 55091; -- Loop of Infused Renewal
update item_template set display_id = 34149 where entry = 55082; -- Idol of Laceration
-- Remains of the Lost
update item_template set set_id = 646 where entry = 60809;
update item_template set set_id = 646 where entry = 60790;
update item_template set set_id = 646, name = 'Loop of the Lost' where entry = 60798;
update item_template set set_id = 646 where entry = 22253;
-- Dreadslayer
update item_template set set_id = 648 where entry = 55108;
update item_template set set_id = 648 where entry = 55113;
-- Medivh Rings
update item_template set set_id = 647, max_count = 1 where entry = 55094;
update item_template set set_id = 647, max_count = 1 where entry = 61251;