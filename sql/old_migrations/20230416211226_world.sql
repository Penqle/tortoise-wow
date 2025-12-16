-- Fix half of Tempest's Rage's effect being applied to victim.
UPDATE `spell_template` SET `effectImplicitTargetA2`=1 WHERE `entry`=28701;
