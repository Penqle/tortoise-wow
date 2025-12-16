-- Fix Enchant Bracer - Greater Agility.
UPDATE `spell_template` SET `equippedItemSubClassMask`=30, `effectItemType1`=0, `effectMiscValue1`=1887 WHERE `entry`=57030;

-- Fix Enchant Bracer - Spell Power.
UPDATE `spell_template` SET `equippedItemSubClassMask`=30, `effectItemType1`=0, `effectMiscValue1`=432 WHERE `entry`=57028;
