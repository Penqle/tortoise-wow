-- Use generic energize spell for Shield Specialization so it shows up in combat log.
UPDATE `spell_template` SET `effectTriggerSpell2`=23602 WHERE `entry` IN (20148, 20149, 20150);
DELETE FROM `spell_template` WHERE `entry`=45813;
