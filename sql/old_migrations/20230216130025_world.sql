-- Remove wrong spell mod for Battle Chicken.
DELETE FROM `spell_mod` WHERE `Id`=23133;
DELETE FROM `spell_effect_mod` WHERE `Id`=23133;
