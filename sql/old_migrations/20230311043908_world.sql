-- Add ignore los attribute to Waiting to Resurrect and Spirit Heal.
UPDATE `spell_template` SET `attributesEx2` = `attributesEx2` | 4 WHERE `entry` IN (2584, 22012);
