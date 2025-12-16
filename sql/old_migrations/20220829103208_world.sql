-- Text and grammar fixes:

update quest_template set title = 'First Mate McGillicuddy' where entry = 40183;
update quest_template set details = 'Bah, what a wasteland to be assigned to, it\'s insulting.\n\nI want to get out of here as soon as I can, and to do so I need some work done, I take it you are willing to help huh?\n\nThe Dark Iron are up to something, and it\'s my job to confirm that -something- is going on.\n\nWhat I need you to do is scout the entrance of the Quarry, and confirm Ironforge\'s suspicions.\n\nTravel up there, peek in the entrance, and come back, easy ye?', objectives = 'Explore the entrance to Hateforge Quarry and return to Senator Granitebeard at Morgan\'s Vigil in Burning Steppes.' where entry = 40486;

-- Apply the Spellpower + Healing Power trick I did for Paladin Sets to other class sets that have hybrid caster specs.
-- Druid Tier 1
update item_template set spellid_3 = 7677, spelltrigger_3 = 1 where entry = 16828; -- Cenarion Belt
update item_template set spellid_3 = 7677, spelltrigger_3 = 1, spellid_2 = 9416 where entry = 16829; -- Cenarion Boots
update item_template set spellid_2 = 7677, spelltrigger_2 = 1 where entry = 16830; -- Cenarion Bracers
update item_template set spellid_3 = 7679, spelltrigger_3 = 1, spellid_2 = 9417 where entry = 16833; -- Cenarion Vestments
update item_template set spellid_2 = 7677, spelltrigger_2 = 1, spellid_1 = 9416 where entry = 16831; -- Cenarion Gloves
update item_template set spellid_2 = 7679, spelltrigger_2 = 1 where entry = 16834; -- Cenarion Helm
update item_template set spellid_4 = 7679, spelltrigger_4 = 1, spellid_3 = 9417 where entry = 16835; -- Cenarion Leggings
update item_template set spellid_3 = 7677, spelltrigger_3 = 1, spellid_2 = 9416 where entry = 16836; -- Cenarion Spaulders
-- Druid Tier 2
update item_template set spellid_3 = 7680, spelltrigger_3 = 1, spellid_2 = 9343, spellid_1 = 21618 where entry = 16903; -- Stormrage Belt
update item_template set spellid_3 = 7680, spelltrigger_3 = 1, spellid_2 = 9343 where entry = 16898; -- Stormrage Boots
update item_template set spellid_2 = 9406, spelltrigger_2 = 1, spellid_1 = 9344 where entry = 16904; -- Stormrage Bracers
update item_template set spellid_3 = 9407, spelltrigger_3 = 1, spellid_2 = 15714 where entry = 16897; -- Stormrage Chestguard
update item_template set spellid_3 = 7681, spelltrigger_3 = 1, spellid_2 = 9344 where entry = 16900; -- Stormrage Cover
update item_template set spellid_2 = 9407, spelltrigger_2 = 1, spellid_1 = 15714 where entry = 16899; -- Stormrage Handguards
update item_template set spellid_3 = 9408, spelltrigger_3 = 1, spellid_2 = 18049, spellid_1 = 18379 where entry = 16901; -- Stormrage Legguards
update item_template set spellid_3 = 7681, spelltrigger_3 = 1, spellid_2 = 9344, spellid_1 = 21618 where entry = 16902; -- Stormrage Cover
-- Priest Tier 1
update item_template set spellid_2 = 7677, spelltrigger_2 = 1, spellid_1 = 9416 where entry = 16811; -- Boots of Prophecy
update item_template set spellid_2 = 7679, spelltrigger_2 = 1, spellid_1 = 9417 where entry = 16813; -- Circlet of Prophecy
update item_template set spellid_3 = 7677, spelltrigger_3 = 1 where entry = 16817; -- Girdle of Prophecy
update item_template set spellid_3 = 7677, spelltrigger_3 = 1, spellid_2 = 9416 where entry = 16812; -- Gloves of Prophecy
update item_template set spellid_3 = 7679, spelltrigger_3 = 1, spellid_2 = 9417 where entry = 16814; -- Pants of Prophecy
update item_template set spellid_2 = 7677, spelltrigger_2 = 1 where entry = 16816; -- Mantle of Prophecy
update item_template set spellid_2 = 7679, spelltrigger_2 = 1, spellid_1 = 9417 where entry = 16815; -- Robes of Prophecy
update item_template set spellid_3 = 7679, spelltrigger_3 = 1, spellid_2 = 9342 where entry = 16819; -- Vambraces of Prophecy
-- Priest Tier 2
update item_template set spellid_2 = 7680, spelltrigger_2 = 1, spellid_1 = 9343 where entry = 16925; -- Belt of Transcendence
update item_template set spellid_2 = 9406, spelltrigger_2 = 1, spellid_1 = 9344 where entry = 16926; -- Bindings of Transcendence
update item_template set spellid_2 = 9406, spelltrigger_2 = 1, spellid_1 = 9346 where entry = 16919; -- Boots of Transcendence
update item_template set spellid_2 = 9314, spelltrigger_2 = 1, spellid_1 = 15715 where entry = 16921; -- Halo of Transcendence
update item_template set spellid_3 = 7681, spelltrigger_3 = 1, spellid_2 = 9344 where entry = 16920; -- Handguards of Transcendence
update item_template set spellid_3 = 9408, spelltrigger_3 = 1, spellid_2 = 24595, spellid_1 = 21364 where entry = 16922; -- Leggings of Transcendence
update item_template set spellid_2 = 7680, spelltrigger_2 = 1, spellid_1 = 9343 where entry = 16924; -- Pauldrons of Transcendence
update item_template set spellid_2 = 9316, spelltrigger_2 = 1, spellid_1 = 14798 where entry = 16923; -- Robes of Transcendence
-- Shaman Tier 1
update item_template set spellid_3 = 7677, spelltrigger_3 = 1, spellid_2 = 9416 where entry = 16838; -- Earthfury Belt
update item_template set spellid_2 = 7677, spelltrigger_2 = 1, spellid_1 = 9416 where entry = 16837; -- Earthfury Boots
update item_template set spellid_2 = 7677, spelltrigger_2 = 1 where entry = 16840; -- Earthfury Bracers
update item_template set spellid_3 = 7679, spelltrigger_3 = 1, spellid_2 = 9417 where entry = 16841; -- Earthfury Vestments
update item_template set spellid_3 = 7677, spelltrigger_3 = 1, spellid_2 = 9416 where entry = 16844; -- Earthfury Epaulets
update item_template set spellid_3 = 7678, spelltrigger_3 = 1 where entry = 16839; -- Earthfury Gauntlets
update item_template set spellid_3 = 7679, spelltrigger_3 = 1, spellid_2 = 9417 where entry = 16842; -- Earthfury Helmet
update item_template set spellid_3 = 7679, spelltrigger_3 = 1 where entry = 16843; -- Earthfury Legguards
-- Shaman Tier 2
update item_template set spellid_3 = 7680, spelltrigger_3 = 1, spellid_2 = 9343 where entry = 16944; -- Belt of Ten Storms
update item_template set spellid_2 = 9408, spelltrigger_2 = 1 where entry = 16950; -- Breastplate of Ten Storms
update item_template set spellid_3 = 7679, spelltrigger_3 = 1, spellid_2 = 9417 where entry = 16948; -- Gauntlets of Ten Storms
update item_template set spellid_2 = 9406, spelltrigger_2 = 1 where entry = 16949; -- Greaves of Ten Storms
update item_template set spellid_3 = 7680, spellid_2 = 9343 where entry = 16947; -- Helmet of Ten Storms
update item_template set spellid_3 = 7680, spelltrigger_3 = 1 where entry = 16946; -- Legplates of Ten Storms
-- Add Stats to Throwing Weapons
update item_template set stat_value1 = 6, stat_type1 = 3 where entry = 3463; -- Silver Star
update item_template set spelltrigger_1 = 1, spellid_1 = 20732 where entry = 20086; -- Dusksteel Throwing Knife
update item_template set stat_value1 = 7, stat_type1 = 3, stat_value2 = 7, stat_type2 = 4 where entry = 13173; -- Flightblade Throwing Axe	

-- Small Buff to Lapidis Quest Reward
update item_template set stat_value1 = 20, stat_value2 = 19, stat_value3 = 10 where entry = 60453; -- Sailor's Headband

update item_template set stat_value1 = 17, stat_value2 = 12, spellid_1 = 24595 where entry = 60452; -- Hydromancer's Peak

update item_template set stat_value1 = 19, stat_value2 = 10, stat_value3 = 11 where entry = 60451; -- Kul Tiras Marine Helmet

update item_template set spellid_2 = 48033, spelltrigger_2 = 1, spellid_1 = 14049, spelltrigger_1 = 1, shadow_res = 10 where entry = 51734;

update item_template set spellid_2 = 18022, stat_value3 = 22, item_level = 75, spellid_1 = 18384 where entry = 51740;


