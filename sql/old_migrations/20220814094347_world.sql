-- Make Crusader Strike stack between casters.
UPDATE `spell_template` SET `customFlags`=129 WHERE `entry` IN (2537, 8823, 8824, 10336, 10337);
