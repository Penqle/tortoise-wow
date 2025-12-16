-- Marked quest Breaking the Felstar as Elite.

UPDATE `quest_template` SET `type` = 1 WHERE `entry` = 40377;

-- 60HC something.

replace into item_template values
 ('81278', '4', '0', 'Pendant of Mortality', 'A deal with the devil, signed in blood...', '9854', '4', '0', '1', '0', '0', '12', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '40', '6', '-5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 -- fixes and fixes and fixes and fixes 14799
update item_template set spellid_1 = 14799, spelltrigger_1 = 1 where entry = 61251; -- Azora's Mind
update item_template set spellid_1 = 45531, spelltrigger_1 = 1, description = '' where entry = 61261; -- Battlescarred Cloak
update item_template set inventory_type = 23 where entry = 61268; -- Sigil of the Brood
update item_template set inventory_type = 14 where entry = 61276; -- Hyperchromatic Deflector
update item_template set spelltrigger_2 = 1 where entry = 21891; -- Shard of the Fallen Star
update item_template set spelltrigger_1 = 1 where entry = 18871; -- High Warlord's Pig Sticker
update item_template set spelltrigger_1 = 1 where entry = 18869; -- Grand Marshal's Glaive
update item_template set spelltrigger_4 = 1 where entry = 23039; -- The Eye of Nerub