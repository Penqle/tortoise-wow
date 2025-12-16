-- Make Savage Bite and Swiftmend benefit from Omen of Clarity's Clearcasting.
UPDATE `spell_template` SET `spellFamilyFlags`=137438953472 WHERE `entry`=45736;
UPDATE `spell_affect` SET `SpellFamilyMask`=150338796287 WHERE `entry`=16870;
