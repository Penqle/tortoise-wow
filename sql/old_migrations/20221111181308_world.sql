-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2447
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2446
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2444

UPDATE `quest_template` SET `Details` = 'Well, as I said, a tiny little lie, because I do know how this vial came to be but not entirely how they made the thing they used for it.\n\nI am not sure you’re accustomed to Alchemy but let me put it like this briefly.\n\nA skilled alchemist at time creates something we call the Philosopher’s Stone, it’s an object that helps in transmutation which involves a little bit of magic.\n\nThe issue with the stone that was used for this vial is that it definitely was infused with life magic.\n\nYou’re probably asking yourself why would life magic affect undead? \n\nUndead are considered an abomination that is both alive and dead, think of them as something that breaks the balance between life and death magic.\n\nFrom what I can gather this Philosopher’s Stone was infused with either life force or souls itself, so it could be shadow magic too.\n\nYou should return to your master or whoever told you to come seek me and have him help you get this, I will hold onto the vial until then for further examination.' WHERE `entry` = 80726;

UPDATE `quest_template` SET `Objectives` = 'Go to Seradane\'s Temple and defeat Antnormi, return to Chromie in Andorhal.' WHERE `entry` = 80411;

UPDATE `item_template` SET `name` = 'Portable Wormhole Generator: Stormwind' WHERE `entry` = 51312;
UPDATE `item_template` SET `name` = 'Portable Wormhole Generator: Orgrimmar' WHERE `entry` = 51313;
UPDATE `item_template` SET `name` = 'Imperial Plate Gauntlets' WHERE `entry` = 65007;
UPDATE `item_template` SET `name` = 'Diviner\'s Robe' WHERE `entry` = 83281;
UPDATE `item_template` SET `name` = 'Augerer\'s Robe' WHERE `entry` = 83287;
UPDATE `item_template` SET `name` = 'Pillager\'s Robe' WHERE `entry` = 83294;
UPDATE `item_template` SET `name` = 'Schematic: Portable Wormhole Generator: Stormwind' WHERE `entry` = 83510;
UPDATE `item_template` SET `name` = 'Schematic: Portable Wormhole Generator: Orgrimmar' WHERE `entry` = 83511;
UPDATE `item_template` SET `name` = 'Plans: Imperial Plate Gauntlets' WHERE `entry` = 83518;

UPDATE `item_template` SET `sell_price` = 1000, `buy_price` = 1000 WHERE `entry` = 23578;