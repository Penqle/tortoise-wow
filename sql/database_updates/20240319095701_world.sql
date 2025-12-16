-- Item Opaline Illuminator (entry 55242), change sheath type to staff (can copy from an existing staff).
update item_template set sheath = 2 where entry = 55242;
-- Item Garnet Guardian Stave (Entry 55241) change sheath type to staff (can copy from an existing staff).
update item_template set sheath = 2 where entry = 55241;
-- NPC Akh Z'ador, change display ID to 18575, change subname to Riftmaster.
update creature_template set display_id1 = 18575, subname = 'Riftmaster' where entry = 91782;