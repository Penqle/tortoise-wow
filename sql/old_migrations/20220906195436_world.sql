-- Codex: Grace of the Sunwell should not be usable on others.
UPDATE `spell_template` SET `effectImplicitTargetA1`=1 WHERE `entry`=46235;
