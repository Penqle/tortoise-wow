-- Fix mount aura description inconsistency.
UPDATE `spell_template` SET `auraDescription`='Increases speed based on your Riding skill.' WHERE `auraDescription`='Increases speed based on Riding skill.';
