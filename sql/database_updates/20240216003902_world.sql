update item_template set spellid_1 = 57158, spelltrigger_1 = 1, spellcooldown_1 = -1, stat_value1 = 10, stat_type1 = 6 where entry = 80830; -- Fey Dreamcatcher

-- Alah'Thalas Flight Master shows "Gryphon Master" subname

update creature_template SET subname = 'Dragonhawk Rider' where entry = 93100;

-- Extend Valentine Event.

UPDATE `game_event` SET `length` = 20160 WHERE `entry` = 8;
