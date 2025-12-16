-- Fix recipes and patterns not playing the learning sound. Replacing spellvisual1 value with 108 is a hackfix, I have no idea why the original value is no longer working. However the original value 222 is used by various different battle spells and I won't risk to modify it at any way. This field is referencing the DBC file called SpellVisual.dbc. 

UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Pattern:%';
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Recipe:%';
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Plans:%';
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Formula:%';
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Schematic:%';

UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 10842;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 8838;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 9071;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 8369;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 8370;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 8371;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 18563;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 7931;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 6638;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 6639;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 6641;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 5272;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 5273;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 5270;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 5272;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 5275;
UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `entry` = 3696;

-- UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Pattern:%'
-- > Affected rows: 335

-- UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Recipe:%'
-- > Affected rows: 123

-- UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Plans:%'
-- > Affected rows: 172

-- UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Formula:%'
-- > Affected rows: 98

-- UPDATE `spell_template` SET `spellvisual1` = 108 WHERE `name` LIKE '%Schematic:%'
-- > Affected rows: 86

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/3508
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/3511
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/3509
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/3503
