-- Add custom spells to items
update item_template set spellid_1 = 45415, spellcharges_1 = 0, spellcooldown_1 = 900000, name = 'Scaleshield of Emerald Flight' where entry = 61238; -- Scaleshield of Green
update item_template set spellid_1 = 45417, spelltrigger_1 = 1 where entry = 61243; -- Vial of Potent Venoms
update item_template set spellid_1 = 45418, spelltrigger_1 = 1 where entry = 61246; -- Sabatons of the Endless March
update item_template set display_id = 60754 where entry = 61247; -- Shadowbringer