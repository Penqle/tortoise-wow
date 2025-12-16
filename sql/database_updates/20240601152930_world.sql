-- fix meditation madness
update item_template set stat_value1 = 6 where entry = 80830; -- Fey Dreamcatcher
update item_template set stat_value1 = 2 where entry = 2043; -- Ring of Forlorn Spirits
update item_template set stat_value2 = 12 where entry = 83207; -- Feymist Robe
update item_template set stat_value2 = 13 where entry = 60788; -- Sandals of Inner Peace
update item_template set stat_type2 = 6 where entry = 60590; -- Isle Watcher's Sash
update item_template set stat_value2 = 19 where entry = 15045; -- Green Dragonscale Breastplate
update item_template set stat_value2 = 17 where entry = 20296; -- Green Dragonscale Gauntlets -- needs lower meditation spell later
update item_template set stat_value2 = 20 where entry = 15046; -- Green Dragonscale Leggings
update item_template set stat_value1 = 7, stat_value2 = 7, spellid_2 = 9416 where entry = 60735; -- Obsidian Gem Choker
update item_template set spellid_2 = 0, spellid_1 = 57158, stat_value1 = 12, stat_value2 = 26, stat_type1 = 5, stat_type2 = 6 where entry = 9402; -- Earthborn Kilt
update item_template set stat_value2 = 17 where entry = 61757; -- Dreambreeze Cowl
update item_template set stat_value1 = 28 where entry = 12756; -- Leggings of Arcana
update item_template set stat_value2 = 21 where entry = 83451; -- Cowl of Mivax
update item_template set stat_value1 = 21 where entry = 60790; -- Memento of the Lost
update item_template set stat_value1 = 18, spellid_2 = 14794 where entry = 83464; -- Mantle of Twisted Damnation
update item_template set spellid_2 = 57158, spellid_3 = 0 where entry = 83465; -- Shroud of Haunted Torment
update item_template set stat_value1 = 16 where entry = 65021; -- Verdant Dreamer's Breastplate
update item_template set stat_value1 = 16, stat_value2 = 15, stat_value3 = 24 where entry = 51737; -- Vestments of Eternal Autumn
update item_template set stat_value1 = 0 where entry = 61193; -- Verdant Eye Necklace
update item_template set spellid_1 = 29369 where entry = 61208; -- Staff of the Dreamer
update item_template set spellid_1 = 57159 where entry = 22947; -- Pendant of Forgotten Names
update item_template set spellid_1 = 57159, stat_type2 = 6 where entry = 23037; -- Ring of Spiritual Favor

/* Changes 
Fey Dreamcatcher: Now grants 5% Meditation and 6 Spirit passively instead of an active on use HoT.
Ring of Forlorn Spirits: Reduced Spirit from 7 to 2.
Feymist Robe: Increased Spirit from 10 to 12.
Sandals of Inner Peace: Reduced Spirit from 15 to 13.
Isle Watcher's Sash: Replaced 3 Agility with 3 Spirit.
Green Dragonscale Breastplate: Reduced Spirit from 21 to 19.
Green Dragonscale Gauntlets: Reduced Spirit from 18 to 17, reduced Meditation from 5% to 4%.
Green Dragonscale Leggings: Reduced Spirit from 22 to 20.
Obsidian Gem Choker: Increased Intellect from 3 to 7, increased Spirit from 2 to 7, increased Spellpower from 9 to 11.
Earthborn Kilt: Reduced Intellect from 29 to 12, replaced 12 Stamina with 26 Spirit.
Leggings of Arcana: Reduced Spirit from 30 to 28.
Cowl of Mivax: Reduced Spirit from 24 to 21.
Dreambreeze Cowl: Increased Spirit from 14 to 17.
Mantle of Twisted Damnation: Increased Shadow Spellpower from 14 to 24, increased Intellect from 16 to 18. 
Memento of the Lost: Increased Spirit from 19 to 21.
Shroud of Haunted Torment: Removed 2% Haste.
Verdant Dreamer's Breastplate: Reduced Intellect from 18 to 16.
Vestments of Eternal Autumn: Increased Intellect from 12 to 16, increased Stamina from 8 to 15, increased Spirit from 20 to 24, increased Meditation from 5% to 7%. --
Verdant Eye Necklace: Removed 6 Stamina.
Staff of the Dreamer: Increased Healing Power from 121 to 134.
Pendant of Forgotten Names: Now grants 10% Meditation instead of MP5.
Ring of Spiritual Fervor: Now grants 10% Meditation instead of MP5, replaced 11 Stamina with 11 Spirit.
*/