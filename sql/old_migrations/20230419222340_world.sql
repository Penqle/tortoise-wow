-- Fix Purple Tallstrider getting dismounted in water.
DELETE FROM `spell_mod` WHERE `Id`=10803;
UPDATE `spell_template` SET `castingTimeIndex`=14 WHERE `entry`=10803;
