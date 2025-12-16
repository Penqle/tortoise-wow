-- Fix all Tallstrider mounts.
DELETE FROM `spell_mod` WHERE `Id` IN (8396, 10800, 10801, 10802, 10803, 10804);
UPDATE `spell_template` SET `attributes`=269582608, `castingTimeIndex`=14, `interruptFlags`=31, `auraInterruptFlags`=0 WHERE `entry` IN (8396, 10800, 10801, 10802, 10803, 10804);
