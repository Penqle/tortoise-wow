-- Add Black Anvil and Blacksmith Hammer requirements to Fiery Chain Breastplate crafting recipe spell.
-- Add Anvil and Blacksmith Hammer requirements to Fury of the Timbermaw and Pauldrons of the Timbermaw crafting recipe spells.

UPDATE `spell_template` SET `requiresSpellFocus` = 1, `totem1` = 5956, `spellVisual1` = 395, `spellIconId` = 140 WHERE `entry` = 54009;
UPDATE `spell_template` SET `requiresSpellFocus` = 1, `totem1` = 5956, `spellVisual1` = 395, `spellIconId` = 140 WHERE `entry` = 54003;
UPDATE `spell_template` SET `requiresSpellFocus` = 1, `totem1` = 5956, `spellVisual1` = 395, `spellIconId` = 140 WHERE `entry` = 54005;
