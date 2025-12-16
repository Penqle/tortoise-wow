-- Fix typo in spell_template and item_template for https://database.turtle-wow.org/?item=13328 and whichever of these two spells the item gives: https://database.turtle-wow.org/?search=black+ram#spells ("in in")

UPDATE `item_template` SET `description` = 'I\'ve not seen this breed in ages, but when they\'re ram tough they stick around. - Veron Amberstill.' WHERE `entry` = 13328;
UPDATE `spell_template` SET `description` = 'I\'ve not seen this breed in ages, but when they\'re ram tough they stick around. - Veron Amberstill.' WHERE `entry` = 17461;

-- Change text to Create a new character of the same race with your desired look, then use the command .copy name to duplicate its appearance onto this character.

UPDATE `item_template` SET `description` = 'Create a new character of the same race with your desired look, then use the command .copy name to duplicate its appearance onto this character.' WHERE `entry` = 80699;

-- Change text to "You must be the guild master of your guild to use this item.  Use the command .guildname "New Name" to alter your guild name."

UPDATE `item_template` SET `description` = 'You must be the guild master of your guild to use this item. Use the command .guildname "New Name" to alter your guild name.' WHERE `entry` = 80499;

-- Add a "learn" glow, like SpellVisualEffect 108 or 222 to mount items when used.  Currently it does nothing interesting and gives an "Interrupted" error message at the top, which is a bit misleading.

UPDATE `spell_template` SET `spellVisual1` = 222 WHERE `entry` = 46499;
UPDATE `spell_template` SET `castingTimeIndex` = 3 WHERE `entry` = 46499;
UPDATE `spell_template` SET `castingTimeIndex` = 3 WHERE `entry` = 46498;
UPDATE `spell_template` SET `spellVisual1` = 222 WHERE `entry` = 46498;

UPDATE `item_template` SET `description` = 'A mount that embodies the perfect balance between darkness and beauty.' WHERE `entry` = 50536;
UPDATE `spell_template` SET `description` = 'A mount that embodies the perfect balance between darkness and beauty.' WHERE `entry` = 33396;

--  Spell named "Swift Grey Worg" (https://database.turtle-wow.org/?spell=45038) needs to be renamed to "Swift Gray Worg" to match American English convention as well as the convention already used by other mounts that will be in the same spell tab (Gray Kodo, etc).  There's also a spell called Swift Grey Steed (https://database.turtle-wow.org/?spell=45040) which needs the same correction.  Same with https://database.turtle-wow.org/?item=18795 item name (yet spell name is fine, lol) 

UPDATE `spell_template` SET `name` = 'Swift Gray Worg' WHERE `entry` = 45038;
UPDATE `spell_template` SET `name` = 'Swift Gray Steed' WHERE `entry` = 45040;
UPDATE `item_template` SET `name` = 'Armored Gray Kodo' WHERE `entry` = 18795;

-- The version of "Summon Black Qiraji Battle Tank" (there's like 4 of them on DB) given by https://database.turtle-wow.org/?item=21176 needs to be renamed to "Black Qiraji Battle Tank" to follow the convention of our other mount spellbook spells.  The spell also doesn't appear to have a casting animation. 

UPDATE `spell_template` SET `name` = 'Black Qiraji Battle Tank' WHERE `entry` = 25863;
UPDATE `spell_template` SET `name` = 'Black Qiraji Battle Tank' WHERE `entry` = 26655;
UPDATE `spell_template` SET `name` = 'Black Qiraji Battle Tank' WHERE `entry` = 26656;
UPDATE `spell_template` SET `name` = 'Black Qiraji Battle Tank' WHERE `entry` = 31700;

-- Fix spell icon of Black Battlestrider (https://database.turtle-wow.org/?spell=22719).  Currently a Nightsaber, change to a Mechanostrider.

UPDATE `spell_template` SET `spellIconId` = 1240 WHERE `entry` = 22719;