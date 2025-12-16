-- Change the display ID of Amplified Arcane Monstrosity and Volatile Arcane Monstrosity to 14253.
update creature_template set display_id1 = 14253 where entry in (61980,61981);