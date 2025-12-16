-- Fix Agitating Poison.
UPDATE `spell_template` SET `effectBasePoints1`=1799, `effectMiscValue1`=3006 WHERE `entry`=45612;
UPDATE `item_template` SET `flags`=64, `stackable`=20 WHERE `entry`=65032;
