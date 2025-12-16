-- Remove reference to JOTC from Crusader Strike tooltip.
UPDATE `spell_template` SET description ='A strike that causes $s2 damage and increases the holy damage taken by the target by up to $s1 per Crusader Strike.  Can be applied up to 5 times.  Lasts $d.' WHERE `entry` IN (2537, 8823, 8824, 10336, 10337, 45409, 45410, 45411, 45412, 45413);


