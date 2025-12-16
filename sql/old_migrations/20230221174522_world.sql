-- DoN Item Fixes
update item_template set inventory_type = 8 where entry = 65100; -- Dragonspur Boots
update item_template set armor = 0 where entry = 65105; -- Scale of the Wakener
update item_template set stat_value1 = 19 where entry = 20616; -- Dragonbone Wristguards
update item_template set spellid_1 = 7598 where entry = 20627; -- Dark Heart Pants
update item_template set spellid_1 = 13679, spelltrigger_1 = 1, stat_value1 = 12, stat_type4 = 3, stat_value4 = 12, item_level = 76, armor = 332 where entry = 20628; -- Malignant Footguards
update item_template set spellid_1 = 18034, stat_value1 = 26, stat_value2 = 26, stat_value3 = 20, stat_value4 = 0, stat_value5 = 0, item_level = 76, armor = 422 where entry = 20638; -- Leggings of the Demented Mind
update item_template set spellid_1 = 13390, stat_value1 = 21, stat_value2 = 17, stat_value3 = 22, stat_value4 = 13, stat_value5 = 21, item_level = 76, armor = 749 where entry = 20639; -- Strangely Glyphed Legplates
update item_template set spellid_2 = 21629, spellid_1 = 18040, stat_value2 = 17, stat_value1 = 19 where entry = 20628; -- Deviate Growth Cap
update item_template set stat_value1 = 24, spellid_1 = 7578 where entry = 20623; -- Circlet of Restless Dreams
update item_template set spellid_1 = 18049, stat_value3 = 9 where entry = 20582; -- Trance Stone
update item_template set spellid_1 = 9334 where entry = 20599; -- Polished Ironwood Crossbow