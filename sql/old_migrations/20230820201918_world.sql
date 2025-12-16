-- Link GUID 2574298 to 2574297
-- Link GUID 2578141 to 2578140

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574298, 2574297, 3);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2578141, 2578140, 3);

-- Set the spawn time of the gobjects 'Medivh's Merlot Blue' and 'Medivh's Merlot' to 7d

UPDATE `gameobject` SET `spawntimesecsmin` = 604800, `spawntimesecsmax` = 604800 WHERE `id` in (2011044, 2011043);

-- Glyphs are magic effects, can be dispelled, glyphs fall off when you die

UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53002;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53005;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53008;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53011;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53014;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53017;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53020;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53023;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53026;
UPDATE `spell_template` SET `dispel` = 0 WHERE `entry` = 53029;

UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53002;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53005;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53008;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53011;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53014;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53017;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53020;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53023;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53026;
UPDATE `spell_template` SET `attributesEx3` = 1048576 WHERE `entry` = 53029;

UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53002;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53005;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53008;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53011;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53014;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53017;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53020;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53023;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53026;
UPDATE `spell_template` SET `attributes` = 65536 WHERE `entry` = 53029;

UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53002;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53005;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53008;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53011;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53014;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53017;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53020;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53023;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53026;
UPDATE `spell_template` SET `attributesEx` = 268435456 WHERE `entry` = 53029;