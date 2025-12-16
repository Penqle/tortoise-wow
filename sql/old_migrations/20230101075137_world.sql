-- Remove visual and update Arcane Brilliance description to reflect that the caster receives bonus mana regen too now.
UPDATE `spell_template` SET `spellVisual1`=0, `description`='Gives additional Mana regeneration to the Mage and his Party Members equal to $s1% of the Caster\'s mana regeneration within $a1 yards. Lasts $d.' WHERE `entry`=45408;
