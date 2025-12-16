-- Karazhan Crypt Item Buffs
update item_template set stat_value1 = 24 where entry = 83442; -- Miasma Walkers
update item_template set stat_value1 = 14, stat_value2 = 7 where entry = 83445; -- Marrowclaw Knuckles
update item_template set stat_value1 = 29, stat_value2 = 13 where entry = 83462; -- Cadaverlink Vest
update item_template set stat_value1 = 26, stat_value2 = 16, stat_value3 = 10 where entry = 83466; -- Baneforged Leggings
update item_template set spellid_2 = 25975, spelltrigger_2 = 1 where entry = 83456; -- Shroud of the Archlich
update item_template set stat_value1 = 15, stat_value2 = 24, spellid_2 = 14521, spelltrigger_2 = 1 where entry = 83451; -- Cowl of Mivax
update item_template set stat_value1 = 12 where entry = 83452; -- Windbreaker
update item_template set shadow_res = 10, frost_res = 10 where entry = 83454; -- Deathrune Leggings
update item_template set stat_value2 = 12, spellid_1 = 9140, spelltrigger_1 = 1 where entry = 83441; -- Splintercage Breastplate
update item_template set stat_value1 = 14 where entry = 83444; -- Bonewall
update item_template set stat_value1 = 35 where entry = 83440; -- Boneshatter Maul
update item_template set stat_value2 = 7, stat_type2 = 3, spellid_2 = 15810, spelltrigger_2 = 1, spellid_1 = 13679 where entry = 83447; -- Clutch of Hivaxxis
update item_template set stat_value3 = 10, stat_type3 = 7 where entry = 83448; -- Amice of the Webweaver
update item_template set stat_value1 = 12 where entry = 83449; -- Darksoul Band
update item_template set nature_res = 25, max_count = 1 where entry = 83450; -- Soul of the Spider
update item_template set stat_value1 = 12, stat_value2 = 2, stat_type2 = 4 where entry = 83446; -- Venom's Touch
update item_template set spellid_1 = 7518, spellid_2 = 21602, spelltrigger_2 = 1 where entry = 83459; -- Consumer Shackles
update item_template set spellid_1 = 15464, spelltrigger_1 = 1 where entry = 83463; -- Rotworm Grips
update item_template set spellid_1 = 21600, spelltrigger_1 = 1 where entry = 83458; -- Wormheart
update item_template set stat_value1 = 12, stat_type1 = 5, spellid_1 = 17889 where entry = 83453; -- Tome of Shivering Secrets
update item_template set spellid_1 = 9345, spellid_2 = 8815, spelltrigger_2 = 1 where entry = 83465; -- Shroud of Haunted Torment
-- Karazhan Crypt Creature updates
update creature set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where guid = 2574055; -- GUID 2574055 set respawn to 3 days (LIVE)
update creature_template set health_min = 41670, health_max = 41670 where entry = 91916; -- Archlich Enkhraz reduce HP to 41670
update creature_template set health_min = 10259, health_max = 10259 where entry = 91925; -- Risen Crypt Guard reduce hp to 10259
update creature_template set health_min = 10265, health_max = 10265 where entry = 91923; -- Unseen stalkler reduce hp to 10265
update creature_template set health_min = 40822, health_max = 40822 where entry = 91917; -- Corpsemuncher reduce HP to 40822
update creature_template set health_min = 11180, health_max = 11180 where entry = 60603; -- Manacrazed Grell reduce HP to 11180
update creature_template set health_min = 11243, health_max = 11243 where entry = 60601; -- Grellkin Sorceror reduce HP to 11243
update creature_template set health_min = 11253, health_max = 11253 where entry = 60602; -- Grellkin Scorcher reduce HP to 11253
-- NPC Commander Andreon set HP to 38944, increase damage by 10%
update creature_template set health_min = 38944, health_max = 38944, dmg_min = 647, dmg_max = 736, spell_list_id = 180104 where entry = 91919;
-- NPC Commander Andreon add spell 15708 cast every 20 seconds, add spell 26048, casts every 45 seconds
REPLACE INTO creature_spells VALUES
(180104, 'Commander Andreon', 16867, 100, 0, 0, 0, 0, 7, 10, 15, 15, 0, 15708, 100, 1, 0, 0, 4, 1, 2, 20, 20, 0, 26048, 100, 1, 0, 0, 4, 3, 4, 45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);