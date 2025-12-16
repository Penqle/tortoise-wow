-- Add visual indication aura to Seal of the Dawn, Rune of the Dawn, Mark of the Champion.
UPDATE `item_template` SET `spellid_2`=17670, `spelltrigger_2`=1 WHERE `entry` IN (13209, 19812, 23206, 23207);
